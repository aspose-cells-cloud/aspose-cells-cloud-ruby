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

  describe 'get_worksheet_shapes test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetShapesRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_shapes(request);
    end
  end 

  describe 'get_worksheet_shape test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetShapeRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:shapeindex=>0,:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_shape(request);
    end
  end 

  describe 'put_worksheet_shape test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      shapeDTO = AsposeCellsCloud::Shape.new();
      request =   AsposeCellsCloud::PutWorksheetShapeRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:shapeDTO=>shapeDTO,:DrawingType=>'arc',:upperLeftRow=>1,:upperLeftColumn=>1,:top=>10,:left=>10,:width=>100,:height=>100,:folder=>remote_folder,:storageName=>'');
      @instance.put_worksheet_shape(request);
    end
  end 

  describe 'delete_worksheet_shapes test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetShapesRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_shapes(request);
    end
  end 

  describe 'delete_worksheet_shape test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetShapeRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:shapeindex=>0,:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_shape(request);
    end
  end 

  describe 'post_worksheet_shape test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      dto = AsposeCellsCloud::Shape.new(:LowerRightColumn=>10 );
      request =   AsposeCellsCloud::PostWorksheetShapeRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:shapeindex=>0,:dto=>dto,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_shape(request);
    end
  end 

  describe 'post_worksheet_group_shape test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      listShape = [
          0,
          1
      ];
      request =   AsposeCellsCloud::PostWorksheetGroupShapeRequest.new(:name=>remote_name,:sheetName=>'Sheet6',:listShape=>listShape,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_group_shape(request);
    end
  end 

  describe 'post_worksheet_ungroup_shape test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostWorksheetUngroupShapeRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:shapeindex=>0,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_ungroup_shape(request);
    end
  end 
end
