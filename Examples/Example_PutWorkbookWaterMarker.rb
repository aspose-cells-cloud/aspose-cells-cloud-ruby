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
textWaterMarkerRequest = AsposeCellsCloud::TextWaterMarkerRequest.new(:Text=>'Aspose Cells Cloud' ,:FontSize=>12 );
request =   AsposeCellsCloud::PutWorkbookWaterMarkerRequest.new(:name=>remote_name,:textWaterMarkerRequest=>textWaterMarkerRequest,:folder=>remote_folder,:storageName=>'');
@instance.put_workbook_water_marker(request);
