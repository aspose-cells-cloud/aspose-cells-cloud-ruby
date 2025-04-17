require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'],'v3.0',ENV['CellsCloudApiBaseUrl'])

data_source_xlsx = 'datasource.xlsx'

    
mapFiles = { }   
mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
request =   AsposeCellsCloud::PostReplaceRequest.new(:File=>mapFiles,:text=>'12',:newtext=>'newtext');
@instance.post_replace(request);
