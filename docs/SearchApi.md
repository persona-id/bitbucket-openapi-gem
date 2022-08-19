# Bitbucket::SearchApi

All URIs are relative to *https://api.bitbucket.org/2.0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**search_account**](SearchApi.md#search_account) | **GET** /users/{selected_user}/search/code | Search for code in a user&#39;s repositories |
| [**search_team**](SearchApi.md#search_team) | **GET** /teams/{username}/search/code | Search for code in a team&#39;s repositories |
| [**search_workspace**](SearchApi.md#search_workspace) | **GET** /workspaces/{workspace}/search/code | Search for code in a workspace |


## search_account

> <SearchResultPage> search_account(selected_user, search_query, opts)

Search for code in a user's repositories

Search for code in the repositories of the specified user.  Searching across all repositories:  ``` curl 'https://api.bitbucket.org/2.0/users/{ed08f5e1-605b-4f4a-aee4-6c97628a673e}/search/code?search_query=foo' {   \"size\": 1,   \"page\": 1,   \"pagelen\": 10,   \"query_substituted\": false,   \"values\": [     {       \"type\": \"code_search_result\",       \"content_match_count\": 2,       \"content_matches\": [         {           \"lines\": [             {               \"line\": 2,               \"segments\": []             },             {               \"line\": 3,               \"segments\": [                 {                   \"text\": \"def \"                 },                 {                   \"text\": \"foo\",                   \"match\": true                 },                 {                   \"text\": \"():\"                 }               ]             },             {               \"line\": 4,               \"segments\": [                 {                   \"text\": \"    print(\\\"snek\\\")\"                 }               ]             },             {               \"line\": 5,               \"segments\": []             }           ]         }       ],       \"path_matches\": [         {           \"text\": \"src/\"         },         {           \"text\": \"foo\",           \"match\": true         },         {           \"text\": \".py\"         }       ],       \"file\": {         \"path\": \"src/foo.py\",         \"type\": \"commit_file\",         \"links\": {           \"self\": {             \"href\": \"https://api.bitbucket.org/2.0/repositories/my-workspace/demo/src/ad6964b5fe2880dbd9ddcad1c89000f1dbcbc24b/src/foo.py\"           }         }       }     }   ] } ```  Note that searches can match in the file's text (`content_matches`), the path (`path_matches`), or both as in the example above.  You can use the same syntax for the search query as in the UI, e.g. to only search within a specific repository:  ``` curl 'https://api.bitbucket.org/2.0/users/{ed08f5e1-605b-4f4a-aee4-6c97628a673e}/search/code?search_query=foo+repo:demo' # results from the \"demo\" repository ```  Similar to other APIs, you can request more fields using a `fields` query parameter. E.g. to get some more information about the repository of matched files (the `%2B` is a URL-encoded `+`):  ``` curl 'https://api.bitbucket.org/2.0/users/{ed08f5e1-605b-4f4a-aee4-6c97628a673e}/search/code'\\      '?search_query=foo&fields=%2Bvalues.file.commit.repository' {   \"size\": 1,   \"page\": 1,   \"pagelen\": 10,   \"query_substituted\": false,   \"values\": [     {       \"type\": \"code_search_result\",       \"content_match_count\": 1,       \"content_matches\": [...],       \"path_matches\": [...],       \"file\": {         \"commit\": {           \"type\": \"commit\",           \"hash\": \"ad6964b5fe2880dbd9ddcad1c89000f1dbcbc24b\",           \"links\": {             \"self\": {               \"href\": \"https://api.bitbucket.org/2.0/repositories/my-workspace/demo/commit/ad6964b5fe2880dbd9ddcad1c89000f1dbcbc24b\"             },             \"html\": {               \"href\": \"https://bitbucket.org/my-workspace/demo/commits/ad6964b5fe2880dbd9ddcad1c89000f1dbcbc24b\"             }           },           \"repository\": {             \"name\": \"demo\",             \"type\": \"repository\",             \"full_name\": \"my-workspace/demo\",             \"links\": {               \"self\": {                 \"href\": \"https://api.bitbucket.org/2.0/repositories/my-workspace/demo\"               },               \"html\": {                 \"href\": \"https://bitbucket.org/my-workspace/demo\"               },               \"avatar\": {                 \"href\": \"https://bytebucket.org/ravatar/%7B850e1749-781a-4115-9316-df39d0600e7a%7D?ts=default\"               }             },             \"uuid\": \"{850e1749-781a-4115-9316-df39d0600e7a}\"           }         },         \"type\": \"commit_file\",         \"links\": {           \"self\": {             \"href\": \"https://api.bitbucket.org/2.0/repositories/my-workspace/demo/src/ad6964b5fe2880dbd9ddcad1c89000f1dbcbc24b/src/foo.py\"           }         },         \"path\": \"src/foo.py\"       }     }   ] } ```  Try `fields=%2Bvalues.*.*.*.*` to get an idea what's possible. 

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::SearchApi.new
selected_user = 'selected_user_example' # String | Either the UUID of the account surrounded by curly-braces, for example `{account UUID}`, OR an Atlassian Account ID.
search_query = 'search_query_example' # String | The search query
opts = {
  page: 56, # Integer | Which page of the search results to retrieve
  pagelen: 56 # Integer | How many search results to retrieve per page
}

begin
  # Search for code in a user's repositories
  result = api_instance.search_account(selected_user, search_query, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling SearchApi->search_account: #{e}"
end
```

#### Using the search_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchResultPage>, Integer, Hash)> search_account_with_http_info(selected_user, search_query, opts)

```ruby
begin
  # Search for code in a user's repositories
  data, status_code, headers = api_instance.search_account_with_http_info(selected_user, search_query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchResultPage>
rescue Bitbucket::ApiError => e
  puts "Error when calling SearchApi->search_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **selected_user** | **String** | Either the UUID of the account surrounded by curly-braces, for example &#x60;{account UUID}&#x60;, OR an Atlassian Account ID. |  |
| **search_query** | **String** | The search query |  |
| **page** | **Integer** | Which page of the search results to retrieve | [optional][default to 1] |
| **pagelen** | **Integer** | How many search results to retrieve per page | [optional][default to 10] |

### Return type

[**SearchResultPage**](SearchResultPage.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_team

> <SearchResultPage> search_team(username, search_query, opts)

Search for code in a team's repositories

Search for code in the repositories of the specified team.  Searching across all repositories:  ``` curl 'https://api.bitbucket.org/2.0/teams/team_name/search/code?search_query=foo' {   \"size\": 1,   \"page\": 1,   \"pagelen\": 10,   \"query_substituted\": false,   \"values\": [     {       \"type\": \"code_search_result\",       \"content_match_count\": 2,       \"content_matches\": [         {           \"lines\": [             {               \"line\": 2,               \"segments\": []             },             {               \"line\": 3,               \"segments\": [                 {                   \"text\": \"def \"                 },                 {                   \"text\": \"foo\",                   \"match\": true                 },                 {                   \"text\": \"():\"                 }               ]             },             {               \"line\": 4,               \"segments\": [                 {                   \"text\": \"    print(\\\"snek\\\")\"                 }               ]             },             {               \"line\": 5,               \"segments\": []             }           ]         }       ],       \"path_matches\": [         {           \"text\": \"src/\"         },         {           \"text\": \"foo\",           \"match\": true         },         {           \"text\": \".py\"         }       ],       \"file\": {         \"path\": \"src/foo.py\",         \"type\": \"commit_file\",         \"links\": {           \"self\": {             \"href\": \"https://api.bitbucket.org/2.0/repositories/my-workspace/demo/src/ad6964b5fe2880dbd9ddcad1c89000f1dbcbc24b/src/foo.py\"           }         }       }     }   ] } ```  Note that searches can match in the file's text (`content_matches`), the path (`path_matches`), or both as in the example above.  You can use the same syntax for the search query as in the UI, e.g. to only search within a specific repository:  ``` curl 'https://api.bitbucket.org/2.0/teams/team_name/search/code?search_query=foo+repo:demo' # results from the \"demo\" repository ```  Similar to other APIs, you can request more fields using a `fields` query parameter. E.g. to get some more information about the repository of matched files (the `%2B` is a URL-encoded `+`):  ``` curl 'https://api.bitbucket.org/2.0/teams/team_name/search/code'\\      '?search_query=foo&fields=%2Bvalues.file.commit.repository' {   \"size\": 1,   \"page\": 1,   \"pagelen\": 10,   \"query_substituted\": false,   \"values\": [     {       \"type\": \"code_search_result\",       \"content_match_count\": 1,       \"content_matches\": [...],       \"path_matches\": [...],       \"file\": {         \"commit\": {           \"type\": \"commit\",           \"hash\": \"ad6964b5fe2880dbd9ddcad1c89000f1dbcbc24b\",           \"links\": {             \"self\": {               \"href\": \"https://api.bitbucket.org/2.0/repositories/my-workspace/demo/commit/ad6964b5fe2880dbd9ddcad1c89000f1dbcbc24b\"             },             \"html\": {               \"href\": \"https://bitbucket.org/my-workspace/demo/commits/ad6964b5fe2880dbd9ddcad1c89000f1dbcbc24b\"             }           },           \"repository\": {             \"name\": \"demo\",             \"type\": \"repository\",             \"full_name\": \"my-workspace/demo\",             \"links\": {               \"self\": {                 \"href\": \"https://api.bitbucket.org/2.0/repositories/my-workspace/demo\"               },               \"html\": {                 \"href\": \"https://bitbucket.org/my-workspace/demo\"               },               \"avatar\": {                 \"href\": \"https://bytebucket.org/ravatar/%7B850e1749-781a-4115-9316-df39d0600e7a%7D?ts=default\"               }             },             \"uuid\": \"{850e1749-781a-4115-9316-df39d0600e7a}\"           }         },         \"type\": \"commit_file\",         \"links\": {           \"self\": {             \"href\": \"https://api.bitbucket.org/2.0/repositories/my-workspace/demo/src/ad6964b5fe2880dbd9ddcad1c89000f1dbcbc24b/src/foo.py\"           }         },         \"path\": \"src/foo.py\"       }     }   ] } ```  Try `fields=%2Bvalues.*.*.*.*` to get an idea what's possible. 

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::SearchApi.new
username = 'username_example' # String | The account to search in; either the username or the UUID in curly braces
search_query = 'search_query_example' # String | The search query
opts = {
  page: 56, # Integer | Which page of the search results to retrieve
  pagelen: 56 # Integer | How many search results to retrieve per page
}

begin
  # Search for code in a team's repositories
  result = api_instance.search_team(username, search_query, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling SearchApi->search_team: #{e}"
end
```

#### Using the search_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchResultPage>, Integer, Hash)> search_team_with_http_info(username, search_query, opts)

```ruby
begin
  # Search for code in a team's repositories
  data, status_code, headers = api_instance.search_team_with_http_info(username, search_query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchResultPage>
rescue Bitbucket::ApiError => e
  puts "Error when calling SearchApi->search_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The account to search in; either the username or the UUID in curly braces |  |
| **search_query** | **String** | The search query |  |
| **page** | **Integer** | Which page of the search results to retrieve | [optional][default to 1] |
| **pagelen** | **Integer** | How many search results to retrieve per page | [optional][default to 10] |

### Return type

[**SearchResultPage**](SearchResultPage.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_workspace

> <SearchResultPage> search_workspace(workspace, search_query, opts)

Search for code in a workspace

Search for code in the repositories of the specified workspace.  Searching across all repositories:  ``` curl 'https://api.bitbucket.org/2.0/workspaces/workspace_slug_or_uuid/search/code?search_query=foo' {   \"size\": 1,   \"page\": 1,   \"pagelen\": 10,   \"query_substituted\": false,   \"values\": [     {       \"type\": \"code_search_result\",       \"content_match_count\": 2,       \"content_matches\": [         {           \"lines\": [             {               \"line\": 2,               \"segments\": []             },             {               \"line\": 3,               \"segments\": [                 {                   \"text\": \"def \"                 },                 {                   \"text\": \"foo\",                   \"match\": true                 },                 {                   \"text\": \"():\"                 }               ]             },             {               \"line\": 4,               \"segments\": [                 {                   \"text\": \"    print(\\\"snek\\\")\"                 }               ]             },             {               \"line\": 5,               \"segments\": []             }           ]         }       ],       \"path_matches\": [         {           \"text\": \"src/\"         },         {           \"text\": \"foo\",           \"match\": true         },         {           \"text\": \".py\"         }       ],       \"file\": {         \"path\": \"src/foo.py\",         \"type\": \"commit_file\",         \"links\": {           \"self\": {             \"href\": \"https://api.bitbucket.org/2.0/repositories/my-workspace/demo/src/ad6964b5fe2880dbd9ddcad1c89000f1dbcbc24b/src/foo.py\"           }         }       }     }   ] } ```  Note that searches can match in the file's text (`content_matches`), the path (`path_matches`), or both as in the example above.  You can use the same syntax for the search query as in the UI, e.g. to only search within a specific repository:  ``` curl 'https://api.bitbucket.org/2.0/workspaces/my-workspace/search/code?search_query=foo+repo:demo' # results from the \"demo\" repository ```  Similar to other APIs, you can request more fields using a `fields` query parameter. E.g. to get some more information about the repository of matched files (the `%2B` is a URL-encoded `+`):  ``` curl 'https://api.bitbucket.org/2.0/workspaces/my-workspace/search/code'\\      '?search_query=foo&fields=%2Bvalues.file.commit.repository' {   \"size\": 1,   \"page\": 1,   \"pagelen\": 10,   \"query_substituted\": false,   \"values\": [     {       \"type\": \"code_search_result\",       \"content_match_count\": 1,       \"content_matches\": [...],       \"path_matches\": [...],       \"file\": {         \"commit\": {           \"type\": \"commit\",           \"hash\": \"ad6964b5fe2880dbd9ddcad1c89000f1dbcbc24b\",           \"links\": {             \"self\": {               \"href\": \"https://api.bitbucket.org/2.0/repositories/my-workspace/demo/commit/ad6964b5fe2880dbd9ddcad1c89000f1dbcbc24b\"             },             \"html\": {               \"href\": \"https://bitbucket.org/my-workspace/demo/commits/ad6964b5fe2880dbd9ddcad1c89000f1dbcbc24b\"             }           },           \"repository\": {             \"name\": \"demo\",             \"type\": \"repository\",             \"full_name\": \"my-workspace/demo\",             \"links\": {               \"self\": {                 \"href\": \"https://api.bitbucket.org/2.0/repositories/my-workspace/demo\"               },               \"html\": {                 \"href\": \"https://bitbucket.org/my-workspace/demo\"               },               \"avatar\": {                 \"href\": \"https://bytebucket.org/ravatar/%7B850e1749-781a-4115-9316-df39d0600e7a%7D?ts=default\"               }             },             \"uuid\": \"{850e1749-781a-4115-9316-df39d0600e7a}\"           }         },         \"type\": \"commit_file\",         \"links\": {           \"self\": {             \"href\": \"https://api.bitbucket.org/2.0/repositories/my-workspace/demo/src/ad6964b5fe2880dbd9ddcad1c89000f1dbcbc24b/src/foo.py\"           }         },         \"path\": \"src/foo.py\"       }     }   ] } ```  Try `fields=%2Bvalues.*.*.*.*` to get an idea what's possible. 

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::SearchApi.new
workspace = 'workspace_example' # String | The workspace to search in; either the slug or the UUID in curly braces
search_query = 'search_query_example' # String | The search query
opts = {
  page: 56, # Integer | Which page of the search results to retrieve
  pagelen: 56 # Integer | How many search results to retrieve per page
}

begin
  # Search for code in a workspace
  result = api_instance.search_workspace(workspace, search_query, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling SearchApi->search_workspace: #{e}"
end
```

#### Using the search_workspace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchResultPage>, Integer, Hash)> search_workspace_with_http_info(workspace, search_query, opts)

```ruby
begin
  # Search for code in a workspace
  data, status_code, headers = api_instance.search_workspace_with_http_info(workspace, search_query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchResultPage>
rescue Bitbucket::ApiError => e
  puts "Error when calling SearchApi->search_workspace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | The workspace to search in; either the slug or the UUID in curly braces |  |
| **search_query** | **String** | The search query |  |
| **page** | **Integer** | Which page of the search results to retrieve | [optional][default to 1] |
| **pagelen** | **Integer** | How many search results to retrieve per page | [optional][default to 10] |

### Return type

[**SearchResultPage**](SearchResultPage.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

