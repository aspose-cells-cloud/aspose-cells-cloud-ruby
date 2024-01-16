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
request =   AsposeCellsCloud::PutWorkbookCreateRequest.new(:name=>'PutWorkbookCreate.xlsx',:templateFile=>remote_folder + '/' + remote_name,:dataFile=>remote_folder + '/ReportData.xml',:isWriteOver=>true,:folder=>remote_folder,:storageName=>'',:checkExcelRestriction=>true);
@instance.put_workbook_create(request);
