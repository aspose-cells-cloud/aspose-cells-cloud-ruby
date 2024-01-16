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

  describe 'get_worksheet_charts test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetChartsRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_charts(request);
    end
  end 

  describe 'get_worksheet_chart test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetChartRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:chartNumber=>0,:format=>'png',:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_chart(request);
    end
  end 

  describe 'put_worksheet_chart test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutWorksheetChartRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:chartType=>'Pie',:upperLeftRow=>5,:upperLeftColumn=>5,:lowerRightRow=>10,:lowerRightColumn=>10,:area=>'C7:D11',:isVertical=>true,:title=>'Aspose Chart',:folder=>remote_folder,:storageName=>'');
      @instance.put_worksheet_chart(request);
    end
  end 

  describe 'delete_worksheet_chart test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetChartRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:chartIndex=>0,:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_chart(request);
    end
  end 

  describe 'post_worksheet_chart test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      chart = AsposeCellsCloud::Chart.new(:ShowLegend=>true ,:ShowDataTable=>true );
      request =   AsposeCellsCloud::PostWorksheetChartRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:chartIndex=>0,:chart=>chart,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_chart(request);
    end
  end 

  describe 'get_worksheet_chart_legend test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetChartLegendRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:chartIndex=>0,:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_chart_legend(request);
    end
  end 

  describe 'post_worksheet_chart_legend test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      legend = AsposeCellsCloud::Legend.new(:Position=>'Top' );
      request =   AsposeCellsCloud::PostWorksheetChartLegendRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:chartIndex=>0,:legend=>legend,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_chart_legend(request);
    end
  end 

  describe 'put_worksheet_chart_legend test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutWorksheetChartLegendRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:chartIndex=>0,:folder=>remote_folder,:storageName=>'');
      @instance.put_worksheet_chart_legend(request);
    end
  end 

  describe 'delete_worksheet_chart_legend test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetChartLegendRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:chartIndex=>0,:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_chart_legend(request);
    end
  end 

  describe 'delete_worksheet_charts test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetChartsRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_charts(request);
    end
  end 

  describe 'get_worksheet_chart_title test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetChartTitleRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:chartIndex=>0,:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_chart_title(request);
    end
  end 

  describe 'post_worksheet_chart_title test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      title = AsposeCellsCloud::Title.new(:IsVisible=>true );
      request =   AsposeCellsCloud::PostWorksheetChartTitleRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:chartIndex=>0,:title=>title,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_chart_title(request);
    end
  end 

  describe 'put_worksheet_chart_title test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      title = AsposeCellsCloud::Title.new(:IsVisible=>true );
      request =   AsposeCellsCloud::PutWorksheetChartTitleRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:chartIndex=>0,:title=>title,:folder=>remote_folder,:storageName=>'');
      @instance.put_worksheet_chart_title(request);
    end
  end 

  describe 'delete_worksheet_chart_title test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetChartTitleRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:chartIndex=>0,:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_chart_title(request);
    end
  end 
end
