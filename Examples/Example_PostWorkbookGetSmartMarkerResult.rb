require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'],'v3.0',ENV['CellsCloudApiBaseUrl'])

remote_folder = 'TestData/In'

local_name = 'Book1.xlsx'
report_data_xml = 'ReportData.xml'
remote_name = 'Book1.xlsx'

    
mapFiles = { }               
mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
mapFiles[report_data_xml] = ::File.open(File.expand_path("TestData/"+report_data_xml),"r")  
 
uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
@instance.upload_file(uploadrequest)
request =   AsposeCellsCloud::PostWorkbookGetSmartMarkerResultRequest.new(:name=>remote_name,:xmlFile=>remote_folder + '/ReportData.xml',:folder=>remote_folder,:outPath=>'OutResult/SmartMarkerResult.xlsx',:storageName=>'',:outStorageName=>'');
@instance.post_workbook_get_smart_marker_result(request);
