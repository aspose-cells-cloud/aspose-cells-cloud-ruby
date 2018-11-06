# AsposeCellsCloud::CellsOleObjectsApi

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_ole_objects_delete_worksheet_ole_object**](CellsOleObjectsApi.md#cells_ole_objects_delete_worksheet_ole_object) | **DELETE** /cells/{name}/worksheets/{sheetName}/oleobjects/{oleObjectIndex} | Delete OLE object.
[**cells_ole_objects_delete_worksheet_ole_objects**](CellsOleObjectsApi.md#cells_ole_objects_delete_worksheet_ole_objects) | **DELETE** /cells/{name}/worksheets/{sheetName}/oleobjects | Delete all OLE objects.
[**cells_ole_objects_get_worksheet_ole_object**](CellsOleObjectsApi.md#cells_ole_objects_get_worksheet_ole_object) | **GET** /cells/{name}/worksheets/{sheetName}/oleobjects/{objectNumber} | Get OLE object info.
[**cells_ole_objects_get_worksheet_ole_objects**](CellsOleObjectsApi.md#cells_ole_objects_get_worksheet_ole_objects) | **GET** /cells/{name}/worksheets/{sheetName}/oleobjects | Get worksheet OLE objects info.
[**cells_ole_objects_post_update_worksheet_ole_object**](CellsOleObjectsApi.md#cells_ole_objects_post_update_worksheet_ole_object) | **POST** /cells/{name}/worksheets/{sheetName}/oleobjects/{oleObjectIndex} | Update OLE object.
[**cells_ole_objects_put_worksheet_ole_object**](CellsOleObjectsApi.md#cells_ole_objects_put_worksheet_ole_object) | **PUT** /cells/{name}/worksheets/{sheetName}/oleobjects | Add OLE object


# **cells_ole_objects_delete_worksheet_ole_object**
> SaaSposeResponse cells_ole_objects_delete_worksheet_ole_object(name, sheet_name, ole_object_index, opts)

Delete OLE object.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsOleObjectsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worsheet name.

ole_object_index = 56 # Integer | Ole object index

opts = { 
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Delete OLE object.
  result = api_instance.cells_ole_objects_delete_worksheet_ole_object(name, sheet_name, ole_object_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsOleObjectsApi->cells_ole_objects_delete_worksheet_ole_object: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worsheet name. | 
 **ole_object_index** | **Integer**| Ole object index | 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_ole_objects_delete_worksheet_ole_objects**
> SaaSposeResponse cells_ole_objects_delete_worksheet_ole_objects(name, sheet_name, opts)

Delete all OLE objects.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsOleObjectsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worsheet name.

opts = { 
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Delete all OLE objects.
  result = api_instance.cells_ole_objects_delete_worksheet_ole_objects(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsOleObjectsApi->cells_ole_objects_delete_worksheet_ole_objects: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worsheet name. | 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_ole_objects_get_worksheet_ole_object**
> File cells_ole_objects_get_worksheet_ole_object(name, sheet_name, object_number, opts)

Get OLE object info.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsOleObjectsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | Worksheet name.

object_number = 56 # Integer | The object number.

opts = { 
  format: "format_example", # String | The exported object format.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get OLE object info.
  result = api_instance.cells_ole_objects_get_worksheet_ole_object(name, sheet_name, object_number, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsOleObjectsApi->cells_ole_objects_get_worksheet_ole_object: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **object_number** | **Integer**| The object number. | 
 **format** | **String**| The exported object format. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_ole_objects_get_worksheet_ole_objects**
> OleObjectsResponse cells_ole_objects_get_worksheet_ole_objects(name, sheet_name, opts)

Get worksheet OLE objects info.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsOleObjectsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get worksheet OLE objects info.
  result = api_instance.cells_ole_objects_get_worksheet_ole_objects(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsOleObjectsApi->cells_ole_objects_get_worksheet_ole_objects: #{e}"
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

[**OleObjectsResponse**](OleObjectsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_ole_objects_post_update_worksheet_ole_object**
> SaaSposeResponse cells_ole_objects_post_update_worksheet_ole_object(name, sheet_name, ole_object_index, opts)

Update OLE object.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsOleObjectsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worsheet name.

ole_object_index = 56 # Integer | Ole object index

opts = { 
  ole: AsposeCellsCloud::OleObject.new, # OleObject | Ole Object
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Update OLE object.
  result = api_instance.cells_ole_objects_post_update_worksheet_ole_object(name, sheet_name, ole_object_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsOleObjectsApi->cells_ole_objects_post_update_worksheet_ole_object: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worsheet name. | 
 **ole_object_index** | **Integer**| Ole object index | 
 **ole** | [**OleObject**](OleObject.md)| Ole Object | [optional] 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_ole_objects_put_worksheet_ole_object**
> OleObjectResponse cells_ole_objects_put_worksheet_ole_object(name, sheet_name, opts)

Add OLE object

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsOleObjectsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worsheet name.

opts = { 
  ole_object: AsposeCellsCloud::OleObject.new, # OleObject | Ole Object
  upper_left_row: 0, # Integer | Upper left row index
  upper_left_column: 0, # Integer | Upper left column index
  height: 0, # Integer | Height of oleObject, in unit of pixel
  width: 0, # Integer | Width of oleObject, in unit of pixel
  ole_file: "ole_file_example", # String | OLE filename
  image_file: "image_file_example", # String | Image filename
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Add OLE object
  result = api_instance.cells_ole_objects_put_worksheet_ole_object(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsOleObjectsApi->cells_ole_objects_put_worksheet_ole_object: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worsheet name. | 
 **ole_object** | [**OleObject**](OleObject.md)| Ole Object | [optional] 
 **upper_left_row** | **Integer**| Upper left row index | [optional] [default to 0]
 **upper_left_column** | **Integer**| Upper left column index | [optional] [default to 0]
 **height** | **Integer**| Height of oleObject, in unit of pixel | [optional] [default to 0]
 **width** | **Integer**| Width of oleObject, in unit of pixel | [optional] [default to 0]
 **ole_file** | **String**| OLE filename | [optional] 
 **image_file** | **String**| Image filename | [optional] 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**OleObjectResponse**](OleObjectResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



