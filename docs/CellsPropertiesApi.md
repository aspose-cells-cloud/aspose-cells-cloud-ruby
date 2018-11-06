# AsposeCellsCloud::CellsPropertiesApi

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_properties_delete_document_properties**](CellsPropertiesApi.md#cells_properties_delete_document_properties) | **DELETE** /cells/{name}/documentproperties | Delete all custom document properties and clean built-in ones.
[**cells_properties_delete_document_property**](CellsPropertiesApi.md#cells_properties_delete_document_property) | **DELETE** /cells/{name}/documentproperties/{propertyName} | Delete document property.
[**cells_properties_get_document_properties**](CellsPropertiesApi.md#cells_properties_get_document_properties) | **GET** /cells/{name}/documentproperties | Read document properties.
[**cells_properties_get_document_property**](CellsPropertiesApi.md#cells_properties_get_document_property) | **GET** /cells/{name}/documentproperties/{propertyName} | Read document property by name.
[**cells_properties_put_document_property**](CellsPropertiesApi.md#cells_properties_put_document_property) | **PUT** /cells/{name}/documentproperties/{propertyName} | Set/create document property.


# **cells_properties_delete_document_properties**
> CellsDocumentPropertiesResponse cells_properties_delete_document_properties(name, opts)

Delete all custom document properties and clean built-in ones.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPropertiesApi.new

name = "name_example" # String | The document name.

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Delete all custom document properties and clean built-in ones.
  result = api_instance.cells_properties_delete_document_properties(name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPropertiesApi->cells_properties_delete_document_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**CellsDocumentPropertiesResponse**](CellsDocumentPropertiesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_properties_delete_document_property**
> CellsDocumentPropertiesResponse cells_properties_delete_document_property(name, property_name, opts)

Delete document property.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPropertiesApi.new

name = "name_example" # String | The document name.

property_name = "property_name_example" # String | The property name.

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Delete document property.
  result = api_instance.cells_properties_delete_document_property(name, property_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPropertiesApi->cells_properties_delete_document_property: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **property_name** | **String**| The property name. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**CellsDocumentPropertiesResponse**](CellsDocumentPropertiesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_properties_get_document_properties**
> CellsDocumentPropertiesResponse cells_properties_get_document_properties(name, opts)

Read document properties.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPropertiesApi.new

name = "name_example" # String | The document name.

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Read document properties.
  result = api_instance.cells_properties_get_document_properties(name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPropertiesApi->cells_properties_get_document_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**CellsDocumentPropertiesResponse**](CellsDocumentPropertiesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_properties_get_document_property**
> CellsDocumentPropertyResponse cells_properties_get_document_property(name, property_name, opts)

Read document property by name.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPropertiesApi.new

name = "name_example" # String | The document name.

property_name = "property_name_example" # String | The property name.

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Read document property by name.
  result = api_instance.cells_properties_get_document_property(name, property_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPropertiesApi->cells_properties_get_document_property: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **property_name** | **String**| The property name. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**CellsDocumentPropertyResponse**](CellsDocumentPropertyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_properties_put_document_property**
> CellsDocumentPropertyResponse cells_properties_put_document_property(name, property_name, opts)

Set/create document property.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPropertiesApi.new

name = "name_example" # String | The document name.

property_name = "property_name_example" # String | The property name.

opts = { 
  property: AsposeCellsCloud::CellsDocumentProperty.new, # CellsDocumentProperty | with new property value.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Set/create document property.
  result = api_instance.cells_properties_put_document_property(name, property_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPropertiesApi->cells_properties_put_document_property: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **property_name** | **String**| The property name. | 
 **property** | [**CellsDocumentProperty**](CellsDocumentProperty.md)| with new property value. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**CellsDocumentPropertyResponse**](CellsDocumentPropertyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



