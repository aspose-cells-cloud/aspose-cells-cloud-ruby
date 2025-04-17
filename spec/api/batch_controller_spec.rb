require 'spec_helper'
require 'json'

describe 'CellsApi' do
  before do
    @instance = AsposeCellsCloud::CellsApi.new($client_id,$client_secret,$api_version,$baseurl)
    $VERBOSE = nil
  end

  after do
    # run after each test
  end

  describe 'post_batch_convert test' do
    it "should work" do
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
      batchConvertRequestMatchCondition = AsposeCellsCloud::MatchConditionRequest.new(:RegexPattern=>'(^Book)(.+)(xlsx$)' );
      batchConvertRequest = AsposeCellsCloud::BatchConvertRequest.new(:SourceFolder=>remote_folder ,:Format=>'pdf' ,:OutFolder=>'OutResult' ,:MatchCondition=>batchConvertRequestMatchCondition );
      request =   AsposeCellsCloud::PostBatchConvertRequest.new(:batchConvertRequest=>batchConvertRequest);
      @instance.post_batch_convert(request);
    end
  end 

  describe 'post_batch_protect test' do
    it "should work" do
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
      batchProtectRequestMatchCondition = AsposeCellsCloud::MatchConditionRequest.new(:RegexPattern=>'(^Book)(.+)(xlsx$)' );
      batchProtectRequest = AsposeCellsCloud::BatchProtectRequest.new(:SourceFolder=>remote_folder ,:ProtectionType=>'All' ,:Password=>'123456' ,:OutFolder=>'OutResult' ,:MatchCondition=>batchProtectRequestMatchCondition );
      request =   AsposeCellsCloud::PostBatchProtectRequest.new(:batchProtectRequest=>batchProtectRequest);
      @instance.post_batch_protect(request);
    end
  end 

  describe 'post_batch_lock test' do
    it "should work" do
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
      batchLockRequestMatchCondition = AsposeCellsCloud::MatchConditionRequest.new(:RegexPattern=>'(^Book)(.+)(xlsx$)' );
      batchLockRequest = AsposeCellsCloud::BatchLockRequest.new(:SourceFolder=>remote_folder ,:Password=>'123456' ,:OutFolder=>'OutResult' ,:MatchCondition=>batchLockRequestMatchCondition );
      request =   AsposeCellsCloud::PostBatchLockRequest.new(:batchLockRequest=>batchLockRequest);
      @instance.post_batch_lock(request);
    end
  end 

  describe 'post_batch_unlock test' do
    it "should work" do
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
      batchLockRequestMatchCondition = AsposeCellsCloud::MatchConditionRequest.new(:RegexPattern=>'(^Book)(.+)(xlsx$)' );
      batchLockRequest = AsposeCellsCloud::BatchLockRequest.new(:SourceFolder=>remote_folder ,:Password=>'123456' ,:OutFolder=>'OutResult' ,:MatchCondition=>batchLockRequestMatchCondition );
      request =   AsposeCellsCloud::PostBatchUnlockRequest.new(:batchLockRequest=>batchLockRequest);
      @instance.post_batch_unlock(request);
    end
  end 

  describe 'post_batch_split test' do
    it "should work" do
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
    end
  end 
end
