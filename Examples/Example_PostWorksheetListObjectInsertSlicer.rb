require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'],'v3.0',ENV['CellsCloudApiBaseUrl'])

remote_folder = 'TestData/In'

local_name = 'TestTables.xlsx'
remote_name = 'TestTables.xlsx'

    
mapFiles = { }               
mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
 
uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
@instance.upload_file(uploadrequest)
request =   AsposeCellsCloud::PostWorksheetListObjectInsertSlicerRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:listObjectIndex=>0,:columnIndex=>2,:destCellName=>'j9',:folder=>remote_folder,:storageName=>'');
@instance.post_worksheet_list_object_insert_slicer(request);
