# AsposeCellsCloud::CellsHypelinksApi

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_hypelinks_delete_worksheet_hyperlink**](CellsHypelinksApi.md#cells_hypelinks_delete_worksheet_hyperlink) | **DELETE** /cells/{name}/worksheets/{sheetName}/hyperlinks/{hyperlinkIndex} | Delete worksheet hyperlink by index.
[**cells_hypelinks_delete_worksheet_hyperlinks**](CellsHypelinksApi.md#cells_hypelinks_delete_worksheet_hyperlinks) | **DELETE** /cells/{name}/worksheets/{sheetName}/hyperlinks | Delete all hyperlinks in worksheet.
[**cells_hypelinks_get_worksheet_hyperlink**](CellsHypelinksApi.md#cells_hypelinks_get_worksheet_hyperlink) | **GET** /cells/{name}/worksheets/{sheetName}/hyperlinks/{hyperlinkIndex} | Get worksheet hyperlink by index.
[**cells_hypelinks_get_worksheet_hyperlinks**](CellsHypelinksApi.md#cells_hypelinks_get_worksheet_hyperlinks) | **GET** /cells/{name}/worksheets/{sheetName}/hyperlinks | Get worksheet hyperlinks.
[**cells_hypelinks_post_worksheet_hyperlink**](CellsHypelinksApi.md#cells_hypelinks_post_worksheet_hyperlink) | **POST** /cells/{name}/worksheets/{sheetName}/hyperlinks/{hyperlinkIndex} | Update worksheet hyperlink by index.
[**cells_hypelinks_put_worksheet_hyperlink**](CellsHypelinksApi.md#cells_hypelinks_put_worksheet_hyperlink) | **PUT** /cells/{name}/worksheets/{sheetName}/hyperlinks | Add worksheet hyperlink.


# **cells_hypelinks_delete_worksheet_hyperlink**
> SaaSposeResponse cells_hypelinks_delete_worksheet_hyperlink(name, sheet_name, hyperlink_index, opts)

Delete worksheet hyperlink by index.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsHypelinksApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | Worksheet name.

hyperlink_index = 56 # Integer | The hyperlink's index.

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Delete worksheet hyperlink by index.
  result = api_instance.cells_hypelinks_delete_worksheet_hyperlink(name, sheet_name, hyperlink_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsHypelinksApi->cells_hypelinks_delete_worksheet_hyperlink: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **hyperlink_index** | **Integer**| The hyperlink&#39;s index. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_hypelinks_delete_worksheet_hyperlinks**
> SaaSposeResponse cells_hypelinks_delete_worksheet_hyperlinks(name, sheet_name, opts)

Delete all hyperlinks in worksheet.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsHypelinksApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | Worksheet name.

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Delete all hyperlinks in worksheet.
  result = api_instance.cells_hypelinks_delete_worksheet_hyperlinks(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsHypelinksApi->cells_hypelinks_delete_worksheet_hyperlinks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_hypelinks_get_worksheet_hyperlink**
> HyperlinkResponse cells_hypelinks_get_worksheet_hyperlink(name, sheet_name, hyperlink_index, opts)

Get worksheet hyperlink by index.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsHypelinksApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | Worksheet name.

hyperlink_index = 56 # Integer | The hyperlink's index.

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get worksheet hyperlink by index.
  result = api_instance.cells_hypelinks_get_worksheet_hyperlink(name, sheet_name, hyperlink_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsHypelinksApi->cells_hypelinks_get_worksheet_hyperlink: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **hyperlink_index** | **Integer**| The hyperlink&#39;s index. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**HyperlinkResponse**](HyperlinkResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_hypelinks_get_worksheet_hyperlinks**
> HyperlinksResponse cells_hypelinks_get_worksheet_hyperlinks(name, sheet_name, opts)

Get worksheet hyperlinks.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsHypelinksApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | The worksheet name.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get worksheet hyperlinks.
  result = api_instance.cells_hypelinks_get_worksheet_hyperlinks(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsHypelinksApi->cells_hypelinks_get_worksheet_hyperlinks: #{e}"
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

[**HyperlinksResponse**](HyperlinksResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_hypelinks_post_worksheet_hyperlink**
> HyperlinkResponse cells_hypelinks_post_worksheet_hyperlink(name, sheet_name, hyperlink_index, opts)

Update worksheet hyperlink by index.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsHypelinksApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | Worksheet name.

hyperlink_index = 56 # Integer | The hyperlink's index.

opts = { 
  hyperlink: AsposeCellsCloud::Hyperlink.new, # Hyperlink | Hyperlink object
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Update worksheet hyperlink by index.
  result = api_instance.cells_hypelinks_post_worksheet_hyperlink(name, sheet_name, hyperlink_index, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsHypelinksApi->cells_hypelinks_post_worksheet_hyperlink: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **hyperlink_index** | **Integer**| The hyperlink&#39;s index. | 
 **hyperlink** | [**Hyperlink**](Hyperlink.md)| Hyperlink object | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**HyperlinkResponse**](HyperlinkResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_hypelinks_put_worksheet_hyperlink**
> HyperlinkResponse cells_hypelinks_put_worksheet_hyperlink(name, sheet_name, first_row, first_column, total_rows, total_columns, address, opts)

Add worksheet hyperlink.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsHypelinksApi.new

name = "name_example" # String | Document name.

sheet_name = "sheet_name_example" # String | Worksheet name.

first_row = 56 # Integer | 

first_column = 56 # Integer | 

total_rows = 56 # Integer | 

total_columns = 56 # Integer | 

address = "address_example" # String | 

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Add worksheet hyperlink.
  result = api_instance.cells_hypelinks_put_worksheet_hyperlink(name, sheet_name, first_row, first_column, total_rows, total_columns, address, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsHypelinksApi->cells_hypelinks_put_worksheet_hyperlink: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **sheet_name** | **String**| Worksheet name. | 
 **first_row** | **Integer**|  | 
 **first_column** | **Integer**|  | 
 **total_rows** | **Integer**|  | 
 **total_columns** | **Integer**|  | 
 **address** | **String**|  | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**HyperlinkResponse**](HyperlinkResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



