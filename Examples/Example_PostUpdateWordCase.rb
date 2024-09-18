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
wordCaseOptionsDataSource = AsposeCellsCloud::DataSource.new(:DataSourceType=>'CloudFileSystem' ,:DataPath=>'BookText.xlsx' );
wordCaseOptionsScopeOptions = AsposeCellsCloud::ScopeOptions.new(:Scope=>'EntireWorkbook' );
wordCaseOptions = AsposeCellsCloud::WordCaseOptions.new(:DataSource=>wordCaseOptionsDataSource ,:WordCaseType=>'None' ,:ScopeOptions=>wordCaseOptionsScopeOptions );
request =   AsposeCellsCloud::PostUpdateWordCaseRequest.new(:wordCaseOptions=>wordCaseOptions);
@instance.post_update_word_case(request);
