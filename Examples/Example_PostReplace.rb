require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'],'v3.0',ENV['CellsCloudApiBaseUrl'])

assembly_test_xlsx = 'assemblytest.xlsx'
data_source_xlsx = 'datasource.xlsx'

    
mapFiles = { }   
mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
request =   AsposeCellsCloud::PostReplaceRequest.new(:File=>mapFiles,:text=>'12',:newtext=>'newtext');
@instance.post_replace(request);
