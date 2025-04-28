require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'])
request = AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>{"EmployeeSalesSummary.xlsx" => ::File.open(File.expand_path("./EmployeeSalesSummary.xlsx"),"r") },:format=>"csv");
response = @instance.put_convert_workbook(request);
FileUtils.cp(response.path, 'EmployeeSalesSummary.csv')