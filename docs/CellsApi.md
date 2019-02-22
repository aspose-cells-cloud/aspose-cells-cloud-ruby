# AsposeCellsCloud::CellsApi

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_delete_worksheet_columns**](CellsApi.md#cells_delete_worksheet_columns) | **DELETE** /cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex} | Delete worksheet columns.
[**cells_delete_worksheet_row**](CellsApi.md#cells_delete_worksheet_row) | **DELETE** /cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex} | Delete worksheet row.
[**cells_delete_worksheet_rows**](CellsApi.md#cells_delete_worksheet_rows) | **DELETE** /cells/{name}/worksheets/{sheetName}/cells/rows | Delete several worksheet rows.
[**cells_get_cell_html_string**](CellsApi.md#cells_get_cell_html_string) | **GET** /cells/{name}/worksheets/{sheetName}/cells/{cellName}/htmlstring | Read cell data by cell&#39;s name.
[**cells_get_worksheet_cell**](CellsApi.md#cells_get_worksheet_cell) | **GET** /cells/{name}/worksheets/{sheetName}/cells/{cellOrMethodName} | Read cell data by cell&#39;s name.
[**cells_get_worksheet_cell_style**](CellsApi.md#cells_get_worksheet_cell_style) | **GET** /cells/{name}/worksheets/{sheetName}/cells/{cellName}/style | Read cell&#39;s style info.
[**cells_get_worksheet_cells**](CellsApi.md#cells_get_worksheet_cells) | **GET** /cells/{name}/worksheets/{sheetName}/cells | Get cells info.
[**cells_get_worksheet_column**](CellsApi.md#cells_get_worksheet_column) | **GET** /cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex} | Read worksheet column data by column&#39;s index.
[**cells_get_worksheet_columns**](CellsApi.md#cells_get_worksheet_columns) | **GET** /cells/{name}/worksheets/{sheetName}/cells/columns | Read worksheet columns info.
[**cells_get_worksheet_row**](CellsApi.md#cells_get_worksheet_row) | **GET** /cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex} | Read worksheet row data by row&#39;s index.
[**cells_get_worksheet_rows**](CellsApi.md#cells_get_worksheet_rows) | **GET** /cells/{name}/worksheets/{sheetName}/cells/rows | Read worksheet rows info.
[**cells_post_cell_calculate**](CellsApi.md#cells_post_cell_calculate) | **POST** /cells/{name}/worksheets/{sheetName}/cells/{cellName}/calculate | Cell calculate formula
[**cells_post_cell_characters**](CellsApi.md#cells_post_cell_characters) | **POST** /cells/{name}/worksheets/{sheetName}/cells/{cellName}/characters | Set cell characters 
[**cells_post_clear_contents**](CellsApi.md#cells_post_clear_contents) | **POST** /cells/{name}/worksheets/{sheetName}/cells/clearcontents | Clear cells contents.
[**cells_post_clear_formats**](CellsApi.md#cells_post_clear_formats) | **POST** /cells/{name}/worksheets/{sheetName}/cells/clearformats | Clear cells contents.
[**cells_post_column_style**](CellsApi.md#cells_post_column_style) | **POST** /cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}/style | Set column style
[**cells_post_copy_cell_into_cell**](CellsApi.md#cells_post_copy_cell_into_cell) | **POST** /cells/{name}/worksheets/{sheetName}/cells/{destCellName}/copy | Copy cell into cell
[**cells_post_copy_worksheet_columns**](CellsApi.md#cells_post_copy_worksheet_columns) | **POST** /cells/{name}/worksheets/{sheetName}/cells/columns/copy | Copy worksheet columns.
[**cells_post_copy_worksheet_rows**](CellsApi.md#cells_post_copy_worksheet_rows) | **POST** /cells/{name}/worksheets/{sheetName}/cells/rows/copy | Copy worksheet rows.
[**cells_post_group_worksheet_columns**](CellsApi.md#cells_post_group_worksheet_columns) | **POST** /cells/{name}/worksheets/{sheetName}/cells/columns/group | Group worksheet columns.
[**cells_post_group_worksheet_rows**](CellsApi.md#cells_post_group_worksheet_rows) | **POST** /cells/{name}/worksheets/{sheetName}/cells/rows/group | Group worksheet rows.
[**cells_post_hide_worksheet_columns**](CellsApi.md#cells_post_hide_worksheet_columns) | **POST** /cells/{name}/worksheets/{sheetName}/cells/columns/hide | Hide worksheet columns.
[**cells_post_hide_worksheet_rows**](CellsApi.md#cells_post_hide_worksheet_rows) | **POST** /cells/{name}/worksheets/{sheetName}/cells/rows/hide | Hide worksheet rows.
[**cells_post_row_style**](CellsApi.md#cells_post_row_style) | **POST** /cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}/style | Set row style.
[**cells_post_set_cell_html_string**](CellsApi.md#cells_post_set_cell_html_string) | **POST** /cells/{name}/worksheets/{sheetName}/cells/{cellName}/htmlstring | Set htmlstring value into cell
[**cells_post_set_cell_range_value**](CellsApi.md#cells_post_set_cell_range_value) | **POST** /cells/{name}/worksheets/{sheetName}/cells | Set cell range value 
[**cells_post_set_worksheet_column_width**](CellsApi.md#cells_post_set_worksheet_column_width) | **POST** /cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex} | Set worksheet column width.
[**cells_post_ungroup_worksheet_columns**](CellsApi.md#cells_post_ungroup_worksheet_columns) | **POST** /cells/{name}/worksheets/{sheetName}/cells/columns/ungroup | Ungroup worksheet columns.
[**cells_post_ungroup_worksheet_rows**](CellsApi.md#cells_post_ungroup_worksheet_rows) | **POST** /cells/{name}/worksheets/{sheetName}/cells/rows/ungroup | Ungroup worksheet rows.
[**cells_post_unhide_worksheet_columns**](CellsApi.md#cells_post_unhide_worksheet_columns) | **POST** /cells/{name}/worksheets/{sheetName}/cells/columns/unhide | Unhide worksheet columns.
[**cells_post_unhide_worksheet_rows**](CellsApi.md#cells_post_unhide_worksheet_rows) | **POST** /cells/{name}/worksheets/{sheetName}/cells/rows/unhide | Unhide worksheet rows.
[**cells_post_update_worksheet_cell_style**](CellsApi.md#cells_post_update_worksheet_cell_style) | **POST** /cells/{name}/worksheets/{sheetName}/cells/{cellName}/style | Update cell&#39;s style.
[**cells_post_update_worksheet_range_style**](CellsApi.md#cells_post_update_worksheet_range_style) | **POST** /cells/{name}/worksheets/{sheetName}/cells/style | Update cell&#39;s range style.
[**cells_post_update_worksheet_row**](CellsApi.md#cells_post_update_worksheet_row) | **POST** /cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex} | Update worksheet row.
[**cells_post_worksheet_cell_set_value**](CellsApi.md#cells_post_worksheet_cell_set_value) | **POST** /cells/{name}/worksheets/{sheetName}/cells/{cellName} | Set cell value.
[**cells_post_worksheet_merge**](CellsApi.md#cells_post_worksheet_merge) | **POST** /cells/{name}/worksheets/{sheetName}/cells/merge | Merge cells.
[**cells_post_worksheet_unmerge**](CellsApi.md#cells_post_worksheet_unmerge) | **POST** /cells/{name}/worksheets/{sheetName}/cells/unmerge | Unmerge cells.
[**cells_put_insert_worksheet_columns**](CellsApi.md#cells_put_insert_worksheet_columns) | **PUT** /cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex} | Insert worksheet columns.
[**cells_put_insert_worksheet_row**](CellsApi.md#cells_put_insert_worksheet_row) | **PUT** /cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex} | Insert new worksheet row.
[**cells_put_insert_worksheet_rows**](CellsApi.md#cells_put_insert_worksheet_rows) | **PUT** /cells/{name}/worksheets/{sheetName}/cells/rows | Insert several new worksheet rows.


# **cells_delete_worksheet_columns**
> ColumnsResponse cells_delete_worksheet_columns(name, sheet_name, column_index, columns, update_reference, opts)

Delete worksheet columns.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

column_index = 56 # Integer | The column index.

columns = 56 # Integer | The columns.

update_reference = true # BOOLEAN | The update reference.

opts = { 
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Delete worksheet columns.
  result = api_instance.cells_delete_worksheet_columns(name, sheet_name, column_index, columns, update_reference, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_delete_worksheet_columns: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **column_index** | **Integer**| The column index. | 
 **columns** | **Integer**| The columns. | 
 **update_reference** | **BOOLEAN**| The update reference. | 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**ColumnsResponse**](ColumnsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_delete_worksheet_row**
> SaaSposeResponse cells_delete_worksheet_row(name, sheet_name, row_index, opts)

Delete worksheet row.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worksheet bame.

row_index = 56 # Integer | The row index.

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Delete worksheet row.
  result = api_instance.cells_delete_worksheet_row(name, sheet_name, row_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_delete_worksheet_row: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worksheet bame. | 
 **row_index** | **Integer**| The row index. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_delete_worksheet_rows**
> SaaSposeResponse cells_delete_worksheet_rows(name, sheet_name, startrow, opts)

Delete several worksheet rows.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worksheet bame.

startrow = 56 # Integer | The begin row index to be operated.

opts = { 
  total_rows: 1, # Integer | Number of rows to be operated.
  update_reference: true, # BOOLEAN | Indicates if update references in other worksheets.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Delete several worksheet rows.
  result = api_instance.cells_delete_worksheet_rows(name, sheet_name, startrow, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_delete_worksheet_rows: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worksheet bame. | 
 **startrow** | **Integer**| The begin row index to be operated. | 
 **total_rows** | **Integer**| Number of rows to be operated. | [optional] [default to 1]
 **update_reference** | **BOOLEAN**| Indicates if update references in other worksheets. | [optional] [default to true]
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_get_cell_html_string**
> Object cells_get_cell_html_string(name, sheet_name, cell_name, opts)

Read cell data by cell's name.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | Worksheet name.

cell_name = "cell_name_example" # String | The cell's  name.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Read cell data by cell's name.
  result = api_instance.cells_get_cell_html_string(name, sheet_name, cell_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_get_cell_html_string: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **cell_name** | **String**| The cell&#39;s  name. | 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_get_worksheet_cell**
> Object cells_get_worksheet_cell(name, sheet_name, cell_or_method_name, opts)

Read cell data by cell's name.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | Worksheet name.

cell_or_method_name = "cell_or_method_name_example" # String | The cell's or method name. (Method name like firstcell, endcell etc.)

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Read cell data by cell's name.
  result = api_instance.cells_get_worksheet_cell(name, sheet_name, cell_or_method_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_get_worksheet_cell: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **cell_or_method_name** | **String**| The cell&#39;s or method name. (Method name like firstcell, endcell etc.) | 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_get_worksheet_cell_style**
> StyleResponse cells_get_worksheet_cell_style(name, sheet_name, cell_name, opts)

Read cell's style info.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | Worksheet name.

cell_name = "cell_name_example" # String | Cell's name.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Read cell's style info.
  result = api_instance.cells_get_worksheet_cell_style(name, sheet_name, cell_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_get_worksheet_cell_style: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **cell_name** | **String**| Cell&#39;s name. | 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**StyleResponse**](StyleResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_get_worksheet_cells**
> CellsResponse cells_get_worksheet_cells(name, sheet_name, opts)

Get cells info.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | Worksheet name.

opts = { 
  offest: 0, # Integer | Begginig offset.
  count: 0, # Integer | Maximum amount of cells in the response.
  folder: "folder_example", # String | Document's folder name.
  storage: "storage_example" # String | storage name.
}

begin
  #Get cells info.
  result = api_instance.cells_get_worksheet_cells(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_get_worksheet_cells: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **offest** | **Integer**| Begginig offset. | [optional] [default to 0]
 **count** | **Integer**| Maximum amount of cells in the response. | [optional] [default to 0]
 **folder** | **String**| Document&#39;s folder name. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**CellsResponse**](CellsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_get_worksheet_column**
> ColumnResponse cells_get_worksheet_column(name, sheet_name, column_index, opts)

Read worksheet column data by column's index.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

column_index = 56 # Integer | The column index.

opts = { 
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Read worksheet column data by column's index.
  result = api_instance.cells_get_worksheet_column(name, sheet_name, column_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_get_worksheet_column: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **column_index** | **Integer**| The column index. | 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**ColumnResponse**](ColumnResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_get_worksheet_columns**
> ColumnsResponse cells_get_worksheet_columns(name, sheet_name, opts)

Read worksheet columns info.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

opts = { 
  folder: "folder_example", # String | The workdook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Read worksheet columns info.
  result = api_instance.cells_get_worksheet_columns(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_get_worksheet_columns: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **folder** | **String**| The workdook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**ColumnsResponse**](ColumnsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_get_worksheet_row**
> RowResponse cells_get_worksheet_row(name, sheet_name, row_index, opts)

Read worksheet row data by row's index.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

row_index = 56 # Integer | The row index.

opts = { 
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Read worksheet row data by row's index.
  result = api_instance.cells_get_worksheet_row(name, sheet_name, row_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_get_worksheet_row: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **row_index** | **Integer**| The row index. | 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**RowResponse**](RowResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_get_worksheet_rows**
> RowsResponse cells_get_worksheet_rows(name, sheet_name, opts)

Read worksheet rows info.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

opts = { 
  folder: "folder_example", # String | The workdook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Read worksheet rows info.
  result = api_instance.cells_get_worksheet_rows(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_get_worksheet_rows: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **folder** | **String**| The workdook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**RowsResponse**](RowsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_post_cell_calculate**
> SaaSposeResponse cells_post_cell_calculate(name, sheet_name, cell_name, opts)

Cell calculate formula

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

cell_name = "cell_name_example" # String | 

opts = { 
  options: AsposeCellsCloud::CalculationOptions.new, # CalculationOptions | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Cell calculate formula
  result = api_instance.cells_post_cell_calculate(name, sheet_name, cell_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_post_cell_calculate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **cell_name** | **String**|  | 
 **options** | [**CalculationOptions**](CalculationOptions.md)|  | [optional] 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_post_cell_characters**
> SaaSposeResponse cells_post_cell_characters(name, sheet_name, cell_name, opts)

Set cell characters 

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

cell_name = "cell_name_example" # String | 

opts = { 
  options: [AsposeCellsCloud::FontSetting.new], # Array<FontSetting> | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Set cell characters 
  result = api_instance.cells_post_cell_characters(name, sheet_name, cell_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_post_cell_characters: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **cell_name** | **String**|  | 
 **options** | [**Array&lt;FontSetting&gt;**](FontSetting.md)|  | [optional] 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_post_clear_contents**
> SaaSposeResponse cells_post_clear_contents(name, sheet_name, opts)

Clear cells contents.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | Workbook name.

sheet_name = "sheet_name_example" # String | Worksheet name.

opts = { 
  range: "range_example", # String | The range.
  start_row: 56, # Integer | The start row.
  start_column: 56, # Integer | The start column.
  end_row: 56, # Integer | The end row.
  end_column: 56, # Integer | The end column.
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Clear cells contents.
  result = api_instance.cells_post_clear_contents(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_post_clear_contents: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Workbook name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **range** | **String**| The range. | [optional] 
 **start_row** | **Integer**| The start row. | [optional] 
 **start_column** | **Integer**| The start column. | [optional] 
 **end_row** | **Integer**| The end row. | [optional] 
 **end_column** | **Integer**| The end column. | [optional] 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_post_clear_formats**
> SaaSposeResponse cells_post_clear_formats(name, sheet_name, opts)

Clear cells contents.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | Workbook name.

sheet_name = "sheet_name_example" # String | Worksheet name.

opts = { 
  range: "range_example", # String | The range.
  start_row: 56, # Integer | The start row.
  start_column: 56, # Integer | The start column.
  end_row: 56, # Integer | The end row.
  end_column: 56, # Integer | The end column.
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Clear cells contents.
  result = api_instance.cells_post_clear_formats(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_post_clear_formats: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Workbook name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **range** | **String**| The range. | [optional] 
 **start_row** | **Integer**| The start row. | [optional] 
 **start_column** | **Integer**| The start column. | [optional] 
 **end_row** | **Integer**| The end row. | [optional] 
 **end_column** | **Integer**| The end column. | [optional] 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_post_column_style**
> SaaSposeResponse cells_post_column_style(name, sheet_name, column_index, opts)

Set column style

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

column_index = 56 # Integer | The column index.

opts = { 
  style: AsposeCellsCloud::Style.new, # Style | Style dto
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Set column style
  result = api_instance.cells_post_column_style(name, sheet_name, column_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_post_column_style: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **column_index** | **Integer**| The column index. | 
 **style** | [**Style**](Style.md)| Style dto | [optional] 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_post_copy_cell_into_cell**
> SaaSposeResponse cells_post_copy_cell_into_cell(name, dest_cell_name, sheet_name, worksheet, opts)

Copy cell into cell

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | Workbook name.

dest_cell_name = "dest_cell_name_example" # String | Destination cell name

sheet_name = "sheet_name_example" # String | Destination worksheet name.

worksheet = "worksheet_example" # String | Source worksheet name.

opts = { 
  cellname: "cellname_example", # String | Source cell name
  row: 56, # Integer | Source row
  column: 56, # Integer | Source column
  folder: "folder_example", # String | Folder name
  storage: "storage_example" # String | storage name.
}

begin
  #Copy cell into cell
  result = api_instance.cells_post_copy_cell_into_cell(name, dest_cell_name, sheet_name, worksheet, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_post_copy_cell_into_cell: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Workbook name. | 
 **dest_cell_name** | **String**| Destination cell name | 
 **sheet_name** | **String**| Destination worksheet name. | 
 **worksheet** | **String**| Source worksheet name. | 
 **cellname** | **String**| Source cell name | [optional] 
 **row** | **Integer**| Source row | [optional] 
 **column** | **Integer**| Source column | [optional] 
 **folder** | **String**| Folder name | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_post_copy_worksheet_columns**
> SaaSposeResponse cells_post_copy_worksheet_columns(name, sheet_name, source_column_index, destination_column_index, column_number, opts)

Copy worksheet columns.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

source_column_index = 56 # Integer | Source column index

destination_column_index = 56 # Integer | Destination column index

column_number = 56 # Integer | The copied column number

opts = { 
  worksheet: "", # String | The Worksheet
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Copy worksheet columns.
  result = api_instance.cells_post_copy_worksheet_columns(name, sheet_name, source_column_index, destination_column_index, column_number, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_post_copy_worksheet_columns: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **source_column_index** | **Integer**| Source column index | 
 **destination_column_index** | **Integer**| Destination column index | 
 **column_number** | **Integer**| The copied column number | 
 **worksheet** | **String**| The Worksheet | [optional] [default to ]
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_post_copy_worksheet_rows**
> SaaSposeResponse cells_post_copy_worksheet_rows(name, sheet_name, source_row_index, destination_row_index, row_number, opts)

Copy worksheet rows.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

source_row_index = 56 # Integer | Source row index

destination_row_index = 56 # Integer | Destination row index

row_number = 56 # Integer | The copied row number

opts = { 
  worksheet: "worksheet_example", # String | worksheet
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Copy worksheet rows.
  result = api_instance.cells_post_copy_worksheet_rows(name, sheet_name, source_row_index, destination_row_index, row_number, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_post_copy_worksheet_rows: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **source_row_index** | **Integer**| Source row index | 
 **destination_row_index** | **Integer**| Destination row index | 
 **row_number** | **Integer**| The copied row number | 
 **worksheet** | **String**| worksheet | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_post_group_worksheet_columns**
> SaaSposeResponse cells_post_group_worksheet_columns(name, sheet_name, first_index, last_index, opts)

Group worksheet columns.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

first_index = 56 # Integer | The first column index to be operated.

last_index = 56 # Integer | The last column index to be operated.

opts = { 
  hide: true, # BOOLEAN | columns visible state
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Group worksheet columns.
  result = api_instance.cells_post_group_worksheet_columns(name, sheet_name, first_index, last_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_post_group_worksheet_columns: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **first_index** | **Integer**| The first column index to be operated. | 
 **last_index** | **Integer**| The last column index to be operated. | 
 **hide** | **BOOLEAN**| columns visible state | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_post_group_worksheet_rows**
> SaaSposeResponse cells_post_group_worksheet_rows(name, sheet_name, first_index, last_index, opts)

Group worksheet rows.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

first_index = 56 # Integer | The first row index to be operated.

last_index = 56 # Integer | The last row index to be operated.

opts = { 
  hide: true, # BOOLEAN | rows visible state
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Group worksheet rows.
  result = api_instance.cells_post_group_worksheet_rows(name, sheet_name, first_index, last_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_post_group_worksheet_rows: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **first_index** | **Integer**| The first row index to be operated. | 
 **last_index** | **Integer**| The last row index to be operated. | 
 **hide** | **BOOLEAN**| rows visible state | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_post_hide_worksheet_columns**
> SaaSposeResponse cells_post_hide_worksheet_columns(name, sheet_name, start_column, total_columns, opts)

Hide worksheet columns.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

start_column = 56 # Integer | The begin column index to be operated.

total_columns = 56 # Integer | Number of columns to be operated.

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Hide worksheet columns.
  result = api_instance.cells_post_hide_worksheet_columns(name, sheet_name, start_column, total_columns, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_post_hide_worksheet_columns: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **start_column** | **Integer**| The begin column index to be operated. | 
 **total_columns** | **Integer**| Number of columns to be operated. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_post_hide_worksheet_rows**
> SaaSposeResponse cells_post_hide_worksheet_rows(name, sheet_name, startrow, total_rows, opts)

Hide worksheet rows.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

startrow = 56 # Integer | The begin row index to be operated.

total_rows = 56 # Integer | Number of rows to be operated.

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Hide worksheet rows.
  result = api_instance.cells_post_hide_worksheet_rows(name, sheet_name, startrow, total_rows, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_post_hide_worksheet_rows: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **startrow** | **Integer**| The begin row index to be operated. | 
 **total_rows** | **Integer**| Number of rows to be operated. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_post_row_style**
> SaaSposeResponse cells_post_row_style(name, sheet_name, row_index, opts)

Set row style.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

row_index = 56 # Integer | The row index.

opts = { 
  style: AsposeCellsCloud::Style.new, # Style | Style dto
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Set row style.
  result = api_instance.cells_post_row_style(name, sheet_name, row_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_post_row_style: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **row_index** | **Integer**| The row index. | 
 **style** | [**Style**](Style.md)| Style dto | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_post_set_cell_html_string**
> CellResponse cells_post_set_cell_html_string(name, sheet_name, cell_name, opts)

Set htmlstring value into cell

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | Workbook name.

sheet_name = "sheet_name_example" # String | Worksheet name.

cell_name = "cell_name_example" # String | The cell name.

opts = { 
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Set htmlstring value into cell
  result = api_instance.cells_post_set_cell_html_string(name, sheet_name, cell_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_post_set_cell_html_string: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Workbook name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **cell_name** | **String**| The cell name. | 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**CellResponse**](CellResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_post_set_cell_range_value**
> SaaSposeResponse cells_post_set_cell_range_value(name, sheet_name, cellarea, value, type, opts)

Set cell range value 

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | Workbook name.

sheet_name = "sheet_name_example" # String | Worksheet name.

cellarea = "cellarea_example" # String | Cell area (like \"A1:C2\")

value = "value_example" # String | Range value

type = "type_example" # String | Value data type (like \"int\")

opts = { 
  folder: "folder_example", # String | Folder name
  storage: "storage_example" # String | storage name.
}

begin
  #Set cell range value 
  result = api_instance.cells_post_set_cell_range_value(name, sheet_name, cellarea, value, type, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_post_set_cell_range_value: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Workbook name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **cellarea** | **String**| Cell area (like \&quot;A1:C2\&quot;) | 
 **value** | **String**| Range value | 
 **type** | **String**| Value data type (like \&quot;int\&quot;) | 
 **folder** | **String**| Folder name | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_post_set_worksheet_column_width**
> ColumnResponse cells_post_set_worksheet_column_width(name, sheet_name, column_index, width, opts)

Set worksheet column width.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

column_index = 56 # Integer | The column index.

width = 1.2 # Float | The width.

opts = { 
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Set worksheet column width.
  result = api_instance.cells_post_set_worksheet_column_width(name, sheet_name, column_index, width, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_post_set_worksheet_column_width: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **column_index** | **Integer**| The column index. | 
 **width** | **Float**| The width. | 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**ColumnResponse**](ColumnResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_post_ungroup_worksheet_columns**
> SaaSposeResponse cells_post_ungroup_worksheet_columns(name, sheet_name, first_index, last_index, opts)

Ungroup worksheet columns.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

first_index = 56 # Integer | The first column index to be operated.

last_index = 56 # Integer | The last column index to be operated.

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Ungroup worksheet columns.
  result = api_instance.cells_post_ungroup_worksheet_columns(name, sheet_name, first_index, last_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_post_ungroup_worksheet_columns: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **first_index** | **Integer**| The first column index to be operated. | 
 **last_index** | **Integer**| The last column index to be operated. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_post_ungroup_worksheet_rows**
> SaaSposeResponse cells_post_ungroup_worksheet_rows(name, sheet_name, first_index, last_index, opts)

Ungroup worksheet rows.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

first_index = 56 # Integer | The first row index to be operated.

last_index = 56 # Integer | The last row index to be operated.

opts = { 
  is_all: true, # BOOLEAN | Is all row to be operated
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Ungroup worksheet rows.
  result = api_instance.cells_post_ungroup_worksheet_rows(name, sheet_name, first_index, last_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_post_ungroup_worksheet_rows: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **first_index** | **Integer**| The first row index to be operated. | 
 **last_index** | **Integer**| The last row index to be operated. | 
 **is_all** | **BOOLEAN**| Is all row to be operated | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_post_unhide_worksheet_columns**
> SaaSposeResponse cells_post_unhide_worksheet_columns(name, sheet_name, startcolumn, total_columns, opts)

Unhide worksheet columns.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

startcolumn = 56 # Integer | The begin column index to be operated.

total_columns = 56 # Integer | Number of columns to be operated.

opts = { 
  width: 50.0, # Float | The new column width.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Unhide worksheet columns.
  result = api_instance.cells_post_unhide_worksheet_columns(name, sheet_name, startcolumn, total_columns, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_post_unhide_worksheet_columns: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **startcolumn** | **Integer**| The begin column index to be operated. | 
 **total_columns** | **Integer**| Number of columns to be operated. | 
 **width** | **Float**| The new column width. | [optional] [default to 50.0]
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_post_unhide_worksheet_rows**
> SaaSposeResponse cells_post_unhide_worksheet_rows(name, sheet_name, startrow, total_rows, opts)

Unhide worksheet rows.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

startrow = 56 # Integer | The begin row index to be operated.

total_rows = 56 # Integer | Number of rows to be operated.

opts = { 
  height: 15.0, # Float | The new row height.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Unhide worksheet rows.
  result = api_instance.cells_post_unhide_worksheet_rows(name, sheet_name, startrow, total_rows, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_post_unhide_worksheet_rows: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **startrow** | **Integer**| The begin row index to be operated. | 
 **total_rows** | **Integer**| Number of rows to be operated. | 
 **height** | **Float**| The new row height. | [optional] [default to 15.0]
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_post_update_worksheet_cell_style**
> StyleResponse cells_post_update_worksheet_cell_style(name, sheet_name, cell_name, opts)

Update cell's style.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | Workbook name.

sheet_name = "sheet_name_example" # String | Worksheet name.

cell_name = "cell_name_example" # String | The cell name.

opts = { 
  style: AsposeCellsCloud::Style.new, # Style | with update style settings.
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Update cell's style.
  result = api_instance.cells_post_update_worksheet_cell_style(name, sheet_name, cell_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_post_update_worksheet_cell_style: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Workbook name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **cell_name** | **String**| The cell name. | 
 **style** | [**Style**](Style.md)| with update style settings. | [optional] 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**StyleResponse**](StyleResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_post_update_worksheet_range_style**
> SaaSposeResponse cells_post_update_worksheet_range_style(name, sheet_name, range, opts)

Update cell's range style.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | Workbook name.

sheet_name = "sheet_name_example" # String | Worksheet name.

range = "range_example" # String | The range.

opts = { 
  style: AsposeCellsCloud::Style.new, # Style | with update style settings.
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Update cell's range style.
  result = api_instance.cells_post_update_worksheet_range_style(name, sheet_name, range, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_post_update_worksheet_range_style: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Workbook name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **range** | **String**| The range. | 
 **style** | [**Style**](Style.md)| with update style settings. | [optional] 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_post_update_worksheet_row**
> RowResponse cells_post_update_worksheet_row(name, sheet_name, row_index, opts)

Update worksheet row.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

row_index = 56 # Integer | The row index.

opts = { 
  height: 0.0, # Float | The new row height.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Update worksheet row.
  result = api_instance.cells_post_update_worksheet_row(name, sheet_name, row_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_post_update_worksheet_row: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **row_index** | **Integer**| The row index. | 
 **height** | **Float**| The new row height. | [optional] [default to 0.0]
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**RowResponse**](RowResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_post_worksheet_cell_set_value**
> CellResponse cells_post_worksheet_cell_set_value(name, sheet_name, cell_name, opts)

Set cell value.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | The document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

cell_name = "cell_name_example" # String | The cell name.

opts = { 
  value: "value_example", # String | The cell value.
  type: "type_example", # String | The value type.
  formula: "formula_example", # String | Formula for cell
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Set cell value.
  result = api_instance.cells_post_worksheet_cell_set_value(name, sheet_name, cell_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_post_worksheet_cell_set_value: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **cell_name** | **String**| The cell name. | 
 **value** | **String**| The cell value. | [optional] 
 **type** | **String**| The value type. | [optional] 
 **formula** | **String**| Formula for cell | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**CellResponse**](CellResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_post_worksheet_merge**
> SaaSposeResponse cells_post_worksheet_merge(name, sheet_name, start_row, start_column, total_rows, total_columns, opts)

Merge cells.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

start_row = 56 # Integer | The start row.

start_column = 56 # Integer | The start column.

total_rows = 56 # Integer | The total rows

total_columns = 56 # Integer | The total columns.

opts = { 
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Merge cells.
  result = api_instance.cells_post_worksheet_merge(name, sheet_name, start_row, start_column, total_rows, total_columns, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_post_worksheet_merge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **start_row** | **Integer**| The start row. | 
 **start_column** | **Integer**| The start column. | 
 **total_rows** | **Integer**| The total rows | 
 **total_columns** | **Integer**| The total columns. | 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_post_worksheet_unmerge**
> SaaSposeResponse cells_post_worksheet_unmerge(name, sheet_name, start_row, start_column, total_rows, total_columns, opts)

Unmerge cells.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

start_row = 56 # Integer | The start row.

start_column = 56 # Integer | The start column.

total_rows = 56 # Integer | The total rows

total_columns = 56 # Integer | The total columns.

opts = { 
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Unmerge cells.
  result = api_instance.cells_post_worksheet_unmerge(name, sheet_name, start_row, start_column, total_rows, total_columns, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_post_worksheet_unmerge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **start_row** | **Integer**| The start row. | 
 **start_column** | **Integer**| The start column. | 
 **total_rows** | **Integer**| The total rows | 
 **total_columns** | **Integer**| The total columns. | 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_put_insert_worksheet_columns**
> ColumnsResponse cells_put_insert_worksheet_columns(name, sheet_name, column_index, columns, opts)

Insert worksheet columns.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

column_index = 56 # Integer | The column index.

columns = 56 # Integer | The columns.

opts = { 
  update_reference: true, # BOOLEAN | The update reference.
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Insert worksheet columns.
  result = api_instance.cells_put_insert_worksheet_columns(name, sheet_name, column_index, columns, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_put_insert_worksheet_columns: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **column_index** | **Integer**| The column index. | 
 **columns** | **Integer**| The columns. | 
 **update_reference** | **BOOLEAN**| The update reference. | [optional] [default to true]
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**ColumnsResponse**](ColumnsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_put_insert_worksheet_row**
> RowResponse cells_put_insert_worksheet_row(name, sheet_name, row_index, opts)

Insert new worksheet row.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

row_index = 56 # Integer | The new row index.

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Insert new worksheet row.
  result = api_instance.cells_put_insert_worksheet_row(name, sheet_name, row_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_put_insert_worksheet_row: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **row_index** | **Integer**| The new row index. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**RowResponse**](RowResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_put_insert_worksheet_rows**
> SaaSposeResponse cells_put_insert_worksheet_rows(name, sheet_name, startrow, opts)

Insert several new worksheet rows.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsApi.new

name = "name_example" # String | The workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

startrow = 56 # Integer | The begin row index to be operated.

opts = { 
  total_rows: 1, # Integer | Number of rows to be operated.
  update_reference: true, # BOOLEAN | Indicates if update references in other worksheets.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Insert several new worksheet rows.
  result = api_instance.cells_put_insert_worksheet_rows(name, sheet_name, startrow, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsApi->cells_put_insert_worksheet_rows: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **startrow** | **Integer**| The begin row index to be operated. | 
 **total_rows** | **Integer**| Number of rows to be operated. | [optional] [default to 1]
 **update_reference** | **BOOLEAN**| Indicates if update references in other worksheets. | [optional] [default to true]
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



