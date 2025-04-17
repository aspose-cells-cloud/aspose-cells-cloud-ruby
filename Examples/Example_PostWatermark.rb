require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'],'v3.0',ENV['CellsCloudApiBaseUrl'])

data_source_xlsx = 'datasource.xlsx'

    
mapFiles = { }   
mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
request =   AsposeCellsCloud::PostWatermarkRequest.new(:File=>mapFiles,:text=>'aspose.cells cloud sdk',:color=>'#773322');
@instance.post_watermark(request);
