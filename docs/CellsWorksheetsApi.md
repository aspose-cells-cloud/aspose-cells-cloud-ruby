# AsposeCellsCloud::CellsWorksheetsApi

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_worksheets_delete_unprotect_worksheet**](CellsWorksheetsApi.md#cells_worksheets_delete_unprotect_worksheet) | **DELETE** /cells/{name}/worksheets/{sheetName}/protection | Unprotect worksheet.
[**cells_worksheets_delete_worksheet**](CellsWorksheetsApi.md#cells_worksheets_delete_worksheet) | **DELETE** /cells/{name}/worksheets/{sheetName} | Delete worksheet.
[**cells_worksheets_delete_worksheet_background**](CellsWorksheetsApi.md#cells_worksheets_delete_worksheet_background) | **DELETE** /cells/{name}/worksheets/{sheetName}/background | Set worksheet background image.
[**cells_worksheets_delete_worksheet_comment**](CellsWorksheetsApi.md#cells_worksheets_delete_worksheet_comment) | **DELETE** /cells/{name}/worksheets/{sheetName}/comments/{cellName} | Delete worksheet&#39;s cell comment.
[**cells_worksheets_delete_worksheet_comments**](CellsWorksheetsApi.md#cells_worksheets_delete_worksheet_comments) | **DELETE** /cells/{name}/worksheets/{sheetName}/comments | Delete all comments for worksheet.
[**cells_worksheets_delete_worksheet_freeze_panes**](CellsWorksheetsApi.md#cells_worksheets_delete_worksheet_freeze_panes) | **DELETE** /cells/{name}/worksheets/{sheetName}/freezepanes | Unfreeze panes
[**cells_worksheets_get_named_ranges**](CellsWorksheetsApi.md#cells_worksheets_get_named_ranges) | **GET** /cells/{name}/worksheets/ranges | Read worksheets ranges info.
[**cells_worksheets_get_worksheet**](CellsWorksheetsApi.md#cells_worksheets_get_worksheet) | **GET** /cells/{name}/worksheets/{sheetName} | Read worksheet info or export.
[**cells_worksheets_get_worksheet_calculate_formula**](CellsWorksheetsApi.md#cells_worksheets_get_worksheet_calculate_formula) | **GET** /cells/{name}/worksheets/{sheetName}/formulaResult | Calculate formula value.
[**cells_worksheets_get_worksheet_comment**](CellsWorksheetsApi.md#cells_worksheets_get_worksheet_comment) | **GET** /cells/{name}/worksheets/{sheetName}/comments/{cellName} | Get worksheet comment by cell name.
[**cells_worksheets_get_worksheet_comments**](CellsWorksheetsApi.md#cells_worksheets_get_worksheet_comments) | **GET** /cells/{name}/worksheets/{sheetName}/comments | Get worksheet comments.
[**cells_worksheets_get_worksheet_merged_cell**](CellsWorksheetsApi.md#cells_worksheets_get_worksheet_merged_cell) | **GET** /cells/{name}/worksheets/{sheetName}/mergedCells/{mergedCellIndex} | Get worksheet merged cell by its index.
[**cells_worksheets_get_worksheet_merged_cells**](CellsWorksheetsApi.md#cells_worksheets_get_worksheet_merged_cells) | **GET** /cells/{name}/worksheets/{sheetName}/mergedCells | Get worksheet merged cells.
[**cells_worksheets_get_worksheet_text_items**](CellsWorksheetsApi.md#cells_worksheets_get_worksheet_text_items) | **GET** /cells/{name}/worksheets/{sheetName}/textItems | Get worksheet text items.
[**cells_worksheets_get_worksheets**](CellsWorksheetsApi.md#cells_worksheets_get_worksheets) | **GET** /cells/{name}/worksheets | Read worksheets info.
[**cells_worksheets_post_autofit_worksheet_columns**](CellsWorksheetsApi.md#cells_worksheets_post_autofit_worksheet_columns) | **POST** /cells/{name}/worksheets/{sheetName}/autofitcolumns | 
[**cells_worksheets_post_autofit_worksheet_row**](CellsWorksheetsApi.md#cells_worksheets_post_autofit_worksheet_row) | **POST** /cells/{name}/worksheets/{sheetName}/autofitrow | 
[**cells_worksheets_post_autofit_worksheet_rows**](CellsWorksheetsApi.md#cells_worksheets_post_autofit_worksheet_rows) | **POST** /cells/{name}/worksheets/{sheetName}/autofitrows | Autofit worksheet rows.
[**cells_worksheets_post_copy_worksheet**](CellsWorksheetsApi.md#cells_worksheets_post_copy_worksheet) | **POST** /cells/{name}/worksheets/{sheetName}/copy | 
[**cells_worksheets_post_move_worksheet**](CellsWorksheetsApi.md#cells_worksheets_post_move_worksheet) | **POST** /cells/{name}/worksheets/{sheetName}/position | Move worksheet.
[**cells_worksheets_post_rename_worksheet**](CellsWorksheetsApi.md#cells_worksheets_post_rename_worksheet) | **POST** /cells/{name}/worksheets/{sheetName}/rename | Rename worksheet
[**cells_worksheets_post_update_worksheet_property**](CellsWorksheetsApi.md#cells_worksheets_post_update_worksheet_property) | **POST** /cells/{name}/worksheets/{sheetName} | Update worksheet property
[**cells_worksheets_post_update_worksheet_zoom**](CellsWorksheetsApi.md#cells_worksheets_post_update_worksheet_zoom) | **POST** /cells/{name}/worksheets/{sheetName}/zoom | 
[**cells_worksheets_post_worksheet_comment**](CellsWorksheetsApi.md#cells_worksheets_post_worksheet_comment) | **POST** /cells/{name}/worksheets/{sheetName}/comments/{cellName} | Update worksheet&#39;s cell comment.
[**cells_worksheets_post_worksheet_range_sort**](CellsWorksheetsApi.md#cells_worksheets_post_worksheet_range_sort) | **POST** /cells/{name}/worksheets/{sheetName}/sort | Sort worksheet range.
[**cells_worksheets_post_worksheet_text_search**](CellsWorksheetsApi.md#cells_worksheets_post_worksheet_text_search) | **POST** /cells/{name}/worksheets/{sheetName}/findText | Search text.
[**cells_worksheets_post_worsheet_text_replace**](CellsWorksheetsApi.md#cells_worksheets_post_worsheet_text_replace) | **POST** /cells/{name}/worksheets/{sheetName}/replaceText | Replace text.
[**cells_worksheets_put_add_new_worksheet**](CellsWorksheetsApi.md#cells_worksheets_put_add_new_worksheet) | **PUT** /cells/{name}/worksheets/{sheetName} | Add new worksheet.
[**cells_worksheets_put_change_visibility_worksheet**](CellsWorksheetsApi.md#cells_worksheets_put_change_visibility_worksheet) | **PUT** /cells/{name}/worksheets/{sheetName}/visible | Change worksheet visibility.
[**cells_worksheets_put_protect_worksheet**](CellsWorksheetsApi.md#cells_worksheets_put_protect_worksheet) | **PUT** /cells/{name}/worksheets/{sheetName}/protection | Protect worksheet.
[**cells_worksheets_put_worksheet_background**](CellsWorksheetsApi.md#cells_worksheets_put_worksheet_background) | **PUT** /cells/{name}/worksheets/{sheetName}/background | Set worksheet background image.
[**cells_worksheets_put_worksheet_comment**](CellsWorksheetsApi.md#cells_worksheets_put_worksheet_comment) | **PUT** /cells/{name}/worksheets/{sheetName}/comments/{cellName} | Add worksheet&#39;s cell comment.
[**cells_worksheets_put_worksheet_freeze_panes**](CellsWorksheetsApi.md#cells_worksheets_put_worksheet_freeze_panes) | **PUT** /cells/{name}/worksheets/{sheetName}/freezepanes | Set freeze panes


# **cells_worksheets_delete_unprotect_worksheet**
> WorksheetResponse cells_worksheets_delete_unprotect_worksheet(name, sheet_name, opts)

Unprotect worksheet.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

opts = { 
  protect_parameter: AsposeCellsCloud::ProtectSheetParameter.new, # ProtectSheetParameter | with protection settings. Only password is used here.
  folder: "folder_example", # String | Document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Unprotect worksheet.
  result = api_instance.cells_worksheets_delete_unprotect_worksheet(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_delete_unprotect_worksheet: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **protect_parameter** | [**ProtectSheetParameter**](ProtectSheetParameter.md)| with protection settings. Only password is used here. | [optional] 
 **folder** | **String**| Document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**WorksheetResponse**](WorksheetResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_delete_worksheet**
> WorksheetsResponse cells_worksheets_delete_worksheet(name, sheet_name, opts)

Delete worksheet.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Delete worksheet.
  result = api_instance.cells_worksheets_delete_worksheet(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_delete_worksheet: #{e}"
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

[**WorksheetsResponse**](WorksheetsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_delete_worksheet_background**
> SaaSposeResponse cells_worksheets_delete_worksheet_background(name, sheet_name, opts)

Set worksheet background image.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Set worksheet background image.
  result = api_instance.cells_worksheets_delete_worksheet_background(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_delete_worksheet_background: #{e}"
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



# **cells_worksheets_delete_worksheet_comment**
> SaaSposeResponse cells_worksheets_delete_worksheet_comment(name, sheet_name, cell_name, opts)

Delete worksheet's cell comment.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | The document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

cell_name = "cell_name_example" # String | The cell name

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Delete worksheet's cell comment.
  result = api_instance.cells_worksheets_delete_worksheet_comment(name, sheet_name, cell_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_delete_worksheet_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **cell_name** | **String**| The cell name | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_delete_worksheet_comments**
> SaaSposeResponse cells_worksheets_delete_worksheet_comments(name, sheet_name, opts)

Delete all comments for worksheet.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Delete all comments for worksheet.
  result = api_instance.cells_worksheets_delete_worksheet_comments(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_delete_worksheet_comments: #{e}"
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



# **cells_worksheets_delete_worksheet_freeze_panes**
> SaaSposeResponse cells_worksheets_delete_worksheet_freeze_panes(name, sheet_name, row, column, freezed_rows, freezed_columns, opts)

Unfreeze panes

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

row = 56 # Integer | 

column = 56 # Integer | 

freezed_rows = 56 # Integer | 

freezed_columns = 56 # Integer | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Unfreeze panes
  result = api_instance.cells_worksheets_delete_worksheet_freeze_panes(name, sheet_name, row, column, freezed_rows, freezed_columns, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_delete_worksheet_freeze_panes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **row** | **Integer**|  | 
 **column** | **Integer**|  | 
 **freezed_rows** | **Integer**|  | 
 **freezed_columns** | **Integer**|  | 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_get_named_ranges**
> RangesResponse cells_worksheets_get_named_ranges(name, opts)

Read worksheets ranges info.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | Document name.

opts = { 
  folder: "folder_example", # String | Document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Read worksheets ranges info.
  result = api_instance.cells_worksheets_get_named_ranges(name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_get_named_ranges: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **folder** | **String**| Document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**RangesResponse**](RangesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_get_worksheet**
> String cells_worksheets_get_worksheet(name, sheet_name, opts)

Read worksheet info or export.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | The document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

opts = { 
  format: "format_example", # String | The exported file format.
  vertical_resolution: 0, # Integer | Image vertical resolution.
  horizontal_resolution: 0, # Integer | Image horizontal resolution.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Read worksheet info or export.
  result = api_instance.cells_worksheets_get_worksheet(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_get_worksheet: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **format** | **String**| The exported file format. | [optional] 
 **vertical_resolution** | **Integer**| Image vertical resolution. | [optional] [default to 0]
 **horizontal_resolution** | **Integer**| Image horizontal resolution. | [optional] [default to 0]
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_get_worksheet_calculate_formula**
> SingleValueResponse cells_worksheets_get_worksheet_calculate_formula(name, sheet_name, formula, opts)

Calculate formula value.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | Worksheet name.

formula = "formula_example" # String | The formula.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Calculate formula value.
  result = api_instance.cells_worksheets_get_worksheet_calculate_formula(name, sheet_name, formula, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_get_worksheet_calculate_formula: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **formula** | **String**| The formula. | 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SingleValueResponse**](SingleValueResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_get_worksheet_comment**
> CommentResponse cells_worksheets_get_worksheet_comment(name, sheet_name, cell_name, opts)

Get worksheet comment by cell name.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | The document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

cell_name = "cell_name_example" # String | The cell name

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get worksheet comment by cell name.
  result = api_instance.cells_worksheets_get_worksheet_comment(name, sheet_name, cell_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_get_worksheet_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **cell_name** | **String**| The cell name | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**CommentResponse**](CommentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_get_worksheet_comments**
> CommentsResponse cells_worksheets_get_worksheet_comments(name, sheet_name, opts)

Get worksheet comments.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | Workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get worksheet comments.
  result = api_instance.cells_worksheets_get_worksheet_comments(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_get_worksheet_comments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**CommentsResponse**](CommentsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_get_worksheet_merged_cell**
> MergedCellResponse cells_worksheets_get_worksheet_merged_cell(name, sheet_name, merged_cell_index, opts)

Get worksheet merged cell by its index.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | Worksheet name.

merged_cell_index = 56 # Integer | Merged cell index.

opts = { 
  folder: "folder_example", # String | Document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get worksheet merged cell by its index.
  result = api_instance.cells_worksheets_get_worksheet_merged_cell(name, sheet_name, merged_cell_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_get_worksheet_merged_cell: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **merged_cell_index** | **Integer**| Merged cell index. | 
 **folder** | **String**| Document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**MergedCellResponse**](MergedCellResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_get_worksheet_merged_cells**
> MergedCellsResponse cells_worksheets_get_worksheet_merged_cells(name, sheet_name, opts)

Get worksheet merged cells.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The workseet name.

opts = { 
  folder: "folder_example", # String | Document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get worksheet merged cells.
  result = api_instance.cells_worksheets_get_worksheet_merged_cells(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_get_worksheet_merged_cells: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| The workseet name. | 
 **folder** | **String**| Document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**MergedCellsResponse**](MergedCellsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_get_worksheet_text_items**
> TextItemsResponse cells_worksheets_get_worksheet_text_items(name, sheet_name, opts)

Get worksheet text items.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | Workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

opts = { 
  folder: "folder_example", # String | The workbook's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get worksheet text items.
  result = api_instance.cells_worksheets_get_worksheet_text_items(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_get_worksheet_text_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **folder** | **String**| The workbook&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**TextItemsResponse**](TextItemsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_get_worksheets**
> WorksheetsResponse cells_worksheets_get_worksheets(name, opts)

Read worksheets info.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | Document name.

opts = { 
  folder: "folder_example", # String | Document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Read worksheets info.
  result = api_instance.cells_worksheets_get_worksheets(name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_get_worksheets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **folder** | **String**| Document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**WorksheetsResponse**](WorksheetsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_post_autofit_worksheet_columns**
> SaaSposeResponse cells_worksheets_post_autofit_worksheet_columns(name, sheet_name, first_column, last_column, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

first_column = 56 # Integer | 

last_column = 56 # Integer | 

opts = { 
  auto_fitter_options: AsposeCellsCloud::AutoFitterOptions.new, # AutoFitterOptions | 
  first_row: 56, # Integer | 
  last_row: 56, # Integer | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  result = api_instance.cells_worksheets_post_autofit_worksheet_columns(name, sheet_name, first_column, last_column, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_post_autofit_worksheet_columns: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **first_column** | **Integer**|  | 
 **last_column** | **Integer**|  | 
 **auto_fitter_options** | [**AutoFitterOptions**](AutoFitterOptions.md)|  | [optional] 
 **first_row** | **Integer**|  | [optional] 
 **last_row** | **Integer**|  | [optional] 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_post_autofit_worksheet_row**
> SaaSposeResponse cells_worksheets_post_autofit_worksheet_row(name, sheet_name, row_index, first_column, last_column, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

row_index = 56 # Integer | 

first_column = 56 # Integer | 

last_column = 56 # Integer | 

opts = { 
  auto_fitter_options: AsposeCellsCloud::AutoFitterOptions.new, # AutoFitterOptions | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  result = api_instance.cells_worksheets_post_autofit_worksheet_row(name, sheet_name, row_index, first_column, last_column, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_post_autofit_worksheet_row: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **row_index** | **Integer**|  | 
 **first_column** | **Integer**|  | 
 **last_column** | **Integer**|  | 
 **auto_fitter_options** | [**AutoFitterOptions**](AutoFitterOptions.md)|  | [optional] 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_post_autofit_worksheet_rows**
> SaaSposeResponse cells_worksheets_post_autofit_worksheet_rows(name, sheet_name, opts)

Autofit worksheet rows.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

opts = { 
  auto_fitter_options: AsposeCellsCloud::AutoFitterOptions.new, # AutoFitterOptions | Auto Fitter Options.
  start_row: 56, # Integer | Start row.
  end_row: 56, # Integer | End row.
  only_auto: false, # BOOLEAN | Only auto.
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Autofit worksheet rows.
  result = api_instance.cells_worksheets_post_autofit_worksheet_rows(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_post_autofit_worksheet_rows: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **auto_fitter_options** | [**AutoFitterOptions**](AutoFitterOptions.md)| Auto Fitter Options. | [optional] 
 **start_row** | **Integer**| Start row. | [optional] 
 **end_row** | **Integer**| End row. | [optional] 
 **only_auto** | **BOOLEAN**| Only auto. | [optional] [default to false]
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_post_copy_worksheet**
> SaaSposeResponse cells_worksheets_post_copy_worksheet(name, sheet_name, source_sheet, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

source_sheet = "source_sheet_example" # String | 

opts = { 
  options: AsposeCellsCloud::CopyOptions.new, # CopyOptions | 
  source_workbook: "source_workbook_example", # String | 
  source_folder: "source_folder_example", # String | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  result = api_instance.cells_worksheets_post_copy_worksheet(name, sheet_name, source_sheet, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_post_copy_worksheet: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **source_sheet** | **String**|  | 
 **options** | [**CopyOptions**](CopyOptions.md)|  | [optional] 
 **source_workbook** | **String**|  | [optional] 
 **source_folder** | **String**|  | [optional] 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_post_move_worksheet**
> WorksheetsResponse cells_worksheets_post_move_worksheet(name, sheet_name, opts)

Move worksheet.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

opts = { 
  moving: AsposeCellsCloud::WorksheetMovingRequest.new, # WorksheetMovingRequest | with moving parameters.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Move worksheet.
  result = api_instance.cells_worksheets_post_move_worksheet(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_post_move_worksheet: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **moving** | [**WorksheetMovingRequest**](WorksheetMovingRequest.md)| with moving parameters. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**WorksheetsResponse**](WorksheetsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_post_rename_worksheet**
> SaaSposeResponse cells_worksheets_post_rename_worksheet(name, sheet_name, newname, opts)

Rename worksheet

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

newname = "newname_example" # String | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Rename worksheet
  result = api_instance.cells_worksheets_post_rename_worksheet(name, sheet_name, newname, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_post_rename_worksheet: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **newname** | **String**|  | 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_post_update_worksheet_property**
> WorksheetResponse cells_worksheets_post_update_worksheet_property(name, sheet_name, opts)

Update worksheet property

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

opts = { 
  sheet: AsposeCellsCloud::Worksheet.new, # Worksheet | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Update worksheet property
  result = api_instance.cells_worksheets_post_update_worksheet_property(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_post_update_worksheet_property: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **sheet** | [**Worksheet**](Worksheet.md)|  | [optional] 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**WorksheetResponse**](WorksheetResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_post_update_worksheet_zoom**
> SaaSposeResponse cells_worksheets_post_update_worksheet_zoom(name, sheet_name, value, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

value = 56 # Integer | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  result = api_instance.cells_worksheets_post_update_worksheet_zoom(name, sheet_name, value, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_post_update_worksheet_zoom: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **value** | **Integer**|  | 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_post_worksheet_comment**
> SaaSposeResponse cells_worksheets_post_worksheet_comment(name, sheet_name, cell_name, opts)

Update worksheet's cell comment.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | The document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

cell_name = "cell_name_example" # String | The cell name

opts = { 
  comment: AsposeCellsCloud::Comment.new, # Comment | Comment object
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Update worksheet's cell comment.
  result = api_instance.cells_worksheets_post_worksheet_comment(name, sheet_name, cell_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_post_worksheet_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **cell_name** | **String**| The cell name | 
 **comment** | [**Comment**](Comment.md)| Comment object | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_post_worksheet_range_sort**
> SaaSposeResponse cells_worksheets_post_worksheet_range_sort(name, sheet_name, cell_area, opts)

Sort worksheet range.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

cell_area = "cell_area_example" # String | The range to sort.

opts = { 
  data_sorter: AsposeCellsCloud::DataSorter.new, # DataSorter | with sorting settings.
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Sort worksheet range.
  result = api_instance.cells_worksheets_post_worksheet_range_sort(name, sheet_name, cell_area, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_post_worksheet_range_sort: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **cell_area** | **String**| The range to sort. | 
 **data_sorter** | [**DataSorter**](DataSorter.md)| with sorting settings. | [optional] 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_post_worksheet_text_search**
> TextItemsResponse cells_worksheets_post_worksheet_text_search(name, sheet_name, text, opts)

Search text.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

text = "text_example" # String | Text to search.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Search text.
  result = api_instance.cells_worksheets_post_worksheet_text_search(name, sheet_name, text, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_post_worksheet_text_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **text** | **String**| Text to search. | 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**TextItemsResponse**](TextItemsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_post_worsheet_text_replace**
> WorksheetReplaceResponse cells_worksheets_post_worsheet_text_replace(name, sheet_name, old_value, new_value, opts)

Replace text.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | Worksheet name.

old_value = "old_value_example" # String | The old text to replace.

new_value = "new_value_example" # String | The new text to replace by.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Replace text.
  result = api_instance.cells_worksheets_post_worsheet_text_replace(name, sheet_name, old_value, new_value, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_post_worsheet_text_replace: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **old_value** | **String**| The old text to replace. | 
 **new_value** | **String**| The new text to replace by. | 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**WorksheetReplaceResponse**](WorksheetReplaceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_put_add_new_worksheet**
> WorksheetsResponse cells_worksheets_put_add_new_worksheet(name, sheet_name, opts)

Add new worksheet.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The new sheet name.

opts = { 
  position: 56, # Integer | The new sheet position.
  sheettype: "sheettype_example", # String | The new sheet type.
  folder: "folder_example", # String | Document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Add new worksheet.
  result = api_instance.cells_worksheets_put_add_new_worksheet(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_put_add_new_worksheet: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| The new sheet name. | 
 **position** | **Integer**| The new sheet position. | [optional] 
 **sheettype** | **String**| The new sheet type. | [optional] 
 **folder** | **String**| Document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**WorksheetsResponse**](WorksheetsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_put_change_visibility_worksheet**
> WorksheetResponse cells_worksheets_put_change_visibility_worksheet(name, sheet_name, is_visible, opts)

Change worksheet visibility.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | Worksheet name.

is_visible = true # BOOLEAN | New worksheet visibility value.

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Change worksheet visibility.
  result = api_instance.cells_worksheets_put_change_visibility_worksheet(name, sheet_name, is_visible, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_put_change_visibility_worksheet: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **is_visible** | **BOOLEAN**| New worksheet visibility value. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**WorksheetResponse**](WorksheetResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_put_protect_worksheet**
> WorksheetResponse cells_worksheets_put_protect_worksheet(name, sheet_name, opts)

Protect worksheet.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

opts = { 
  protect_parameter: AsposeCellsCloud::ProtectSheetParameter.new, # ProtectSheetParameter | with protection settings.
  folder: "folder_example", # String | Document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Protect worksheet.
  result = api_instance.cells_worksheets_put_protect_worksheet(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_put_protect_worksheet: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **protect_parameter** | [**ProtectSheetParameter**](ProtectSheetParameter.md)| with protection settings. | [optional] 
 **folder** | **String**| Document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**WorksheetResponse**](WorksheetResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_put_worksheet_background**
> SaaSposeResponse cells_worksheets_put_worksheet_background(name, sheet_name, png, opts)

Set worksheet background image.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

png = "B" # String | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Set worksheet background image.
  result = api_instance.cells_worksheets_put_worksheet_background(name, sheet_name, png, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_put_worksheet_background: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **png** | **String**|  | 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_put_worksheet_comment**
> CommentResponse cells_worksheets_put_worksheet_comment(name, sheet_name, cell_name, opts)

Add worksheet's cell comment.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | The document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

cell_name = "cell_name_example" # String | The cell name

opts = { 
  comment: AsposeCellsCloud::Comment.new, # Comment | Comment object
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Add worksheet's cell comment.
  result = api_instance.cells_worksheets_put_worksheet_comment(name, sheet_name, cell_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_put_worksheet_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **cell_name** | **String**| The cell name | 
 **comment** | [**Comment**](Comment.md)| Comment object | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**CommentResponse**](CommentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_worksheets_put_worksheet_freeze_panes**
> SaaSposeResponse cells_worksheets_put_worksheet_freeze_panes(name, sheet_name, row, column, freezed_rows, freezed_columns, opts)

Set freeze panes

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorksheetsApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

row = 56 # Integer | 

column = 56 # Integer | 

freezed_rows = 56 # Integer | 

freezed_columns = 56 # Integer | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Set freeze panes
  result = api_instance.cells_worksheets_put_worksheet_freeze_panes(name, sheet_name, row, column, freezed_rows, freezed_columns, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorksheetsApi->cells_worksheets_put_worksheet_freeze_panes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **row** | **Integer**|  | 
 **column** | **Integer**|  | 
 **freezed_rows** | **Integer**|  | 
 **freezed_columns** | **Integer**|  | 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



