# AsposeCellsCloud::CellsChartAreaApi

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_chart_area_get_chart_area**](CellsChartAreaApi.md#cells_chart_area_get_chart_area) | **GET** /cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/chartArea | Get chart area info.
[**cells_chart_area_get_chart_area_border**](CellsChartAreaApi.md#cells_chart_area_get_chart_area_border) | **GET** /cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/chartArea/border | Get chart area border info.
[**cells_chart_area_get_chart_area_fill_format**](CellsChartAreaApi.md#cells_chart_area_get_chart_area_fill_format) | **GET** /cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/chartArea/fillFormat | Get chart area fill format info.


# **cells_chart_area_get_chart_area**
> ChartAreaResponse cells_chart_area_get_chart_area(name, sheet_name, chart_index, opts)

Get chart area info.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsChartAreaApi.new

name = "name_example" # String | Workbook name.

sheet_name = "sheet_name_example" # String | Worksheet name.

chart_index = 56 # Integer | The chart index.

opts = { 
  folder: "folder_example", # String | Workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get chart area info.
  result = api_instance.cells_chart_area_get_chart_area(name, sheet_name, chart_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsChartAreaApi->cells_chart_area_get_chart_area: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Workbook name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **chart_index** | **Integer**| The chart index. | 
 **folder** | **String**| Workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**ChartAreaResponse**](ChartAreaResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_chart_area_get_chart_area_border**
> LineResponse cells_chart_area_get_chart_area_border(name, sheet_name, chart_index, opts)

Get chart area border info.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsChartAreaApi.new

name = "name_example" # String | Workbook name.

sheet_name = "sheet_name_example" # String | Worksheet name.

chart_index = 56 # Integer | The chart index.

opts = { 
  folder: "folder_example", # String | Workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get chart area border info.
  result = api_instance.cells_chart_area_get_chart_area_border(name, sheet_name, chart_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsChartAreaApi->cells_chart_area_get_chart_area_border: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Workbook name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **chart_index** | **Integer**| The chart index. | 
 **folder** | **String**| Workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**LineResponse**](LineResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_chart_area_get_chart_area_fill_format**
> FillFormatResponse cells_chart_area_get_chart_area_fill_format(name, sheet_name, chart_index, opts)

Get chart area fill format info.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsChartAreaApi.new

name = "name_example" # String | Workbook name.

sheet_name = "sheet_name_example" # String | Worksheet name.

chart_index = 56 # Integer | The chart index.

opts = { 
  folder: "folder_example", # String | Workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get chart area fill format info.
  result = api_instance.cells_chart_area_get_chart_area_fill_format(name, sheet_name, chart_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsChartAreaApi->cells_chart_area_get_chart_area_fill_format: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Workbook name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **chart_index** | **Integer**| The chart index. | 
 **folder** | **String**| Workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**FillFormatResponse**](FillFormatResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



