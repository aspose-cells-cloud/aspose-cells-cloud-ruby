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

  describe 'get_worksheet_conditional_formattings test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetConditionalFormattingsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_conditional_formattings(request);
    end
  end 

  describe 'get_worksheet_conditional_formatting test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetConditionalFormattingRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:index=>0,:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_conditional_formatting(request);
    end
  end 

  describe 'put_worksheet_conditional_formatting test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      formatcondition = AsposeCellsCloud::FormatCondition.new(:Type=>'CellValue' ,:Operator=>'Between' ,:Formula1=>'v1' ,:Formula2=>'v2' );
      request =   AsposeCellsCloud::PutWorksheetConditionalFormattingRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:formatcondition=>formatcondition,:cellArea=>'A1:C10',:folder=>remote_folder,:storageName=>'');
      @instance.put_worksheet_conditional_formatting(request);
    end
  end 

  describe 'put_worksheet_format_condition test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutWorksheetFormatConditionRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:index=>0,:cellArea=>'A1:C10',:type=>'CellValue',:operatorType=>'Between',:formula1=>'v1',:formula2=>'v2',:folder=>remote_folder,:storageName=>'');
      @instance.put_worksheet_format_condition(request);
    end
  end 

  describe 'put_worksheet_format_condition_area test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutWorksheetFormatConditionAreaRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:index=>0,:cellArea=>'A1:C10',:folder=>remote_folder,:storageName=>'');
      @instance.put_worksheet_format_condition_area(request);
    end
  end 

  describe 'put_worksheet_format_condition_condition test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutWorksheetFormatConditionConditionRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:index=>0,:type=>'CellValue',:operatorType=>'Between',:formula1=>'v1',:formula2=>'v2',:folder=>remote_folder,:storageName=>'');
      @instance.put_worksheet_format_condition_condition(request);
    end
  end 

  describe 'delete_worksheet_conditional_formattings test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetConditionalFormattingsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_conditional_formattings(request);
    end
  end 

  describe 'delete_worksheet_conditional_formatting test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetConditionalFormattingRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:index=>0,:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_conditional_formatting(request);
    end
  end 

  describe 'delete_worksheet_conditional_formatting_area test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetConditionalFormattingAreaRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:startRow=>1,:startColumn=>1,:totalRows=>4,:totalColumns=>6,:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_conditional_formatting_area(request);
    end
  end 
end
