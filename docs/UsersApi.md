# Bitbucket::UsersApi

All URIs are relative to *https://api.bitbucket.org/2.0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**user_emails_email_get**](UsersApi.md#user_emails_email_get) | **GET** /user/emails/{email} | Get an email address for current user |
| [**user_emails_get**](UsersApi.md#user_emails_get) | **GET** /user/emails | List email addresses for current user |
| [**user_get**](UsersApi.md#user_get) | **GET** /user | Get current user |
| [**users_selected_user_get**](UsersApi.md#users_selected_user_get) | **GET** /users/{selected_user} | Get a user |


## user_emails_email_get

> <Error> user_emails_email_get(email)

Get an email address for current user

Returns details about a specific one of the authenticated user's email addresses.  Details describe whether the address has been confirmed by the user and whether it is the user's primary address or not.

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

api_instance = Bitbucket::UsersApi.new
email = 'email_example' # String | Email address of the user.

begin
  # Get an email address for current user
  result = api_instance.user_emails_email_get(email)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling UsersApi->user_emails_email_get: #{e}"
end
```

#### Using the user_emails_email_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Error>, Integer, Hash)> user_emails_email_get_with_http_info(email)

```ruby
begin
  # Get an email address for current user
  data, status_code, headers = api_instance.user_emails_email_get_with_http_info(email)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Error>
rescue Bitbucket::ApiError => e
  puts "Error when calling UsersApi->user_emails_email_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address of the user. |  |

### Return type

[**Error**](Error.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_emails_get

> <Error> user_emails_get

List email addresses for current user

Returns all the authenticated user's email addresses. Both confirmed and unconfirmed.

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

api_instance = Bitbucket::UsersApi.new

begin
  # List email addresses for current user
  result = api_instance.user_emails_get
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling UsersApi->user_emails_get: #{e}"
end
```

#### Using the user_emails_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Error>, Integer, Hash)> user_emails_get_with_http_info

```ruby
begin
  # List email addresses for current user
  data, status_code, headers = api_instance.user_emails_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Error>
rescue Bitbucket::ApiError => e
  puts "Error when calling UsersApi->user_emails_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Error**](Error.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_get

> <Account> user_get

Get current user

Returns the currently logged in user.

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

api_instance = Bitbucket::UsersApi.new

begin
  # Get current user
  result = api_instance.user_get
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling UsersApi->user_get: #{e}"
end
```

#### Using the user_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Account>, Integer, Hash)> user_get_with_http_info

```ruby
begin
  # Get current user
  data, status_code, headers = api_instance.user_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Account>
rescue Bitbucket::ApiError => e
  puts "Error when calling UsersApi->user_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Account**](Account.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## users_selected_user_get

> <Account> users_selected_user_get(selected_user)

Get a user

Gets the public information associated with a user account.  If the user's profile is private, `location`, `website` and `created_on` elements are omitted.  Note that the user object returned by this operation is changing significantly, due to privacy changes. See the [announcement](https://developer.atlassian.com/cloud/bitbucket/bitbucket-api-changes-gdpr/#changes-to-bitbucket-user-objects) for details.

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

api_instance = Bitbucket::UsersApi.new
selected_user = 'selected_user_example' # String | This can either be the UUID of the account, surrounded by curly-braces, for example: `{account UUID}`, OR an Atlassian Account ID. 

begin
  # Get a user
  result = api_instance.users_selected_user_get(selected_user)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling UsersApi->users_selected_user_get: #{e}"
end
```

#### Using the users_selected_user_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Account>, Integer, Hash)> users_selected_user_get_with_http_info(selected_user)

```ruby
begin
  # Get a user
  data, status_code, headers = api_instance.users_selected_user_get_with_http_info(selected_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Account>
rescue Bitbucket::ApiError => e
  puts "Error when calling UsersApi->users_selected_user_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **selected_user** | **String** | This can either be the UUID of the account, surrounded by curly-braces, for example: &#x60;{account UUID}&#x60;, OR an Atlassian Account ID.  |  |

### Return type

[**Account**](Account.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

