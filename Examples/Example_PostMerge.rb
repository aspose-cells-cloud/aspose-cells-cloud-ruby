require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'],'v3.0',ENV['CellsCloudApiBaseUrl'])

assembly_test_xlsx = 'assemblytest.xlsx'
data_source_xlsx = 'datasource.xlsx'

format = "csv"
merge_to_one_sheet = true

    
mapFiles = { }   
mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:outFormat=>format,:mergeToOneSheet=>merge_to_one_sheet);
@instance.post_merge(request);
