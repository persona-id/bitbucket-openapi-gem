# Bitbucket::AddonApi

All URIs are relative to *https://api.bitbucket.org/2.0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**addon_delete**](AddonApi.md#addon_delete) | **DELETE** /addon | Delete an app |
| [**addon_linkers_get**](AddonApi.md#addon_linkers_get) | **GET** /addon/linkers | List linkers for an app |
| [**addon_linkers_linker_key_get**](AddonApi.md#addon_linkers_linker_key_get) | **GET** /addon/linkers/{linker_key} | Get a linker for an app |
| [**addon_linkers_linker_key_values_delete**](AddonApi.md#addon_linkers_linker_key_values_delete) | **DELETE** /addon/linkers/{linker_key}/values | Delete all linker values |
| [**addon_linkers_linker_key_values_get**](AddonApi.md#addon_linkers_linker_key_values_get) | **GET** /addon/linkers/{linker_key}/values | List linker values for a linker |
| [**addon_linkers_linker_key_values_post**](AddonApi.md#addon_linkers_linker_key_values_post) | **POST** /addon/linkers/{linker_key}/values | Create a linker value |
| [**addon_linkers_linker_key_values_put**](AddonApi.md#addon_linkers_linker_key_values_put) | **PUT** /addon/linkers/{linker_key}/values | Update a linker value |
| [**addon_linkers_linker_key_values_value_id_delete**](AddonApi.md#addon_linkers_linker_key_values_value_id_delete) | **DELETE** /addon/linkers/{linker_key}/values/{value_id} | Delete a linker value |
| [**addon_linkers_linker_key_values_value_id_get**](AddonApi.md#addon_linkers_linker_key_values_value_id_get) | **GET** /addon/linkers/{linker_key}/values/{value_id} | Get a linker value |
| [**addon_put**](AddonApi.md#addon_put) | **PUT** /addon | Update an installed app |


## addon_delete

> addon_delete

Delete an app

Deletes the application for the user.  This endpoint is intended to be used by Bitbucket Connect apps and only supports JWT authentication -- that is how Bitbucket identifies the particular installation of the app. Developers with applications registered in the \"Develop Apps\" section of Bitbucket Marketplace need not use this endpoint as updates for those applications can be sent out via the UI of that section.  ``` $ curl -X DELETE https://api.bitbucket.org/2.0/addon \\   -H \"Authorization: JWT <JWT Token>\" ```

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

api_instance = Bitbucket::AddonApi.new

begin
  # Delete an app
  api_instance.addon_delete
rescue Bitbucket::ApiError => e
  puts "Error when calling AddonApi->addon_delete: #{e}"
end
```

#### Using the addon_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> addon_delete_with_http_info

```ruby
begin
  # Delete an app
  data, status_code, headers = api_instance.addon_delete_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling AddonApi->addon_delete_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## addon_linkers_get

> addon_linkers_get

List linkers for an app

Gets a list of all [linkers](/cloud/bitbucket/modules/linker/) for the authenticated application.

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

api_instance = Bitbucket::AddonApi.new

begin
  # List linkers for an app
  api_instance.addon_linkers_get
rescue Bitbucket::ApiError => e
  puts "Error when calling AddonApi->addon_linkers_get: #{e}"
end
```

#### Using the addon_linkers_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> addon_linkers_get_with_http_info

```ruby
begin
  # List linkers for an app
  data, status_code, headers = api_instance.addon_linkers_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling AddonApi->addon_linkers_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## addon_linkers_linker_key_get

> addon_linkers_linker_key_get(linker_key)

Get a linker for an app

Gets a [linker](/cloud/bitbucket/modules/linker/) specified by `linker_key` for the authenticated application.

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

api_instance = Bitbucket::AddonApi.new
linker_key = 'linker_key_example' # String | The unique key of a [linker module](/cloud/bitbucket/modules/linker/) as defined in an application descriptor.

begin
  # Get a linker for an app
  api_instance.addon_linkers_linker_key_get(linker_key)
rescue Bitbucket::ApiError => e
  puts "Error when calling AddonApi->addon_linkers_linker_key_get: #{e}"
end
```

#### Using the addon_linkers_linker_key_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> addon_linkers_linker_key_get_with_http_info(linker_key)

```ruby
begin
  # Get a linker for an app
  data, status_code, headers = api_instance.addon_linkers_linker_key_get_with_http_info(linker_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling AddonApi->addon_linkers_linker_key_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **linker_key** | **String** | The unique key of a [linker module](/cloud/bitbucket/modules/linker/) as defined in an application descriptor. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## addon_linkers_linker_key_values_delete

> addon_linkers_linker_key_values_delete(linker_key)

Delete all linker values

Delete all [linker](/cloud/bitbucket/modules/linker/) values for the specified linker of the authenticated application.

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

api_instance = Bitbucket::AddonApi.new
linker_key = 'linker_key_example' # String | The unique key of a [linker module](/cloud/bitbucket/modules/linker/) as defined in an application descriptor.

begin
  # Delete all linker values
  api_instance.addon_linkers_linker_key_values_delete(linker_key)
rescue Bitbucket::ApiError => e
  puts "Error when calling AddonApi->addon_linkers_linker_key_values_delete: #{e}"
end
```

#### Using the addon_linkers_linker_key_values_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> addon_linkers_linker_key_values_delete_with_http_info(linker_key)

```ruby
begin
  # Delete all linker values
  data, status_code, headers = api_instance.addon_linkers_linker_key_values_delete_with_http_info(linker_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling AddonApi->addon_linkers_linker_key_values_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **linker_key** | **String** | The unique key of a [linker module](/cloud/bitbucket/modules/linker/) as defined in an application descriptor. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## addon_linkers_linker_key_values_get

> addon_linkers_linker_key_values_get(linker_key)

List linker values for a linker

Gets a list of all [linker](/cloud/bitbucket/modules/linker/) values for the specified linker of the authenticated application.  A linker value lets applications supply values to modify its regular expression.  The base regular expression must use a Bitbucket-specific match group `(?K)` which will be translated to `([\\w\\-]+)`. A value must match this pattern.  [Read more about linker values](/cloud/bitbucket/modules/linker/#usingthebitbucketapitosupplyvalues)

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

api_instance = Bitbucket::AddonApi.new
linker_key = 'linker_key_example' # String | The unique key of a [linker module](/cloud/bitbucket/modules/linker/) as defined in an application descriptor.

begin
  # List linker values for a linker
  api_instance.addon_linkers_linker_key_values_get(linker_key)
rescue Bitbucket::ApiError => e
  puts "Error when calling AddonApi->addon_linkers_linker_key_values_get: #{e}"
end
```

#### Using the addon_linkers_linker_key_values_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> addon_linkers_linker_key_values_get_with_http_info(linker_key)

```ruby
begin
  # List linker values for a linker
  data, status_code, headers = api_instance.addon_linkers_linker_key_values_get_with_http_info(linker_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling AddonApi->addon_linkers_linker_key_values_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **linker_key** | **String** | The unique key of a [linker module](/cloud/bitbucket/modules/linker/) as defined in an application descriptor. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## addon_linkers_linker_key_values_post

> addon_linkers_linker_key_values_post(linker_key)

Create a linker value

Creates a [linker](/cloud/bitbucket/modules/linker/) value for the specified linker of authenticated application.  A linker value lets applications supply values to modify its regular expression.  The base regular expression must use a Bitbucket-specific match group `(?K)` which will be translated to `([\\w\\-]+)`. A value must match this pattern.  [Read more about linker values](/cloud/bitbucket/modules/linker/#usingthebitbucketapitosupplyvalues)

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

api_instance = Bitbucket::AddonApi.new
linker_key = 'linker_key_example' # String | The unique key of a [linker module](/cloud/bitbucket/modules/linker/) as defined in an application descriptor.

begin
  # Create a linker value
  api_instance.addon_linkers_linker_key_values_post(linker_key)
rescue Bitbucket::ApiError => e
  puts "Error when calling AddonApi->addon_linkers_linker_key_values_post: #{e}"
end
```

#### Using the addon_linkers_linker_key_values_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> addon_linkers_linker_key_values_post_with_http_info(linker_key)

```ruby
begin
  # Create a linker value
  data, status_code, headers = api_instance.addon_linkers_linker_key_values_post_with_http_info(linker_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling AddonApi->addon_linkers_linker_key_values_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **linker_key** | **String** | The unique key of a [linker module](/cloud/bitbucket/modules/linker/) as defined in an application descriptor. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## addon_linkers_linker_key_values_put

> addon_linkers_linker_key_values_put(linker_key)

Update a linker value

Bulk update [linker](/cloud/bitbucket/modules/linker/) values for the specified linker of the authenticated application.  A linker value lets applications supply values to modify its regular expression.  The base regular expression must use a Bitbucket-specific match group `(?K)` which will be translated to `([\\w\\-]+)`. A value must match this pattern.  [Read more about linker values](/cloud/bitbucket/modules/linker/#usingthebitbucketapitosupplyvalues)

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

api_instance = Bitbucket::AddonApi.new
linker_key = 'linker_key_example' # String | The unique key of a [linker module](/cloud/bitbucket/modules/linker/) as defined in an application descriptor.

begin
  # Update a linker value
  api_instance.addon_linkers_linker_key_values_put(linker_key)
rescue Bitbucket::ApiError => e
  puts "Error when calling AddonApi->addon_linkers_linker_key_values_put: #{e}"
end
```

#### Using the addon_linkers_linker_key_values_put_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> addon_linkers_linker_key_values_put_with_http_info(linker_key)

```ruby
begin
  # Update a linker value
  data, status_code, headers = api_instance.addon_linkers_linker_key_values_put_with_http_info(linker_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling AddonApi->addon_linkers_linker_key_values_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **linker_key** | **String** | The unique key of a [linker module](/cloud/bitbucket/modules/linker/) as defined in an application descriptor. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## addon_linkers_linker_key_values_value_id_delete

> addon_linkers_linker_key_values_value_id_delete(linker_key, value_id)

Delete a linker value

Delete a single [linker](/cloud/bitbucket/modules/linker/) value of the authenticated application.

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

api_instance = Bitbucket::AddonApi.new
linker_key = 'linker_key_example' # String | The unique key of a [linker module](/cloud/bitbucket/modules/linker/) as defined in an application descriptor.
value_id = 56 # Integer | The numeric ID of the linker value.

begin
  # Delete a linker value
  api_instance.addon_linkers_linker_key_values_value_id_delete(linker_key, value_id)
rescue Bitbucket::ApiError => e
  puts "Error when calling AddonApi->addon_linkers_linker_key_values_value_id_delete: #{e}"
end
```

#### Using the addon_linkers_linker_key_values_value_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> addon_linkers_linker_key_values_value_id_delete_with_http_info(linker_key, value_id)

```ruby
begin
  # Delete a linker value
  data, status_code, headers = api_instance.addon_linkers_linker_key_values_value_id_delete_with_http_info(linker_key, value_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling AddonApi->addon_linkers_linker_key_values_value_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **linker_key** | **String** | The unique key of a [linker module](/cloud/bitbucket/modules/linker/) as defined in an application descriptor. |  |
| **value_id** | **Integer** | The numeric ID of the linker value. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## addon_linkers_linker_key_values_value_id_get

> addon_linkers_linker_key_values_value_id_get(linker_key, value_id)

Get a linker value

Get a single [linker](/cloud/bitbucket/modules/linker/) value of the authenticated application.

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

api_instance = Bitbucket::AddonApi.new
linker_key = 'linker_key_example' # String | The unique key of a [linker module](/cloud/bitbucket/modules/linker/) as defined in an application descriptor.
value_id = 56 # Integer | The numeric ID of the linker value.

begin
  # Get a linker value
  api_instance.addon_linkers_linker_key_values_value_id_get(linker_key, value_id)
rescue Bitbucket::ApiError => e
  puts "Error when calling AddonApi->addon_linkers_linker_key_values_value_id_get: #{e}"
end
```

#### Using the addon_linkers_linker_key_values_value_id_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> addon_linkers_linker_key_values_value_id_get_with_http_info(linker_key, value_id)

```ruby
begin
  # Get a linker value
  data, status_code, headers = api_instance.addon_linkers_linker_key_values_value_id_get_with_http_info(linker_key, value_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling AddonApi->addon_linkers_linker_key_values_value_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **linker_key** | **String** | The unique key of a [linker module](/cloud/bitbucket/modules/linker/) as defined in an application descriptor. |  |
| **value_id** | **Integer** | The numeric ID of the linker value. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## addon_put

> addon_put

Update an installed app

Updates the application installation for the user.  This endpoint is intended to be used by Bitbucket Connect apps and only supports JWT authentication -- that is how Bitbucket identifies the particular installation of the app. Developers with applications registered in the \"Develop Apps\" section of Bitbucket need not use this endpoint as updates for those applications can be sent out via the UI of that section.  Passing an empty body will update the installation using the existing descriptor URL.  ``` $ curl -X PUT https://api.bitbucket.org/2.0/addon \\   -H \"Authorization: JWT <JWT Token>\" \\   --header \"Content-Type: application/json\" \\   --data '{}' ```  The new `descriptor` for the installation can be also provided in the body directly.  ``` $ curl -X PUT https://api.bitbucket.org/2.0/addon \\   -H \"Authorization: JWT <JWT Token>\" \\   --header \"Content-Type: application/json\" \\   --data '{\"descriptor\": $NEW_DESCRIPTOR}' ```  In both these modes the URL of the descriptor cannot be changed. To change the descriptor location and upgrade an installation the request must be made exclusively with a `descriptor_url`.   ``` $ curl -X PUT https://api.bitbucket.org/2.0/addon \\   -H \"Authorization: JWT <JWT Token>\" \\   --header \"Content-Type: application/json\" \\   --data '{\"descriptor_url\": $NEW_URL}' ```  The `descriptor_url` must exactly match the marketplace registration that Atlassian has for the application. Contact your Atlassian developer advocate to update this registration. Once the registration has been updated you may call this resource for each installation.  Note that the scopes of the application cannot be increased in the new descriptor nor reduced to none.

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

api_instance = Bitbucket::AddonApi.new

begin
  # Update an installed app
  api_instance.addon_put
rescue Bitbucket::ApiError => e
  puts "Error when calling AddonApi->addon_put: #{e}"
end
```

#### Using the addon_put_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> addon_put_with_http_info

```ruby
begin
  # Update an installed app
  data, status_code, headers = api_instance.addon_put_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling AddonApi->addon_put_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

