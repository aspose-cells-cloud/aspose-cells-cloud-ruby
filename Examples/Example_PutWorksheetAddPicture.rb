require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'],'v3.0',ENV['CellsCloudApiBaseUrl'])

remote_folder = 'TestData/In'

local_name = 'Book1.xlsx'
water_mark_png = 'WaterMark.png'
remote_name = 'Book1.xlsx'

    
mapFiles = { }               
mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
mapFiles[water_mark_png] = ::File.open(File.expand_path("TestData/"+water_mark_png),"r")  
 
uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
@instance.upload_file(uploadrequest)
request =   AsposeCellsCloud::PutWorksheetAddPictureRequest.new(:name=>remote_name,:sheetName=>'Sheet6',:upperLeftRow=>1,:upperLeftColumn=>1,:lowerRightRow=>10,:lowerRightColumn=>10,:picturePath=>remote_folder + '/WaterMark.png',:folder=>remote_folder,:storageName=>'');
@instance.put_worksheet_add_picture(request);
