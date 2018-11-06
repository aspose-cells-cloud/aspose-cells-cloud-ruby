# AsposeCellsCloud::CellsSaveAsApi

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_save_as_post_document_save_as**](CellsSaveAsApi.md#cells_save_as_post_document_save_as) | **POST** /cells/{name}/SaveAs | Convert document and save result to storage.


# **cells_save_as_post_document_save_as**
> SaveResponse cells_save_as_post_document_save_as(name, opts)

Convert document and save result to storage.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsSaveAsApi.new

name = "name_example" # String | The document name.

opts = { 
  save_options: AsposeCellsCloud::SaveOptions.new, # SaveOptions | Save options.
  newfilename: "newfilename_example", # String | The new file name.
  is_auto_fit_rows: false, # BOOLEAN | Autofit rows.
  is_auto_fit_columns: false, # BOOLEAN | Autofit columns.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Convert document and save result to storage.
  result = api_instance.cells_save_as_post_document_save_as(name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsSaveAsApi->cells_save_as_post_document_save_as: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **save_options** | [**SaveOptions**](SaveOptions.md)| Save options. | [optional] 
 **newfilename** | **String**| The new file name. | [optional] 
 **is_auto_fit_rows** | **BOOLEAN**| Autofit rows. | [optional] [default to false]
 **is_auto_fit_columns** | **BOOLEAN**| Autofit columns. | [optional] [default to false]
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaveResponse**](SaveResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



