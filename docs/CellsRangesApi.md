# AsposeCellsCloud::CellsRangesApi

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_ranges_get_worksheet_cells_range_value**](CellsRangesApi.md#cells_ranges_get_worksheet_cells_range_value) | **GET** /cells/{name}/worksheets/{sheetName}/ranges/value | Get cells list in a range by range name or row column indexes  
[**cells_ranges_post_worksheet_cells_range_column_width**](CellsRangesApi.md#cells_ranges_post_worksheet_cells_range_column_width) | **POST** /cells/{name}/worksheets/{sheetName}/ranges/columnWidth | Set column width of range
[**cells_ranges_post_worksheet_cells_range_merge**](CellsRangesApi.md#cells_ranges_post_worksheet_cells_range_merge) | **POST** /cells/{name}/worksheets/{sheetName}/ranges/merge | Combines a range of cells into a single cell.              
[**cells_ranges_post_worksheet_cells_range_move_to**](CellsRangesApi.md#cells_ranges_post_worksheet_cells_range_move_to) | **POST** /cells/{name}/worksheets/{sheetName}/ranges/moveto | Move the current range to the dest range.             
[**cells_ranges_post_worksheet_cells_range_outline_border**](CellsRangesApi.md#cells_ranges_post_worksheet_cells_range_outline_border) | **POST** /cells/{name}/worksheets/{sheetName}/ranges/outlineBorder | Sets outline border around a range of cells.
[**cells_ranges_post_worksheet_cells_range_row_height**](CellsRangesApi.md#cells_ranges_post_worksheet_cells_range_row_height) | **POST** /cells/{name}/worksheets/{sheetName}/ranges/rowHeight | set row height of range
[**cells_ranges_post_worksheet_cells_range_style**](CellsRangesApi.md#cells_ranges_post_worksheet_cells_range_style) | **POST** /cells/{name}/worksheets/{sheetName}/ranges/style | Sets the style of the range.             
[**cells_ranges_post_worksheet_cells_range_unmerge**](CellsRangesApi.md#cells_ranges_post_worksheet_cells_range_unmerge) | **POST** /cells/{name}/worksheets/{sheetName}/ranges/unmerge | Unmerges merged cells of this range.             
[**cells_ranges_post_worksheet_cells_range_value**](CellsRangesApi.md#cells_ranges_post_worksheet_cells_range_value) | **POST** /cells/{name}/worksheets/{sheetName}/ranges/value | Puts a value into the range, if appropriate the value will be converted to other data type and cell&#39;s number format will be reset.             
[**cells_ranges_post_worksheet_cells_ranges**](CellsRangesApi.md#cells_ranges_post_worksheet_cells_ranges) | **POST** /cells/{name}/worksheets/{sheetName}/ranges | copy range in the worksheet


# **cells_ranges_get_worksheet_cells_range_value**
> RangeValueResponse cells_ranges_get_worksheet_cells_range_value(name, sheet_name, opts)

Get cells list in a range by range name or row column indexes  

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsRangesApi.new

name = "name_example" # String | workbook name

sheet_name = "sheet_name_example" # String | worksheet name

opts = { 
  namerange: "namerange_example", # String | range name, for example: 'A1:B2' or 'range_name1'
  first_row: 56, # Integer | the first row of the range
  first_column: 56, # Integer | the first column of the range
  row_count: 56, # Integer | the count of rows in the range
  column_count: 56, # Integer | the count of columns in the range
  folder: "folder_example", # String | Workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get cells list in a range by range name or row column indexes  
  result = api_instance.cells_ranges_get_worksheet_cells_range_value(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsRangesApi->cells_ranges_get_worksheet_cells_range_value: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| workbook name | 
 **sheet_name** | **String**| worksheet name | 
 **namerange** | **String**| range name, for example: &#39;A1:B2&#39; or &#39;range_name1&#39; | [optional] 
 **first_row** | **Integer**| the first row of the range | [optional] 
 **first_column** | **Integer**| the first column of the range | [optional] 
 **row_count** | **Integer**| the count of rows in the range | [optional] 
 **column_count** | **Integer**| the count of columns in the range | [optional] 
 **folder** | **String**| Workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**RangeValueResponse**](RangeValueResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_ranges_post_worksheet_cells_range_column_width**
> SaaSposeResponse cells_ranges_post_worksheet_cells_range_column_width(name, sheet_name, value, opts)

Set column width of range

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsRangesApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

value = 1.2 # Float | 

opts = { 
  range: AsposeCellsCloud::Range.new, # Range | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Set column width of range
  result = api_instance.cells_ranges_post_worksheet_cells_range_column_width(name, sheet_name, value, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsRangesApi->cells_ranges_post_worksheet_cells_range_column_width: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **value** | **Float**|  | 
 **range** | [**Range**](Range.md)|  | [optional] 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_ranges_post_worksheet_cells_range_merge**
> SaaSposeResponse cells_ranges_post_worksheet_cells_range_merge(name, sheet_name, opts)

Combines a range of cells into a single cell.              

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsRangesApi.new

name = "name_example" # String | workbook name

sheet_name = "sheet_name_example" # String | worksheet name

opts = { 
  range: AsposeCellsCloud::Range.new, # Range | range in worksheet 
  folder: "folder_example", # String | Workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Combines a range of cells into a single cell.              
  result = api_instance.cells_ranges_post_worksheet_cells_range_merge(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsRangesApi->cells_ranges_post_worksheet_cells_range_merge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| workbook name | 
 **sheet_name** | **String**| worksheet name | 
 **range** | [**Range**](Range.md)| range in worksheet  | [optional] 
 **folder** | **String**| Workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_ranges_post_worksheet_cells_range_move_to**
> SaaSposeResponse cells_ranges_post_worksheet_cells_range_move_to(name, sheet_name, dest_row, dest_column, opts)

Move the current range to the dest range.             

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsRangesApi.new

name = "name_example" # String | workbook name

sheet_name = "sheet_name_example" # String | worksheet name

dest_row = 56 # Integer | The start row of the dest range.

dest_column = 56 # Integer | The start column of the dest range.

opts = { 
  range: AsposeCellsCloud::Range.new, # Range | range in worksheet 
  folder: "folder_example", # String | Workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Move the current range to the dest range.             
  result = api_instance.cells_ranges_post_worksheet_cells_range_move_to(name, sheet_name, dest_row, dest_column, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsRangesApi->cells_ranges_post_worksheet_cells_range_move_to: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| workbook name | 
 **sheet_name** | **String**| worksheet name | 
 **dest_row** | **Integer**| The start row of the dest range. | 
 **dest_column** | **Integer**| The start column of the dest range. | 
 **range** | [**Range**](Range.md)| range in worksheet  | [optional] 
 **folder** | **String**| Workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_ranges_post_worksheet_cells_range_outline_border**
> SaaSposeResponse cells_ranges_post_worksheet_cells_range_outline_border(name, sheet_name, opts)

Sets outline border around a range of cells.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsRangesApi.new

name = "name_example" # String | workbook name

sheet_name = "sheet_name_example" # String | worksheet name

opts = { 
  range_operate: AsposeCellsCloud::RangeSetOutlineBorderRequest.new, # RangeSetOutlineBorderRequest | Range Set OutlineBorder Request 
  folder: "folder_example", # String | Workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Sets outline border around a range of cells.
  result = api_instance.cells_ranges_post_worksheet_cells_range_outline_border(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsRangesApi->cells_ranges_post_worksheet_cells_range_outline_border: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| workbook name | 
 **sheet_name** | **String**| worksheet name | 
 **range_operate** | [**RangeSetOutlineBorderRequest**](RangeSetOutlineBorderRequest.md)| Range Set OutlineBorder Request  | [optional] 
 **folder** | **String**| Workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_ranges_post_worksheet_cells_range_row_height**
> SaaSposeResponse cells_ranges_post_worksheet_cells_range_row_height(name, sheet_name, value, opts)

set row height of range

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsRangesApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

value = 1.2 # Float | 

opts = { 
  range: AsposeCellsCloud::Range.new, # Range | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #set row height of range
  result = api_instance.cells_ranges_post_worksheet_cells_range_row_height(name, sheet_name, value, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsRangesApi->cells_ranges_post_worksheet_cells_range_row_height: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **value** | **Float**|  | 
 **range** | [**Range**](Range.md)|  | [optional] 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_ranges_post_worksheet_cells_range_style**
> SaaSposeResponse cells_ranges_post_worksheet_cells_range_style(name, sheet_name, opts)

Sets the style of the range.             

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsRangesApi.new

name = "name_example" # String | workbook name

sheet_name = "sheet_name_example" # String | worksheet name

opts = { 
  range_operate: AsposeCellsCloud::RangeSetStyleRequest.new, # RangeSetStyleRequest | Range Set Style Request 
  folder: "folder_example", # String | Workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Sets the style of the range.             
  result = api_instance.cells_ranges_post_worksheet_cells_range_style(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsRangesApi->cells_ranges_post_worksheet_cells_range_style: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| workbook name | 
 **sheet_name** | **String**| worksheet name | 
 **range_operate** | [**RangeSetStyleRequest**](RangeSetStyleRequest.md)| Range Set Style Request  | [optional] 
 **folder** | **String**| Workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_ranges_post_worksheet_cells_range_unmerge**
> SaaSposeResponse cells_ranges_post_worksheet_cells_range_unmerge(name, sheet_name, opts)

Unmerges merged cells of this range.             

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsRangesApi.new

name = "name_example" # String | workbook name

sheet_name = "sheet_name_example" # String | worksheet name

opts = { 
  range: AsposeCellsCloud::Range.new, # Range | range in worksheet 
  folder: "folder_example", # String | Workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Unmerges merged cells of this range.             
  result = api_instance.cells_ranges_post_worksheet_cells_range_unmerge(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsRangesApi->cells_ranges_post_worksheet_cells_range_unmerge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| workbook name | 
 **sheet_name** | **String**| worksheet name | 
 **range** | [**Range**](Range.md)| range in worksheet  | [optional] 
 **folder** | **String**| Workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_ranges_post_worksheet_cells_range_value**
> SaaSposeResponse cells_ranges_post_worksheet_cells_range_value(name, sheet_name, value, opts)

Puts a value into the range, if appropriate the value will be converted to other data type and cell's number format will be reset.             

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsRangesApi.new

name = "name_example" # String | workbook name

sheet_name = "sheet_name_example" # String | worksheet name

value = "value_example" # String | Input value

opts = { 
  range: AsposeCellsCloud::Range.new, # Range | range in worksheet 
  is_converted: false, # BOOLEAN | True: converted to other data type if appropriate.
  set_style: false, # BOOLEAN | True: set the number format to cell's style when converting to other data type
  folder: "folder_example", # String | Workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Puts a value into the range, if appropriate the value will be converted to other data type and cell's number format will be reset.             
  result = api_instance.cells_ranges_post_worksheet_cells_range_value(name, sheet_name, value, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsRangesApi->cells_ranges_post_worksheet_cells_range_value: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| workbook name | 
 **sheet_name** | **String**| worksheet name | 
 **value** | **String**| Input value | 
 **range** | [**Range**](Range.md)| range in worksheet  | [optional] 
 **is_converted** | **BOOLEAN**| True: converted to other data type if appropriate. | [optional] [default to false]
 **set_style** | **BOOLEAN**| True: set the number format to cell&#39;s style when converting to other data type | [optional] [default to false]
 **folder** | **String**| Workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_ranges_post_worksheet_cells_ranges**
> SaaSposeResponse cells_ranges_post_worksheet_cells_ranges(name, sheet_name, opts)

copy range in the worksheet

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsRangesApi.new

name = "name_example" # String | workbook name

sheet_name = "sheet_name_example" # String | worksheet name

opts = { 
  range_operate: AsposeCellsCloud::RangeCopyRequest.new, # RangeCopyRequest | copydata,copystyle,copyto,copyvalue
  folder: "folder_example", # String | Workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #copy range in the worksheet
  result = api_instance.cells_ranges_post_worksheet_cells_ranges(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsRangesApi->cells_ranges_post_worksheet_cells_ranges: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| workbook name | 
 **sheet_name** | **String**| worksheet name | 
 **range_operate** | [**RangeCopyRequest**](RangeCopyRequest.md)| copydata,copystyle,copyto,copyvalue | [optional] 
 **folder** | **String**| Workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



