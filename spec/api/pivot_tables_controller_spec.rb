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

  describe 'get_worksheet_pivot_tables test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestCase.xlsx'
      remote_name = 'TestCase.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetPivotTablesRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_pivot_tables(request);
    end
  end 

  describe 'get_worksheet_pivot_table test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestCase.xlsx'
      remote_name = 'TestCase.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetPivotTableRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:pivottableIndex=>0,:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_pivot_table(request);
    end
  end 

  describe 'get_pivot_table_field test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestCase.xlsx'
      remote_name = 'TestCase.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetPivotTableFieldRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:pivotTableIndex=>0,:pivotFieldIndex=>0,:pivotFieldType=>'Row',:folder=>remote_folder,:storageName=>'');
      @instance.get_pivot_table_field(request);
    end
  end 

  describe 'get_worksheet_pivot_table_filters test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestCase.xlsx'
      remote_name = 'TestCase.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetPivotTableFiltersRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:pivotTableIndex=>0,:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_pivot_table_filters(request);
    end
  end 

  describe 'get_worksheet_pivot_table_filter test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestCase.xlsx'
      remote_name = 'TestCase.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetPivotTableFilterRequest.new(:name=>remote_name,:sheetName=>'Sheet3',:pivotTableIndex=>0,:filterIndex=>0,:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_pivot_table_filter(request);
    end
  end 

  describe 'put_worksheet_pivot_table test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestCase.xlsx'
      remote_name = 'TestCase.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutWorksheetPivotTableRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:folder=>remote_folder,:sourceData=>'=Sheet1!C6:E13',:destCellName=>'C1',:tableName=>'TestPivot',:useSameSource=>true,:storageName=>'');
      @instance.put_worksheet_pivot_table(request);
    end
  end 

  describe 'put_pivot_table_field test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestCase.xlsx'
      remote_name = 'TestCase.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      pivotTableFieldRequestData = [
          0
      ];
      pivotTableFieldRequest = AsposeCellsCloud::PivotTableFieldRequest.new(:Data=>pivotTableFieldRequestData );
      request =   AsposeCellsCloud::PutPivotTableFieldRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:pivotTableIndex=>0,:pivotFieldType=>'Row',:pivotTableFieldRequest=>pivotTableFieldRequest,:needReCalculate=>true,:folder=>remote_folder,:storageName=>'');
      @instance.put_pivot_table_field(request);
    end
  end 

  describe 'put_worksheet_pivot_table_filter test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestCase.xlsx'
      remote_name = 'TestCase.xlsx'

      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)

      top10Filter = AsposeCellsCloud::Top10Filter.new(:ItemCount=>1 ,:IsPercent=>true ,:FieldIndex=>0 );
      filterColumn = AsposeCellsCloud::FilterColumn.new(:FilterType=>'Top10Filter', :Top10Filter=>top10Filter );
      autoFilter = AsposeCellsCloud::AutoFilter.new(:FilterColumns=>[filterColumn] );
      filter = AsposeCellsCloud::PivotFilter.new(:FieldIndex=>0 ,:FilterType=>'Count' , :AutoFilter=>autoFilter );
      request =   AsposeCellsCloud::PutWorksheetPivotTableFilterRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:pivotTableIndex=>0,:filter=>filter,:needReCalculate=>true,:folder=>remote_folder,:storageName=>'');
      @instance.put_worksheet_pivot_table_filter(request);
    end
  end 

  describe 'post_pivot_table_field_hide_item test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestCase.xlsx'
      remote_name = 'TestCase.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostPivotTableFieldHideItemRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:pivotTableIndex=>0,:pivotFieldType=>'Row',:fieldIndex=>0,:itemIndex=>1,:isHide=>true,:needReCalculate=>true,:folder=>remote_folder,:storageName=>'');
      @instance.post_pivot_table_field_hide_item(request);
    end
  end 

  describe 'post_pivot_table_field_move_to test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestCase.xlsx'
      remote_name = 'TestCase.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostPivotTableFieldMoveToRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:pivotTableIndex=>0,:fieldIndex=>0,:from=>'Row',:to=>'Column',:folder=>remote_folder,:storageName=>'');
      @instance.post_pivot_table_field_move_to(request);
    end
  end 

  describe 'post_pivot_table_cell_style test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestCase.xlsx'
      remote_name = 'TestCase.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      styleFont = AsposeCellsCloud::Font.new(:Size=>16 );
      style = AsposeCellsCloud::Style.new(:Font=>styleFont );
      request =   AsposeCellsCloud::PostPivotTableCellStyleRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:pivotTableIndex=>0,:column=>1,:row=>1,:style=>style,:needReCalculate=>true,:folder=>remote_folder,:storageName=>'');
      @instance.post_pivot_table_cell_style(request);
    end
  end 

  describe 'post_pivot_table_style test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestCase.xlsx'
      remote_name = 'TestCase.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      styleFont = AsposeCellsCloud::Font.new(:Size=>16 );
      style = AsposeCellsCloud::Style.new(:Font=>styleFont );
      request =   AsposeCellsCloud::PostPivotTableStyleRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:pivotTableIndex=>0,:style=>style,:needReCalculate=>true,:folder=>remote_folder,:storageName=>'');
      @instance.post_pivot_table_style(request);
    end
  end 

  describe 'post_pivot_table_update_pivot_fields test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestCase.xlsx'
      remote_name = 'TestCase.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      pivotField = AsposeCellsCloud::PivotField.new(:ShowCompact=>true );
      request =   AsposeCellsCloud::PostPivotTableUpdatePivotFieldsRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:pivotTableIndex=>0,:pivotFieldType=>'Row',:pivotField=>pivotField,:needReCalculate=>true,:folder=>remote_folder,:storageName=>'');
      @instance.post_pivot_table_update_pivot_fields(request);
    end
  end 

  describe 'post_pivot_table_update_pivot_field test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestCase.xlsx'
      remote_name = 'TestCase.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      pivotField = AsposeCellsCloud::PivotField.new(:ShowCompact=>true );
      request =   AsposeCellsCloud::PostPivotTableUpdatePivotFieldRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:pivotTableIndex=>0,:pivotFieldIndex=>0,:pivotFieldType=>'Row',:pivotField=>pivotField,:needReCalculate=>true,:folder=>remote_folder,:storageName=>'');
      @instance.post_pivot_table_update_pivot_field(request);
    end
  end 

  describe 'post_worksheet_pivot_table_calculate test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestCase.xlsx'
      remote_name = 'TestCase.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostWorksheetPivotTableCalculateRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:pivotTableIndex=>0,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_pivot_table_calculate(request);
    end
  end 

  describe 'post_worksheet_pivot_table_move test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestCase.xlsx'
      remote_name = 'TestCase.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostWorksheetPivotTableMoveRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:pivotTableIndex=>0,:row=>1,:column=>1,:destCellName=>'C10',:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_pivot_table_move(request);
    end
  end 

  describe 'delete_worksheet_pivot_tables test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestCase.xlsx'
      remote_name = 'TestCase.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetPivotTablesRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_pivot_tables(request);
    end
  end 

  describe 'delete_worksheet_pivot_table test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestCase.xlsx'
      remote_name = 'TestCase.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetPivotTableRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:pivotTableIndex=>0,:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_pivot_table(request);
    end
  end 

  describe 'delete_pivot_table_field test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestCase.xlsx'
      remote_name = 'TestCase.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      pivotTableFieldRequestData = [
          0
      ];
      pivotTableFieldRequest = AsposeCellsCloud::PivotTableFieldRequest.new(:Data=>pivotTableFieldRequestData );
      request =   AsposeCellsCloud::DeletePivotTableFieldRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:pivotTableIndex=>0,:pivotFieldType=>'Row',:pivotTableFieldRequest=>pivotTableFieldRequest,:folder=>remote_folder,:storageName=>'');
      @instance.delete_pivot_table_field(request);
    end
  end 

  describe 'delete_worksheet_pivot_table_filters test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestCase.xlsx'
      remote_name = 'TestCase.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetPivotTableFiltersRequest.new(:name=>remote_name,:sheetName=>'Sheet3',:pivotTableIndex=>0,:needReCalculate=>true,:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_pivot_table_filters(request);
    end
  end 

  describe 'delete_worksheet_pivot_table_filter test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestCase.xlsx'
      remote_name = 'TestCase.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetPivotTableFilterRequest.new(:name=>remote_name,:sheetName=>'Sheet3',:pivotTableIndex=>0,:fieldIndex=>0,:needReCalculate=>true,:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_pivot_table_filter(request);
    end
  end 
end
