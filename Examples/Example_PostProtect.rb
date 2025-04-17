require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'],'v3.0',ENV['CellsCloudApiBaseUrl'])

assembly_test_xlsx = 'assemblytest.xlsx'

    
mapFiles = { }   
protectWorkbookRequest = AsposeCellsCloud::ProtectWorkbookRequest.new(:AwaysOpenReadOnly=>true ,:EncryptWithPassword=>'123456' );
mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
request =   AsposeCellsCloud::PostProtectRequest.new(:File=>mapFiles,:protectWorkbookRequest=>protectWorkbookRequest,:password=>'123456');
@instance.post_protect(request);
