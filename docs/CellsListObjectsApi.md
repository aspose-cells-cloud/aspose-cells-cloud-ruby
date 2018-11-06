# AsposeCellsCloud::CellsListObjectsApi

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_list_objects_delete_worksheet_list_object**](CellsListObjectsApi.md#cells_list_objects_delete_worksheet_list_object) | **DELETE** /cells/{name}/worksheets/{sheetName}/listobjects/{listObjectIndex} | Delete worksheet list object by index
[**cells_list_objects_delete_worksheet_list_objects**](CellsListObjectsApi.md#cells_list_objects_delete_worksheet_list_objects) | **DELETE** /cells/{name}/worksheets/{sheetName}/listobjects | Delete worksheet list objects
[**cells_list_objects_get_worksheet_list_object**](CellsListObjectsApi.md#cells_list_objects_get_worksheet_list_object) | **GET** /cells/{name}/worksheets/{sheetName}/listobjects/{listobjectindex} | Get worksheet list object info by index.
[**cells_list_objects_get_worksheet_list_objects**](CellsListObjectsApi.md#cells_list_objects_get_worksheet_list_objects) | **GET** /cells/{name}/worksheets/{sheetName}/listobjects | Get worksheet listobjects info.
[**cells_list_objects_post_worksheet_list_object**](CellsListObjectsApi.md#cells_list_objects_post_worksheet_list_object) | **POST** /cells/{name}/worksheets/{sheetName}/listobjects/{listObjectIndex} | Update  list object 
[**cells_list_objects_post_worksheet_list_object_convert_to_range**](CellsListObjectsApi.md#cells_list_objects_post_worksheet_list_object_convert_to_range) | **POST** /cells/{name}/worksheets/{sheetName}/listobjects/{listObjectIndex}/ConvertToRange | 
[**cells_list_objects_post_worksheet_list_object_sort_table**](CellsListObjectsApi.md#cells_list_objects_post_worksheet_list_object_sort_table) | **POST** /cells/{name}/worksheets/{sheetName}/listobjects/{listObjectIndex}/sort | 
[**cells_list_objects_post_worksheet_list_object_summarize_with_pivot_table**](CellsListObjectsApi.md#cells_list_objects_post_worksheet_list_object_summarize_with_pivot_table) | **POST** /cells/{name}/worksheets/{sheetName}/listobjects/{listObjectIndex}/SummarizeWithPivotTable | 
[**cells_list_objects_put_worksheet_list_object**](CellsListObjectsApi.md#cells_list_objects_put_worksheet_list_object) | **PUT** /cells/{name}/worksheets/{sheetName}/listobjects | Add a list object into worksheet.


# **cells_list_objects_delete_worksheet_list_object**
> SaaSposeResponse cells_list_objects_delete_worksheet_list_object(name, sheet_name, list_object_index, opts)

Delete worksheet list object by index

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsListObjectsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

list_object_index = 56 # Integer | List object index

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Delete worksheet list object by index
  result = api_instance.cells_list_objects_delete_worksheet_list_object(name, sheet_name, list_object_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsListObjectsApi->cells_list_objects_delete_worksheet_list_object: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **list_object_index** | **Integer**| List object index | 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_list_objects_delete_worksheet_list_objects**
> SaaSposeResponse cells_list_objects_delete_worksheet_list_objects(name, sheet_name, opts)

Delete worksheet list objects

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsListObjectsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Delete worksheet list objects
  result = api_instance.cells_list_objects_delete_worksheet_list_objects(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsListObjectsApi->cells_list_objects_delete_worksheet_list_objects: #{e}"
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

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_list_objects_get_worksheet_list_object**
> ListObjectResponse cells_list_objects_get_worksheet_list_object(name, sheet_name, listobjectindex, opts)

Get worksheet list object info by index.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsListObjectsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

listobjectindex = 56 # Integer | list object index.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get worksheet list object info by index.
  result = api_instance.cells_list_objects_get_worksheet_list_object(name, sheet_name, listobjectindex, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsListObjectsApi->cells_list_objects_get_worksheet_list_object: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **listobjectindex** | **Integer**| list object index. | 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**ListObjectResponse**](ListObjectResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_list_objects_get_worksheet_list_objects**
> ListObjectsResponse cells_list_objects_get_worksheet_list_objects(name, sheet_name, opts)

Get worksheet listobjects info.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsListObjectsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get worksheet listobjects info.
  result = api_instance.cells_list_objects_get_worksheet_list_objects(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsListObjectsApi->cells_list_objects_get_worksheet_list_objects: #{e}"
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

[**ListObjectsResponse**](ListObjectsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_list_objects_post_worksheet_list_object**
> SaaSposeResponse cells_list_objects_post_worksheet_list_object(name, sheet_name, list_object_index, opts)

Update  list object 

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsListObjectsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

list_object_index = 56 # Integer | list Object index

opts = { 
  list_object: AsposeCellsCloud::ListObject.new, # ListObject | listObject dto in request body.
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Update  list object 
  result = api_instance.cells_list_objects_post_worksheet_list_object(name, sheet_name, list_object_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsListObjectsApi->cells_list_objects_post_worksheet_list_object: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **list_object_index** | **Integer**| list Object index | 
 **list_object** | [**ListObject**](ListObject.md)| listObject dto in request body. | [optional] 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_list_objects_post_worksheet_list_object_convert_to_range**
> SaaSposeResponse cells_list_objects_post_worksheet_list_object_convert_to_range(name, sheet_name, list_object_index, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsListObjectsApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

list_object_index = 56 # Integer | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  result = api_instance.cells_list_objects_post_worksheet_list_object_convert_to_range(name, sheet_name, list_object_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsListObjectsApi->cells_list_objects_post_worksheet_list_object_convert_to_range: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **list_object_index** | **Integer**|  | 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_list_objects_post_worksheet_list_object_sort_table**
> SaaSposeResponse cells_list_objects_post_worksheet_list_object_sort_table(name, sheet_name, list_object_index, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsListObjectsApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

list_object_index = 56 # Integer | 

opts = { 
  data_sorter: AsposeCellsCloud::DataSorter.new, # DataSorter | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  result = api_instance.cells_list_objects_post_worksheet_list_object_sort_table(name, sheet_name, list_object_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsListObjectsApi->cells_list_objects_post_worksheet_list_object_sort_table: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **list_object_index** | **Integer**|  | 
 **data_sorter** | [**DataSorter**](DataSorter.md)|  | [optional] 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_list_objects_post_worksheet_list_object_summarize_with_pivot_table**
> SaaSposeResponse cells_list_objects_post_worksheet_list_object_summarize_with_pivot_table(name, sheet_name, list_object_index, destsheet_name, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsListObjectsApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

list_object_index = 56 # Integer | 

destsheet_name = "destsheet_name_example" # String | 

opts = { 
  request: AsposeCellsCloud::CreatePivotTableRequest.new, # CreatePivotTableRequest | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  result = api_instance.cells_list_objects_post_worksheet_list_object_summarize_with_pivot_table(name, sheet_name, list_object_index, destsheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsListObjectsApi->cells_list_objects_post_worksheet_list_object_summarize_with_pivot_table: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **list_object_index** | **Integer**|  | 
 **destsheet_name** | **String**|  | 
 **request** | [**CreatePivotTableRequest**](CreatePivotTableRequest.md)|  | [optional] 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_list_objects_put_worksheet_list_object**
> ListObjectResponse cells_list_objects_put_worksheet_list_object(name, sheet_name, start_row, start_column, end_row, end_column, opts)

Add a list object into worksheet.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsListObjectsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

start_row = 56 # Integer | The start row of the list range.

start_column = 56 # Integer | The start row of the list range.

end_row = 56 # Integer | The start row of the list range.

end_column = 56 # Integer | The start row of the list range.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example", # String | storage name.
  has_headers: true # BOOLEAN | Whether the range has headers.
}

begin
  #Add a list object into worksheet.
  result = api_instance.cells_list_objects_put_worksheet_list_object(name, sheet_name, start_row, start_column, end_row, end_column, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsListObjectsApi->cells_list_objects_put_worksheet_list_object: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **start_row** | **Integer**| The start row of the list range. | 
 **start_column** | **Integer**| The start row of the list range. | 
 **end_row** | **Integer**| The start row of the list range. | 
 **end_column** | **Integer**| The start row of the list range. | 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 
 **has_headers** | **BOOLEAN**| Whether the range has headers. | [optional] [default to true]

### Return type

[**ListObjectResponse**](ListObjectResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



