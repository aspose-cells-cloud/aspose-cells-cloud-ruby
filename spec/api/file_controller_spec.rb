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

  describe 'download_file test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DownloadFileRequest.new(:path=>remote_folder + '/' + remote_name,:storageName=>'',:versionId=>'');
      @instance.download_file(request);
    end
  end 

  describe 'upload_file test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::UploadFileRequest.new(:UploadFiles=>mapFiles,:path=>remote_folder + '/' + remote_name,:storageName=>'');
      @instance.upload_file(request);
    end
  end 

  describe 'copy_file test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::CopyFileRequest.new(:srcPath=>remote_folder + '/' + remote_name,:destPath=>'OutResult/' + remote_name,:srcStorageName=>'',:destStorageName=>'',:versionId=>'');
      @instance.copy_file(request);
    end
  end 
end
