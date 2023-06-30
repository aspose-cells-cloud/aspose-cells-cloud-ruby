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

  describe 'get_worksheet_pictures test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetPicturesRequest.new(:name=>remote_name,:sheetName=>'Sheet6',:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_pictures(request);
    end
  end 

  describe 'get_worksheet_picture_with_format test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetPictureWithFormatRequest.new(:name=>remote_name,:sheetName=>'Sheet6',:pictureNumber=>0,:format=>'png',:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_picture_with_format(request);
    end
  end 

  describe 'put_worksheet_add_picture test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      water_mark_png = 'WaterMark.png'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
      mapFiles[water_mark_png] = ::File.open(File.expand_path("TestData/"+water_mark_png),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutWorksheetAddPictureRequest.new(:name=>remote_name,:sheetName=>'Sheet6',:upperLeftRow=>1,:upperLeftColumn=>1,:lowerRightRow=>10,:lowerRightColumn=>10,:picturePath=>remote_folder + '/WaterMark.png',:folder=>remote_folder,:storageName=>'');
      @instance.put_worksheet_add_picture(request);
    end
  end 

  describe 'post_worksheet_picture test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      picture = AsposeCellsCloud::Picture.new(:Left=>10 ,:Bottom=>10 );
      request =   AsposeCellsCloud::PostWorksheetPictureRequest.new(:name=>remote_name,:sheetName=>'Sheet6',:pictureIndex=>0,:picture=>picture,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_picture(request);
    end
  end 

  describe 'delete_worksheet_picture test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetPictureRequest.new(:name=>remote_name,:sheetName=>'Sheet6',:pictureIndex=>0,:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_picture(request);
    end
  end 

  describe 'delete_worksheet_pictures test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetPicturesRequest.new(:name=>remote_name,:sheetName=>'Sheet6',:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_pictures(request);
    end
  end 
end
