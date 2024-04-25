require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'],'v3.0',ENV['CellsCloudApiBaseUrl'])

remote_folder = 'TestData/In'

local_name = 'Template.xlsx'
data_xml = 'data.xml'
remote_name = 'Template.xlsx'

    
mapFiles = { }               
mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
mapFiles[data_xml] = ::File.open(File.expand_path("TestData/"+data_xml),"r")  
 
uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
@instance.upload_file(uploadrequest)
importXMLRequestXMLFileSource = AsposeCellsCloud::DataSource.new(:DataSourceType=>'CloudFileSystem' ,:DataPath=>remote_folder + '/data.xml' );
importXMLRequestImportPosition = AsposeCellsCloud::ImportPosition.new(:SheetName=>'Sheet1' ,:RowIndex=>3 ,:ColumnIndex=>4 );
importXMLRequest = AsposeCellsCloud::ImportXMLRequest.new(:XMLFileSource=>importXMLRequestXMLFileSource ,:ImportPosition=>importXMLRequestImportPosition );
request =   AsposeCellsCloud::PostWorkbookImportXMLRequest.new(:name=>remote_name,:importXMLRequest=>importXMLRequest,:folder=>remote_folder,:storageName=>'');
@instance.post_workbook_import_xml(request);
