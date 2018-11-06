# AsposeCellsCloud::CellsConditionalFormattingsApi

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_conditional_formattings_delete_worksheet_conditional_formatting**](CellsConditionalFormattingsApi.md#cells_conditional_formattings_delete_worksheet_conditional_formatting) | **DELETE** /cells/{name}/worksheets/{sheetName}/conditionalFormattings/{index} | Remove conditional formatting
[**cells_conditional_formattings_delete_worksheet_conditional_formatting_area**](CellsConditionalFormattingsApi.md#cells_conditional_formattings_delete_worksheet_conditional_formatting_area) | **DELETE** /cells/{name}/worksheets/{sheetName}/conditionalFormattings/area | Remove cell area from conditional formatting.
[**cells_conditional_formattings_delete_worksheet_conditional_formattings**](CellsConditionalFormattingsApi.md#cells_conditional_formattings_delete_worksheet_conditional_formattings) | **DELETE** /cells/{name}/worksheets/{sheetName}/conditionalFormattings | Clear all condition formattings
[**cells_conditional_formattings_get_worksheet_conditional_formatting**](CellsConditionalFormattingsApi.md#cells_conditional_formattings_get_worksheet_conditional_formatting) | **GET** /cells/{name}/worksheets/{sheetName}/conditionalFormattings/{index} | Get conditional formatting
[**cells_conditional_formattings_get_worksheet_conditional_formattings**](CellsConditionalFormattingsApi.md#cells_conditional_formattings_get_worksheet_conditional_formattings) | **GET** /cells/{name}/worksheets/{sheetName}/conditionalFormattings | Get conditional formattings 
[**cells_conditional_formattings_put_worksheet_conditional_formatting**](CellsConditionalFormattingsApi.md#cells_conditional_formattings_put_worksheet_conditional_formatting) | **PUT** /cells/{name}/worksheets/{sheetName}/conditionalFormattings | Add a condition formatting.
[**cells_conditional_formattings_put_worksheet_format_condition**](CellsConditionalFormattingsApi.md#cells_conditional_formattings_put_worksheet_format_condition) | **PUT** /cells/{name}/worksheets/{sheetName}/conditionalFormattings/{index} | Add a format condition.
[**cells_conditional_formattings_put_worksheet_format_condition_area**](CellsConditionalFormattingsApi.md#cells_conditional_formattings_put_worksheet_format_condition_area) | **PUT** /cells/{name}/worksheets/{sheetName}/conditionalFormattings/{index}/area | add a cell area for format condition             
[**cells_conditional_formattings_put_worksheet_format_condition_condition**](CellsConditionalFormattingsApi.md#cells_conditional_formattings_put_worksheet_format_condition_condition) | **PUT** /cells/{name}/worksheets/{sheetName}/conditionalFormattings/{index}/condition | Add a condition for format condition.


# **cells_conditional_formattings_delete_worksheet_conditional_formatting**
> SaaSposeResponse cells_conditional_formattings_delete_worksheet_conditional_formatting(name, sheet_name, index, opts)

Remove conditional formatting

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsConditionalFormattingsApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

index = 56 # Integer | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Remove conditional formatting
  result = api_instance.cells_conditional_formattings_delete_worksheet_conditional_formatting(name, sheet_name, index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsConditionalFormattingsApi->cells_conditional_formattings_delete_worksheet_conditional_formatting: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **index** | **Integer**|  | 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_conditional_formattings_delete_worksheet_conditional_formatting_area**
> SaaSposeResponse cells_conditional_formattings_delete_worksheet_conditional_formatting_area(name, sheet_name, start_row, start_column, total_rows, total_columns, opts)

Remove cell area from conditional formatting.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsConditionalFormattingsApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

start_row = 56 # Integer | 

start_column = 56 # Integer | 

total_rows = 56 # Integer | 

total_columns = 56 # Integer | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Remove cell area from conditional formatting.
  result = api_instance.cells_conditional_formattings_delete_worksheet_conditional_formatting_area(name, sheet_name, start_row, start_column, total_rows, total_columns, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsConditionalFormattingsApi->cells_conditional_formattings_delete_worksheet_conditional_formatting_area: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **start_row** | **Integer**|  | 
 **start_column** | **Integer**|  | 
 **total_rows** | **Integer**|  | 
 **total_columns** | **Integer**|  | 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_conditional_formattings_delete_worksheet_conditional_formattings**
> SaaSposeResponse cells_conditional_formattings_delete_worksheet_conditional_formattings(name, sheet_name, opts)

Clear all condition formattings

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsConditionalFormattingsApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Clear all condition formattings
  result = api_instance.cells_conditional_formattings_delete_worksheet_conditional_formattings(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsConditionalFormattingsApi->cells_conditional_formattings_delete_worksheet_conditional_formattings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_conditional_formattings_get_worksheet_conditional_formatting**
> ConditionalFormattingResponse cells_conditional_formattings_get_worksheet_conditional_formatting(name, sheet_name, index, opts)

Get conditional formatting

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsConditionalFormattingsApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

index = 56 # Integer | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Get conditional formatting
  result = api_instance.cells_conditional_formattings_get_worksheet_conditional_formatting(name, sheet_name, index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsConditionalFormattingsApi->cells_conditional_formattings_get_worksheet_conditional_formatting: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **index** | **Integer**|  | 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**ConditionalFormattingResponse**](ConditionalFormattingResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_conditional_formattings_get_worksheet_conditional_formattings**
> ConditionalFormattingsResponse cells_conditional_formattings_get_worksheet_conditional_formattings(name, sheet_name, opts)

Get conditional formattings 

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsConditionalFormattingsApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Get conditional formattings 
  result = api_instance.cells_conditional_formattings_get_worksheet_conditional_formattings(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsConditionalFormattingsApi->cells_conditional_formattings_get_worksheet_conditional_formattings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**ConditionalFormattingsResponse**](ConditionalFormattingsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_conditional_formattings_put_worksheet_conditional_formatting**
> SaaSposeResponse cells_conditional_formattings_put_worksheet_conditional_formatting(name, sheet_name, cell_area, opts)

Add a condition formatting.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsConditionalFormattingsApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

cell_area = "cell_area_example" # String | 

opts = { 
  formatcondition: AsposeCellsCloud::FormatCondition.new, # FormatCondition | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Add a condition formatting.
  result = api_instance.cells_conditional_formattings_put_worksheet_conditional_formatting(name, sheet_name, cell_area, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsConditionalFormattingsApi->cells_conditional_formattings_put_worksheet_conditional_formatting: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **cell_area** | **String**|  | 
 **formatcondition** | [**FormatCondition**](FormatCondition.md)|  | [optional] 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_conditional_formattings_put_worksheet_format_condition**
> SaaSposeResponse cells_conditional_formattings_put_worksheet_format_condition(name, sheet_name, index, cell_area, type, operator_type, formula1, formula2, opts)

Add a format condition.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsConditionalFormattingsApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

index = 56 # Integer | 

cell_area = "cell_area_example" # String | 

type = "type_example" # String | 

operator_type = "operator_type_example" # String | 

formula1 = "formula1_example" # String | 

formula2 = "formula2_example" # String | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Add a format condition.
  result = api_instance.cells_conditional_formattings_put_worksheet_format_condition(name, sheet_name, index, cell_area, type, operator_type, formula1, formula2, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsConditionalFormattingsApi->cells_conditional_formattings_put_worksheet_format_condition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **index** | **Integer**|  | 
 **cell_area** | **String**|  | 
 **type** | **String**|  | 
 **operator_type** | **String**|  | 
 **formula1** | **String**|  | 
 **formula2** | **String**|  | 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_conditional_formattings_put_worksheet_format_condition_area**
> SaaSposeResponse cells_conditional_formattings_put_worksheet_format_condition_area(name, sheet_name, index, cell_area, opts)

add a cell area for format condition             

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsConditionalFormattingsApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

index = 56 # Integer | 

cell_area = "cell_area_example" # String | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #add a cell area for format condition             
  result = api_instance.cells_conditional_formattings_put_worksheet_format_condition_area(name, sheet_name, index, cell_area, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsConditionalFormattingsApi->cells_conditional_formattings_put_worksheet_format_condition_area: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **index** | **Integer**|  | 
 **cell_area** | **String**|  | 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_conditional_formattings_put_worksheet_format_condition_condition**
> SaaSposeResponse cells_conditional_formattings_put_worksheet_format_condition_condition(name, sheet_name, index, type, operator_type, formula1, formula2, opts)

Add a condition for format condition.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsConditionalFormattingsApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

index = 56 # Integer | 

type = "type_example" # String | 

operator_type = "operator_type_example" # String | 

formula1 = "formula1_example" # String | 

formula2 = "formula2_example" # String | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Add a condition for format condition.
  result = api_instance.cells_conditional_formattings_put_worksheet_format_condition_condition(name, sheet_name, index, type, operator_type, formula1, formula2, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsConditionalFormattingsApi->cells_conditional_formattings_put_worksheet_format_condition_condition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **index** | **Integer**|  | 
 **type** | **String**|  | 
 **operator_type** | **String**|  | 
 **formula1** | **String**|  | 
 **formula2** | **String**|  | 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



