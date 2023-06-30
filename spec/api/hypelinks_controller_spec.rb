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

  describe 'get_worksheet_hyperlinks test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetHyperlinksRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_hyperlinks(request);
    end
  end 

  describe 'get_worksheet_hyperlink test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetHyperlinkRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:hyperlinkIndex=>0,:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_hyperlink(request);
    end
  end 

  describe 'delete_worksheet_hyperlink test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetHyperlinkRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:hyperlinkIndex=>0,:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_hyperlink(request);
    end
  end 

  describe 'post_worksheet_hyperlink test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      hyperlink = AsposeCellsCloud::Hyperlink.new(:Address=>'https://products.aspose.cloud/cells/' );
      request =   AsposeCellsCloud::PostWorksheetHyperlinkRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:hyperlinkIndex=>0,:hyperlink=>hyperlink,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_hyperlink(request);
    end
  end 

  describe 'put_worksheet_hyperlink test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutWorksheetHyperlinkRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:firstRow=>1,:firstColumn=>1,:totalRows=>2,:totalColumns=>3,:address=>'https://products.aspose.cloud/cells/',:folder=>remote_folder,:storageName=>'');
      @instance.put_worksheet_hyperlink(request);
    end
  end 

  describe 'delete_worksheet_hyperlinks test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetHyperlinksRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_hyperlinks(request);
    end
  end 
end
