# AsposeCellsCloud::CellsAutoshapesApi

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_autoshapes_get_worksheet_autoshape**](CellsAutoshapesApi.md#cells_autoshapes_get_worksheet_autoshape) | **GET** /cells/{name}/worksheets/{sheetName}/autoshapes/{autoshapeNumber} | Get autoshape info.
[**cells_autoshapes_get_worksheet_autoshapes**](CellsAutoshapesApi.md#cells_autoshapes_get_worksheet_autoshapes) | **GET** /cells/{name}/worksheets/{sheetName}/autoshapes | Get worksheet autoshapes info.


# **cells_autoshapes_get_worksheet_autoshape**
> File cells_autoshapes_get_worksheet_autoshape(name, sheet_name, autoshape_number, opts)

Get autoshape info.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsAutoshapesApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | Worksheet name.

autoshape_number = 56 # Integer | The autoshape number.

opts = { 
  format: "format_example", # String | Exported format.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get autoshape info.
  result = api_instance.cells_autoshapes_get_worksheet_autoshape(name, sheet_name, autoshape_number, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsAutoshapesApi->cells_autoshapes_get_worksheet_autoshape: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **autoshape_number** | **Integer**| The autoshape number. | 
 **format** | **String**| Exported format. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_autoshapes_get_worksheet_autoshapes**
> AutoShapesResponse cells_autoshapes_get_worksheet_autoshapes(name, sheet_name, opts)

Get worksheet autoshapes info.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsAutoshapesApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get worksheet autoshapes info.
  result = api_instance.cells_autoshapes_get_worksheet_autoshapes(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsAutoshapesApi->cells_autoshapes_get_worksheet_autoshapes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**AutoShapesResponse**](AutoShapesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



