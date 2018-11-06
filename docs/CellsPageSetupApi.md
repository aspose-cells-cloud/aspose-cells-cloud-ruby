# AsposeCellsCloud::CellsPageSetupApi

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_page_setup_delete_header_footer**](CellsPageSetupApi.md#cells_page_setup_delete_header_footer) | **DELETE** /cells/{name}/worksheets/{sheetName}/pagesetup/clearheaderfooter | clear header footer
[**cells_page_setup_get_footer**](CellsPageSetupApi.md#cells_page_setup_get_footer) | **GET** /cells/{name}/worksheets/{sheetName}/pagesetup/footer | get page footer information
[**cells_page_setup_get_header**](CellsPageSetupApi.md#cells_page_setup_get_header) | **GET** /cells/{name}/worksheets/{sheetName}/pagesetup/header | get page header information
[**cells_page_setup_get_page_setup**](CellsPageSetupApi.md#cells_page_setup_get_page_setup) | **GET** /cells/{name}/worksheets/{sheetName}/pagesetup | Get Page Setup information.             
[**cells_page_setup_post_footer**](CellsPageSetupApi.md#cells_page_setup_post_footer) | **POST** /cells/{name}/worksheets/{sheetName}/pagesetup/footer | update  page footer information 
[**cells_page_setup_post_header**](CellsPageSetupApi.md#cells_page_setup_post_header) | **POST** /cells/{name}/worksheets/{sheetName}/pagesetup/header | update  page header information 
[**cells_page_setup_post_page_setup**](CellsPageSetupApi.md#cells_page_setup_post_page_setup) | **POST** /cells/{name}/worksheets/{sheetName}/pagesetup | Update Page Setup information.


# **cells_page_setup_delete_header_footer**
> SaaSposeResponse cells_page_setup_delete_header_footer(name, sheet_name, opts)

clear header footer

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPageSetupApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #clear header footer
  result = api_instance.cells_page_setup_delete_header_footer(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPageSetupApi->cells_page_setup_delete_header_footer: #{e}"
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



# **cells_page_setup_get_footer**
> PageSectionsResponse cells_page_setup_get_footer(name, sheet_name, opts)

get page footer information

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPageSetupApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #get page footer information
  result = api_instance.cells_page_setup_get_footer(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPageSetupApi->cells_page_setup_get_footer: #{e}"
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

[**PageSectionsResponse**](PageSectionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_page_setup_get_header**
> PageSectionsResponse cells_page_setup_get_header(name, sheet_name, opts)

get page header information

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPageSetupApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #get page header information
  result = api_instance.cells_page_setup_get_header(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPageSetupApi->cells_page_setup_get_header: #{e}"
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

[**PageSectionsResponse**](PageSectionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_page_setup_get_page_setup**
> PageSetupResponse cells_page_setup_get_page_setup(name, sheet_name, opts)

Get Page Setup information.             

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPageSetupApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Get Page Setup information.             
  result = api_instance.cells_page_setup_get_page_setup(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPageSetupApi->cells_page_setup_get_page_setup: #{e}"
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

[**PageSetupResponse**](PageSetupResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_page_setup_post_footer**
> SaaSposeResponse cells_page_setup_post_footer(name, sheet_name, section, script, is_first_page, opts)

update  page footer information 

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPageSetupApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

section = 56 # Integer | 

script = "script_example" # String | 

is_first_page = true # BOOLEAN | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #update  page footer information 
  result = api_instance.cells_page_setup_post_footer(name, sheet_name, section, script, is_first_page, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPageSetupApi->cells_page_setup_post_footer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **section** | **Integer**|  | 
 **script** | **String**|  | 
 **is_first_page** | **BOOLEAN**|  | 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_page_setup_post_header**
> SaaSposeResponse cells_page_setup_post_header(name, sheet_name, section, script, is_first_page, opts)

update  page header information 

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPageSetupApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

section = 56 # Integer | 

script = "script_example" # String | 

is_first_page = true # BOOLEAN | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #update  page header information 
  result = api_instance.cells_page_setup_post_header(name, sheet_name, section, script, is_first_page, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPageSetupApi->cells_page_setup_post_header: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **section** | **Integer**|  | 
 **script** | **String**|  | 
 **is_first_page** | **BOOLEAN**|  | 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_page_setup_post_page_setup**
> SaaSposeResponse cells_page_setup_post_page_setup(name, sheet_name, opts)

Update Page Setup information.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsPageSetupApi.new

name = "name_example" # String | 

sheet_name = "sheet_name_example" # String | 

opts = { 
  page_setup: AsposeCellsCloud::PageSetup.new, # PageSetup | 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  #Update Page Setup information.
  result = api_instance.cells_page_setup_post_page_setup(name, sheet_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsPageSetupApi->cells_page_setup_post_page_setup: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **sheet_name** | **String**|  | 
 **page_setup** | [**PageSetup**](PageSetup.md)|  | [optional] 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



