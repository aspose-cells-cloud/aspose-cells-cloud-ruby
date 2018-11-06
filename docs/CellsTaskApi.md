# AsposeCellsCloud::CellsTaskApi

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cells_task_post_run_task**](CellsTaskApi.md#cells_task_post_run_task) | **POST** /cells/task/runtask | Run tasks  


# **cells_task_post_run_task**
> Object cells_task_post_run_task(task_data)

Run tasks  

### Example
```ruby
# load the gem
require 'aspose_cells_cloud'

api_instance = AsposeCellsCloud::CellsTaskApi.new

task_data = AsposeCellsCloud::TaskData.new # TaskData | 


begin
  #Run tasks  
  result = api_instance.cells_task_post_run_task(task_data)
  p result
rescue AsposeCellsCloud::ApiError => e
  puts "Exception when calling CellsTaskApi->cells_task_post_run_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_data** | [**TaskData**](TaskData.md)|  | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



