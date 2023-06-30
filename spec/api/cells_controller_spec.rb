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

  describe 'post_clear_contents test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostClearContentsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:range=>'A1:C10',:startRow=>1,:startColumn=>1,:endRow=>3,:endColumn=>3,:folder=>remote_folder,:storageName=>'');
      @instance.post_clear_contents(request);
    end
  end 

  describe 'post_clear_formats test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostClearFormatsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:range=>'A1:C10',:startRow=>1,:startColumn=>1,:endRow=>3,:endColumn=>3,:folder=>remote_folder,:storageName=>'');
      @instance.post_clear_formats(request);
    end
  end 

  describe 'post_update_worksheet_range_style test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      styleFont = AsposeCellsCloud::Font.new(:Size=>16 );
      style = AsposeCellsCloud::Style.new(:Font=>styleFont );
      request =   AsposeCellsCloud::PostUpdateWorksheetRangeStyleRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:range=>'A1:C10',:style=>style,:folder=>remote_folder,:storageName=>'');
      @instance.post_update_worksheet_range_style(request);
    end
  end 

  describe 'post_worksheet_merge test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostWorksheetMergeRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:startRow=>1,:startColumn=>1,:totalRows=>4,:totalColumns=>4,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_merge(request);
    end
  end 

  describe 'post_worksheet_unmerge test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostWorksheetUnmergeRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:startRow=>1,:startColumn=>1,:totalRows=>4,:totalColumns=>4,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_unmerge(request);
    end
  end 

  describe 'get_worksheet_cells test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetCellsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:offest=>1,:count=>10,:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_cells(request);
    end
  end 

  describe 'get_worksheet_cell test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetCellRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:cellOrMethodName=>'A1',:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_cell(request);
    end
  end 

  describe 'get_worksheet_cell_style test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetCellStyleRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:cellName=>'A1',:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_cell_style(request);
    end
  end 

  describe 'post_worksheet_cell_set_value test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostWorksheetCellSetValueRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:cellName=>'A1',:value=>'1',:type=>'int',:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_cell_set_value(request);
    end
  end 

  describe 'post_update_worksheet_cell_style test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      styleFont = AsposeCellsCloud::Font.new(:Size=>16 );
      style = AsposeCellsCloud::Style.new(:Font=>styleFont );
      request =   AsposeCellsCloud::PostUpdateWorksheetCellStyleRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:cellName=>'A1',:style=>style,:folder=>remote_folder,:storageName=>'');
      @instance.post_update_worksheet_cell_style(request);
    end
  end 

  describe 'post_set_cell_range_value test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostSetCellRangeValueRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:cellarea=>'A1:C10',:value=>'Test',:type=>'string',:folder=>remote_folder,:storageName=>'');
      @instance.post_set_cell_range_value(request);
    end
  end 

  describe 'post_copy_cell_into_cell test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostCopyCellIntoCellRequest.new(:name=>remote_name,:destCellName=>'C1',:sheetName=>'Sheet1',:worksheet=>'Sheet2',:cellname=>'A1',:row=>1,:column=>1,:folder=>remote_folder,:storageName=>'');
      @instance.post_copy_cell_into_cell(request);
    end
  end 

  describe 'get_cell_html_string test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetCellHtmlStringRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:cellName=>'A1',:folder=>remote_folder,:storageName=>'');
      @instance.get_cell_html_string(request);
    end
  end 

  describe 'post_set_cell_html_string test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostSetCellHtmlStringRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:cellName=>'A1',:folder=>remote_folder,:storageName=>'');
      @instance.post_set_cell_html_string(request);
    end
  end 

  describe 'post_cell_calculate test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      options = AsposeCellsCloud::CalculationOptions.new(:Recursive=>true ,:IgnoreError=>true );
      request =   AsposeCellsCloud::PostCellCalculateRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:cellName=>'A1',:options=>options,:folder=>remote_folder,:storageName=>'');
      @instance.post_cell_calculate(request);
    end
  end 

  describe 'post_cell_characters test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      optionsvalue0Font = AsposeCellsCloud::Font.new(:IsBold=>true ,:Size=>16 );
      optionsvalue0 = AsposeCellsCloud::FontSetting.new(:Length=>5 ,:StartIndex=>0 ,:Font=>optionsvalue0Font );
      options = [
          optionsvalue0
      ];
      request =   AsposeCellsCloud::PostCellCharactersRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:cellName=>'E36',:options=>options,:folder=>remote_folder,:storageName=>'');
      @instance.post_cell_characters(request);
    end
  end 

  describe 'get_worksheet_columns test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetColumnsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:offset=>1,:count=>10,:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_columns(request);
    end
  end 

  describe 'post_set_worksheet_column_width test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostSetWorksheetColumnWidthRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:columnIndex=>1,:width=>10.9,:count=>10,:folder=>remote_folder,:storageName=>'');
      @instance.post_set_worksheet_column_width(request);
    end
  end 

  describe 'get_worksheet_column test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetColumnRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:columnIndex=>1,:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_column(request);
    end
  end 

  describe 'put_insert_worksheet_columns test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutInsertWorksheetColumnsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:columnIndex=>1,:columns=>10,:updateReference=>true,:folder=>remote_folder,:storageName=>'');
      @instance.put_insert_worksheet_columns(request);
    end
  end 

  describe 'delete_worksheet_columns test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetColumnsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:columnIndex=>1,:columns=>10,:updateReference=>true,:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_columns(request);
    end
  end 

  describe 'post_hide_worksheet_columns test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostHideWorksheetColumnsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:startColumn=>1,:totalColumns=>10,:folder=>remote_folder,:storageName=>'');
      @instance.post_hide_worksheet_columns(request);
    end
  end 

  describe 'post_unhide_worksheet_columns test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostUnhideWorksheetColumnsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:startColumn=>1,:totalColumns=>10,:width=>10.9,:folder=>remote_folder,:storageName=>'');
      @instance.post_unhide_worksheet_columns(request);
    end
  end 

  describe 'post_group_worksheet_columns test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostGroupWorksheetColumnsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:firstIndex=>1,:lastIndex=>9,:hide=>true,:folder=>remote_folder,:storageName=>'');
      @instance.post_group_worksheet_columns(request);
    end
  end 

  describe 'post_ungroup_worksheet_columns test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostUngroupWorksheetColumnsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:firstIndex=>1,:lastIndex=>9,:folder=>remote_folder,:storageName=>'');
      @instance.post_ungroup_worksheet_columns(request);
    end
  end 

  describe 'post_copy_worksheet_columns test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostCopyWorksheetColumnsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:sourceColumnIndex=>1,:destinationColumnIndex=>19,:columnNumber=>8,:worksheet=>'Sheet2',:folder=>remote_folder,:storageName=>'');
      @instance.post_copy_worksheet_columns(request);
    end
  end 

  describe 'post_column_style test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      styleFont = AsposeCellsCloud::Font.new(:Size=>16 );
      style = AsposeCellsCloud::Style.new(:Font=>styleFont );
      request =   AsposeCellsCloud::PostColumnStyleRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:columnIndex=>1,:style=>style,:folder=>remote_folder,:storageName=>'');
      @instance.post_column_style(request);
    end
  end 

  describe 'get_worksheet_rows test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetRowsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:offset=>1,:count=>10,:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_rows(request);
    end
  end 

  describe 'get_worksheet_row test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetRowRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:rowIndex=>1,:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_row(request);
    end
  end 

  describe 'delete_worksheet_row test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetRowRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:rowIndex=>1,:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_row(request);
    end
  end 

  describe 'delete_worksheet_rows test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetRowsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:startrow=>1,:totalRows=>10,:updateReference=>true,:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_rows(request);
    end
  end 

  describe 'put_insert_worksheet_rows test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutInsertWorksheetRowsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:startrow=>1,:totalRows=>10,:updateReference=>true,:folder=>remote_folder,:storageName=>'');
      @instance.put_insert_worksheet_rows(request);
    end
  end 

  describe 'put_insert_worksheet_row test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutInsertWorksheetRowRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:rowIndex=>1,:folder=>remote_folder,:storageName=>'');
      @instance.put_insert_worksheet_row(request);
    end
  end 

  describe 'post_update_worksheet_row test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostUpdateWorksheetRowRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:rowIndex=>1,:height=>10.8,:count=>9,:folder=>remote_folder,:storageName=>'');
      @instance.post_update_worksheet_row(request);
    end
  end 

  describe 'post_hide_worksheet_rows test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostHideWorksheetRowsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:startrow=>1,:totalRows=>6,:folder=>remote_folder,:storageName=>'');
      @instance.post_hide_worksheet_rows(request);
    end
  end 

  describe 'post_unhide_worksheet_rows test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostUnhideWorksheetRowsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:startrow=>1,:totalRows=>8,:height=>10.9,:folder=>remote_folder,:storageName=>'');
      @instance.post_unhide_worksheet_rows(request);
    end
  end 

  describe 'post_group_worksheet_rows test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostGroupWorksheetRowsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:firstIndex=>1,:lastIndex=>9,:hide=>true,:folder=>remote_folder,:storageName=>'');
      @instance.post_group_worksheet_rows(request);
    end
  end 

  describe 'post_ungroup_worksheet_rows test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostUngroupWorksheetRowsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:firstIndex=>1,:lastIndex=>9,:isAll=>true,:folder=>remote_folder,:storageName=>'');
      @instance.post_ungroup_worksheet_rows(request);
    end
  end 

  describe 'post_copy_worksheet_rows test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostCopyWorksheetRowsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:sourceRowIndex=>1,:destinationRowIndex=>12,:rowNumber=>5,:worksheet=>'Sheet2',:folder=>remote_folder,:storageName=>'');
      @instance.post_copy_worksheet_rows(request);
    end
  end 

  describe 'post_row_style test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      styleFont = AsposeCellsCloud::Font.new(:Size=>16 );
      style = AsposeCellsCloud::Style.new(:Font=>styleFont );
      request =   AsposeCellsCloud::PostRowStyleRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:rowIndex=>1,:style=>style,:folder=>remote_folder,:storageName=>'');
      @instance.post_row_style(request);
    end
  end 
end
