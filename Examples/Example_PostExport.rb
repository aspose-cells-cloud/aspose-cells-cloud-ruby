require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'],'v3.0',ENV['CellsCloudApiBaseUrl'])

assembly_test_xlsx = 'assemblytest.xlsx'
book1_xlsx = 'Book1.xlsx'

format = "csv"
object_type = "workbook"

    
mapFiles = { }   
mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
@instance.post_export(request);
