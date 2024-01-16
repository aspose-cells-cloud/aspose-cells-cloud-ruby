require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'],'v3.0',ENV['CellsCloudApiBaseUrl'])

remote_folder = 'TestData/In'

local_name = 'Book1.xlsx'
remote_name = 'Book1.xlsx'

    
mapFiles = { }               
mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
 
uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
@instance.upload_file(uploadrequest)
request =   AsposeCellsCloud::PutWorksheetFormatConditionConditionRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:index=>0,:type=>'CellValue',:operatorType=>'Between',:formula1=>'v1',:formula2=>'v2',:folder=>remote_folder,:storageName=>'');
@instance.put_worksheet_format_condition_condition(request);
