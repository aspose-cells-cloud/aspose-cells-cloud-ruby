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
shapeDTO = AsposeCellsCloud::Shape.new();
request =   AsposeCellsCloud::PutWorksheetShapeRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:shapeDTO=>shapeDTO,:DrawingType=>'arc',:upperLeftRow=>1,:upperLeftColumn=>1,:top=>10,:left=>10,:width=>100,:height=>100,:folder=>remote_folder,:storageName=>'');
@instance.put_worksheet_shape(request);
