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
validation = AsposeCellsCloud::Validation.new(:Formula1=>'=A1' ,:Type=>'Custom' );
request =   AsposeCellsCloud::PostWorksheetValidationRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:validationIndex=>0,:validation=>validation,:folder=>remote_folder,:storageName=>'');
@instance.post_worksheet_validation(request);
