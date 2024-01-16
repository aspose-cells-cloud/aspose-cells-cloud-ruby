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
ole = AsposeCellsCloud::OleObject.new(:Left=>10 ,:Right=>10 ,:Height=>90 ,:Width=>78 );
request =   AsposeCellsCloud::PostUpdateWorksheetOleObjectRequest.new(:name=>remote_name,:sheetName=>'Sheet6',:oleObjectIndex=>0,:ole=>ole,:folder=>remote_folder,:storageName=>'');
@instance.post_update_worksheet_ole_object(request);
