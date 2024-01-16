require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'],'v3.0',ENV['CellsCloudApiBaseUrl'])

remote_folder = 'TestData/In'

local_name = 'Book1.xlsx'
ole_doc = 'OLEDoc.docx'
word_jpg = 'word.jpg'
remote_name = 'Book1.xlsx'

    
mapFiles = { }               
mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
mapFiles[ole_doc] = ::File.open(File.expand_path("TestData/"+ole_doc),"r")  
mapFiles[word_jpg] = ::File.open(File.expand_path("TestData/"+word_jpg),"r")  
 
uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
@instance.upload_file(uploadrequest)
request =   AsposeCellsCloud::PutWorksheetOleObjectRequest.new(:name=>remote_name,:sheetName=>'Sheet6',:upperLeftRow=>1,:upperLeftColumn=>1,:height=>100,:width=>80,:oleFile=>'OLEDoc.docx',:imageFile=>'word.jpg',:folder=>remote_folder,:storageName=>'');
@instance.put_worksheet_ole_object(request);
