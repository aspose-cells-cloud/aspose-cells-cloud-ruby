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

  describe 'get_worksheet_auto_filter test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetAutoFilterRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_auto_filter(request);
    end
  end 

  describe 'put_worksheet_date_filter test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutWorksheetDateFilterRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:range=>'A1:B1',:fieldIndex=>0,:dateTimeGroupingType=>'Year',:year=>1920,:matchBlanks=>false,:refresh=>true,:folder=>remote_folder,:storageName=>'');
      @instance.put_worksheet_date_filter(request);
    end
  end 

  describe 'put_worksheet_filter test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutWorksheetFilterRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:range=>'A1:B1',:fieldIndex=>0,:criteria=>'Year',:matchBlanks=>false,:refresh=>true,:folder=>remote_folder,:storageName=>'');
      @instance.put_worksheet_filter(request);
    end
  end 

  describe 'put_worksheet_icon_filter test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutWorksheetIconFilterRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:range=>'A1:B1',:fieldIndex=>0,:iconSetType=>'ArrowsGray3',:iconId=>1,:matchBlanks=>false,:refresh=>true,:folder=>remote_folder,:storageName=>'');
      @instance.put_worksheet_icon_filter(request);
    end
  end 

  describe 'put_worksheet_custom_filter test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutWorksheetCustomFilterRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:range=>'A1:B1',:fieldIndex=>0,:operatorType1=>'LessOrEqual',:criteria1=>'1',:matchBlanks=>false,:refresh=>true,:folder=>remote_folder,:storageName=>'');
      @instance.put_worksheet_custom_filter(request);
    end
  end 

  describe 'put_worksheet_dynamic_filter test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutWorksheetDynamicFilterRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:range=>'A1:B1',:fieldIndex=>0,:dynamicFilterType=>'BelowAverage',:matchBlanks=>false,:refresh=>true,:folder=>remote_folder,:storageName=>'');
      @instance.put_worksheet_dynamic_filter(request);
    end
  end 

  describe 'put_worksheet_filter_top10 test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutWorksheetFilterTop10Request.new(:name=>remote_name,:sheetName=>'Sheet1',:range=>'A1:B1',:fieldIndex=>0,:isTop=>true,:isPercent=>true,:itemCount=>1,:matchBlanks=>false,:refresh=>true,:folder=>remote_folder,:storageName=>'');
      @instance.put_worksheet_filter_top10(request);
    end
  end 

  describe 'put_worksheet_color_filter test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      colorFilterForegroundColorColor = AsposeCellsCloud::Color.new(:R=>48 ,:G=>48 ,:B=>48 );
      colorFilterForegroundColor = AsposeCellsCloud::CellsColor.new(:Type=>'Automatic' ,:Color=>colorFilterForegroundColorColor );
      colorFilter = AsposeCellsCloud::ColorFilterRequest.new(:Pattern=>'Solid' ,:ForegroundColor=>colorFilterForegroundColor );
      request =   AsposeCellsCloud::PutWorksheetColorFilterRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:range=>'A1:B1',:fieldIndex=>0,:colorFilter=>colorFilter,:matchBlanks=>true,:refresh=>true,:folder=>remote_folder,:storageName=>'');
      @instance.put_worksheet_color_filter(request);
    end
  end 

  describe 'post_worksheet_match_blanks test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostWorksheetMatchBlanksRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:fieldIndex=>0,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_match_blanks(request);
    end
  end 

  describe 'post_worksheet_match_non_blanks test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostWorksheetMatchNonBlanksRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:fieldIndex=>0,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_match_non_blanks(request);
    end
  end 

  describe 'post_worksheet_auto_filter_refresh test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostWorksheetAutoFilterRefreshRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_auto_filter_refresh(request);
    end
  end 

  describe 'delete_worksheet_date_filter test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetDateFilterRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:fieldIndex=>0,:dateTimeGroupingType=>'Year',:year=>1920,:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_date_filter(request);
    end
  end 

  describe 'delete_worksheet_filter test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetFilterRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:fieldIndex=>0,:criteria=>'year',:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_filter(request);
    end
  end 
end
