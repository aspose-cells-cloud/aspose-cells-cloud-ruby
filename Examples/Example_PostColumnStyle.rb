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
styleFont = AsposeCellsCloud::Font.new(:Size=>16 );
style = AsposeCellsCloud::Style.new(:Font=>styleFont );
request =   AsposeCellsCloud::PostColumnStyleRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:columnIndex=>1,:style=>style,:folder=>remote_folder,:storageName=>'');
@instance.post_column_style(request);
