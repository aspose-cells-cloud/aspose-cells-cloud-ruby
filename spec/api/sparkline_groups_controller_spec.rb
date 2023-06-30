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

  describe 'get_worksheet_sparkline_groups test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestCase.xlsx'
      remote_name = 'TestCase.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetSparklineGroupsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_sparkline_groups(request);
    end
  end 

  describe 'get_worksheet_sparkline_group test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestCase.xlsx'
      remote_name = 'TestCase.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetSparklineGroupRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:sparklineIndex=>0,:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_sparkline_group(request);
    end
  end 

  describe 'delete_worksheet_sparkline_groups test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestCase.xlsx'
      remote_name = 'TestCase.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetSparklineGroupsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_sparkline_groups(request);
    end
  end 

  describe 'delete_worksheet_sparkline_group test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestCase.xlsx'
      remote_name = 'TestCase.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetSparklineGroupRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:sparklineIndex=>0,:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_sparkline_group(request);
    end
  end 

  describe 'put_worksheet_sparkline_group test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestCase.xlsx'
      remote_name = 'TestCase.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutWorksheetSparklineGroupRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:type=>'Line',:dataRange=>'C6:E13',:isVertical=>false,:locationRange=>'G6:G13',:folder=>remote_folder,:storageName=>'');
      @instance.put_worksheet_sparkline_group(request);
    end
  end 

  describe 'post_worksheet_sparkline_group test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestCase.xlsx'
      remote_name = 'TestCase.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      sparklineGroup = AsposeCellsCloud::SparklineGroup.new(:DisplayHidden=>true ,:PlotRightToLeft=>true );
      request =   AsposeCellsCloud::PostWorksheetSparklineGroupRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:sparklineGroupIndex=>0,:sparklineGroup=>sparklineGroup,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_sparkline_group(request);
    end
  end 
end
