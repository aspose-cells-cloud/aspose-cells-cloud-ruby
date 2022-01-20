# AsposeCellsCloud::LightCellsApi

All URIs are relative to *https://api.aspose.cloud/v3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_metadata**](LightCellsApi.md#delete_metadata) | **POST** /cells/metadata/delete | 
[**get_metadata**](LightCellsApi.md#get_metadata) | **POST** /cells/metadata/get | 
[**post_assemble**](LightCellsApi.md#post_assemble) | **POST** /cells/assemble | 
[**post_clear_objects**](LightCellsApi.md#post_clear_objects) | **POST** /cells/clearobjects | 
[**post_export**](LightCellsApi.md#post_export) | **POST** /cells/export | 
[**post_merge**](LightCellsApi.md#post_merge) | **POST** /cells/merge | 
[**post_metadata**](LightCellsApi.md#post_metadata) | **POST** /cells/metadata/update | 
[**post_protect**](LightCellsApi.md#post_protect) | **POST** /cells/protect | 
[**post_search**](LightCellsApi.md#post_search) | **POST** /cells/search | 
[**post_split**](LightCellsApi.md#post_split) | **POST** /cells/split | 
[**post_unlock**](LightCellsApi.md#post_unlock) | **POST** /cells/unlock | 
[**post_watermark**](LightCellsApi.md#post_watermark) | **POST** /cells/watermark | 


# **delete_metadata**
> FilesResult delete_metadata(file, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::LightCellsApi.new

file = File.new('/path/to/file.txt') # File | File to upload

opts = { 
  type: 'all' # String | 
}

begin
  result = api_instance.delete_metadata(file, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling LightCellsApi->delete_metadata: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**| File to upload | 
 **type** | **String**|  | [optional] [default to all]

### Return type

[**FilesResult**](FilesResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **get_metadata**
> Array&lt;CellsDocumentProperty&gt; get_metadata(file, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::LightCellsApi.new

file = File.new('/path/to/file.txt') # File | File to upload

opts = { 
  type: 'all' # String | 
}

begin
  result = api_instance.get_metadata(file, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling LightCellsApi->get_metadata: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**| File to upload | 
 **type** | **String**|  | [optional] [default to all]

### Return type

[**Array&lt;CellsDocumentProperty&gt;**](CellsDocumentProperty.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **post_assemble**
> FilesResult post_assemble(file, datasource, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::LightCellsApi.new

file = File.new('/path/to/file.txt') # File | File to upload

datasource = 'datasource_example' # String | 

opts = { 
  format: 'Xlsx' # String | 
}

begin
  result = api_instance.post_assemble(file, datasource, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling LightCellsApi->post_assemble: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**| File to upload | 
 **datasource** | **String**|  | 
 **format** | **String**|  | [optional] [default to Xlsx]

### Return type

[**FilesResult**](FilesResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **post_clear_objects**
> FilesResult post_clear_objects(file, objecttype)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::LightCellsApi.new

file = File.new('/path/to/file.txt') # File | File to upload

objecttype = 'objecttype_example' # String | 


begin
  result = api_instance.post_clear_objects(file, objecttype)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling LightCellsApi->post_clear_objects: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**| File to upload | 
 **objecttype** | **String**|  | 

### Return type

[**FilesResult**](FilesResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **post_export**
> FilesResult post_export(file, object_type, format)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::LightCellsApi.new

file = File.new('/path/to/file.txt') # File | File to upload

object_type = 'object_type_example' # String | 

format = 'format_example' # String | 


begin
  result = api_instance.post_export(file, object_type, format)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling LightCellsApi->post_export: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**| File to upload | 
 **object_type** | **String**|  | 
 **format** | **String**|  | 

### Return type

[**FilesResult**](FilesResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **post_merge**
> FileInfo post_merge(file, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::LightCellsApi.new

file = File.new('/path/to/file.txt') # File | File to upload

opts = { 
  format: 'xlsx', # String | 
  merge_to_one_sheet: false # BOOLEAN | 
}

begin
  result = api_instance.post_merge(file, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling LightCellsApi->post_merge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**| File to upload | 
 **format** | **String**|  | [optional] [default to xlsx]
 **merge_to_one_sheet** | **BOOLEAN**|  | [optional] [default to false]

### Return type

[**FileInfo**](FileInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **post_metadata**
> FilesResult post_metadata(file, document_properties)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::LightCellsApi.new

file = File.new('/path/to/file.txt') # File | File to upload

document_properties = AsposeCellsCloud::CellsDocumentProperty.new # CellsDocumentProperty | Cells document property.


begin
  result = api_instance.post_metadata(file, document_properties)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling LightCellsApi->post_metadata: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**| File to upload | 
 **document_properties** | [**CellsDocumentProperty**](CellsDocumentProperty.md)| Cells document property. | 

### Return type

[**FilesResult**](FilesResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: multipart/form-data



# **post_protect**
> FilesResult post_protect(file, password)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::LightCellsApi.new

file = File.new('/path/to/file.txt') # File | File to upload

password = 'password_example' # String | 


begin
  result = api_instance.post_protect(file, password)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling LightCellsApi->post_protect: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**| File to upload | 
 **password** | **String**|  | 

### Return type

[**FilesResult**](FilesResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **post_search**
> Array&lt;TextItem&gt; post_search(file, text, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::LightCellsApi.new

file = File.new('/path/to/file.txt') # File | File to upload

text = 'text_example' # String | 

opts = { 
  password: 'password_example', # String | 
  sheetname: 'sheetname_example' # String | 
}

begin
  result = api_instance.post_search(file, text, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling LightCellsApi->post_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**| File to upload | 
 **text** | **String**|  | 
 **password** | **String**|  | [optional] 
 **sheetname** | **String**|  | [optional] 

### Return type

[**Array&lt;TextItem&gt;**](TextItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **post_split**
> FilesResult post_split(file, format, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::LightCellsApi.new

file = File.new('/path/to/file.txt') # File | File to upload

format = 'format_example' # String | 

opts = { 
  password: 'password_example', # String | 
  from: 56, # Integer | 
  to: 56 # Integer | 
}

begin
  result = api_instance.post_split(file, format, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling LightCellsApi->post_split: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**| File to upload | 
 **format** | **String**|  | 
 **password** | **String**|  | [optional] 
 **from** | **Integer**|  | [optional] 
 **to** | **Integer**|  | [optional] 

### Return type

[**FilesResult**](FilesResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **post_unlock**
> FilesResult post_unlock(file, password)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::LightCellsApi.new

file = File.new('/path/to/file.txt') # File | File to upload

password = 'password_example' # String | 


begin
  result = api_instance.post_unlock(file, password)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling LightCellsApi->post_unlock: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**| File to upload | 
 **password** | **String**|  | 

### Return type

[**FilesResult**](FilesResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **post_watermark**
> FilesResult post_watermark(file, text, color)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::LightCellsApi.new

file = File.new('/path/to/file.txt') # File | File to upload

text = 'text_example' # String | 

color = 'color_example' # String | 


begin
  result = api_instance.post_watermark(file, text, color)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling LightCellsApi->post_watermark: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**| File to upload | 
 **text** | **String**|  | 
 **color** | **String**|  | 

### Return type

[**FilesResult**](FilesResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



