require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'],'v3.0',ENV['CellsCloudApiBaseUrl'])

book1_xlsx = 'Book1.xlsx'

rotate_type = "rows"
format = "pdf"

    
mapFiles = { }   
mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
request =   AsposeCellsCloud::PostReverseRequest.new(:File=>mapFiles,:rotateType=>rotate_type,:outFormat=>format);
@instance.post_reverse(request);
