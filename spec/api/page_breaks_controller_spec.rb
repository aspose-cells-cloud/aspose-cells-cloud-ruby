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

  describe 'get_vertical_page_breaks test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetVerticalPageBreaksRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:folder=>remote_folder,:storageName=>'');
      @instance.get_vertical_page_breaks(request);
    end
  end 

  describe 'get_horizontal_page_breaks test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetHorizontalPageBreaksRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:folder=>remote_folder,:storageName=>'');
      @instance.get_horizontal_page_breaks(request);
    end
  end 

  describe 'get_vertical_page_break test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetVerticalPageBreakRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:index=>0,:folder=>remote_folder,:storageName=>'');
      @instance.get_vertical_page_break(request);
    end
  end 

  describe 'get_horizontal_page_break test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetHorizontalPageBreakRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:index=>0,:folder=>remote_folder,:storageName=>'');
      @instance.get_horizontal_page_break(request);
    end
  end 

  describe 'put_vertical_page_break test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutVerticalPageBreakRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:cellname=>'A1',:column=>1,:row=>1,:startRow=>1,:endRow=>1,:folder=>remote_folder,:storageName=>'');
      @instance.put_vertical_page_break(request);
    end
  end 

  describe 'put_horizontal_page_break test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutHorizontalPageBreakRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:cellname=>'A1',:row=>1,:column=>1,:startColumn=>1,:endColumn=>1,:folder=>remote_folder,:storageName=>'');
      @instance.put_horizontal_page_break(request);
    end
  end 

  describe 'delete_vertical_page_breaks test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteVerticalPageBreaksRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:column=>0,:folder=>remote_folder,:storageName=>'');
      @instance.delete_vertical_page_breaks(request);
    end
  end 

  describe 'delete_horizontal_page_breaks test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteHorizontalPageBreaksRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:row=>0,:folder=>remote_folder,:storageName=>'');
      @instance.delete_horizontal_page_breaks(request);
    end
  end 

  describe 'delete_vertical_page_break test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteVerticalPageBreakRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:index=>0,:folder=>remote_folder,:storageName=>'');
      @instance.delete_vertical_page_break(request);
    end
  end 

  describe 'delete_horizontal_page_break test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteHorizontalPageBreakRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:index=>0,:folder=>remote_folder,:storageName=>'');
      @instance.delete_horizontal_page_break(request);
    end
  end 
end
