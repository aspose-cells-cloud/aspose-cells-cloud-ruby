require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'],'v3.0',ENV['CellsCloudApiBaseUrl'])

remote_folder = 'TestData/In'

local_name = 'TestCase.xlsx'
remote_name = 'TestCase.xlsx'

    
mapFiles = { }               
mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
 
uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
@instance.upload_file(uploadrequest)
request =   AsposeCellsCloud::PutWorksheetPivotTableRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:folder=>remote_folder,:sourceData=>'=Sheet1!C6:E13',:destCellName=>'C1',:tableName=>'TestPivot',:useSameSource=>true,:storageName=>'');
@instance.put_worksheet_pivot_table(request);
