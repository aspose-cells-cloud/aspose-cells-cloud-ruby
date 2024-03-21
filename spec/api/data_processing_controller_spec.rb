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

  describe 'post_workbook_data_cleansing test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'BookCsvDuplicateData.csv'
      remote_name = 'BookCsvDuplicateData.csv'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      dataCleansingDataFillDataFillDefaultValue = AsposeCellsCloud::DataFillValue.new(:DefaultDate=>'2024-01-01' ,:DefaultNumber=>0 ,:DefaultBoolean=>false );
      dataCleansingDataFill = AsposeCellsCloud::DataFill.new(:DataFillDefaultValue=>dataCleansingDataFillDataFillDefaultValue );
      dataCleansing = AsposeCellsCloud::DataCleansing.new(:NeedFillData=>true ,:DataFill=>dataCleansingDataFill );
      request =   AsposeCellsCloud::PostWorkbookDataCleansingRequest.new(:name=>remote_name,:dataCleansing=>dataCleansing,:folder=>remote_folder,:storageName=>'');
      @instance.post_workbook_data_cleansing(request);
    end
  end 

  describe 'post_workbook_data_deduplication test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'BookCsvDuplicateData.csv'
      remote_name = 'BookCsvDuplicateData.csv'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      deduplicationRegion = AsposeCellsCloud::DeduplicationRegion.new();
      request =   AsposeCellsCloud::PostWorkbookDataDeduplicationRequest.new(:name=>remote_name,:deduplicationRegion=>deduplicationRegion,:folder=>remote_folder,:storageName=>'');
      @instance.post_workbook_data_deduplication(request);
    end
  end 

  describe 'post_workbook_data_fill test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'BookCsvDuplicateData.csv'
      remote_name = 'BookCsvDuplicateData.csv'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      dataFillDataFillDefaultValue = AsposeCellsCloud::DataFillValue.new(:DefaultDate=>'2024-01-01' ,:DefaultNumber=>0 ,:DefaultBoolean=>false );
      dataFill = AsposeCellsCloud::DataFill.new(:DataFillDefaultValue=>dataFillDataFillDefaultValue );
      request =   AsposeCellsCloud::PostWorkbookDataFillRequest.new(:name=>remote_name,:dataFill=>dataFill,:folder=>remote_folder,:storageName=>'');
      @instance.post_workbook_data_fill(request);
    end
  end 
end
