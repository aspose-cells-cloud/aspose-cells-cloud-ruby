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

  describe 'get_worksheet_ole_objects test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetOleObjectsRequest.new(:name=>remote_name,:sheetName=>'Sheet6',:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_ole_objects(request);
    end
  end 

  describe 'get_worksheet_ole_object test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetOleObjectRequest.new(:name=>remote_name,:sheetName=>'Sheet6',:objectNumber=>0,:format=>'png',:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_ole_object(request);
    end
  end 

  describe 'delete_worksheet_ole_objects test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetOleObjectsRequest.new(:name=>remote_name,:sheetName=>'Sheet6',:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_ole_objects(request);
    end
  end 

  describe 'delete_worksheet_ole_object test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetOleObjectRequest.new(:name=>remote_name,:sheetName=>'Sheet6',:oleObjectIndex=>0,:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_ole_object(request);
    end
  end 

  describe 'post_update_worksheet_ole_object test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      ole = AsposeCellsCloud::OleObject.new(:Left=>10 ,:Right=>10 ,:Height=>90 ,:Width=>78 );
      request =   AsposeCellsCloud::PostUpdateWorksheetOleObjectRequest.new(:name=>remote_name,:sheetName=>'Sheet6',:oleObjectIndex=>0,:ole=>ole,:folder=>remote_folder,:storageName=>'');
      @instance.post_update_worksheet_ole_object(request);
    end
  end 

  describe 'put_worksheet_ole_object test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      ole_doc = 'OLEDoc.docx'
      word_jpg = 'word.jpg'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
      mapFiles[ole_doc] = ::File.open(File.expand_path("TestData/"+ole_doc),"r")  
      mapFiles[word_jpg] = ::File.open(File.expand_path("TestData/"+word_jpg),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutWorksheetOleObjectRequest.new(:name=>remote_name,:sheetName=>'Sheet6',:upperLeftRow=>1,:upperLeftColumn=>1,:height=>100,:width=>80,:oleFile=>'OLEDoc.docx',:imageFile=>'word.jpg',:folder=>remote_folder,:storageName=>'');
      @instance.put_worksheet_ole_object(request);
    end
  end 
end
