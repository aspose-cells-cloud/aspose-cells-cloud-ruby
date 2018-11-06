# AsposeCellsCloud::CellsPageBreaksApi

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_page_breaks_delete_horizontal_page_break**](CellsPageBreaksApi.md#cells_page_breaks_delete_horizontal_page_break) | **DELETE** /cells/{name}/worksheets/{sheetName}/horizontalpagebreaks/{index} | 
[**cells_page_breaks_delete_horizontal_page_breaks**](CellsPageBreaksApi.md#cells_page_breaks_delete_horizontal_page_breaks) | **DELETE** /cells/{name}/worksheets/{sheetName}/horizontalpagebreaks | 
[**cells_page_breaks_delete_vertical_page_break**](CellsPageBreaksApi.md#cells_page_breaks_delete_vertical_page_break) | **DELETE** /cells/{name}/worksheets/{sheetName}/verticalpagebreaks/{index} | 
[**cells_page_breaks_delete_vertical_page_breaks**](CellsPageBreaksApi.md#cells_page_breaks_delete_vertical_page_breaks) | **DELETE** /cells/{name}/worksheets/{sheetName}/verticalpagebreaks | 
[**cells_page_breaks_get_horizontal_page_break**](CellsPageBreaksApi.md#cells_page_breaks_get_horizontal_page_break) | **GET** /cells/{name}/worksheets/{sheetName}/horizontalpagebreaks/{index} | 
[**cells_page_breaks_get_horizontal_page_breaks**](CellsPageBreaksApi.md#cells_page_breaks_get_horizontal_page_breaks) | **GET** /cells/{name}/worksheets/{sheetName}/horizontalpagebreaks | 
[**cells_page_breaks_get_vertical_page_break**](CellsPageBreaksApi.md#cells_page_breaks_get_vertical_page_break) | **GET** /cells/{name}/worksheets/{sheetName}/verticalpagebreaks/{index} | 
[**cells_page_breaks_get_vertical_page_breaks**](CellsPageBreaksApi.md#cells_page_breaks_get_vertical_page_breaks) | **GET** /cells/{name}/worksheets/{sheetName}/verticalpagebreaks | 
[**cells_page_breaks_put_horizontal_page_break**](CellsPageBreaksApi.md#cells_page_breaks_put_horizontal_page_break) | **PUT** /cells/{name}/worksheets/{sheetName}/horizontalpagebreaks | 
[**cells_page_breaks_put_vertical_page_break**](CellsPageBreaksApi.md#cells_page_breaks_put_vertical_page_break) | **PUT** /cells/{name}/worksheets/{sheetName}/verticalpagebreaks | 


# **cells_page_breaks_delete_horizontal_page_break**
> SaaSposeResponse cells_page_breaks_delete_horizontal_page_break(name, sheet_name, index, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPageBreaksApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

index = 56 # Integer | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  result = api_instance.cells_page_breaks_delete_horizontal_page_break(name, sheet_name, index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPageBreaksApi->cells_page_breaks_delete_horizontal_page_break: #{e}"
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



# **cells_page_breaks_delete_horizontal_page_breaks**
> SaaSposeResponse cells_page_breaks_delete_horizontal_page_breaks(name, sheet_name, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPageBreaksApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

opts = { 
  row: 56, # Integer | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  result = api_instance.cells_page_breaks_delete_horizontal_page_breaks(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPageBreaksApi->cells_page_breaks_delete_horizontal_page_breaks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **row** | **Integer**|  | [optional] 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_page_breaks_delete_vertical_page_break**
> SaaSposeResponse cells_page_breaks_delete_vertical_page_break(name, sheet_name, index, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPageBreaksApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

index = 56 # Integer | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  result = api_instance.cells_page_breaks_delete_vertical_page_break(name, sheet_name, index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPageBreaksApi->cells_page_breaks_delete_vertical_page_break: #{e}"
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



# **cells_page_breaks_delete_vertical_page_breaks**
> SaaSposeResponse cells_page_breaks_delete_vertical_page_breaks(name, sheet_name, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPageBreaksApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

opts = { 
  column: 56, # Integer | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  result = api_instance.cells_page_breaks_delete_vertical_page_breaks(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPageBreaksApi->cells_page_breaks_delete_vertical_page_breaks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **column** | **Integer**|  | [optional] 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_page_breaks_get_horizontal_page_break**
> HorizontalPageBreakResponse cells_page_breaks_get_horizontal_page_break(name, sheet_name, index, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPageBreaksApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

index = 56 # Integer | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  result = api_instance.cells_page_breaks_get_horizontal_page_break(name, sheet_name, index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPageBreaksApi->cells_page_breaks_get_horizontal_page_break: #{e}"
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

[**HorizontalPageBreakResponse**](HorizontalPageBreakResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_page_breaks_get_horizontal_page_breaks**
> HorizontalPageBreaksResponse cells_page_breaks_get_horizontal_page_breaks(name, sheet_name, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPageBreaksApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  result = api_instance.cells_page_breaks_get_horizontal_page_breaks(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPageBreaksApi->cells_page_breaks_get_horizontal_page_breaks: #{e}"
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

[**HorizontalPageBreaksResponse**](HorizontalPageBreaksResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_page_breaks_get_vertical_page_break**
> VerticalPageBreakResponse cells_page_breaks_get_vertical_page_break(name, sheet_name, index, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPageBreaksApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

index = 56 # Integer | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  result = api_instance.cells_page_breaks_get_vertical_page_break(name, sheet_name, index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPageBreaksApi->cells_page_breaks_get_vertical_page_break: #{e}"
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

[**VerticalPageBreakResponse**](VerticalPageBreakResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_page_breaks_get_vertical_page_breaks**
> VerticalPageBreaksResponse cells_page_breaks_get_vertical_page_breaks(name, sheet_name, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPageBreaksApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  result = api_instance.cells_page_breaks_get_vertical_page_breaks(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPageBreaksApi->cells_page_breaks_get_vertical_page_breaks: #{e}"
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

[**VerticalPageBreaksResponse**](VerticalPageBreaksResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_page_breaks_put_horizontal_page_break**
> SaaSposeResponse cells_page_breaks_put_horizontal_page_break(name, sheet_name, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPageBreaksApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

opts = { 
  cellname: "cellname_example", # String | 
  row: 56, # Integer | 
  column: 56, # Integer | 
  start_column: 56, # Integer | 
  end_column: 56, # Integer | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  result = api_instance.cells_page_breaks_put_horizontal_page_break(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPageBreaksApi->cells_page_breaks_put_horizontal_page_break: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **cellname** | **String**|  | [optional] 
 **row** | **Integer**|  | [optional] 
 **column** | **Integer**|  | [optional] 
 **start_column** | **Integer**|  | [optional] 
 **end_column** | **Integer**|  | [optional] 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_page_breaks_put_vertical_page_break**
> SaaSposeResponse cells_page_breaks_put_vertical_page_break(name, sheet_name, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPageBreaksApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

opts = { 
  cellname: "cellname_example", # String | 
  column: 56, # Integer | 
  row: 56, # Integer | 
  start_row: 56, # Integer | 
  end_row: 56, # Integer | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  result = api_instance.cells_page_breaks_put_vertical_page_break(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPageBreaksApi->cells_page_breaks_put_vertical_page_break: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **cellname** | **String**|  | [optional] 
 **column** | **Integer**|  | [optional] 
 **row** | **Integer**|  | [optional] 
 **start_row** | **Integer**|  | [optional] 
 **end_row** | **Integer**|  | [optional] 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



