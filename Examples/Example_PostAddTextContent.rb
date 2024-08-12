require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'],'v3.0',ENV['CellsCloudApiBaseUrl'])

remote_folder = 'TestData/In'

local_name = 'BookText.xlsx'
remote_name = 'BookText.xlsx'

    
mapFiles = { }               
mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
 
uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
@instance.upload_file(uploadrequest)
addTextOptionsDataSource = AsposeCellsCloud::DataSource.new(:DataSourceType=>'CloudFileSystem' ,:DataPath=>'BookText.xlsx' );
addTextOptions = AsposeCellsCloud::AddTextOptions.new(:DataSource=>addTextOptionsDataSource ,:Text=>'Aspose.Cells Cloud is an excellent product.' ,:Worksheet=>'202401' ,:SelectPoistion=>'AtTheBeginning' ,:SkipEmptyCells=>true );
request =   AsposeCellsCloud::PostAddTextContentRequest.new(:addTextOptions=>addTextOptions);
@instance.post_add_text_content(request);
