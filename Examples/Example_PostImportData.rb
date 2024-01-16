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
importOptionData = [
    1,
    2,
    3,
    4
];
importOption = AsposeCellsCloud::ImportIntArrayOption.new(:DestinationWorksheet=>'Sheet1' ,:FirstColumn=>1 ,:FirstRow=>3 ,:ImportDataType=>'IntArray' ,:IsInsert=>true ,:IsVertical=>true ,:Data=>importOptionData );
request =   AsposeCellsCloud::PostImportDataRequest.new(:name=>remote_name,:importOption=>importOption,:folder=>remote_folder,:storageName=>'');
@instance.post_import_data(request);
