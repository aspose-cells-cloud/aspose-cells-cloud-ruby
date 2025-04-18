require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'],'v3.0',ENV['CellsCloudApiBaseUrl'])

remote_folder = 'TestData/In'

local_book1 = 'Book1.xlsx'
remote_book1 = 'Book1.xlsx'
local_my_doc = 'myDocument.xlsx'
remote_my_doc = 'myDocument.xlsx'

    
mapFiles = { }               
mapFiles[local_book1] = ::File.open(File.expand_path("TestData/"+local_book1),"r")  
mapFiles[local_my_doc] = ::File.open(File.expand_path("TestData/"+local_my_doc),"r")  
 
uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
@instance.upload_file(uploadrequest)
batchSplitRequestMatchCondition = AsposeCellsCloud::MatchConditionRequest.new(:RegexPattern=>'(^Book)(.+)(xlsx$)' );
batchSplitRequest = AsposeCellsCloud::BatchSplitRequest.new(:SourceFolder=>remote_folder ,:Format=>'Pdf' ,:OutFolder=>'OutResult' ,:MatchCondition=>batchSplitRequestMatchCondition );
request =   AsposeCellsCloud::PostBatchSplitRequest.new(:batchSplitRequest=>batchSplitRequest);
@instance.post_batch_split(request);
