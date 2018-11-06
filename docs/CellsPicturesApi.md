# AsposeCellsCloud::CellsPicturesApi

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_pictures_delete_worksheet_picture**](CellsPicturesApi.md#cells_pictures_delete_worksheet_picture) | **DELETE** /cells/{name}/worksheets/{sheetName}/pictures/{pictureIndex} | Delete a picture object in worksheet
[**cells_pictures_delete_worksheet_pictures**](CellsPicturesApi.md#cells_pictures_delete_worksheet_pictures) | **DELETE** /cells/{name}/worksheets/{sheetName}/pictures | Delete all pictures in worksheet.
[**cells_pictures_get_worksheet_picture**](CellsPicturesApi.md#cells_pictures_get_worksheet_picture) | **GET** /cells/{name}/worksheets/{sheetName}/pictures/{pictureIndex} | GRead worksheet picture by number.
[**cells_pictures_get_worksheet_pictures**](CellsPicturesApi.md#cells_pictures_get_worksheet_pictures) | **GET** /cells/{name}/worksheets/{sheetName}/pictures | Read worksheet pictures.
[**cells_pictures_post_worksheet_picture**](CellsPicturesApi.md#cells_pictures_post_worksheet_picture) | **POST** /cells/{name}/worksheets/{sheetName}/pictures/{pictureIndex} | Update worksheet picture by index.
[**cells_pictures_put_worksheet_add_picture**](CellsPicturesApi.md#cells_pictures_put_worksheet_add_picture) | **PUT** /cells/{name}/worksheets/{sheetName}/pictures | Add a new worksheet picture.


# **cells_pictures_delete_worksheet_picture**
> SaaSposeResponse cells_pictures_delete_worksheet_picture(name, sheet_name, picture_index, opts)

Delete a picture object in worksheet

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPicturesApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worsheet name.

picture_index = 56 # Integer | Picture index

opts = { 
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Delete a picture object in worksheet
  result = api_instance.cells_pictures_delete_worksheet_picture(name, sheet_name, picture_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPicturesApi->cells_pictures_delete_worksheet_picture: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worsheet name. | 
 **picture_index** | **Integer**| Picture index | 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_pictures_delete_worksheet_pictures**
> SaaSposeResponse cells_pictures_delete_worksheet_pictures(name, sheet_name, opts)

Delete all pictures in worksheet.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPicturesApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | Worksheet name.

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Delete all pictures in worksheet.
  result = api_instance.cells_pictures_delete_worksheet_pictures(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPicturesApi->cells_pictures_delete_worksheet_pictures: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_pictures_get_worksheet_picture**
> File cells_pictures_get_worksheet_picture(name, sheet_name, picture_index, opts)

GRead worksheet picture by number.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPicturesApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | Worksheet name.

picture_index = 56 # Integer | The picture index.

opts = { 
  format: "format_example", # String | The exported object format.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #GRead worksheet picture by number.
  result = api_instance.cells_pictures_get_worksheet_picture(name, sheet_name, picture_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPicturesApi->cells_pictures_get_worksheet_picture: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **picture_index** | **Integer**| The picture index. | 
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



# **cells_pictures_get_worksheet_pictures**
> PicturesResponse cells_pictures_get_worksheet_pictures(name, sheet_name, opts)

Read worksheet pictures.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPicturesApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Read worksheet pictures.
  result = api_instance.cells_pictures_get_worksheet_pictures(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPicturesApi->cells_pictures_get_worksheet_pictures: #{e}"
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

[**PicturesResponse**](PicturesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_pictures_post_worksheet_picture**
> PictureResponse cells_pictures_post_worksheet_picture(name, sheet_name, picture_index, opts)

Update worksheet picture by index.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPicturesApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | Worksheet name.

picture_index = 56 # Integer | The picture's index.

opts = { 
  picture: AsposeCellsCloud::Picture.new, # Picture | Picture object
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Update worksheet picture by index.
  result = api_instance.cells_pictures_post_worksheet_picture(name, sheet_name, picture_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPicturesApi->cells_pictures_post_worksheet_picture: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **picture_index** | **Integer**| The picture&#39;s index. | 
 **picture** | [**Picture**](Picture.md)| Picture object | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**PictureResponse**](PictureResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_pictures_put_worksheet_add_picture**
> PicturesResponse cells_pictures_put_worksheet_add_picture(name, sheet_name, opts)

Add a new worksheet picture.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPicturesApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worsheet name.

opts = { 
  picture: AsposeCellsCloud::Picture.new, # Picture | Pictute object
  upper_left_row: 0, # Integer | The image upper left row.
  upper_left_column: 0, # Integer | The image upper left column.
  lower_right_row: 0, # Integer | The image low right row.
  lower_right_column: 0, # Integer | The image low right column.
  picture_path: "picture_path_example", # String | The picture path, if not provided the picture data is inspected in the request body.
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Add a new worksheet picture.
  result = api_instance.cells_pictures_put_worksheet_add_picture(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPicturesApi->cells_pictures_put_worksheet_add_picture: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worsheet name. | 
 **picture** | [**Picture**](Picture.md)| Pictute object | [optional] 
 **upper_left_row** | **Integer**| The image upper left row. | [optional] [default to 0]
 **upper_left_column** | **Integer**| The image upper left column. | [optional] [default to 0]
 **lower_right_row** | **Integer**| The image low right row. | [optional] [default to 0]
 **lower_right_column** | **Integer**| The image low right column. | [optional] [default to 0]
 **picture_path** | **String**| The picture path, if not provided the picture data is inspected in the request body. | [optional] 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**PicturesResponse**](PicturesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



