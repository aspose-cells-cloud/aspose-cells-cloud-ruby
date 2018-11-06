# AsposeCellsCloud::CellsPivotTablesApi

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_pivot_tables_delete_pivot_table_field**](CellsPivotTablesApi.md#cells_pivot_tables_delete_pivot_table_field) | **DELETE** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField | Delete pivot field into into pivot table
[**cells_pivot_tables_delete_worksheet_pivot_table**](CellsPivotTablesApi.md#cells_pivot_tables_delete_worksheet_pivot_table) | **DELETE** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex} | Delete worksheet pivot table by index
[**cells_pivot_tables_delete_worksheet_pivot_table_filter**](CellsPivotTablesApi.md#cells_pivot_tables_delete_worksheet_pivot_table_filter) | **DELETE** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotFilters/{fieldIndex} | delete  pivot filter for piovt table             
[**cells_pivot_tables_delete_worksheet_pivot_table_filters**](CellsPivotTablesApi.md#cells_pivot_tables_delete_worksheet_pivot_table_filters) | **DELETE** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotFilters | delete all pivot filters for piovt table
[**cells_pivot_tables_delete_worksheet_pivot_tables**](CellsPivotTablesApi.md#cells_pivot_tables_delete_worksheet_pivot_tables) | **DELETE** /cells/{name}/worksheets/{sheetName}/pivottables | Delete worksheet pivot tables
[**cells_pivot_tables_get_pivot_table_field**](CellsPivotTablesApi.md#cells_pivot_tables_get_pivot_table_field) | **GET** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField | Get pivot field into into pivot table
[**cells_pivot_tables_get_worksheet_pivot_table**](CellsPivotTablesApi.md#cells_pivot_tables_get_worksheet_pivot_table) | **GET** /cells/{name}/worksheets/{sheetName}/pivottables/{pivottableIndex} | Get worksheet pivottable info by index.
[**cells_pivot_tables_get_worksheet_pivot_table_filter**](CellsPivotTablesApi.md#cells_pivot_tables_get_worksheet_pivot_table_filter) | **GET** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotFilters/{filterIndex} | 
[**cells_pivot_tables_get_worksheet_pivot_table_filters**](CellsPivotTablesApi.md#cells_pivot_tables_get_worksheet_pivot_table_filters) | **GET** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotFilters | 
[**cells_pivot_tables_get_worksheet_pivot_tables**](CellsPivotTablesApi.md#cells_pivot_tables_get_worksheet_pivot_tables) | **GET** /cells/{name}/worksheets/{sheetName}/pivottables | Get worksheet pivottables info.
[**cells_pivot_tables_post_pivot_table_cell_style**](CellsPivotTablesApi.md#cells_pivot_tables_post_pivot_table_cell_style) | **POST** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/Format | Update cell style for pivot table
[**cells_pivot_tables_post_pivot_table_field_hide_item**](CellsPivotTablesApi.md#cells_pivot_tables_post_pivot_table_field_hide_item) | **POST** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField/Hide | 
[**cells_pivot_tables_post_pivot_table_field_move_to**](CellsPivotTablesApi.md#cells_pivot_tables_post_pivot_table_field_move_to) | **POST** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField/Move | 
[**cells_pivot_tables_post_pivot_table_style**](CellsPivotTablesApi.md#cells_pivot_tables_post_pivot_table_style) | **POST** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/FormatAll | Update style for pivot table
[**cells_pivot_tables_post_worksheet_pivot_table_calculate**](CellsPivotTablesApi.md#cells_pivot_tables_post_worksheet_pivot_table_calculate) | **POST** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/Calculate | Calculates pivottable&#39;s data to cells.
[**cells_pivot_tables_post_worksheet_pivot_table_move**](CellsPivotTablesApi.md#cells_pivot_tables_post_worksheet_pivot_table_move) | **POST** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/Move | 
[**cells_pivot_tables_put_pivot_table_field**](CellsPivotTablesApi.md#cells_pivot_tables_put_pivot_table_field) | **PUT** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField | Add pivot field into into pivot table
[**cells_pivot_tables_put_worksheet_pivot_table**](CellsPivotTablesApi.md#cells_pivot_tables_put_worksheet_pivot_table) | **PUT** /cells/{name}/worksheets/{sheetName}/pivottables | Add a pivot table into worksheet.
[**cells_pivot_tables_put_worksheet_pivot_table_filter**](CellsPivotTablesApi.md#cells_pivot_tables_put_worksheet_pivot_table_filter) | **PUT** /cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotFilters | Add pivot filter for piovt table index


# **cells_pivot_tables_delete_pivot_table_field**
> SaaSposeResponse cells_pivot_tables_delete_pivot_table_field(name, sheet_name, pivot_table_index, pivot_field_type, opts)

Delete pivot field into into pivot table

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPivotTablesApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

pivot_table_index = 56 # Integer | Pivot table index

pivot_field_type = "pivot_field_type_example" # String | The fields area type.

opts = { 
  request: AsposeCellsCloud::PivotTableFieldRequest.new, # PivotTableFieldRequest | Dto that conrains field indexes
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Delete pivot field into into pivot table
  result = api_instance.cells_pivot_tables_delete_pivot_table_field(name, sheet_name, pivot_table_index, pivot_field_type, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPivotTablesApi->cells_pivot_tables_delete_pivot_table_field: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **pivot_table_index** | **Integer**| Pivot table index | 
 **pivot_field_type** | **String**| The fields area type. | 
 **request** | [**PivotTableFieldRequest**](PivotTableFieldRequest.md)| Dto that conrains field indexes | [optional] 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_pivot_tables_delete_worksheet_pivot_table**
> SaaSposeResponse cells_pivot_tables_delete_worksheet_pivot_table(name, sheet_name, pivot_table_index, opts)

Delete worksheet pivot table by index

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPivotTablesApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

pivot_table_index = 56 # Integer | Pivot table index

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Delete worksheet pivot table by index
  result = api_instance.cells_pivot_tables_delete_worksheet_pivot_table(name, sheet_name, pivot_table_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPivotTablesApi->cells_pivot_tables_delete_worksheet_pivot_table: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **pivot_table_index** | **Integer**| Pivot table index | 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_pivot_tables_delete_worksheet_pivot_table_filter**
> SaaSposeResponse cells_pivot_tables_delete_worksheet_pivot_table_filter(name, sheet_name, pivot_table_index, field_index, opts)

delete  pivot filter for piovt table             

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPivotTablesApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

pivot_table_index = 56 # Integer | 

field_index = 56 # Integer | 

opts = { 
  need_re_calculate: false, # BOOLEAN | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #delete  pivot filter for piovt table             
  result = api_instance.cells_pivot_tables_delete_worksheet_pivot_table_filter(name, sheet_name, pivot_table_index, field_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPivotTablesApi->cells_pivot_tables_delete_worksheet_pivot_table_filter: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **pivot_table_index** | **Integer**|  | 
 **field_index** | **Integer**|  | 
 **need_re_calculate** | **BOOLEAN**|  | [optional] [default to false]
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_pivot_tables_delete_worksheet_pivot_table_filters**
> SaaSposeResponse cells_pivot_tables_delete_worksheet_pivot_table_filters(name, sheet_name, pivot_table_index, opts)

delete all pivot filters for piovt table

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPivotTablesApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

pivot_table_index = 56 # Integer | 

opts = { 
  need_re_calculate: false, # BOOLEAN | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #delete all pivot filters for piovt table
  result = api_instance.cells_pivot_tables_delete_worksheet_pivot_table_filters(name, sheet_name, pivot_table_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPivotTablesApi->cells_pivot_tables_delete_worksheet_pivot_table_filters: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **pivot_table_index** | **Integer**|  | 
 **need_re_calculate** | **BOOLEAN**|  | [optional] [default to false]
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_pivot_tables_delete_worksheet_pivot_tables**
> SaaSposeResponse cells_pivot_tables_delete_worksheet_pivot_tables(name, sheet_name, opts)

Delete worksheet pivot tables

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPivotTablesApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Delete worksheet pivot tables
  result = api_instance.cells_pivot_tables_delete_worksheet_pivot_tables(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPivotTablesApi->cells_pivot_tables_delete_worksheet_pivot_tables: #{e}"
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



# **cells_pivot_tables_get_pivot_table_field**
> PivotFieldResponse cells_pivot_tables_get_pivot_table_field(name, sheet_name, pivot_table_index, pivot_field_index, pivot_field_type, opts)

Get pivot field into into pivot table

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPivotTablesApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

pivot_table_index = 56 # Integer | Pivot table index

pivot_field_index = 56 # Integer | The field index in the base fields.

pivot_field_type = "pivot_field_type_example" # String | The fields area type.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get pivot field into into pivot table
  result = api_instance.cells_pivot_tables_get_pivot_table_field(name, sheet_name, pivot_table_index, pivot_field_index, pivot_field_type, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPivotTablesApi->cells_pivot_tables_get_pivot_table_field: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **pivot_table_index** | **Integer**| Pivot table index | 
 **pivot_field_index** | **Integer**| The field index in the base fields. | 
 **pivot_field_type** | **String**| The fields area type. | 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**PivotFieldResponse**](PivotFieldResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_pivot_tables_get_worksheet_pivot_table**
> PivotTableResponse cells_pivot_tables_get_worksheet_pivot_table(name, sheet_name, pivottable_index, opts)

Get worksheet pivottable info by index.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPivotTablesApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

pivottable_index = 56 # Integer | 

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get worksheet pivottable info by index.
  result = api_instance.cells_pivot_tables_get_worksheet_pivot_table(name, sheet_name, pivottable_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPivotTablesApi->cells_pivot_tables_get_worksheet_pivot_table: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **pivottable_index** | **Integer**|  | 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**PivotTableResponse**](PivotTableResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_pivot_tables_get_worksheet_pivot_table_filter**
> PivotFilterResponse cells_pivot_tables_get_worksheet_pivot_table_filter(name, sheet_name, pivot_table_index, filter_index, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPivotTablesApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

pivot_table_index = 56 # Integer | 

filter_index = 56 # Integer | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  result = api_instance.cells_pivot_tables_get_worksheet_pivot_table_filter(name, sheet_name, pivot_table_index, filter_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPivotTablesApi->cells_pivot_tables_get_worksheet_pivot_table_filter: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **pivot_table_index** | **Integer**|  | 
 **filter_index** | **Integer**|  | 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**PivotFilterResponse**](PivotFilterResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_pivot_tables_get_worksheet_pivot_table_filters**
> PivotFiltersResponse cells_pivot_tables_get_worksheet_pivot_table_filters(name, sheet_name, pivot_table_index, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPivotTablesApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

pivot_table_index = 56 # Integer | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  result = api_instance.cells_pivot_tables_get_worksheet_pivot_table_filters(name, sheet_name, pivot_table_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPivotTablesApi->cells_pivot_tables_get_worksheet_pivot_table_filters: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **pivot_table_index** | **Integer**|  | 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**PivotFiltersResponse**](PivotFiltersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_pivot_tables_get_worksheet_pivot_tables**
> PivotTablesResponse cells_pivot_tables_get_worksheet_pivot_tables(name, sheet_name, opts)

Get worksheet pivottables info.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPivotTablesApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get worksheet pivottables info.
  result = api_instance.cells_pivot_tables_get_worksheet_pivot_tables(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPivotTablesApi->cells_pivot_tables_get_worksheet_pivot_tables: #{e}"
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

[**PivotTablesResponse**](PivotTablesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_pivot_tables_post_pivot_table_cell_style**
> SaaSposeResponse cells_pivot_tables_post_pivot_table_cell_style(name, sheet_name, pivot_table_index, column, row, opts)

Update cell style for pivot table

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPivotTablesApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

pivot_table_index = 56 # Integer | Pivot table index

column = 56 # Integer | 

row = 56 # Integer | 

opts = { 
  style: AsposeCellsCloud::Style.new, # Style | Style dto in request body.
  need_re_calculate: false, # BOOLEAN | 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Update cell style for pivot table
  result = api_instance.cells_pivot_tables_post_pivot_table_cell_style(name, sheet_name, pivot_table_index, column, row, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPivotTablesApi->cells_pivot_tables_post_pivot_table_cell_style: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **pivot_table_index** | **Integer**| Pivot table index | 
 **column** | **Integer**|  | 
 **row** | **Integer**|  | 
 **style** | [**Style**](Style.md)| Style dto in request body. | [optional] 
 **need_re_calculate** | **BOOLEAN**|  | [optional] [default to false]
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_pivot_tables_post_pivot_table_field_hide_item**
> SaaSposeResponse cells_pivot_tables_post_pivot_table_field_hide_item(name, sheet_name, pivot_table_index, pivot_field_type, field_index, item_index, is_hide, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPivotTablesApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

pivot_table_index = 56 # Integer | 

pivot_field_type = "pivot_field_type_example" # String | 

field_index = 56 # Integer | 

item_index = 56 # Integer | 

is_hide = true # BOOLEAN | 

opts = { 
  need_re_calculate: false, # BOOLEAN | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  result = api_instance.cells_pivot_tables_post_pivot_table_field_hide_item(name, sheet_name, pivot_table_index, pivot_field_type, field_index, item_index, is_hide, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPivotTablesApi->cells_pivot_tables_post_pivot_table_field_hide_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **pivot_table_index** | **Integer**|  | 
 **pivot_field_type** | **String**|  | 
 **field_index** | **Integer**|  | 
 **item_index** | **Integer**|  | 
 **is_hide** | **BOOLEAN**|  | 
 **need_re_calculate** | **BOOLEAN**|  | [optional] [default to false]
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_pivot_tables_post_pivot_table_field_move_to**
> SaaSposeResponse cells_pivot_tables_post_pivot_table_field_move_to(name, sheet_name, pivot_table_index, field_index, from, to, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPivotTablesApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

pivot_table_index = 56 # Integer | 

field_index = 56 # Integer | 

from = "from_example" # String | 

to = "to_example" # String | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  result = api_instance.cells_pivot_tables_post_pivot_table_field_move_to(name, sheet_name, pivot_table_index, field_index, from, to, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPivotTablesApi->cells_pivot_tables_post_pivot_table_field_move_to: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **pivot_table_index** | **Integer**|  | 
 **field_index** | **Integer**|  | 
 **from** | **String**|  | 
 **to** | **String**|  | 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_pivot_tables_post_pivot_table_style**
> SaaSposeResponse cells_pivot_tables_post_pivot_table_style(name, sheet_name, pivot_table_index, opts)

Update style for pivot table

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPivotTablesApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

pivot_table_index = 56 # Integer | Pivot table index

opts = { 
  style: AsposeCellsCloud::Style.new, # Style | Style dto in request body.
  need_re_calculate: false, # BOOLEAN | 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Update style for pivot table
  result = api_instance.cells_pivot_tables_post_pivot_table_style(name, sheet_name, pivot_table_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPivotTablesApi->cells_pivot_tables_post_pivot_table_style: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **pivot_table_index** | **Integer**| Pivot table index | 
 **style** | [**Style**](Style.md)| Style dto in request body. | [optional] 
 **need_re_calculate** | **BOOLEAN**|  | [optional] [default to false]
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_pivot_tables_post_worksheet_pivot_table_calculate**
> SaaSposeResponse cells_pivot_tables_post_worksheet_pivot_table_calculate(name, sheet_name, pivot_table_index, opts)

Calculates pivottable's data to cells.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPivotTablesApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

pivot_table_index = 56 # Integer | Pivot table index

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Calculates pivottable's data to cells.
  result = api_instance.cells_pivot_tables_post_worksheet_pivot_table_calculate(name, sheet_name, pivot_table_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPivotTablesApi->cells_pivot_tables_post_worksheet_pivot_table_calculate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **pivot_table_index** | **Integer**| Pivot table index | 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_pivot_tables_post_worksheet_pivot_table_move**
> SaaSposeResponse cells_pivot_tables_post_worksheet_pivot_table_move(name, sheet_name, pivot_table_index, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPivotTablesApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

pivot_table_index = 56 # Integer | 

opts = { 
  row: 56, # Integer | 
  column: 56, # Integer | 
  dest_cell_name: "dest_cell_name_example", # String | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  result = api_instance.cells_pivot_tables_post_worksheet_pivot_table_move(name, sheet_name, pivot_table_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPivotTablesApi->cells_pivot_tables_post_worksheet_pivot_table_move: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **pivot_table_index** | **Integer**|  | 
 **row** | **Integer**|  | [optional] 
 **column** | **Integer**|  | [optional] 
 **dest_cell_name** | **String**|  | [optional] 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_pivot_tables_put_pivot_table_field**
> SaaSposeResponse cells_pivot_tables_put_pivot_table_field(name, sheet_name, pivot_table_index, pivot_field_type, opts)

Add pivot field into into pivot table

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPivotTablesApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

pivot_table_index = 56 # Integer | Pivot table index

pivot_field_type = "pivot_field_type_example" # String | The fields area type.

opts = { 
  request: AsposeCellsCloud::PivotTableFieldRequest.new, # PivotTableFieldRequest | Dto that conrains field indexes
  need_re_calculate: false, # BOOLEAN | 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Add pivot field into into pivot table
  result = api_instance.cells_pivot_tables_put_pivot_table_field(name, sheet_name, pivot_table_index, pivot_field_type, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPivotTablesApi->cells_pivot_tables_put_pivot_table_field: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **pivot_table_index** | **Integer**| Pivot table index | 
 **pivot_field_type** | **String**| The fields area type. | 
 **request** | [**PivotTableFieldRequest**](PivotTableFieldRequest.md)| Dto that conrains field indexes | [optional] 
 **need_re_calculate** | **BOOLEAN**|  | [optional] [default to false]
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_pivot_tables_put_worksheet_pivot_table**
> PivotTableResponse cells_pivot_tables_put_worksheet_pivot_table(name, sheet_name, opts)

Add a pivot table into worksheet.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPivotTablesApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

opts = { 
  request: AsposeCellsCloud::CreatePivotTableRequest.new, # CreatePivotTableRequest | CreatePivotTableRequest dto in request body.
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example", # String | storage name.
  source_data: "source_data_example", # String | The data for the new PivotTable cache.
  dest_cell_name: "dest_cell_name_example", # String | The cell in the upper-left corner of the PivotTable report's destination range.
  table_name: "table_name_example", # String | The name of the new PivotTable report.
  use_same_source: true # BOOLEAN | Indicates whether using same data source when another existing pivot table has used this data source. If the property is true, it will save memory.
}

begin
  #Add a pivot table into worksheet.
  result = api_instance.cells_pivot_tables_put_worksheet_pivot_table(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPivotTablesApi->cells_pivot_tables_put_worksheet_pivot_table: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **request** | [**CreatePivotTableRequest**](CreatePivotTableRequest.md)| CreatePivotTableRequest dto in request body. | [optional] 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 
 **source_data** | **String**| The data for the new PivotTable cache. | [optional] 
 **dest_cell_name** | **String**| The cell in the upper-left corner of the PivotTable report&#39;s destination range. | [optional] 
 **table_name** | **String**| The name of the new PivotTable report. | [optional] 
 **use_same_source** | **BOOLEAN**| Indicates whether using same data source when another existing pivot table has used this data source. If the property is true, it will save memory. | [optional] 

### Return type

[**PivotTableResponse**](PivotTableResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_pivot_tables_put_worksheet_pivot_table_filter**
> SaaSposeResponse cells_pivot_tables_put_worksheet_pivot_table_filter(name, sheet_name, pivot_table_index, opts)

Add pivot filter for piovt table index

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPivotTablesApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

pivot_table_index = 56 # Integer | 

opts = { 
  filter: AsposeCellsCloud::PivotFilter.new, # PivotFilter | 
  need_re_calculate: false, # BOOLEAN | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Add pivot filter for piovt table index
  result = api_instance.cells_pivot_tables_put_worksheet_pivot_table_filter(name, sheet_name, pivot_table_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPivotTablesApi->cells_pivot_tables_put_worksheet_pivot_table_filter: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **pivot_table_index** | **Integer**|  | 
 **filter** | [**PivotFilter**](PivotFilter.md)|  | [optional] 
 **need_re_calculate** | **BOOLEAN**|  | [optional] [default to false]
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



