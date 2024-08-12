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
trimContentOptionsDataSource = AsposeCellsCloud::DataSource.new(:DataSourceType=>'CloudFileSystem' ,:DataPath=>'BookText.xlsx' );
trimContentOptionsScopeOptions = AsposeCellsCloud::ScopeOptions.new(:Scope=>'EntireWorkbook' );
trimContentOptions = AsposeCellsCloud::TrimContentOptions.new(:DataSource=>trimContentOptionsDataSource ,:TrimLeading=>true ,:TrimTrailing=>true ,:TrimSpaceBetweenWordTo1=>true ,:RemoveAllLineBreaks=>true ,:ScopeOptions=>trimContentOptionsScopeOptions );
request =   AsposeCellsCloud::PostTrimContentRequest.new(:trimContentOptions=>trimContentOptions);
@instance.post_trim_content(request);
