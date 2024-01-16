require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'],'v3.0',ENV['CellsCloudApiBaseUrl'])

book1_xlsx = 'Book1.xlsx'

    
mapFiles = { }   
mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
request =   AsposeCellsCloud::GetMetadataRequest.new(:File=>mapFiles,:type=>'all');
@instance.get_metadata(request);
