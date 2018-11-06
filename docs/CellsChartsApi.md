# AsposeCellsCloud::CellsChartsApi

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_charts_delete_worksheet_chart_legend**](CellsChartsApi.md#cells_charts_delete_worksheet_chart_legend) | **DELETE** /cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend | Hide legend in chart
[**cells_charts_delete_worksheet_chart_title**](CellsChartsApi.md#cells_charts_delete_worksheet_chart_title) | **DELETE** /cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title | Hide title in chart
[**cells_charts_delete_worksheet_clear_charts**](CellsChartsApi.md#cells_charts_delete_worksheet_clear_charts) | **DELETE** /cells/{name}/worksheets/{sheetName}/charts | Clear the charts.
[**cells_charts_delete_worksheet_delete_chart**](CellsChartsApi.md#cells_charts_delete_worksheet_delete_chart) | **DELETE** /cells/{name}/worksheets/{sheetName}/charts/{chartIndex} | Delete worksheet chart by index.
[**cells_charts_get_worksheet_chart**](CellsChartsApi.md#cells_charts_get_worksheet_chart) | **GET** /cells/{name}/worksheets/{sheetName}/charts/{chartNumber} | Get chart info.
[**cells_charts_get_worksheet_chart_legend**](CellsChartsApi.md#cells_charts_get_worksheet_chart_legend) | **GET** /cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend | Get chart legend
[**cells_charts_get_worksheet_chart_title**](CellsChartsApi.md#cells_charts_get_worksheet_chart_title) | **GET** /cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title | Get chart title
[**cells_charts_get_worksheet_charts**](CellsChartsApi.md#cells_charts_get_worksheet_charts) | **GET** /cells/{name}/worksheets/{sheetName}/charts | Get worksheet charts info.
[**cells_charts_post_worksheet_chart**](CellsChartsApi.md#cells_charts_post_worksheet_chart) | **POST** /cells/{name}/worksheets/{sheetName}/charts/{chartIndex} | Update chart propreties
[**cells_charts_post_worksheet_chart_legend**](CellsChartsApi.md#cells_charts_post_worksheet_chart_legend) | **POST** /cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend | Update chart legend
[**cells_charts_post_worksheet_chart_title**](CellsChartsApi.md#cells_charts_post_worksheet_chart_title) | **POST** /cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title | Update chart title
[**cells_charts_put_worksheet_add_chart**](CellsChartsApi.md#cells_charts_put_worksheet_add_chart) | **PUT** /cells/{name}/worksheets/{sheetName}/charts | Add new chart to worksheet.
[**cells_charts_put_worksheet_chart_legend**](CellsChartsApi.md#cells_charts_put_worksheet_chart_legend) | **PUT** /cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend | Show legend in chart
[**cells_charts_put_worksheet_chart_title**](CellsChartsApi.md#cells_charts_put_worksheet_chart_title) | **PUT** /cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title | Add chart title / Set chart title visible


# **cells_charts_delete_worksheet_chart_legend**
> SaaSposeResponse cells_charts_delete_worksheet_chart_legend(name, sheet_name, chart_index, opts)

Hide legend in chart

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsChartsApi.new

name = "name_example" # String | Workbook name.

sheet_name = "sheet_name_example" # String | Worksheet name.

chart_index = 56 # Integer | The chart index.

opts = { 
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Hide legend in chart
  result = api_instance.cells_charts_delete_worksheet_chart_legend(name, sheet_name, chart_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsChartsApi->cells_charts_delete_worksheet_chart_legend: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Workbook name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **chart_index** | **Integer**| The chart index. | 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_charts_delete_worksheet_chart_title**
> SaaSposeResponse cells_charts_delete_worksheet_chart_title(name, sheet_name, chart_index, opts)

Hide title in chart

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsChartsApi.new

name = "name_example" # String | Workbook name.

sheet_name = "sheet_name_example" # String | Worksheet name.

chart_index = 56 # Integer | The chart index.

opts = { 
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Hide title in chart
  result = api_instance.cells_charts_delete_worksheet_chart_title(name, sheet_name, chart_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsChartsApi->cells_charts_delete_worksheet_chart_title: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Workbook name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **chart_index** | **Integer**| The chart index. | 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_charts_delete_worksheet_clear_charts**
> SaaSposeResponse cells_charts_delete_worksheet_clear_charts(name, sheet_name, opts)

Clear the charts.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsChartsApi.new

name = "name_example" # String | Workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

opts = { 
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Clear the charts.
  result = api_instance.cells_charts_delete_worksheet_clear_charts(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsChartsApi->cells_charts_delete_worksheet_clear_charts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_charts_delete_worksheet_delete_chart**
> ChartsResponse cells_charts_delete_worksheet_delete_chart(name, sheet_name, chart_index, opts)

Delete worksheet chart by index.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsChartsApi.new

name = "name_example" # String | Workbook name.

sheet_name = "sheet_name_example" # String | Worksheet name.

chart_index = 56 # Integer | The chart index.

opts = { 
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Delete worksheet chart by index.
  result = api_instance.cells_charts_delete_worksheet_delete_chart(name, sheet_name, chart_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsChartsApi->cells_charts_delete_worksheet_delete_chart: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Workbook name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **chart_index** | **Integer**| The chart index. | 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**ChartsResponse**](ChartsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_charts_get_worksheet_chart**
> File cells_charts_get_worksheet_chart(name, sheet_name, chart_number, opts)

Get chart info.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsChartsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | Worksheet name.

chart_number = 56 # Integer | The chart number.

opts = { 
  format: "format_example", # String | The exported file format.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get chart info.
  result = api_instance.cells_charts_get_worksheet_chart(name, sheet_name, chart_number, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsChartsApi->cells_charts_get_worksheet_chart: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **chart_number** | **Integer**| The chart number. | 
 **format** | **String**| The exported file format. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_charts_get_worksheet_chart_legend**
> LegendResponse cells_charts_get_worksheet_chart_legend(name, sheet_name, chart_index, opts)

Get chart legend

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsChartsApi.new

name = "name_example" # String | Workbook name.

sheet_name = "sheet_name_example" # String | Worksheet name.

chart_index = 56 # Integer | The chart index.

opts = { 
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get chart legend
  result = api_instance.cells_charts_get_worksheet_chart_legend(name, sheet_name, chart_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsChartsApi->cells_charts_get_worksheet_chart_legend: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Workbook name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **chart_index** | **Integer**| The chart index. | 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**LegendResponse**](LegendResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_charts_get_worksheet_chart_title**
> TitleResponse cells_charts_get_worksheet_chart_title(name, sheet_name, chart_index, opts)

Get chart title

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsChartsApi.new

name = "name_example" # String | Workbook name.

sheet_name = "sheet_name_example" # String | Worksheet name.

chart_index = 56 # Integer | The chart index.

opts = { 
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get chart title
  result = api_instance.cells_charts_get_worksheet_chart_title(name, sheet_name, chart_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsChartsApi->cells_charts_get_worksheet_chart_title: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Workbook name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **chart_index** | **Integer**| The chart index. | 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**TitleResponse**](TitleResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_charts_get_worksheet_charts**
> ChartsResponse cells_charts_get_worksheet_charts(name, sheet_name, opts)

Get worksheet charts info.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsChartsApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get worksheet charts info.
  result = api_instance.cells_charts_get_worksheet_charts(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsChartsApi->cells_charts_get_worksheet_charts: #{e}"
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

[**ChartsResponse**](ChartsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_charts_post_worksheet_chart**
> SaaSposeResponse cells_charts_post_worksheet_chart(name, sheet_name, chart_index, opts)

Update chart propreties

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsChartsApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

chart_index = 56 # Integer | 

opts = { 
  chart: AsposeCellsCloud::Chart.new, # Chart | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Update chart propreties
  result = api_instance.cells_charts_post_worksheet_chart(name, sheet_name, chart_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsChartsApi->cells_charts_post_worksheet_chart: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **chart_index** | **Integer**|  | 
 **chart** | [**Chart**](Chart.md)|  | [optional] 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_charts_post_worksheet_chart_legend**
> LegendResponse cells_charts_post_worksheet_chart_legend(name, sheet_name, chart_index, opts)

Update chart legend

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsChartsApi.new

name = "name_example" # String | Workbook name.

sheet_name = "sheet_name_example" # String | Worksheet name.

chart_index = 56 # Integer | The chart index.

opts = { 
  legend: AsposeCellsCloud::Legend.new, # Legend | 
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Update chart legend
  result = api_instance.cells_charts_post_worksheet_chart_legend(name, sheet_name, chart_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsChartsApi->cells_charts_post_worksheet_chart_legend: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Workbook name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **chart_index** | **Integer**| The chart index. | 
 **legend** | [**Legend**](Legend.md)|  | [optional] 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**LegendResponse**](LegendResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_charts_post_worksheet_chart_title**
> TitleResponse cells_charts_post_worksheet_chart_title(name, sheet_name, chart_index, opts)

Update chart title

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsChartsApi.new

name = "name_example" # String | Workbook name.

sheet_name = "sheet_name_example" # String | Worksheet name.

chart_index = 56 # Integer | The chart index.

opts = { 
  title: AsposeCellsCloud::Title.new, # Title | Chart title
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Update chart title
  result = api_instance.cells_charts_post_worksheet_chart_title(name, sheet_name, chart_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsChartsApi->cells_charts_post_worksheet_chart_title: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Workbook name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **chart_index** | **Integer**| The chart index. | 
 **title** | [**Title**](Title.md)| Chart title | [optional] 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**TitleResponse**](TitleResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_charts_put_worksheet_add_chart**
> ChartsResponse cells_charts_put_worksheet_add_chart(name, sheet_name, chart_type, opts)

Add new chart to worksheet.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsChartsApi.new

name = "name_example" # String | Workbook name.

sheet_name = "sheet_name_example" # String | The worksheet name.

chart_type = "chart_type_example" # String | Chart type, please refer property Type in chart resource.

opts = { 
  upper_left_row: 0, # Integer | New chart upper left row.
  upper_left_column: 0, # Integer | New chart upperleft column.
  lower_right_row: 0, # Integer | New chart lower right row.
  lower_right_column: 0, # Integer | New chart lower right column.
  area: "area_example", # String | Specifies values from which to plot the data series. 
  is_vertical: true, # BOOLEAN | Specifies whether to plot the series from a range of cell values by row or by column. 
  category_data: "category_data_example", # String | Gets or sets the range of category Axis values. It can be a range of cells (such as, \"d1:e10\"). 
  is_auto_get_serial_name: true, # BOOLEAN | Specifies whether auto update serial name. 
  title: "title_example", # String | Specifies chart title name.
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Add new chart to worksheet.
  result = api_instance.cells_charts_put_worksheet_add_chart(name, sheet_name, chart_type, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsChartsApi->cells_charts_put_worksheet_add_chart: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Workbook name. | 
 **sheet_name** | **String**| The worksheet name. | 
 **chart_type** | **String**| Chart type, please refer property Type in chart resource. | 
 **upper_left_row** | **Integer**| New chart upper left row. | [optional] [default to 0]
 **upper_left_column** | **Integer**| New chart upperleft column. | [optional] [default to 0]
 **lower_right_row** | **Integer**| New chart lower right row. | [optional] [default to 0]
 **lower_right_column** | **Integer**| New chart lower right column. | [optional] [default to 0]
 **area** | **String**| Specifies values from which to plot the data series.  | [optional] 
 **is_vertical** | **BOOLEAN**| Specifies whether to plot the series from a range of cell values by row or by column.  | [optional] [default to true]
 **category_data** | **String**| Gets or sets the range of category Axis values. It can be a range of cells (such as, \&quot;d1:e10\&quot;).  | [optional] 
 **is_auto_get_serial_name** | **BOOLEAN**| Specifies whether auto update serial name.  | [optional] [default to true]
 **title** | **String**| Specifies chart title name. | [optional] 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**ChartsResponse**](ChartsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_charts_put_worksheet_chart_legend**
> SaaSposeResponse cells_charts_put_worksheet_chart_legend(name, sheet_name, chart_index, opts)

Show legend in chart

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsChartsApi.new

name = "name_example" # String | Workbook name.

sheet_name = "sheet_name_example" # String | Worksheet name.

chart_index = 56 # Integer | The chart index.

opts = { 
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Show legend in chart
  result = api_instance.cells_charts_put_worksheet_chart_legend(name, sheet_name, chart_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsChartsApi->cells_charts_put_worksheet_chart_legend: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Workbook name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **chart_index** | **Integer**| The chart index. | 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_charts_put_worksheet_chart_title**
> TitleResponse cells_charts_put_worksheet_chart_title(name, sheet_name, chart_index, opts)

Add chart title / Set chart title visible

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsChartsApi.new

name = "name_example" # String | Workbook name.

sheet_name = "sheet_name_example" # String | Worksheet name.

chart_index = 56 # Integer | The chart index.

opts = { 
  title: AsposeCellsCloud::Title.new, # Title | Chart title.
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Add chart title / Set chart title visible
  result = api_instance.cells_charts_put_worksheet_chart_title(name, sheet_name, chart_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsChartsApi->cells_charts_put_worksheet_chart_title: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Workbook name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **chart_index** | **Integer**| The chart index. | 
 **title** | [**Title**](Title.md)| Chart title. | [optional] 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**TitleResponse**](TitleResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



