# Bitbucket::RefsApi

All URIs are relative to *https://api.bitbucket.org/2.0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**repositories_workspace_repo_slug_refs_branches_get**](RefsApi.md#repositories_workspace_repo_slug_refs_branches_get) | **GET** /repositories/{workspace}/{repo_slug}/refs/branches | List open branches |
| [**repositories_workspace_repo_slug_refs_branches_name_delete**](RefsApi.md#repositories_workspace_repo_slug_refs_branches_name_delete) | **DELETE** /repositories/{workspace}/{repo_slug}/refs/branches/{name} | Delete a branch |
| [**repositories_workspace_repo_slug_refs_branches_name_get**](RefsApi.md#repositories_workspace_repo_slug_refs_branches_name_get) | **GET** /repositories/{workspace}/{repo_slug}/refs/branches/{name} | Get a branch |
| [**repositories_workspace_repo_slug_refs_branches_post**](RefsApi.md#repositories_workspace_repo_slug_refs_branches_post) | **POST** /repositories/{workspace}/{repo_slug}/refs/branches | Create a branch |
| [**repositories_workspace_repo_slug_refs_get**](RefsApi.md#repositories_workspace_repo_slug_refs_get) | **GET** /repositories/{workspace}/{repo_slug}/refs | List branches and tags |
| [**repositories_workspace_repo_slug_refs_tags_get**](RefsApi.md#repositories_workspace_repo_slug_refs_tags_get) | **GET** /repositories/{workspace}/{repo_slug}/refs/tags | List tags |
| [**repositories_workspace_repo_slug_refs_tags_name_delete**](RefsApi.md#repositories_workspace_repo_slug_refs_tags_name_delete) | **DELETE** /repositories/{workspace}/{repo_slug}/refs/tags/{name} | Delete a tag |
| [**repositories_workspace_repo_slug_refs_tags_name_get**](RefsApi.md#repositories_workspace_repo_slug_refs_tags_name_get) | **GET** /repositories/{workspace}/{repo_slug}/refs/tags/{name} | Get a tag |
| [**repositories_workspace_repo_slug_refs_tags_post**](RefsApi.md#repositories_workspace_repo_slug_refs_tags_post) | **POST** /repositories/{workspace}/{repo_slug}/refs/tags | Create a tag |


## repositories_workspace_repo_slug_refs_branches_get

> <PaginatedBranches> repositories_workspace_repo_slug_refs_branches_get(repo_slug, workspace, opts)

List open branches

Returns a list of all open branches within the specified repository.         Results will be in the order the source control manager returns them.          ```         $ curl -s https://api.bitbucket.org/2.0/repositories/atlassian/aui/refs/branches?pagelen=1 | jq .         {           \"pagelen\": 1,           \"size\": 187,           \"values\": [             {               \"name\": \"issue-9.3/AUI-5343-assistive-class\",               \"links\": {                 \"commits\": {                   \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/aui/commits/issue-9.3/AUI-5343-assistive-class\"                 },                 \"self\": {                   \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/aui/refs/branches/issue-9.3/AUI-5343-assistive-class\"                 },                 \"html\": {                   \"href\": \"https://bitbucket.org/atlassian/aui/branch/issue-9.3/AUI-5343-assistive-class\"                 }               },               \"default_merge_strategy\": \"squash\",               \"merge_strategies\": [                 \"merge_commit\",                 \"squash\",                 \"fast_forward\"               ],               \"type\": \"branch\",               \"target\": {                 \"hash\": \"e5d1cde9069fcb9f0af90403a4de2150c125a148\",                 \"repository\": {                   \"links\": {                     \"self\": {                       \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/aui\"                     },                     \"html\": {                       \"href\": \"https://bitbucket.org/atlassian/aui\"                     },                     \"avatar\": {                       \"href\": \"https://bytebucket.org/ravatar/%7B585074de-7b60-4fd1-81ed-e0bc7fafbda5%7D?ts=86317\"                     }                   },                   \"type\": \"repository\",                   \"name\": \"aui\",                   \"full_name\": \"atlassian/aui\",                   \"uuid\": \"{585074de-7b60-4fd1-81ed-e0bc7fafbda5}\"                 },                 \"links\": {                   \"self\": {                     \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/aui/commit/e5d1cde9069fcb9f0af90403a4de2150c125a148\"                   },                   \"comments\": {                     \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/aui/commit/e5d1cde9069fcb9f0af90403a4de2150c125a148/comments\"                   },                   \"patch\": {                     \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/aui/patch/e5d1cde9069fcb9f0af90403a4de2150c125a148\"                   },                   \"html\": {                     \"href\": \"https://bitbucket.org/atlassian/aui/commits/e5d1cde9069fcb9f0af90403a4de2150c125a148\"                   },                   \"diff\": {                     \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/aui/diff/e5d1cde9069fcb9f0af90403a4de2150c125a148\"                   },                   \"approve\": {                     \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/aui/commit/e5d1cde9069fcb9f0af90403a4de2150c125a148/approve\"                   },                   \"statuses\": {                     \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/aui/commit/e5d1cde9069fcb9f0af90403a4de2150c125a148/statuses\"                   }                 },                 \"author\": {                   \"raw\": \"Marcin Konopka <mkonopka@atlassian.com>\",                   \"type\": \"author\",                   \"user\": {                     \"display_name\": \"Marcin Konopka\",                     \"uuid\": \"{47cc24f4-2a05-4420-88fe-0417535a110a}\",                     \"links\": {                       \"self\": {                         \"href\": \"https://api.bitbucket.org/2.0/users/%7B47cc24f4-2a05-4420-88fe-0417535a110a%7D\"                       },                       \"html\": {                         \"href\": \"https://bitbucket.org/%7B47cc24f4-2a05-4420-88fe-0417535a110a%7D/\"                       },                       \"avatar\": {                         \"href\": \"https://avatar-management--avatars.us-west-2.prod.public.atl-paas.net/initials/MK-1.png\"                       }                     },                     \"nickname\": \"Marcin Konopka\",                     \"type\": \"user\",                     \"account_id\": \"60113d2b47a9540069f4de03\"                   }                 },                 \"parents\": [                   {                     \"hash\": \"87f7fc92b00464ae47b13ef65c91884e4ac9be51\",                     \"type\": \"commit\",                     \"links\": {                       \"self\": {                         \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/aui/commit/87f7fc92b00464ae47b13ef65c91884e4ac9be51\"                       },                       \"html\": {                         \"href\": \"https://bitbucket.org/atlassian/aui/commits/87f7fc92b00464ae47b13ef65c91884e4ac9be51\"                       }                     }                   }                 ],                 \"date\": \"2021-04-13T13:44:49+00:00\",                 \"message\": \"wip \",                 \"type\": \"commit\"               }             }           ],           \"page\": 1,           \"next\": \"https://api.bitbucket.org/2.0/repositories/atlassian/aui/refs/branches?pagelen=1&page=2\"         }         ```          Branches support [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering)         that can be used to search for specific branches. For instance, to find         all branches that have \"stab\" in their name:          ```         curl -s https://api.bitbucket.org/2.0/repositories/atlassian/aui/refs/branches -G --data-urlencode 'q=name ~ \"stab\"'         ```          By default, results will be in the order the underlying source control system returns them and identical to         the ordering one sees when running \"$ git branch --list\". Note that this follows simple         lexical ordering of the ref names.          This can be undesirable as it does apply any natural sorting semantics, meaning for instance that tags are         sorted [\"v10\", \"v11\", \"v9\"] instead of [\"v9\", \"v10\", \"v11\"].          Sorting can be changed using the ?q= query parameter. When using ?q=name to explicitly sort on ref name,         Bitbucket will apply natural sorting and interpret numerical values as numbers instead of strings.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RefsApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  q: 'q_example', # String |  Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering).
  sort: 'sort_example' # String |  Field by which the results should be sorted as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). The `name` field is handled specially for branches in that, if specified as the sort field, it uses a natural sort order instead of the default lexicographical sort order. For example, it will return ['branch1', 'branch2', 'branch10'] instead of ['branch1', 'branch10', 'branch2'].
}

begin
  # List open branches
  result = api_instance.repositories_workspace_repo_slug_refs_branches_get(repo_slug, workspace, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RefsApi->repositories_workspace_repo_slug_refs_branches_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_refs_branches_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedBranches>, Integer, Hash)> repositories_workspace_repo_slug_refs_branches_get_with_http_info(repo_slug, workspace, opts)

```ruby
begin
  # List open branches
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_refs_branches_get_with_http_info(repo_slug, workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedBranches>
rescue Bitbucket::ApiError => e
  puts "Error when calling RefsApi->repositories_workspace_repo_slug_refs_branches_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **q** | **String** |  Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). | [optional] |
| **sort** | **String** |  Field by which the results should be sorted as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). The &#x60;name&#x60; field is handled specially for branches in that, if specified as the sort field, it uses a natural sort order instead of the default lexicographical sort order. For example, it will return [&#39;branch1&#39;, &#39;branch2&#39;, &#39;branch10&#39;] instead of [&#39;branch1&#39;, &#39;branch10&#39;, &#39;branch2&#39;]. | [optional] |

### Return type

[**PaginatedBranches**](PaginatedBranches.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_refs_branches_name_delete

> repositories_workspace_repo_slug_refs_branches_name_delete(name, repo_slug, workspace)

Delete a branch

Delete a branch in the specified repository.  The main branch is not allowed to be deleted and will return a 400 response.  The branch name should not include any prefixes (e.g. refs/heads).

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RefsApi.new
name = 'name_example' # String | The name of the branch.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Delete a branch
  api_instance.repositories_workspace_repo_slug_refs_branches_name_delete(name, repo_slug, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling RefsApi->repositories_workspace_repo_slug_refs_branches_name_delete: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_refs_branches_name_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_refs_branches_name_delete_with_http_info(name, repo_slug, workspace)

```ruby
begin
  # Delete a branch
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_refs_branches_name_delete_with_http_info(name, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling RefsApi->repositories_workspace_repo_slug_refs_branches_name_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the branch. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_refs_branches_name_get

> <Branch> repositories_workspace_repo_slug_refs_branches_name_get(name, repo_slug, workspace)

Get a branch

Returns a branch object within the specified repository.          ```         $ curl -s https://api.bitbucket.org/2.0/repositories/atlassian/aui/refs/branches/master | jq .         {           \"name\": \"master\",           \"links\": {             \"commits\": {               \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/aui/commits/master\"             },             \"self\": {               \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/aui/refs/branches/master\"             },             \"html\": {               \"href\": \"https://bitbucket.org/atlassian/aui/branch/master\"             }           },           \"default_merge_strategy\": \"squash\",           \"merge_strategies\": [             \"merge_commit\",             \"squash\",             \"fast_forward\"           ],           \"type\": \"branch\",           \"target\": {             \"hash\": \"e7d158ff7ed5538c28f94cd97a9ad569680fc94e\",             \"repository\": {               \"links\": {                 \"self\": {                   \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/aui\"                 },                 \"html\": {                   \"href\": \"https://bitbucket.org/atlassian/aui\"                 },                 \"avatar\": {                   \"href\": \"https://bytebucket.org/ravatar/%7B585074de-7b60-4fd1-81ed-e0bc7fafbda5%7D?ts=86317\"                 }               },               \"type\": \"repository\",               \"name\": \"aui\",               \"full_name\": \"atlassian/aui\",               \"uuid\": \"{585074de-7b60-4fd1-81ed-e0bc7fafbda5}\"             },             \"links\": {               \"self\": {                 \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/aui/commit/e7d158ff7ed5538c28f94cd97a9ad569680fc94e\"               },               \"comments\": {                 \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/aui/commit/e7d158ff7ed5538c28f94cd97a9ad569680fc94e/comments\"               },               \"patch\": {                 \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/aui/patch/e7d158ff7ed5538c28f94cd97a9ad569680fc94e\"               },               \"html\": {                 \"href\": \"https://bitbucket.org/atlassian/aui/commits/e7d158ff7ed5538c28f94cd97a9ad569680fc94e\"               },               \"diff\": {                 \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/aui/diff/e7d158ff7ed5538c28f94cd97a9ad569680fc94e\"               },               \"approve\": {                 \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/aui/commit/e7d158ff7ed5538c28f94cd97a9ad569680fc94e/approve\"               },               \"statuses\": {                 \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/aui/commit/e7d158ff7ed5538c28f94cd97a9ad569680fc94e/statuses\"               }             },             \"author\": {               \"raw\": \"psre-renovate-bot <psre-renovate-bot@atlassian.com>\",               \"type\": \"author\",               \"user\": {                 \"display_name\": \"psre-renovate-bot\",                 \"uuid\": \"{250a442a-3ab3-4fcb-87c3-3c8f3df65ec7}\",                 \"links\": {                   \"self\": {                     \"href\": \"https://api.bitbucket.org/2.0/users/%7B250a442a-3ab3-4fcb-87c3-3c8f3df65ec7%7D\"                   },                   \"html\": {                     \"href\": \"https://bitbucket.org/%7B250a442a-3ab3-4fcb-87c3-3c8f3df65ec7%7D/\"                   },                   \"avatar\": {                     \"href\": \"https://secure.gravatar.com/avatar/6972ee037c9f36360170a86f544071a2?d=https%3A%2F%2Favatar-management--avatars.us-west-2.prod.public.atl-paas.net%2Finitials%2FP-3.png\"                   }                 },                 \"nickname\": \"Renovate Bot\",                 \"type\": \"user\",                 \"account_id\": \"5d5355e8c6b9320d9ea5b28d\"               }             },             \"parents\": [               {                 \"hash\": \"eab868a309e75733de80969a7bed1ec6d4651e06\",                 \"type\": \"commit\",                 \"links\": {                   \"self\": {                     \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/aui/commit/eab868a309e75733de80969a7bed1ec6d4651e06\"                   },                   \"html\": {                     \"href\": \"https://bitbucket.org/atlassian/aui/commits/eab868a309e75733de80969a7bed1ec6d4651e06\"                   }                 }               }             ],             \"date\": \"2021-04-12T06:44:38+00:00\",             \"message\": \"Merged in issue/NONE-renovate-master-babel-monorepo (pull request #2883)  chore(deps): update babel monorepo to v7.13.15 (master)  Approved-by: Chris \"Daz\" Darroch \",             \"type\": \"commit\"           }         }         ```          This call requires authentication. Private repositories require the         caller to authenticate with an account that has appropriate         authorization.          For Git, the branch name should not include any prefixes (e.g.         refs/heads).

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RefsApi.new
name = 'name_example' # String | The name of the branch.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get a branch
  result = api_instance.repositories_workspace_repo_slug_refs_branches_name_get(name, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RefsApi->repositories_workspace_repo_slug_refs_branches_name_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_refs_branches_name_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Branch>, Integer, Hash)> repositories_workspace_repo_slug_refs_branches_name_get_with_http_info(name, repo_slug, workspace)

```ruby
begin
  # Get a branch
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_refs_branches_name_get_with_http_info(name, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Branch>
rescue Bitbucket::ApiError => e
  puts "Error when calling RefsApi->repositories_workspace_repo_slug_refs_branches_name_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the branch. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Branch**](Branch.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_refs_branches_post

> <Branch> repositories_workspace_repo_slug_refs_branches_post(repo_slug, workspace)

Create a branch

Creates a new branch in the specified repository.  The payload of the POST should consist of a JSON document that contains the name of the tag and the target hash.  ``` curl https://api.bitbucket.org/2.0/repositories/seanfarley/hg/refs/branches \\ -s -u seanfarley -X POST -H \"Content-Type: application/json\" \\ -d '{     \"name\" : \"smf/create-feature\",     \"target\" : {         \"hash\" : \"default\",     } }' ```  This call requires authentication. Private repositories require the caller to authenticate with an account that has appropriate authorization.  The branch name should not include any prefixes (e.g. refs/heads). This endpoint does support using short hash prefixes for the commit hash, but it may return a 400 response if the provided prefix is ambiguous. Using a full commit hash is the preferred approach.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RefsApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Create a branch
  result = api_instance.repositories_workspace_repo_slug_refs_branches_post(repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RefsApi->repositories_workspace_repo_slug_refs_branches_post: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_refs_branches_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Branch>, Integer, Hash)> repositories_workspace_repo_slug_refs_branches_post_with_http_info(repo_slug, workspace)

```ruby
begin
  # Create a branch
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_refs_branches_post_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Branch>
rescue Bitbucket::ApiError => e
  puts "Error when calling RefsApi->repositories_workspace_repo_slug_refs_branches_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Branch**](Branch.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_refs_get

> <PaginatedRefs> repositories_workspace_repo_slug_refs_get(repo_slug, workspace, opts)

List branches and tags

Returns the branches and tags in the repository.  By default, results will be in the order the underlying source control system returns them and identical to the ordering one sees when running \"$ git show-ref\". Note that this follows simple lexical ordering of the ref names.  This can be undesirable as it does apply any natural sorting semantics, meaning for instance that refs are sorted [\"branch1\", \"branch10\", \"branch2\", \"v10\", \"v11\", \"v9\"] instead of [\"branch1\", \"branch2\", \"branch10\", \"v9\", \"v10\", \"v11\"].  Sorting can be changed using the ?sort= query parameter. When using ?sort=name to explicitly sort on ref name, Bitbucket will apply natural sorting and interpret numerical values as numbers instead of strings.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RefsApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  q: 'q_example', # String |  Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering).
  sort: 'sort_example' # String |  Field by which the results should be sorted as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). The `name` field is handled specially for refs in that, if specified as the sort field, it uses a natural sort order instead of the default lexicographical sort order. For example, it will return ['1.1', '1.2', '1.10'] instead of ['1.1', '1.10', '1.2'].
}

begin
  # List branches and tags
  result = api_instance.repositories_workspace_repo_slug_refs_get(repo_slug, workspace, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RefsApi->repositories_workspace_repo_slug_refs_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_refs_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedRefs>, Integer, Hash)> repositories_workspace_repo_slug_refs_get_with_http_info(repo_slug, workspace, opts)

```ruby
begin
  # List branches and tags
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_refs_get_with_http_info(repo_slug, workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedRefs>
rescue Bitbucket::ApiError => e
  puts "Error when calling RefsApi->repositories_workspace_repo_slug_refs_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **q** | **String** |  Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). | [optional] |
| **sort** | **String** |  Field by which the results should be sorted as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). The &#x60;name&#x60; field is handled specially for refs in that, if specified as the sort field, it uses a natural sort order instead of the default lexicographical sort order. For example, it will return [&#39;1.1&#39;, &#39;1.2&#39;, &#39;1.10&#39;] instead of [&#39;1.1&#39;, &#39;1.10&#39;, &#39;1.2&#39;]. | [optional] |

### Return type

[**PaginatedRefs**](PaginatedRefs.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_refs_tags_get

> <PaginatedTags> repositories_workspace_repo_slug_refs_tags_get(repo_slug, workspace, opts)

List tags

Returns the tags in the repository.  By default, results will be in the order the underlying source control system returns them and identical to the ordering one sees when running \"$ git tag --list\". Note that this follows simple lexical ordering of the ref names.  This can be undesirable as it does apply any natural sorting semantics, meaning for instance that tags are sorted [\"v10\", \"v11\", \"v9\"] instead of [\"v9\", \"v10\", \"v11\"].  Sorting can be changed using the ?sort= query parameter. When using ?sort=name to explicitly sort on ref name, Bitbucket will apply natural sorting and interpret numerical values as numbers instead of strings.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RefsApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  q: 'q_example', # String |  Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering).
  sort: 'sort_example' # String |  Field by which the results should be sorted as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). The `name` field is handled specially for tags in that, if specified as the sort field, it uses a natural sort order instead of the default lexicographical sort order. For example, it will return ['1.1', '1.2', '1.10'] instead of ['1.1', '1.10', '1.2'].
}

begin
  # List tags
  result = api_instance.repositories_workspace_repo_slug_refs_tags_get(repo_slug, workspace, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RefsApi->repositories_workspace_repo_slug_refs_tags_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_refs_tags_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedTags>, Integer, Hash)> repositories_workspace_repo_slug_refs_tags_get_with_http_info(repo_slug, workspace, opts)

```ruby
begin
  # List tags
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_refs_tags_get_with_http_info(repo_slug, workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedTags>
rescue Bitbucket::ApiError => e
  puts "Error when calling RefsApi->repositories_workspace_repo_slug_refs_tags_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **q** | **String** |  Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). | [optional] |
| **sort** | **String** |  Field by which the results should be sorted as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). The &#x60;name&#x60; field is handled specially for tags in that, if specified as the sort field, it uses a natural sort order instead of the default lexicographical sort order. For example, it will return [&#39;1.1&#39;, &#39;1.2&#39;, &#39;1.10&#39;] instead of [&#39;1.1&#39;, &#39;1.10&#39;, &#39;1.2&#39;]. | [optional] |

### Return type

[**PaginatedTags**](PaginatedTags.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_refs_tags_name_delete

> repositories_workspace_repo_slug_refs_tags_name_delete(name, repo_slug, workspace)

Delete a tag

Delete a tag in the specified repository.  The tag name should not include any prefixes (e.g. refs/tags).

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RefsApi.new
name = 'name_example' # String | The name of the tag.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Delete a tag
  api_instance.repositories_workspace_repo_slug_refs_tags_name_delete(name, repo_slug, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling RefsApi->repositories_workspace_repo_slug_refs_tags_name_delete: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_refs_tags_name_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_refs_tags_name_delete_with_http_info(name, repo_slug, workspace)

```ruby
begin
  # Delete a tag
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_refs_tags_name_delete_with_http_info(name, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling RefsApi->repositories_workspace_repo_slug_refs_tags_name_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the tag. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_refs_tags_name_get

> <Tag> repositories_workspace_repo_slug_refs_tags_name_get(name, repo_slug, workspace)

Get a tag

Returns the specified tag.  ``` $ curl -s https://api.bitbucket.org/2.0/repositories/seanfarley/hg/refs/tags/3.8 -G | jq . {   \"name\": \"3.8\",   \"links\": {     \"commits\": {       \"href\": \"https://api.bitbucket.org/2.0/repositories/seanfarley/hg/commits/3.8\"     },     \"self\": {       \"href\": \"https://api.bitbucket.org/2.0/repositories/seanfarley/hg/refs/tags/3.8\"     },     \"html\": {       \"href\": \"https://bitbucket.org/seanfarley/hg/commits/tag/3.8\"     }   },   \"tagger\": {     \"raw\": \"Matt Mackall <mpm@selenic.com>\",     \"type\": \"author\",     \"user\": {       \"username\": \"mpmselenic\",       \"nickname\": \"mpmselenic\",       \"display_name\": \"Matt Mackall\",       \"type\": \"user\",       \"uuid\": \"{a4934530-db4c-419c-a478-9ab4964c2ee7}\",       \"links\": {         \"self\": {           \"href\": \"https://api.bitbucket.org/2.0/users/mpmselenic\"         },         \"html\": {           \"href\": \"https://bitbucket.org/mpmselenic/\"         },         \"avatar\": {           \"href\": \"https://bitbucket.org/account/mpmselenic/avatar/32/\"         }       }     }   },   \"date\": \"2016-05-01T18:52:25+00:00\",   \"message\": \"Added tag 3.8 for changeset f85de28eae32\",   \"type\": \"tag\",   \"target\": {     \"hash\": \"f85de28eae32e7d3064b1a1321309071bbaaa069\",     \"repository\": {       \"links\": {         \"self\": {           \"href\": \"https://api.bitbucket.org/2.0/repositories/seanfarley/hg\"         },         \"html\": {           \"href\": \"https://bitbucket.org/seanfarley/hg\"         },         \"avatar\": {           \"href\": \"https://bitbucket.org/seanfarley/hg/avatar/32/\"         }       },       \"type\": \"repository\",       \"name\": \"hg\",       \"full_name\": \"seanfarley/hg\",       \"uuid\": \"{c75687fb-e99d-4579-9087-190dbd406d30}\"     },     \"links\": {       \"self\": {         \"href\": \"https://api.bitbucket.org/2.0/repositories/seanfarley/hg/commit/f85de28eae32e7d3064b1a1321309071bbaaa069\"       },       \"comments\": {         \"href\": \"https://api.bitbucket.org/2.0/repositories/seanfarley/hg/commit/f85de28eae32e7d3064b1a1321309071bbaaa069/comments\"       },       \"patch\": {         \"href\": \"https://api.bitbucket.org/2.0/repositories/seanfarley/hg/patch/f85de28eae32e7d3064b1a1321309071bbaaa069\"       },       \"html\": {         \"href\": \"https://bitbucket.org/seanfarley/hg/commits/f85de28eae32e7d3064b1a1321309071bbaaa069\"       },       \"diff\": {         \"href\": \"https://api.bitbucket.org/2.0/repositories/seanfarley/hg/diff/f85de28eae32e7d3064b1a1321309071bbaaa069\"       },       \"approve\": {         \"href\": \"https://api.bitbucket.org/2.0/repositories/seanfarley/hg/commit/f85de28eae32e7d3064b1a1321309071bbaaa069/approve\"       },       \"statuses\": {         \"href\": \"https://api.bitbucket.org/2.0/repositories/seanfarley/hg/commit/f85de28eae32e7d3064b1a1321309071bbaaa069/statuses\"       }     },     \"author\": {       \"raw\": \"Sean Farley <sean@farley.io>\",       \"type\": \"author\",       \"user\": {         \"username\": \"seanfarley\",         \"nickname\": \"seanfarley\",         \"display_name\": \"Sean Farley\",         \"type\": \"user\",         \"uuid\": \"{a295f8a8-5876-4d43-89b5-3ad8c6c3c51d}\",         \"links\": {           \"self\": {             \"href\": \"https://api.bitbucket.org/2.0/users/seanfarley\"           },           \"html\": {             \"href\": \"https://bitbucket.org/seanfarley/\"           },           \"avatar\": {             \"href\": \"https://bitbucket.org/account/seanfarley/avatar/32/\"           }         }       }     },     \"parents\": [       {         \"hash\": \"9a98d0e5b07fc60887f9d3d34d9ac7d536f470d2\",         \"type\": \"commit\",         \"links\": {           \"self\": {             \"href\": \"https://api.bitbucket.org/2.0/repositories/seanfarley/hg/commit/9a98d0e5b07fc60887f9d3d34d9ac7d536f470d2\"           },           \"html\": {             \"href\": \"https://bitbucket.org/seanfarley/hg/commits/9a98d0e5b07fc60887f9d3d34d9ac7d536f470d2\"           }         }       }     ],     \"date\": \"2016-05-01T04:21:17+00:00\",     \"message\": \"debian: alphabetize build deps\",     \"type\": \"commit\"   } } ```

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RefsApi.new
name = 'name_example' # String | The name of the tag.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get a tag
  result = api_instance.repositories_workspace_repo_slug_refs_tags_name_get(name, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RefsApi->repositories_workspace_repo_slug_refs_tags_name_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_refs_tags_name_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Tag>, Integer, Hash)> repositories_workspace_repo_slug_refs_tags_name_get_with_http_info(name, repo_slug, workspace)

```ruby
begin
  # Get a tag
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_refs_tags_name_get_with_http_info(name, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Tag>
rescue Bitbucket::ApiError => e
  puts "Error when calling RefsApi->repositories_workspace_repo_slug_refs_tags_name_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the tag. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Tag**](Tag.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_refs_tags_post

> <Tag> repositories_workspace_repo_slug_refs_tags_post(repo_slug, workspace, tag)

Create a tag

Creates a new tag in the specified repository.  The payload of the POST should consist of a JSON document that contains the name of the tag and the target hash.  ``` curl https://api.bitbucket.org/2.0/repositories/jdoe/myrepo/refs/tags \\ -s -u jdoe -X POST -H \"Content-Type: application/json\" \\ -d '{     \"name\" : \"new-tag-name\",     \"target\" : {         \"hash\" : \"a1b2c3d4e5f6\",     } }' ```  This endpoint does support using short hash prefixes for the commit hash, but it may return a 400 response if the provided prefix is ambiguous. Using a full commit hash is the preferred approach.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RefsApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
tag = Bitbucket::Tag.new # Tag | 

begin
  # Create a tag
  result = api_instance.repositories_workspace_repo_slug_refs_tags_post(repo_slug, workspace, tag)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RefsApi->repositories_workspace_repo_slug_refs_tags_post: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_refs_tags_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Tag>, Integer, Hash)> repositories_workspace_repo_slug_refs_tags_post_with_http_info(repo_slug, workspace, tag)

```ruby
begin
  # Create a tag
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_refs_tags_post_with_http_info(repo_slug, workspace, tag)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Tag>
rescue Bitbucket::ApiError => e
  puts "Error when calling RefsApi->repositories_workspace_repo_slug_refs_tags_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **tag** | [**Tag**](Tag.md) |  |  |

### Return type

[**Tag**](Tag.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

