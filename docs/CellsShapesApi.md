# AsposeCellsCloud::CellsShapesApi

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_shapes_delete_worksheet_shape**](CellsShapesApi.md#cells_shapes_delete_worksheet_shape) | **DELETE** /cells/{name}/worksheets/{sheetName}/shapes/{shapeindex} | Delete a shape in worksheet
[**cells_shapes_delete_worksheet_shapes**](CellsShapesApi.md#cells_shapes_delete_worksheet_shapes) | **DELETE** /cells/{name}/worksheets/{sheetName}/shapes | delete all shapes in worksheet
[**cells_shapes_get_worksheet_shape**](CellsShapesApi.md#cells_shapes_get_worksheet_shape) | **GET** /cells/{name}/worksheets/{sheetName}/shapes/{shapeindex} | Get worksheet shape
[**cells_shapes_get_worksheet_shapes**](CellsShapesApi.md#cells_shapes_get_worksheet_shapes) | **GET** /cells/{name}/worksheets/{sheetName}/shapes | Get worksheet shapes 
[**cells_shapes_post_worksheet_shape**](CellsShapesApi.md#cells_shapes_post_worksheet_shape) | **POST** /cells/{name}/worksheets/{sheetName}/shapes/{shapeindex} | Update a shape in worksheet
[**cells_shapes_put_worksheet_shape**](CellsShapesApi.md#cells_shapes_put_worksheet_shape) | **PUT** /cells/{name}/worksheets/{sheetName}/shapes | Add shape in worksheet


# **cells_shapes_delete_worksheet_shape**
> SaaSposeResponse cells_shapes_delete_worksheet_shape(name, sheet_name, shapeindex, opts)

Delete a shape in worksheet

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsShapesApi.new

name = "name_example" # String | document name.

sheet_name = "sheet_name_example" # String | worksheet name.

shapeindex = 56 # Integer | shape index in worksheet shapes.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Delete a shape in worksheet
  result = api_instance.cells_shapes_delete_worksheet_shape(name, sheet_name, shapeindex, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsShapesApi->cells_shapes_delete_worksheet_shape: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| document name. | 
 **sheet_name** | **String**| worksheet name. | 
 **shapeindex** | **Integer**| shape index in worksheet shapes. | 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_shapes_delete_worksheet_shapes**
> SaaSposeResponse cells_shapes_delete_worksheet_shapes(name, sheet_name, opts)

delete all shapes in worksheet

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsShapesApi.new

name = "name_example" # String | document name.

sheet_name = "sheet_name_example" # String | worksheet name.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #delete all shapes in worksheet
  result = api_instance.cells_shapes_delete_worksheet_shapes(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsShapesApi->cells_shapes_delete_worksheet_shapes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| document name. | 
 **sheet_name** | **String**| worksheet name. | 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_shapes_get_worksheet_shape**
> ShapeResponse cells_shapes_get_worksheet_shape(name, sheet_name, shapeindex, opts)

Get worksheet shape

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsShapesApi.new

name = "name_example" # String | document name.

sheet_name = "sheet_name_example" # String | worksheet name.

shapeindex = 56 # Integer | shape index in worksheet shapes.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get worksheet shape
  result = api_instance.cells_shapes_get_worksheet_shape(name, sheet_name, shapeindex, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsShapesApi->cells_shapes_get_worksheet_shape: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| document name. | 
 **sheet_name** | **String**| worksheet name. | 
 **shapeindex** | **Integer**| shape index in worksheet shapes. | 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**ShapeResponse**](ShapeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_shapes_get_worksheet_shapes**
> ShapesResponse cells_shapes_get_worksheet_shapes(name, sheet_name, opts)

Get worksheet shapes 

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsShapesApi.new

name = "name_example" # String | document name.

sheet_name = "sheet_name_example" # String | worksheet name.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get worksheet shapes 
  result = api_instance.cells_shapes_get_worksheet_shapes(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsShapesApi->cells_shapes_get_worksheet_shapes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| document name. | 
 **sheet_name** | **String**| worksheet name. | 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**ShapesResponse**](ShapesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_shapes_post_worksheet_shape**
> SaaSposeResponse cells_shapes_post_worksheet_shape(name, sheet_name, shapeindex, opts)

Update a shape in worksheet

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsShapesApi.new

name = "name_example" # String | document name.

sheet_name = "sheet_name_example" # String | worksheet name.

shapeindex = 56 # Integer | shape index in worksheet shapes.

opts = { 
  dto: AsposeCellsCloud::Shape.new, # Shape | 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Update a shape in worksheet
  result = api_instance.cells_shapes_post_worksheet_shape(name, sheet_name, shapeindex, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsShapesApi->cells_shapes_post_worksheet_shape: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| document name. | 
 **sheet_name** | **String**| worksheet name. | 
 **shapeindex** | **Integer**| shape index in worksheet shapes. | 
 **dto** | [**Shape**](Shape.md)|  | [optional] 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_shapes_put_worksheet_shape**
> ShapeResponse cells_shapes_put_worksheet_shape(name, sheet_name, drawing_type, upper_left_row, upper_left_column, top, left, width, height, opts)

Add shape in worksheet

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsShapesApi.new

name = "name_example" # String | document name.

sheet_name = "sheet_name_example" # String | worksheet name.

drawing_type = "drawing_type_example" # String | shape object type

upper_left_row = 56 # Integer | Upper left row index.

upper_left_column = 56 # Integer | Upper left column index.

top = 56 # Integer | Represents the vertical offset of Spinner from its left row, in unit of pixel.

left = 56 # Integer | Represents the horizontal offset of Spinner from its left column, in unit of pixel.

width = 56 # Integer | Represents the height of Spinner, in unit of pixel.

height = 56 # Integer | Represents the width of Spinner, in unit of pixel.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Add shape in worksheet
  result = api_instance.cells_shapes_put_worksheet_shape(name, sheet_name, drawing_type, upper_left_row, upper_left_column, top, left, width, height, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsShapesApi->cells_shapes_put_worksheet_shape: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| document name. | 
 **sheet_name** | **String**| worksheet name. | 
 **drawing_type** | **String**| shape object type | 
 **upper_left_row** | **Integer**| Upper left row index. | 
 **upper_left_column** | **Integer**| Upper left column index. | 
 **top** | **Integer**| Represents the vertical offset of Spinner from its left row, in unit of pixel. | 
 **left** | **Integer**| Represents the horizontal offset of Spinner from its left column, in unit of pixel. | 
 **width** | **Integer**| Represents the height of Spinner, in unit of pixel. | 
 **height** | **Integer**| Represents the width of Spinner, in unit of pixel. | 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**ShapeResponse**](ShapeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



