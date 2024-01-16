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
newName = AsposeCellsCloud::Name.new(:Text=>'name_1804' ,:Comment=>'KeepSourceFormatting' ,:RefersTo=>'=Sheet1!$I$4' );
request =   AsposeCellsCloud::PutWorkbookNameRequest.new(:name=>remote_name,:newName=>newName,:folder=>remote_folder,:storageName=>'');
@instance.put_workbook_name(request);
