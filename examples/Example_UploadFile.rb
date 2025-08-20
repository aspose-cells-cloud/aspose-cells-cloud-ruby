require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret']);
request =   AsposeCellsCloud::UploadFileRequest.new(:UploadFiles=>"EmployeeSalesSummary.xlsx",:path=>"TestData/EmployeeSalesSummary.xlsx",:storageName=>'');
@instance.upload_file(request);