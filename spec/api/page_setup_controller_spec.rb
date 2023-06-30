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

  describe 'get_page_setup test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetPageSetupRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:folder=>remote_folder,:storageName=>'');
      @instance.get_page_setup(request);
    end
  end 

  describe 'post_page_setup test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      pageSetup = AsposeCellsCloud::PageSetup.new(:BlackAndWhite=>true ,:CenterHorizontally=>true ,:CenterVertically=>true );
      request =   AsposeCellsCloud::PostPageSetupRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:pageSetup=>pageSetup,:folder=>remote_folder,:storageName=>'');
      @instance.post_page_setup(request);
    end
  end 

  describe 'delete_header_footer test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteHeaderFooterRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:folder=>remote_folder,:storageName=>'');
      @instance.delete_header_footer(request);
    end
  end 

  describe 'get_header test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetHeaderRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:folder=>remote_folder,:storageName=>'');
      @instance.get_header(request);
    end
  end 

  describe 'post_header test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostHeaderRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:section=>1,:script=>'Update add header',:isFirstPage=>true,:folder=>remote_folder,:storageName=>'');
      @instance.post_header(request);
    end
  end 

  describe 'get_footer test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetFooterRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:folder=>remote_folder,:storageName=>'');
      @instance.get_footer(request);
    end
  end 

  describe 'post_footer test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostFooterRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:section=>1,:script=>'add footer script',:isFirstPage=>true,:folder=>remote_folder,:storageName=>'');
      @instance.post_footer(request);
    end
  end 
end
