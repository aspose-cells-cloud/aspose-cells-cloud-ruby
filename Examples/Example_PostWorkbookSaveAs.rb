require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'],'v3.0',ENV['CellsCloudApiBaseUrl'])

remote_folder = 'TestData/In'

local_name = 'Book1.xlsx'
remote_name = 'Book1.xlsx'

format = "csv"
newfilename = "OutResult/PostExcelSaveAs.csv"

    
mapFiles = { }               
mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
 
uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
@instance.upload_file(uploadrequest)
saveOptions = AsposeCellsCloud::SaveOptions.new(:SaveFormat=>format );
request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
@instance.post_workbook_save_as(request);
