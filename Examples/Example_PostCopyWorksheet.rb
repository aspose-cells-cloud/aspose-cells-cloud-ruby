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
options = AsposeCellsCloud::CopyOptions.new(:ColumnCharacterWidth=>true );
request =   AsposeCellsCloud::PostCopyWorksheetRequest.new(:name=>remote_name,:sheetName=>'Sheet15',:sourceSheet=>'Sheet6',:options=>options,:sourceWorkbook=>'',:sourceFolder=>'',:folder=>remote_folder,:storageName=>'');
@instance.post_copy_worksheet(request);
