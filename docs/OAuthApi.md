# AsposeCellsCloud::OAuthApi

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**o_auth_post**](OAuthApi.md#o_auth_post) | **POST** /oauth2/token | Get Access token


# **o_auth_post**
> AccessTokenResponse o_auth_post(grant_type, client_id, client_secret)

Get Access token

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::OAuthApi.new

grant_type = "grant_type_example" # String | Grant Type

client_id = "client_id_example" # String | App SID

client_secret = "client_secret_example" # String | App Key


begin
  #Get Access token
  result = api_instance.o_auth_post(grant_type, client_id, client_secret)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling OAuthApi->o_auth_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grant_type** | **String**| Grant Type | 
 **client_id** | **String**| App SID | 
 **client_secret** | **String**| App Key | 

### Return type

[**AccessTokenResponse**](AccessTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



