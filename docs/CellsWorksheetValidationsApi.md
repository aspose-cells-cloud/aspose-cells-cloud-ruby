# AsposeCellsCloud::CellsWorksheetValidationsApi

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_worksheet_validations_delete_worksheet_validation**](CellsWorksheetValidationsApi.md#cells_worksheet_validations_delete_worksheet_validation) | **DELETE** /cells/{name}/worksheets/{sheetName}/validations/{validationIndex} | Delete worksheet validation by index.
[**cells_worksheet_validations_get_worksheet_validation**](CellsWorksheetValidationsApi.md#cells_worksheet_validations_get_worksheet_validation) | **GET** /cells/{name}/worksheets/{sheetName}/validations/{validationIndex} | Get worksheet validation by index.
[**cells_worksheet_validations_get_worksheet_validations**](CellsWorksheetValidationsApi.md#cells_worksheet_validations_get_worksheet_validations) | **GET** /cells/{name}/worksheets/{sheetName}/validations | Get worksheet validations.
[**cells_worksheet_validations_post_worksheet_validation**](CellsWorksheetValidationsApi.md#cells_worksheet_validations_post_worksheet_validation) | **POST** /cells/{name}/worksheets/{sheetName}/validations/{validationIndex} | Update worksheet validation by index.
[**cells_worksheet_validations_put_worksheet_validation**](CellsWorksheetValidationsApi.md#cells_worksheet_validations_put_worksheet_validation) | **PUT** /cells/{name}/worksheets/{sheetName}/validations | Add worksheet validation at index.


# **cells_worksheet_validations_delete_worksheet_validation**
> ValidationResponse cells_worksheet_validations_delete_worksheet_validation(name, sheet_name, validation_index, opts)

Delete worksheet validation by index.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetValidationsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | Worksheet name.

validation_index = 56 # Integer | The validation index.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Delete worksheet validation by index.
  result = api_instance.cells_worksheet_validations_delete_worksheet_validation(name, sheet_name, validation_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetValidationsApi->cells_worksheet_validations_delete_worksheet_validation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **validation_index** | **Integer**| The validation index. | 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**ValidationResponse**](ValidationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheet_validations_get_worksheet_validation**
> ValidationResponse cells_worksheet_validations_get_worksheet_validation(name, sheet_name, validation_index, opts)

Get worksheet validation by index.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetValidationsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | Worksheet name.

validation_index = 56 # Integer | The validation index.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get worksheet validation by index.
  result = api_instance.cells_worksheet_validations_get_worksheet_validation(name, sheet_name, validation_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetValidationsApi->cells_worksheet_validations_get_worksheet_validation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **validation_index** | **Integer**| The validation index. | 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**ValidationResponse**](ValidationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheet_validations_get_worksheet_validations**
> ValidationsResponse cells_worksheet_validations_get_worksheet_validations(name, sheet_name, opts)

Get worksheet validations.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetValidationsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | Worksheet name.

opts = { 
  folder: "folder_example", # String | Document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get worksheet validations.
  result = api_instance.cells_worksheet_validations_get_worksheet_validations(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetValidationsApi->cells_worksheet_validations_get_worksheet_validations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **folder** | **String**| Document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**ValidationsResponse**](ValidationsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheet_validations_post_worksheet_validation**
> ValidationResponse cells_worksheet_validations_post_worksheet_validation(name, sheet_name, validation_index, opts)

Update worksheet validation by index.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetValidationsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | Worksheet name.

validation_index = 56 # Integer | The validation index.

opts = { 
  validation: AsposeCellsCloud::Validation.new, # Validation | 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Update worksheet validation by index.
  result = api_instance.cells_worksheet_validations_post_worksheet_validation(name, sheet_name, validation_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetValidationsApi->cells_worksheet_validations_post_worksheet_validation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **validation_index** | **Integer**| The validation index. | 
 **validation** | [**Validation**](Validation.md)|  | [optional] 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**ValidationResponse**](ValidationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheet_validations_put_worksheet_validation**
> ValidationResponse cells_worksheet_validations_put_worksheet_validation(name, sheet_name, opts)

Add worksheet validation at index.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetValidationsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | Worksheet name.

opts = { 
  range: "range_example", # String | Specified cells area
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Add worksheet validation at index.
  result = api_instance.cells_worksheet_validations_put_worksheet_validation(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetValidationsApi->cells_worksheet_validations_put_worksheet_validation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **range** | **String**| Specified cells area | [optional] 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**ValidationResponse**](ValidationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



