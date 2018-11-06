# AsposeCellsCloud::CellsAutoFilterApi

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_auto_filter_delete_worksheet_date_filter**](CellsAutoFilterApi.md#cells_auto_filter_delete_worksheet_date_filter) | **DELETE** /cells/{name}/worksheets/{sheetName}/autoFilter/dateFilter | Removes a date filter.             
[**cells_auto_filter_delete_worksheet_filter**](CellsAutoFilterApi.md#cells_auto_filter_delete_worksheet_filter) | **DELETE** /cells/{name}/worksheets/{sheetName}/autoFilter/filter | Delete a filter for a filter column.             
[**cells_auto_filter_get_worksheet_auto_filter**](CellsAutoFilterApi.md#cells_auto_filter_get_worksheet_auto_filter) | **GET** /cells/{name}/worksheets/{sheetName}/autoFilter | Get Auto filter Description
[**cells_auto_filter_post_worksheet_auto_filter_refresh**](CellsAutoFilterApi.md#cells_auto_filter_post_worksheet_auto_filter_refresh) | **POST** /cells/{name}/worksheets/{sheetName}/autoFilter/refresh | 
[**cells_auto_filter_post_worksheet_match_blanks**](CellsAutoFilterApi.md#cells_auto_filter_post_worksheet_match_blanks) | **POST** /cells/{name}/worksheets/{sheetName}/autoFilter/matchBlanks | Match all blank cell in the list.
[**cells_auto_filter_post_worksheet_match_non_blanks**](CellsAutoFilterApi.md#cells_auto_filter_post_worksheet_match_non_blanks) | **POST** /cells/{name}/worksheets/{sheetName}/autoFilter/matchNonBlanks | Match all not blank cell in the list.             
[**cells_auto_filter_put_worksheet_color_filter**](CellsAutoFilterApi.md#cells_auto_filter_put_worksheet_color_filter) | **PUT** /cells/{name}/worksheets/{sheetName}/autoFilter/colorFilter | 
[**cells_auto_filter_put_worksheet_custom_filter**](CellsAutoFilterApi.md#cells_auto_filter_put_worksheet_custom_filter) | **PUT** /cells/{name}/worksheets/{sheetName}/autoFilter/custom | Filters a list with a custom criteria.             
[**cells_auto_filter_put_worksheet_date_filter**](CellsAutoFilterApi.md#cells_auto_filter_put_worksheet_date_filter) | **PUT** /cells/{name}/worksheets/{sheetName}/autoFilter/dateFilter | add date filter in worksheet 
[**cells_auto_filter_put_worksheet_dynamic_filter**](CellsAutoFilterApi.md#cells_auto_filter_put_worksheet_dynamic_filter) | **PUT** /cells/{name}/worksheets/{sheetName}/autoFilter/dynamicFilter | 
[**cells_auto_filter_put_worksheet_filter**](CellsAutoFilterApi.md#cells_auto_filter_put_worksheet_filter) | **PUT** /cells/{name}/worksheets/{sheetName}/autoFilter/filter | Adds a filter for a filter column.             
[**cells_auto_filter_put_worksheet_filter_top10**](CellsAutoFilterApi.md#cells_auto_filter_put_worksheet_filter_top10) | **PUT** /cells/{name}/worksheets/{sheetName}/autoFilter/filterTop10 | Filter the top 10 item in the list
[**cells_auto_filter_put_worksheet_icon_filter**](CellsAutoFilterApi.md#cells_auto_filter_put_worksheet_icon_filter) | **PUT** /cells/{name}/worksheets/{sheetName}/autoFilter/iconFilter | Adds an icon filter.


# **cells_auto_filter_delete_worksheet_date_filter**
> SaaSposeResponse cells_auto_filter_delete_worksheet_date_filter(name, sheet_name, field_index, date_time_grouping_type, opts)

Removes a date filter.             

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsAutoFilterApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

field_index = 56 # Integer | 

date_time_grouping_type = "date_time_grouping_type_example" # String | 

opts = { 
  year: 0, # Integer | 
  month: 0, # Integer | 
  day: 0, # Integer | 
  hour: 0, # Integer | 
  minute: 0, # Integer | 
  second: 0, # Integer | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Removes a date filter.             
  result = api_instance.cells_auto_filter_delete_worksheet_date_filter(name, sheet_name, field_index, date_time_grouping_type, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsAutoFilterApi->cells_auto_filter_delete_worksheet_date_filter: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **field_index** | **Integer**|  | 
 **date_time_grouping_type** | **String**|  | 
 **year** | **Integer**|  | [optional] [default to 0]
 **month** | **Integer**|  | [optional] [default to 0]
 **day** | **Integer**|  | [optional] [default to 0]
 **hour** | **Integer**|  | [optional] [default to 0]
 **minute** | **Integer**|  | [optional] [default to 0]
 **second** | **Integer**|  | [optional] [default to 0]
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_auto_filter_delete_worksheet_filter**
> SaaSposeResponse cells_auto_filter_delete_worksheet_filter(name, sheet_name, field_index, opts)

Delete a filter for a filter column.             

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsAutoFilterApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

field_index = 56 # Integer | 

opts = { 
  criteria: "criteria_example", # String | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Delete a filter for a filter column.             
  result = api_instance.cells_auto_filter_delete_worksheet_filter(name, sheet_name, field_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsAutoFilterApi->cells_auto_filter_delete_worksheet_filter: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **field_index** | **Integer**|  | 
 **criteria** | **String**|  | [optional] 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_auto_filter_get_worksheet_auto_filter**
> AutoFilterResponse cells_auto_filter_get_worksheet_auto_filter(name, sheet_name, opts)

Get Auto filter Description

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsAutoFilterApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Get Auto filter Description
  result = api_instance.cells_auto_filter_get_worksheet_auto_filter(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsAutoFilterApi->cells_auto_filter_get_worksheet_auto_filter: #{e}"
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

[**AutoFilterResponse**](AutoFilterResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_auto_filter_post_worksheet_auto_filter_refresh**
> SaaSposeResponse cells_auto_filter_post_worksheet_auto_filter_refresh(name, sheet_name, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsAutoFilterApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  result = api_instance.cells_auto_filter_post_worksheet_auto_filter_refresh(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsAutoFilterApi->cells_auto_filter_post_worksheet_auto_filter_refresh: #{e}"
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



# **cells_auto_filter_post_worksheet_match_blanks**
> SaaSposeResponse cells_auto_filter_post_worksheet_match_blanks(name, sheet_name, field_index, opts)

Match all blank cell in the list.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsAutoFilterApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

field_index = 56 # Integer | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Match all blank cell in the list.
  result = api_instance.cells_auto_filter_post_worksheet_match_blanks(name, sheet_name, field_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsAutoFilterApi->cells_auto_filter_post_worksheet_match_blanks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **field_index** | **Integer**|  | 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_auto_filter_post_worksheet_match_non_blanks**
> SaaSposeResponse cells_auto_filter_post_worksheet_match_non_blanks(name, sheet_name, field_index, opts)

Match all not blank cell in the list.             

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsAutoFilterApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

field_index = 56 # Integer | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Match all not blank cell in the list.             
  result = api_instance.cells_auto_filter_post_worksheet_match_non_blanks(name, sheet_name, field_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsAutoFilterApi->cells_auto_filter_post_worksheet_match_non_blanks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **field_index** | **Integer**|  | 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_auto_filter_put_worksheet_color_filter**
> SaaSposeResponse cells_auto_filter_put_worksheet_color_filter(name, sheet_name, range, field_index, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsAutoFilterApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

range = "range_example" # String | 

field_index = 56 # Integer | 

opts = { 
  color_filter: AsposeCellsCloud::ColorFilterRequest.new, # ColorFilterRequest | 
  match_blanks: true, # BOOLEAN | 
  refresh: true, # BOOLEAN | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  result = api_instance.cells_auto_filter_put_worksheet_color_filter(name, sheet_name, range, field_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsAutoFilterApi->cells_auto_filter_put_worksheet_color_filter: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **range** | **String**|  | 
 **field_index** | **Integer**|  | 
 **color_filter** | [**ColorFilterRequest**](ColorFilterRequest.md)|  | [optional] 
 **match_blanks** | **BOOLEAN**|  | [optional] 
 **refresh** | **BOOLEAN**|  | [optional] 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_auto_filter_put_worksheet_custom_filter**
> SaaSposeResponse cells_auto_filter_put_worksheet_custom_filter(name, sheet_name, range, field_index, operator_type1, criteria1, opts)

Filters a list with a custom criteria.             

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsAutoFilterApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

range = "range_example" # String | 

field_index = 56 # Integer | 

operator_type1 = "operator_type1_example" # String | 

criteria1 = "criteria1_example" # String | 

opts = { 
  is_and: true, # BOOLEAN | 
  operator_type2: "operator_type2_example", # String | 
  criteria2: "criteria2_example", # String | 
  match_blanks: true, # BOOLEAN | 
  refresh: true, # BOOLEAN | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Filters a list with a custom criteria.             
  result = api_instance.cells_auto_filter_put_worksheet_custom_filter(name, sheet_name, range, field_index, operator_type1, criteria1, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsAutoFilterApi->cells_auto_filter_put_worksheet_custom_filter: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **range** | **String**|  | 
 **field_index** | **Integer**|  | 
 **operator_type1** | **String**|  | 
 **criteria1** | **String**|  | 
 **is_and** | **BOOLEAN**|  | [optional] 
 **operator_type2** | **String**|  | [optional] 
 **criteria2** | **String**|  | [optional] 
 **match_blanks** | **BOOLEAN**|  | [optional] 
 **refresh** | **BOOLEAN**|  | [optional] 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_auto_filter_put_worksheet_date_filter**
> SaaSposeResponse cells_auto_filter_put_worksheet_date_filter(name, sheet_name, range, field_index, date_time_grouping_type, opts)

add date filter in worksheet 

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsAutoFilterApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

range = "range_example" # String | 

field_index = 56 # Integer | 

date_time_grouping_type = "date_time_grouping_type_example" # String | 

opts = { 
  year: 0, # Integer | 
  month: 0, # Integer | 
  day: 0, # Integer | 
  hour: 0, # Integer | 
  minute: 0, # Integer | 
  second: 0, # Integer | 
  match_blanks: true, # BOOLEAN | 
  refresh: true, # BOOLEAN | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #add date filter in worksheet 
  result = api_instance.cells_auto_filter_put_worksheet_date_filter(name, sheet_name, range, field_index, date_time_grouping_type, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsAutoFilterApi->cells_auto_filter_put_worksheet_date_filter: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **range** | **String**|  | 
 **field_index** | **Integer**|  | 
 **date_time_grouping_type** | **String**|  | 
 **year** | **Integer**|  | [optional] [default to 0]
 **month** | **Integer**|  | [optional] [default to 0]
 **day** | **Integer**|  | [optional] [default to 0]
 **hour** | **Integer**|  | [optional] [default to 0]
 **minute** | **Integer**|  | [optional] [default to 0]
 **second** | **Integer**|  | [optional] [default to 0]
 **match_blanks** | **BOOLEAN**|  | [optional] 
 **refresh** | **BOOLEAN**|  | [optional] 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_auto_filter_put_worksheet_dynamic_filter**
> SaaSposeResponse cells_auto_filter_put_worksheet_dynamic_filter(name, sheet_name, range, field_index, dynamic_filter_type, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsAutoFilterApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

range = "range_example" # String | 

field_index = 56 # Integer | 

dynamic_filter_type = "dynamic_filter_type_example" # String | 

opts = { 
  match_blanks: true, # BOOLEAN | 
  refresh: true, # BOOLEAN | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  result = api_instance.cells_auto_filter_put_worksheet_dynamic_filter(name, sheet_name, range, field_index, dynamic_filter_type, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsAutoFilterApi->cells_auto_filter_put_worksheet_dynamic_filter: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **range** | **String**|  | 
 **field_index** | **Integer**|  | 
 **dynamic_filter_type** | **String**|  | 
 **match_blanks** | **BOOLEAN**|  | [optional] 
 **refresh** | **BOOLEAN**|  | [optional] 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_auto_filter_put_worksheet_filter**
> SaaSposeResponse cells_auto_filter_put_worksheet_filter(name, sheet_name, range, field_index, criteria, opts)

Adds a filter for a filter column.             

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsAutoFilterApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

range = "range_example" # String | 

field_index = 56 # Integer | 

criteria = "criteria_example" # String | 

opts = { 
  match_blanks: true, # BOOLEAN | 
  refresh: true, # BOOLEAN | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Adds a filter for a filter column.             
  result = api_instance.cells_auto_filter_put_worksheet_filter(name, sheet_name, range, field_index, criteria, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsAutoFilterApi->cells_auto_filter_put_worksheet_filter: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **range** | **String**|  | 
 **field_index** | **Integer**|  | 
 **criteria** | **String**|  | 
 **match_blanks** | **BOOLEAN**|  | [optional] 
 **refresh** | **BOOLEAN**|  | [optional] 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_auto_filter_put_worksheet_filter_top10**
> SaaSposeResponse cells_auto_filter_put_worksheet_filter_top10(name, sheet_name, range, field_index, is_top, is_percent, item_count, opts)

Filter the top 10 item in the list

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsAutoFilterApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

range = "range_example" # String | 

field_index = 56 # Integer | 

is_top = true # BOOLEAN | 

is_percent = true # BOOLEAN | 

item_count = 56 # Integer | 

opts = { 
  match_blanks: true, # BOOLEAN | 
  refresh: true, # BOOLEAN | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Filter the top 10 item in the list
  result = api_instance.cells_auto_filter_put_worksheet_filter_top10(name, sheet_name, range, field_index, is_top, is_percent, item_count, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsAutoFilterApi->cells_auto_filter_put_worksheet_filter_top10: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **range** | **String**|  | 
 **field_index** | **Integer**|  | 
 **is_top** | **BOOLEAN**|  | 
 **is_percent** | **BOOLEAN**|  | 
 **item_count** | **Integer**|  | 
 **match_blanks** | **BOOLEAN**|  | [optional] 
 **refresh** | **BOOLEAN**|  | [optional] 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_auto_filter_put_worksheet_icon_filter**
> SaaSposeResponse cells_auto_filter_put_worksheet_icon_filter(name, sheet_name, range, field_index, icon_set_type, icon_id, opts)

Adds an icon filter.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsAutoFilterApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

range = "range_example" # String | 

field_index = 56 # Integer | 

icon_set_type = "icon_set_type_example" # String | 

icon_id = 56 # Integer | 

opts = { 
  match_blanks: true, # BOOLEAN | 
  refresh: true, # BOOLEAN | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Adds an icon filter.
  result = api_instance.cells_auto_filter_put_worksheet_icon_filter(name, sheet_name, range, field_index, icon_set_type, icon_id, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsAutoFilterApi->cells_auto_filter_put_worksheet_icon_filter: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **range** | **String**|  | 
 **field_index** | **Integer**|  | 
 **icon_set_type** | **String**|  | 
 **icon_id** | **Integer**|  | 
 **match_blanks** | **BOOLEAN**|  | [optional] 
 **refresh** | **BOOLEAN**|  | [optional] 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



