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
legend = AsposeCellsCloud::Legend.new(:Position=>'Top' );
request =   AsposeCellsCloud::PostWorksheetChartLegendRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:chartIndex=>0,:legend=>legend,:folder=>remote_folder,:storageName=>'');
@instance.post_worksheet_chart_legend(request);
