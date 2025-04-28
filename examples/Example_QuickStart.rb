require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'],'v3.0',ENV['CellsCloudApiBaseUrl'])
@instance.upload_file(uploadrequest)
mapFiles["EmployeeSalesSummary.xlsx"]= ::File.open(File.expand_path("./EmployeeSalesSummary.xlsx"),"r")
request = AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>"pdf");
response = @instance.put_convert_workbook(request);
print response
