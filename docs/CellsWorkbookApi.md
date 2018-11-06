# AsposeCellsCloud::CellsWorkbookApi

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_workbook_delete_decrypt_document**](CellsWorkbookApi.md#cells_workbook_delete_decrypt_document) | **DELETE** /cells/{name}/encryption | Decrypt document.
[**cells_workbook_delete_document_unprotect_from_changes**](CellsWorkbookApi.md#cells_workbook_delete_document_unprotect_from_changes) | **DELETE** /cells/{name}/writeProtection | Unprotect document from changes.
[**cells_workbook_delete_unprotect_document**](CellsWorkbookApi.md#cells_workbook_delete_unprotect_document) | **DELETE** /cells/{name}/protection | Unprotect document.
[**cells_workbook_delete_workbook_name**](CellsWorkbookApi.md#cells_workbook_delete_workbook_name) | **DELETE** /cells/{name}/names/{nameName} | Clean workbook&#39;s names.
[**cells_workbook_delete_workbook_names**](CellsWorkbookApi.md#cells_workbook_delete_workbook_names) | **DELETE** /cells/{name}/names | Clean workbook&#39;s names.
[**cells_workbook_get_workbook**](CellsWorkbookApi.md#cells_workbook_get_workbook) | **GET** /cells/{name} | Read workbook info or export.
[**cells_workbook_get_workbook_default_style**](CellsWorkbookApi.md#cells_workbook_get_workbook_default_style) | **GET** /cells/{name}/defaultstyle | Read workbook default style info.
[**cells_workbook_get_workbook_name**](CellsWorkbookApi.md#cells_workbook_get_workbook_name) | **GET** /cells/{name}/names/{nameName} | Read workbook&#39;s name.
[**cells_workbook_get_workbook_name_value**](CellsWorkbookApi.md#cells_workbook_get_workbook_name_value) | **GET** /cells/{name}/names/{nameName}/value | Get workbook&#39;s name value.
[**cells_workbook_get_workbook_names**](CellsWorkbookApi.md#cells_workbook_get_workbook_names) | **GET** /cells/{name}/names | Read workbook&#39;s names.
[**cells_workbook_get_workbook_settings**](CellsWorkbookApi.md#cells_workbook_get_workbook_settings) | **GET** /cells/{name}/settings | Get Workbook Settings DTO
[**cells_workbook_get_workbook_text_items**](CellsWorkbookApi.md#cells_workbook_get_workbook_text_items) | **GET** /cells/{name}/textItems | Read workbook&#39;s text items.
[**cells_workbook_post_autofit_workbook_rows**](CellsWorkbookApi.md#cells_workbook_post_autofit_workbook_rows) | **POST** /cells/{name}/autofitrows | Autofit workbook rows.
[**cells_workbook_post_encrypt_document**](CellsWorkbookApi.md#cells_workbook_post_encrypt_document) | **POST** /cells/{name}/encryption | Encript document.
[**cells_workbook_post_import_data**](CellsWorkbookApi.md#cells_workbook_post_import_data) | **POST** /cells/{name}/importdata | 
[**cells_workbook_post_protect_document**](CellsWorkbookApi.md#cells_workbook_post_protect_document) | **POST** /cells/{name}/protection | Protect document.
[**cells_workbook_post_workbook_calculate_formula**](CellsWorkbookApi.md#cells_workbook_post_workbook_calculate_formula) | **POST** /cells/{name}/calculateformula | Calculate all formulas in workbook.
[**cells_workbook_post_workbook_get_smart_marker_result**](CellsWorkbookApi.md#cells_workbook_post_workbook_get_smart_marker_result) | **POST** /cells/{name}/smartmarker | Smart marker processing result.
[**cells_workbook_post_workbook_settings**](CellsWorkbookApi.md#cells_workbook_post_workbook_settings) | **POST** /cells/{name}/settings | Update Workbook setting 
[**cells_workbook_post_workbook_split**](CellsWorkbookApi.md#cells_workbook_post_workbook_split) | **POST** /cells/{name}/split | Split workbook.
[**cells_workbook_post_workbooks_merge**](CellsWorkbookApi.md#cells_workbook_post_workbooks_merge) | **POST** /cells/{name}/merge | Merge workbooks.
[**cells_workbook_post_workbooks_text_replace**](CellsWorkbookApi.md#cells_workbook_post_workbooks_text_replace) | **POST** /cells/{name}/replaceText | Replace text.
[**cells_workbook_post_workbooks_text_search**](CellsWorkbookApi.md#cells_workbook_post_workbooks_text_search) | **POST** /cells/{name}/findText | Search text.
[**cells_workbook_put_convert_workbook**](CellsWorkbookApi.md#cells_workbook_put_convert_workbook) | **PUT** /cells/convert | Convert workbook from request content to some format.
[**cells_workbook_put_document_protect_from_changes**](CellsWorkbookApi.md#cells_workbook_put_document_protect_from_changes) | **PUT** /cells/{name}/writeProtection | Protect document from changes.
[**cells_workbook_put_workbook_create**](CellsWorkbookApi.md#cells_workbook_put_workbook_create) | **PUT** /cells/{name} | Create new workbook using deferent methods.


# **cells_workbook_delete_decrypt_document**
> SaaSposeResponse cells_workbook_delete_decrypt_document(name, opts)

Decrypt document.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorkbookApi.new

name = "name_example" # String | The document name.

opts = { 
  encryption: AsposeCellsCloud::WorkbookEncryptionRequest.new, # WorkbookEncryptionRequest | Encryption settings, only password can be specified.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Decrypt document.
  result = api_instance.cells_workbook_delete_decrypt_document(name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorkbookApi->cells_workbook_delete_decrypt_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **encryption** | [**WorkbookEncryptionRequest**](WorkbookEncryptionRequest.md)| Encryption settings, only password can be specified. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_workbook_delete_document_unprotect_from_changes**
> SaaSposeResponse cells_workbook_delete_document_unprotect_from_changes(name, opts)

Unprotect document from changes.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorkbookApi.new

name = "name_example" # String | The document name.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Unprotect document from changes.
  result = api_instance.cells_workbook_delete_document_unprotect_from_changes(name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorkbookApi->cells_workbook_delete_document_unprotect_from_changes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_workbook_delete_unprotect_document**
> SaaSposeResponse cells_workbook_delete_unprotect_document(name, opts)

Unprotect document.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorkbookApi.new

name = "name_example" # String | The document name.

opts = { 
  protection: AsposeCellsCloud::WorkbookProtectionRequest.new, # WorkbookProtectionRequest | Protection settings, only password can be specified.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Unprotect document.
  result = api_instance.cells_workbook_delete_unprotect_document(name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorkbookApi->cells_workbook_delete_unprotect_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **protection** | [**WorkbookProtectionRequest**](WorkbookProtectionRequest.md)| Protection settings, only password can be specified. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_workbook_delete_workbook_name**
> SaaSposeResponse cells_workbook_delete_workbook_name(name, name_name, opts)

Clean workbook's names.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorkbookApi.new

name = "name_example" # String | The workbook name.

name_name = "name_name_example" # String | The name.

opts = { 
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Clean workbook's names.
  result = api_instance.cells_workbook_delete_workbook_name(name, name_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorkbookApi->cells_workbook_delete_workbook_name: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **name_name** | **String**| The name. | 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_workbook_delete_workbook_names**
> SaaSposeResponse cells_workbook_delete_workbook_names(name, opts)

Clean workbook's names.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorkbookApi.new

name = "name_example" # String | The workbook name.

opts = { 
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Clean workbook's names.
  result = api_instance.cells_workbook_delete_workbook_names(name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorkbookApi->cells_workbook_delete_workbook_names: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_workbook_get_workbook**
> File cells_workbook_get_workbook(name, opts)

Read workbook info or export.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorkbookApi.new

name = "name_example" # String | The document name.

opts = { 
  password: "password_example", # String | The document password.
  format: "format_example", # String | The exported file format.
  is_auto_fit: false, # BOOLEAN | Set document rows to be autofit.
  only_save_table: false, # BOOLEAN | Only save table data.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example", # String | storage name.
  out_path: "out_path_example" # String | The document output folder.
}

begin
  #Read workbook info or export.
  result = api_instance.cells_workbook_get_workbook(name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorkbookApi->cells_workbook_get_workbook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **password** | **String**| The document password. | [optional] 
 **format** | **String**| The exported file format. | [optional] 
 **is_auto_fit** | **BOOLEAN**| Set document rows to be autofit. | [optional] [default to false]
 **only_save_table** | **BOOLEAN**| Only save table data. | [optional] [default to false]
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 
 **out_path** | **String**| The document output folder. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_workbook_get_workbook_default_style**
> StyleResponse cells_workbook_get_workbook_default_style(name, opts)

Read workbook default style info.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorkbookApi.new

name = "name_example" # String | The workbook name.

opts = { 
  folder: "folder_example", # String | The document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Read workbook default style info.
  result = api_instance.cells_workbook_get_workbook_default_style(name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorkbookApi->cells_workbook_get_workbook_default_style: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **folder** | **String**| The document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**StyleResponse**](StyleResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_workbook_get_workbook_name**
> NameResponse cells_workbook_get_workbook_name(name, name_name, opts)

Read workbook's name.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorkbookApi.new

name = "name_example" # String | The workbook name.

name_name = "name_name_example" # String | The name.

opts = { 
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Read workbook's name.
  result = api_instance.cells_workbook_get_workbook_name(name, name_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorkbookApi->cells_workbook_get_workbook_name: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **name_name** | **String**| The name. | 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**NameResponse**](NameResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_workbook_get_workbook_name_value**
> RangeValueResponse cells_workbook_get_workbook_name_value(name, name_name, opts)

Get workbook's name value.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorkbookApi.new

name = "name_example" # String | The workbook name.

name_name = "name_name_example" # String | The name.

opts = { 
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get workbook's name value.
  result = api_instance.cells_workbook_get_workbook_name_value(name, name_name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorkbookApi->cells_workbook_get_workbook_name_value: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **name_name** | **String**| The name. | 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**RangeValueResponse**](RangeValueResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_workbook_get_workbook_names**
> NamesResponse cells_workbook_get_workbook_names(name, opts)

Read workbook's names.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorkbookApi.new

name = "name_example" # String | The workbook name.

opts = { 
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Read workbook's names.
  result = api_instance.cells_workbook_get_workbook_names(name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorkbookApi->cells_workbook_get_workbook_names: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**NamesResponse**](NamesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_workbook_get_workbook_settings**
> WorkbookSettingsResponse cells_workbook_get_workbook_settings(name, opts)

Get Workbook Settings DTO

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorkbookApi.new

name = "name_example" # String | Document name.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Get Workbook Settings DTO
  result = api_instance.cells_workbook_get_workbook_settings(name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorkbookApi->cells_workbook_get_workbook_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**WorkbookSettingsResponse**](WorkbookSettingsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_workbook_get_workbook_text_items**
> TextItemsResponse cells_workbook_get_workbook_text_items(name, opts)

Read workbook's text items.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorkbookApi.new

name = "name_example" # String | The workbook name.

opts = { 
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Read workbook's text items.
  result = api_instance.cells_workbook_get_workbook_text_items(name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorkbookApi->cells_workbook_get_workbook_text_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**TextItemsResponse**](TextItemsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_workbook_post_autofit_workbook_rows**
> SaaSposeResponse cells_workbook_post_autofit_workbook_rows(name, opts)

Autofit workbook rows.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorkbookApi.new

name = "name_example" # String | Document name.

opts = { 
  auto_fitter_options: AsposeCellsCloud::AutoFitterOptions.new, # AutoFitterOptions | Auto Fitter Options.
  start_row: 56, # Integer | Start row.
  end_row: 56, # Integer | End row.
  only_auto: false, # BOOLEAN | Only auto.
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Autofit workbook rows.
  result = api_instance.cells_workbook_post_autofit_workbook_rows(name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorkbookApi->cells_workbook_post_autofit_workbook_rows: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
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



# **cells_workbook_post_encrypt_document**
> SaaSposeResponse cells_workbook_post_encrypt_document(name, opts)

Encript document.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorkbookApi.new

name = "name_example" # String | The document name.

opts = { 
  encryption: AsposeCellsCloud::WorkbookEncryptionRequest.new, # WorkbookEncryptionRequest | Encryption parameters.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Encript document.
  result = api_instance.cells_workbook_post_encrypt_document(name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorkbookApi->cells_workbook_post_encrypt_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **encryption** | [**WorkbookEncryptionRequest**](WorkbookEncryptionRequest.md)| Encryption parameters. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_workbook_post_import_data**
> SaaSposeResponse cells_workbook_post_import_data(name, importdata, opts)



### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorkbookApi.new

name = "name_example" # String | 

importdata = AsposeCellsCloud::ImportOption.new # ImportOption | 

opts = { 
  folder: "folder_example", # String | 
  storage: "storage_example" # String | storage name.
}

begin
  result = api_instance.cells_workbook_post_import_data(name, importdata, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorkbookApi->cells_workbook_post_import_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **importdata** | [**ImportOption**](ImportOption.md)|  | 
 **folder** | **String**|  | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_workbook_post_protect_document**
> SaaSposeResponse cells_workbook_post_protect_document(name, opts)

Protect document.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorkbookApi.new

name = "name_example" # String | The document name.

opts = { 
  protection: AsposeCellsCloud::WorkbookProtectionRequest.new, # WorkbookProtectionRequest | The protection settings.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Protect document.
  result = api_instance.cells_workbook_post_protect_document(name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorkbookApi->cells_workbook_post_protect_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **protection** | [**WorkbookProtectionRequest**](WorkbookProtectionRequest.md)| The protection settings. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_workbook_post_workbook_calculate_formula**
> SaaSposeResponse cells_workbook_post_workbook_calculate_formula(name, opts)

Calculate all formulas in workbook.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorkbookApi.new

name = "name_example" # String | Document name.

opts = { 
  options: AsposeCellsCloud::CalculationOptions.new, # CalculationOptions | Calculation Options.
  ignore_error: true, # BOOLEAN | ignore Error.
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Calculate all formulas in workbook.
  result = api_instance.cells_workbook_post_workbook_calculate_formula(name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorkbookApi->cells_workbook_post_workbook_calculate_formula: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **options** | [**CalculationOptions**](CalculationOptions.md)| Calculation Options. | [optional] 
 **ignore_error** | **BOOLEAN**| ignore Error. | [optional] 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_workbook_post_workbook_get_smart_marker_result**
> File cells_workbook_post_workbook_get_smart_marker_result(name, opts)

Smart marker processing result.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorkbookApi.new

name = "name_example" # String | The workbook name.

opts = { 
  xml_file: "xml_file_example", # String | The xml file full path, if empty the data is read from request body.
  folder: "folder_example", # String | The workbook folder full path.
  storage: "storage_example", # String | storage name.
  out_path: "out_path_example" # String | Path to save result
}

begin
  #Smart marker processing result.
  result = api_instance.cells_workbook_post_workbook_get_smart_marker_result(name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorkbookApi->cells_workbook_post_workbook_get_smart_marker_result: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **xml_file** | **String**| The xml file full path, if empty the data is read from request body. | [optional] 
 **folder** | **String**| The workbook folder full path. | [optional] 
 **storage** | **String**| storage name. | [optional] 
 **out_path** | **String**| Path to save result | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_workbook_post_workbook_settings**
> SaaSposeResponse cells_workbook_post_workbook_settings(name, opts)

Update Workbook setting 

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorkbookApi.new

name = "name_example" # String | Document name.

opts = { 
  settings: AsposeCellsCloud::WorkbookSettings.new, # WorkbookSettings | Workbook Setting DTO
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Update Workbook setting 
  result = api_instance.cells_workbook_post_workbook_settings(name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorkbookApi->cells_workbook_post_workbook_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **settings** | [**WorkbookSettings**](WorkbookSettings.md)| Workbook Setting DTO | [optional] 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_workbook_post_workbook_split**
> SplitResultResponse cells_workbook_post_workbook_split(name, opts)

Split workbook.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorkbookApi.new

name = "name_example" # String | The workbook name.

opts = { 
  format: "format_example", # String | Split format.
  from: 0, # Integer | Start worksheet index.
  to: 0, # Integer | End worksheet index.
  horizontal_resolution: 0, # Integer | Image horizontal resolution.
  vertical_resolution: 0, # Integer | Image vertical resolution.
  folder: "folder_example", # String | The workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Split workbook.
  result = api_instance.cells_workbook_post_workbook_split(name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorkbookApi->cells_workbook_post_workbook_split: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The workbook name. | 
 **format** | **String**| Split format. | [optional] 
 **from** | **Integer**| Start worksheet index. | [optional] [default to 0]
 **to** | **Integer**| End worksheet index. | [optional] [default to 0]
 **horizontal_resolution** | **Integer**| Image horizontal resolution. | [optional] [default to 0]
 **vertical_resolution** | **Integer**| Image vertical resolution. | [optional] [default to 0]
 **folder** | **String**| The workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SplitResultResponse**](SplitResultResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_workbook_post_workbooks_merge**
> WorkbookResponse cells_workbook_post_workbooks_merge(name, merge_with, opts)

Merge workbooks.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorkbookApi.new

name = "name_example" # String | Workbook name.

merge_with = "merge_with_example" # String | The workbook to merge with.

opts = { 
  folder: "folder_example", # String | Source workbook folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Merge workbooks.
  result = api_instance.cells_workbook_post_workbooks_merge(name, merge_with, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorkbookApi->cells_workbook_post_workbooks_merge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Workbook name. | 
 **merge_with** | **String**| The workbook to merge with. | 
 **folder** | **String**| Source workbook folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**WorkbookResponse**](WorkbookResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_workbook_post_workbooks_text_replace**
> WorkbookReplaceResponse cells_workbook_post_workbooks_text_replace(name, old_value, new_value, opts)

Replace text.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorkbookApi.new

name = "name_example" # String | Document name.

old_value = "old_value_example" # String | The old value.

new_value = "new_value_example" # String | The new value.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Replace text.
  result = api_instance.cells_workbook_post_workbooks_text_replace(name, old_value, new_value, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorkbookApi->cells_workbook_post_workbooks_text_replace: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **old_value** | **String**| The old value. | 
 **new_value** | **String**| The new value. | 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**WorkbookReplaceResponse**](WorkbookReplaceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_workbook_post_workbooks_text_search**
> TextItemsResponse cells_workbook_post_workbooks_text_search(name, text, opts)

Search text.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorkbookApi.new

name = "name_example" # String | Document name.

text = "text_example" # String | Text sample.

opts = { 
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Search text.
  result = api_instance.cells_workbook_post_workbooks_text_search(name, text, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorkbookApi->cells_workbook_post_workbooks_text_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **text** | **String**| Text sample. | 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**TextItemsResponse**](TextItemsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_workbook_put_convert_workbook**
> File cells_workbook_put_convert_workbook(opts)

Convert workbook from request content to some format.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorkbookApi.new

opts = { 
  format: "format_example", # String | The format to convert.
  password: "password_example", # String | The workbook password.
  out_path: "out_path_example" # String | Path to save result
}

begin
  #Convert workbook from request content to some format.
  result = api_instance.cells_workbook_put_convert_workbook(opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorkbookApi->cells_workbook_put_convert_workbook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| The format to convert. | [optional] 
 **password** | **String**| The workbook password. | [optional] 
 **out_path** | **String**| Path to save result | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_workbook_put_document_protect_from_changes**
> SaaSposeResponse cells_workbook_put_document_protect_from_changes(name, opts)

Protect document from changes.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorkbookApi.new

name = "name_example" # String | Document name.

opts = { 
  password: AsposeCellsCloud::PasswordRequest.new, # PasswordRequest | Modification password.
  folder: "folder_example", # String | Document's folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Protect document from changes.
  result = api_instance.cells_workbook_put_document_protect_from_changes(name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorkbookApi->cells_workbook_put_document_protect_from_changes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **password** | [**PasswordRequest**](PasswordRequest.md)| Modification password. | [optional] 
 **folder** | **String**| Document&#39;s folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cells_workbook_put_workbook_create**
> WorkbookResponse cells_workbook_put_workbook_create(name, opts)

Create new workbook using deferent methods.

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsWorkbookApi.new

name = "name_example" # String | The new document name.

opts = { 
  template_file: "template_file_example", # String | The template file, if the data not provided default workbook is created.
  data_file: "data_file_example", # String | Smart marker data file, if the data not provided the request content is checked for the data.
  folder: "folder_example", # String | The new document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Create new workbook using deferent methods.
  result = api_instance.cells_workbook_put_workbook_create(name, opts)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsWorkbookApi->cells_workbook_put_workbook_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The new document name. | 
 **template_file** | **String**| The template file, if the data not provided default workbook is created. | [optional] 
 **data_file** | **String**| Smart marker data file, if the data not provided the request content is checked for the data. | [optional] 
 **folder** | **String**| The new document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

[**WorkbookResponse**](WorkbookResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



