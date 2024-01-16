require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'],'v3.0',ENV['CellsCloudApiBaseUrl'])

book1_xlsx = 'Book1.xlsx'
data_source_xlsx = 'datasource.xlsx'

objecttype = "chart"

    
mapFiles = { }   
mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
request =   AsposeCellsCloud::PostClearObjectsRequest.new(:File=>mapFiles,:objecttype=>objecttype);
@instance.post_clear_objects(request);
