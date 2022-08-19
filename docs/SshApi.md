# Bitbucket::SshApi

All URIs are relative to *https://api.bitbucket.org/2.0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**users_selected_user_ssh_keys_get**](SshApi.md#users_selected_user_ssh_keys_get) | **GET** /users/{selected_user}/ssh-keys | List SSH keys |
| [**users_selected_user_ssh_keys_key_id_delete**](SshApi.md#users_selected_user_ssh_keys_key_id_delete) | **DELETE** /users/{selected_user}/ssh-keys/{key_id} | Delete a SSH key |
| [**users_selected_user_ssh_keys_key_id_get**](SshApi.md#users_selected_user_ssh_keys_key_id_get) | **GET** /users/{selected_user}/ssh-keys/{key_id} | Get a SSH key |
| [**users_selected_user_ssh_keys_key_id_put**](SshApi.md#users_selected_user_ssh_keys_key_id_put) | **PUT** /users/{selected_user}/ssh-keys/{key_id} | Update a SSH key |
| [**users_selected_user_ssh_keys_post**](SshApi.md#users_selected_user_ssh_keys_post) | **POST** /users/{selected_user}/ssh-keys | Add a new SSH key |


## users_selected_user_ssh_keys_get

> <PaginatedSshUserKeys> users_selected_user_ssh_keys_get(selected_user)

List SSH keys

Returns a paginated list of the user's SSH public keys.  Example:  ``` $ curl https://api.bitbucket.org/2.0/users/{ed08f5e1-605b-4f4a-aee4-6c97628a673e}/ssh-keys {     \"page\": 1,     \"pagelen\": 10,     \"size\": 1,     \"values\": [         {             \"comment\": \"user@myhost\",             \"created_on\": \"2018-03-14T13:17:05.196003+00:00\",             \"key\": \"ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKqP3Cr632C2dNhhgKVcon4ldUSAeKiku2yP9O9/bDtY\",             \"label\": \"\",             \"last_used\": \"2018-03-20T13:18:05.196003+00:00\",             \"links\": {                 \"self\": {                     \"href\": \"https://api.bitbucket.org/2.0/users/{ed08f5e1-605b-4f4a-aee4-6c97628a673e}/ssh-keys/b15b6026-9c02-4626-b4ad-b905f99f763a\"                 }             },             \"owner\": {                 \"display_name\": \"Mark Adams\",                 \"links\": {                     \"avatar\": {                         \"href\": \"https://bitbucket.org/account/markadams-atl/avatar/32/\"                     },                     \"html\": {                         \"href\": \"https://bitbucket.org/markadams-atl/\"                     },                     \"self\": {                         \"href\": \"https://api.bitbucket.org/2.0/users/{ed08f5e1-605b-4f4a-aee4-6c97628a673e}\"                     }                 },                 \"type\": \"user\",                 \"username\": \"markadams-atl\",                 \"nickname\": \"markadams-atl\",                 \"uuid\": \"{d7dd0e2d-3994-4a50-a9ee-d260b6cefdab}\"             },             \"type\": \"ssh_key\",             \"uuid\": \"{b15b6026-9c02-4626-b4ad-b905f99f763a}\"         }     ] } ```

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

api_instance = Bitbucket::SshApi.new
selected_user = 'selected_user_example' # String | This can either be the UUID of the account, surrounded by curly-braces, for example: `{account UUID}`, OR an Atlassian Account ID. 

begin
  # List SSH keys
  result = api_instance.users_selected_user_ssh_keys_get(selected_user)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling SshApi->users_selected_user_ssh_keys_get: #{e}"
end
```

#### Using the users_selected_user_ssh_keys_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedSshUserKeys>, Integer, Hash)> users_selected_user_ssh_keys_get_with_http_info(selected_user)

```ruby
begin
  # List SSH keys
  data, status_code, headers = api_instance.users_selected_user_ssh_keys_get_with_http_info(selected_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedSshUserKeys>
rescue Bitbucket::ApiError => e
  puts "Error when calling SshApi->users_selected_user_ssh_keys_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **selected_user** | **String** | This can either be the UUID of the account, surrounded by curly-braces, for example: &#x60;{account UUID}&#x60;, OR an Atlassian Account ID.  |  |

### Return type

[**PaginatedSshUserKeys**](PaginatedSshUserKeys.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## users_selected_user_ssh_keys_key_id_delete

> users_selected_user_ssh_keys_key_id_delete(key_id, selected_user)

Delete a SSH key

Deletes a specific SSH public key from a user's account  Example: ``` $ curl -X DELETE https://api.bitbucket.org/2.0/users/{ed08f5e1-605b-4f4a-aee4-6c97628a673e}/ssh-keys/{b15b6026-9c02-4626-b4ad-b905f99f763a} ```

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

api_instance = Bitbucket::SshApi.new
key_id = 'key_id_example' # String | The SSH key's UUID value.
selected_user = 'selected_user_example' # String | This can either be the UUID of the account, surrounded by curly-braces, for example: `{account UUID}`, OR an Atlassian Account ID. 

begin
  # Delete a SSH key
  api_instance.users_selected_user_ssh_keys_key_id_delete(key_id, selected_user)
rescue Bitbucket::ApiError => e
  puts "Error when calling SshApi->users_selected_user_ssh_keys_key_id_delete: #{e}"
end
```

#### Using the users_selected_user_ssh_keys_key_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> users_selected_user_ssh_keys_key_id_delete_with_http_info(key_id, selected_user)

```ruby
begin
  # Delete a SSH key
  data, status_code, headers = api_instance.users_selected_user_ssh_keys_key_id_delete_with_http_info(key_id, selected_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling SshApi->users_selected_user_ssh_keys_key_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_id** | **String** | The SSH key&#39;s UUID value. |  |
| **selected_user** | **String** | This can either be the UUID of the account, surrounded by curly-braces, for example: &#x60;{account UUID}&#x60;, OR an Atlassian Account ID.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## users_selected_user_ssh_keys_key_id_get

> <SshAccountKey> users_selected_user_ssh_keys_key_id_get(key_id, selected_user)

Get a SSH key

Returns a specific SSH public key belonging to a user.  Example: ``` $ curl https://api.bitbucket.org/2.0/users/{ed08f5e1-605b-4f4a-aee4-6c97628a673e}/ssh-keys/{fbe4bbab-f6f7-4dde-956b-5c58323c54b3}  {     \"comment\": \"user@myhost\",     \"created_on\": \"2018-03-14T13:17:05.196003+00:00\",     \"key\": \"ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKqP3Cr632C2dNhhgKVcon4ldUSAeKiku2yP9O9/bDtY\",     \"label\": \"\",     \"last_used\": \"2018-03-20T13:18:05.196003+00:00\",     \"links\": {         \"self\": {             \"href\": \"https://api.bitbucket.org/2.0/users/{ed08f5e1-605b-4f4a-aee4-6c97628a673e}/ssh-keys/b15b6026-9c02-4626-b4ad-b905f99f763a\"         }     },     \"owner\": {         \"display_name\": \"Mark Adams\",         \"links\": {             \"avatar\": {                 \"href\": \"https://bitbucket.org/account/markadams-atl/avatar/32/\"             },             \"html\": {                 \"href\": \"https://bitbucket.org/markadams-atl/\"             },             \"self\": {                 \"href\": \"https://api.bitbucket.org/2.0/users/{ed08f5e1-605b-4f4a-aee4-6c97628a673e}\"             }         },         \"type\": \"user\",         \"username\": \"markadams-atl\",         \"nickname\": \"markadams-atl\",         \"uuid\": \"{d7dd0e2d-3994-4a50-a9ee-d260b6cefdab}\"     },     \"type\": \"ssh_key\",     \"uuid\": \"{b15b6026-9c02-4626-b4ad-b905f99f763a}\" } ```

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

api_instance = Bitbucket::SshApi.new
key_id = 'key_id_example' # String | The SSH key's UUID value.
selected_user = 'selected_user_example' # String | This can either be the UUID of the account, surrounded by curly-braces, for example: `{account UUID}`, OR an Atlassian Account ID. 

begin
  # Get a SSH key
  result = api_instance.users_selected_user_ssh_keys_key_id_get(key_id, selected_user)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling SshApi->users_selected_user_ssh_keys_key_id_get: #{e}"
end
```

#### Using the users_selected_user_ssh_keys_key_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SshAccountKey>, Integer, Hash)> users_selected_user_ssh_keys_key_id_get_with_http_info(key_id, selected_user)

```ruby
begin
  # Get a SSH key
  data, status_code, headers = api_instance.users_selected_user_ssh_keys_key_id_get_with_http_info(key_id, selected_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SshAccountKey>
rescue Bitbucket::ApiError => e
  puts "Error when calling SshApi->users_selected_user_ssh_keys_key_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_id** | **String** | The SSH key&#39;s UUID value. |  |
| **selected_user** | **String** | This can either be the UUID of the account, surrounded by curly-braces, for example: &#x60;{account UUID}&#x60;, OR an Atlassian Account ID.  |  |

### Return type

[**SshAccountKey**](SshAccountKey.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## users_selected_user_ssh_keys_key_id_put

> <SshAccountKey> users_selected_user_ssh_keys_key_id_put(key_id, selected_user, opts)

Update a SSH key

Updates a specific SSH public key on a user's account  Note: Only the 'comment' field can be updated using this API. To modify the key or comment values, you must delete and add the key again.  Example: ``` $ curl -X PUT -H \"Content-Type: application/json\" -d '{\"label\": \"Work key\"}' https://api.bitbucket.org/2.0/users/{ed08f5e1-605b-4f4a-aee4-6c97628a673e}/ssh-keys/{b15b6026-9c02-4626-b4ad-b905f99f763a}  {     \"comment\": \"\",     \"created_on\": \"2018-03-14T13:17:05.196003+00:00\",     \"key\": \"ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKqP3Cr632C2dNhhgKVcon4ldUSAeKiku2yP9O9/bDtY\",     \"label\": \"Work key\",     \"last_used\": \"2018-03-20T13:18:05.196003+00:00\",     \"links\": {         \"self\": {             \"href\": \"https://api.bitbucket.org/2.0/users/{ed08f5e1-605b-4f4a-aee4-6c97628a673e}/ssh-keys/b15b6026-9c02-4626-b4ad-b905f99f763a\"         }     },     \"owner\": {         \"display_name\": \"Mark Adams\",         \"links\": {             \"avatar\": {                 \"href\": \"https://bitbucket.org/account/markadams-atl/avatar/32/\"             },             \"html\": {                 \"href\": \"https://bitbucket.org/markadams-atl/\"             },             \"self\": {                 \"href\": \"https://api.bitbucket.org/2.0/users/{ed08f5e1-605b-4f4a-aee4-6c97628a673e}\"             }         },         \"type\": \"user\",         \"username\": \"markadams-atl\",         \"nickname\": \"markadams-atl\",         \"uuid\": \"{d7dd0e2d-3994-4a50-a9ee-d260b6cefdab}\"     },     \"type\": \"ssh_key\",     \"uuid\": \"{b15b6026-9c02-4626-b4ad-b905f99f763a}\" } ```

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

api_instance = Bitbucket::SshApi.new
key_id = 'key_id_example' # String | The SSH key's UUID value.
selected_user = 'selected_user_example' # String | This can either be the UUID of the account, surrounded by curly-braces, for example: `{account UUID}`, OR an Atlassian Account ID. 
opts = {
  ssh_account_key: Bitbucket::SshAccountKey.new({type: 'type_example'}) # SshAccountKey | The updated SSH key object
}

begin
  # Update a SSH key
  result = api_instance.users_selected_user_ssh_keys_key_id_put(key_id, selected_user, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling SshApi->users_selected_user_ssh_keys_key_id_put: #{e}"
end
```

#### Using the users_selected_user_ssh_keys_key_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SshAccountKey>, Integer, Hash)> users_selected_user_ssh_keys_key_id_put_with_http_info(key_id, selected_user, opts)

```ruby
begin
  # Update a SSH key
  data, status_code, headers = api_instance.users_selected_user_ssh_keys_key_id_put_with_http_info(key_id, selected_user, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SshAccountKey>
rescue Bitbucket::ApiError => e
  puts "Error when calling SshApi->users_selected_user_ssh_keys_key_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_id** | **String** | The SSH key&#39;s UUID value. |  |
| **selected_user** | **String** | This can either be the UUID of the account, surrounded by curly-braces, for example: &#x60;{account UUID}&#x60;, OR an Atlassian Account ID.  |  |
| **ssh_account_key** | [**SshAccountKey**](SshAccountKey.md) | The updated SSH key object | [optional] |

### Return type

[**SshAccountKey**](SshAccountKey.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## users_selected_user_ssh_keys_post

> <SshAccountKey> users_selected_user_ssh_keys_post(selected_user, opts)

Add a new SSH key

Adds a new SSH public key to the specified user account and returns the resulting key.  Example: ``` $ curl -X POST -H \"Content-Type: application/json\" -d '{\"key\": \"ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKqP3Cr632C2dNhhgKVcon4ldUSAeKiku2yP9O9/bDtY user@myhost\"}' https://api.bitbucket.org/2.0/users/{ed08f5e1-605b-4f4a-aee4-6c97628a673e}/ssh-keys  {     \"comment\": \"user@myhost\",     \"created_on\": \"2018-03-14T13:17:05.196003+00:00\",     \"key\": \"ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKqP3Cr632C2dNhhgKVcon4ldUSAeKiku2yP9O9/bDtY\",     \"label\": \"\",     \"last_used\": \"2018-03-20T13:18:05.196003+00:00\",     \"links\": {         \"self\": {             \"href\": \"https://api.bitbucket.org/2.0/users/{ed08f5e1-605b-4f4a-aee4-6c97628a673e}/ssh-keys/b15b6026-9c02-4626-b4ad-b905f99f763a\"         }     },     \"owner\": {         \"display_name\": \"Mark Adams\",         \"links\": {             \"avatar\": {                 \"href\": \"https://bitbucket.org/account/markadams-atl/avatar/32/\"             },             \"html\": {                 \"href\": \"https://bitbucket.org/markadams-atl/\"             },             \"self\": {                 \"href\": \"https://api.bitbucket.org/2.0/users/{ed08f5e1-605b-4f4a-aee4-6c97628a673e}\"             }         },         \"type\": \"user\",         \"username\": \"markadams-atl\",         \"nickname\": \"markadams-atl\",         \"uuid\": \"{d7dd0e2d-3994-4a50-a9ee-d260b6cefdab}\"     },     \"type\": \"ssh_key\",     \"uuid\": \"{b15b6026-9c02-4626-b4ad-b905f99f763a}\" } ```

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

api_instance = Bitbucket::SshApi.new
selected_user = 'selected_user_example' # String | This can either be the UUID of the account, surrounded by curly-braces, for example: `{account UUID}`, OR an Atlassian Account ID. 
opts = {
  ssh_account_key: Bitbucket::SshAccountKey.new({type: 'type_example'}) # SshAccountKey | The new SSH key object. Note that the username property has been deprecated due to [privacy changes](https://developer.atlassian.com/cloud/bitbucket/bitbucket-api-changes-gdpr/#removal-of-usernames-from-user-referencing-apis).
}

begin
  # Add a new SSH key
  result = api_instance.users_selected_user_ssh_keys_post(selected_user, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling SshApi->users_selected_user_ssh_keys_post: #{e}"
end
```

#### Using the users_selected_user_ssh_keys_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SshAccountKey>, Integer, Hash)> users_selected_user_ssh_keys_post_with_http_info(selected_user, opts)

```ruby
begin
  # Add a new SSH key
  data, status_code, headers = api_instance.users_selected_user_ssh_keys_post_with_http_info(selected_user, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SshAccountKey>
rescue Bitbucket::ApiError => e
  puts "Error when calling SshApi->users_selected_user_ssh_keys_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **selected_user** | **String** | This can either be the UUID of the account, surrounded by curly-braces, for example: &#x60;{account UUID}&#x60;, OR an Atlassian Account ID.  |  |
| **ssh_account_key** | [**SshAccountKey**](SshAccountKey.md) | The new SSH key object. Note that the username property has been deprecated due to [privacy changes](https://developer.atlassian.com/cloud/bitbucket/bitbucket-api-changes-gdpr/#removal-of-usernames-from-user-referencing-apis). | [optional] |

### Return type

[**SshAccountKey**](SshAccountKey.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

