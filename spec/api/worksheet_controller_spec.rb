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

  describe 'get_worksheets test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetsRequest.new(:name=>remote_name,:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheets(request);
    end
  end 

  describe 'get_worksheet_with_format test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetWithFormatRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:format=>'png',:pageIndex=>0,:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_with_format(request);
    end
  end 

  describe 'put_change_visibility_worksheet test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutChangeVisibilityWorksheetRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:isVisible=>true,:folder=>remote_folder,:storageName=>'');
      @instance.put_change_visibility_worksheet(request);
    end
  end 

  describe 'put_active_worksheet test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutActiveWorksheetRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:folder=>remote_folder,:storageName=>'');
      @instance.put_active_worksheet(request);
    end
  end 

  describe 'put_insert_new_worksheet test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutInsertNewWorksheetRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:index=>1,:sheettype=>'VB',:newsheetname=>'VBASheet',:folder=>remote_folder,:storageName=>'');
      @instance.put_insert_new_worksheet(request);
    end
  end 

  describe 'put_add_new_worksheet test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutAddNewWorksheetRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:position=>0,:sheettype=>'VB',:folder=>remote_folder,:storageName=>'');
      @instance.put_add_new_worksheet(request);
    end
  end 

  describe 'delete_worksheet test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet(request);
    end
  end 

  describe 'delete_worksheets test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      matchCondition = AsposeCellsCloud::MatchConditionRequest.new(:RegexPattern=>'{*}' );
      request =   AsposeCellsCloud::DeleteWorksheetsRequest.new(:name=>remote_name,:matchCondition=>matchCondition,:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheets(request);
    end
  end 

  describe 'post_move_worksheet test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      moving = AsposeCellsCloud::WorksheetMovingRequest.new(:DestinationWorksheet=>'Sheet4' ,:Position=>'After' );
      request =   AsposeCellsCloud::PostMoveWorksheetRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:moving=>moving,:folder=>remote_folder,:storageName=>'');
      @instance.post_move_worksheet(request);
    end
  end 

  describe 'put_protect_worksheet test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      protectParameter = AsposeCellsCloud::ProtectSheetParameter.new(:ProtectionType=>'ALL' ,:Password=>'123' );
      request =   AsposeCellsCloud::PutProtectWorksheetRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:protectParameter=>protectParameter,:folder=>remote_folder,:storageName=>'');
      @instance.put_protect_worksheet(request);
    end
  end 

  describe 'delete_unprotect_worksheet test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      protectParameter = AsposeCellsCloud::ProtectSheetParameter.new(:ProtectionType=>'ALL' ,:Password=>'123' );
      request =   AsposeCellsCloud::DeleteUnprotectWorksheetRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:protectParameter=>protectParameter,:folder=>remote_folder,:storageName=>'');
      @instance.delete_unprotect_worksheet(request);
    end
  end 

  describe 'get_worksheet_text_items test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetTextItemsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_text_items(request);
    end
  end 

  describe 'get_worksheet_comments test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetCommentsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_comments(request);
    end
  end 

  describe 'get_worksheet_comment test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetCommentRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:cellName=>'B3',:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_comment(request);
    end
  end 

  describe 'put_worksheet_comment test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      comment = AsposeCellsCloud::Comment.new(:Author=>'aspose cells developer' ,:Note=>'aspose cells cloud api add comment.' );
      request =   AsposeCellsCloud::PutWorksheetCommentRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:cellName=>'C1',:comment=>comment,:folder=>remote_folder,:storageName=>'');
      @instance.put_worksheet_comment(request);
    end
  end 

  describe 'post_worksheet_comment test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      comment = AsposeCellsCloud::Comment.new(:Author=>'aspose cells developer' ,:Note=>'aspose cells cloud api update comment.' );
      request =   AsposeCellsCloud::PostWorksheetCommentRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:cellName=>'B3',:comment=>comment,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_comment(request);
    end
  end 

  describe 'delete_worksheet_comment test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetCommentRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:cellName=>'B3',:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_comment(request);
    end
  end 

  describe 'delete_worksheet_comments test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetCommentsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_comments(request);
    end
  end 

  describe 'get_worksheet_merged_cells test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetMergedCellsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_merged_cells(request);
    end
  end 

  describe 'get_worksheet_merged_cell test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetMergedCellRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:mergedCellIndex=>0,:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_merged_cell(request);
    end
  end 

  describe 'get_worksheet_calculate_formula test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetCalculateFormulaRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:formula=>'=NOW()',:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_calculate_formula(request);
    end
  end 

  describe 'post_worksheet_calculate_formula test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostWorksheetCalculateFormulaRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:formula=>'=NOW()',:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_calculate_formula(request);
    end
  end 

  describe 'post_worksheet_text_search test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostWorksheetTextSearchRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:text=>'123',:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_text_search(request);
    end
  end 

  describe 'post_worsheet_text_replace test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostWorsheetTextReplaceRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:oldValue=>'123',:newValue=>'456',:folder=>remote_folder,:storageName=>'');
      @instance.post_worsheet_text_replace(request);
    end
  end 

  describe 'post_worksheet_range_sort test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      dataSorter = AsposeCellsCloud::DataSorter.new(:CaseSensitive=>true );
      request =   AsposeCellsCloud::PostWorksheetRangeSortRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:cellArea=>'A1:C10',:dataSorter=>dataSorter,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_range_sort(request);
    end
  end 

  describe 'post_autofit_worksheet_row test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostAutofitWorksheetRowRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:rowIndex=>1,:firstColumn=>1,:lastColumn=>8,:folder=>remote_folder,:storageName=>'');
      @instance.post_autofit_worksheet_row(request);
    end
  end 

  describe 'post_autofit_worksheet_rows test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostAutofitWorksheetRowsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:startRow=>1,:endRow=>9,:onlyAuto=>true,:folder=>remote_folder,:storageName=>'');
      @instance.post_autofit_worksheet_rows(request);
    end
  end 

  describe 'post_autofit_worksheet_columns test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostAutofitWorksheetColumnsRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:startColumn=>1,:endColumn=>9,:onlyAuto=>true,:folder=>remote_folder,:storageName=>'');
      @instance.post_autofit_worksheet_columns(request);
    end
  end 

  describe 'put_worksheet_background test' do
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
      request =   AsposeCellsCloud::PutWorksheetBackgroundRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:picPath=>remote_folder + '/WaterMark.png',:folder=>remote_folder,:storageName=>'');
      @instance.put_worksheet_background(request);
    end
  end 

  describe 'delete_worksheet_background test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetBackgroundRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_background(request);
    end
  end 

  describe 'put_worksheet_freeze_panes test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutWorksheetFreezePanesRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:row=>1,:column=>1,:freezedRows=>4,:freezedColumns=>5,:folder=>remote_folder,:storageName=>'');
      @instance.put_worksheet_freeze_panes(request);
    end
  end 

  describe 'delete_worksheet_freeze_panes test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetFreezePanesRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:row=>1,:column=>1,:freezedRows=>4,:freezedColumns=>5,:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_freeze_panes(request);
    end
  end 

  describe 'post_copy_worksheet test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      options = AsposeCellsCloud::CopyOptions.new(:ColumnCharacterWidth=>true );
      request =   AsposeCellsCloud::PostCopyWorksheetRequest.new(:name=>remote_name,:sheetName=>'Sheet15',:sourceSheet=>'Sheet6',:options=>options,:sourceWorkbook=>'',:sourceFolder=>'',:folder=>remote_folder,:storageName=>'');
      @instance.post_copy_worksheet(request);
    end
  end 

  describe 'post_rename_worksheet test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostRenameWorksheetRequest.new(:name=>remote_name,:sheetName=>'Sheet5',:newname=>'Sheet55',:folder=>remote_folder,:storageName=>'');
      @instance.post_rename_worksheet(request);
    end
  end 

  describe 'post_update_worksheet_property test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      sheet = AsposeCellsCloud::Worksheet.new(:Name=>'sheet65' ,:IsGridlinesVisible=>true );
      request =   AsposeCellsCloud::PostUpdateWorksheetPropertyRequest.new(:name=>remote_name,:sheetName=>'Sheet5',:sheet=>sheet,:folder=>remote_folder,:storageName=>'');
      @instance.post_update_worksheet_property(request);
    end
  end 

  describe 'get_named_ranges test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetNamedRangesRequest.new(:name=>remote_name,:folder=>remote_folder,:storageName=>'');
      @instance.get_named_ranges(request);
    end
  end 

  describe 'get_named_range_value test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetNamedRangeValueRequest.new(:name=>remote_name,:namerange=>'Name_2',:folder=>remote_folder,:storageName=>'');
      @instance.get_named_range_value(request);
    end
  end 

  describe 'post_update_worksheet_zoom test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostUpdateWorksheetZoomRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:value=>90,:folder=>remote_folder,:storageName=>'');
      @instance.post_update_worksheet_zoom(request);
    end
  end 

  describe 'get_worksheet_page_count test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetPageCountRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_page_count(request);
    end
  end 
end
