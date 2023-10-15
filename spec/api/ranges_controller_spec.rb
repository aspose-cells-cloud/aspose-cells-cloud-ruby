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

  describe 'post_worksheet_cells_ranges_copy test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      rangeOperateSource = AsposeCellsCloud::Range.new(:ColumnCount=>1 ,:ColumnWidth=>10.0 ,:FirstRow=>1 ,:RowCount=>10 );
      rangeOperateTarget = AsposeCellsCloud::Range.new(:ColumnCount=>1 ,:ColumnWidth=>10.0 ,:FirstRow=>10 ,:RowCount=>10 );
      rangeOperate = AsposeCellsCloud::RangeCopyRequest.new(:Operate=>'copydata' ,:Source=>rangeOperateSource ,:Target=>rangeOperateTarget );
      request =   AsposeCellsCloud::PostWorksheetCellsRangesCopyRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:rangeOperate=>rangeOperate,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_cells_ranges_copy(request);
    end
  end 

  describe 'post_worksheet_cells_range_merge test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      range = AsposeCellsCloud::Range.new(:ColumnCount=>1 ,:ColumnWidth=>10.0 ,:FirstRow=>1 ,:RowCount=>10 );
      request =   AsposeCellsCloud::PostWorksheetCellsRangeMergeRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:range=>range,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_cells_range_merge(request);
    end
  end 

  describe 'post_worksheet_cells_range_un_merge test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      range = AsposeCellsCloud::Range.new(:ColumnCount=>1 ,:ColumnWidth=>10.0 ,:FirstRow=>1 ,:RowCount=>10 );
      request =   AsposeCellsCloud::PostWorksheetCellsRangeUnMergeRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:range=>range,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_cells_range_un_merge(request);
    end
  end 

  describe 'post_worksheet_cells_range_style test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      rangeOperateStyleFont = AsposeCellsCloud::Font.new(:Size=>16 );
      rangeOperateStyle = AsposeCellsCloud::Style.new(:Font=>rangeOperateStyleFont );
      rangeOperateRange = AsposeCellsCloud::Range.new(:ColumnCount=>1 ,:ColumnWidth=>10.0 ,:FirstRow=>1 ,:RowCount=>10 );
      rangeOperate = AsposeCellsCloud::RangeSetStyleRequest.new(:Style=>rangeOperateStyle ,:Range=>rangeOperateRange );
      request =   AsposeCellsCloud::PostWorksheetCellsRangeStyleRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:rangeOperate=>rangeOperate,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_cells_range_style(request);
    end
  end 

  describe 'get_worksheet_cells_range_value test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetCellsRangeValueRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:namerange=>'Name_2',:firstRow=>0,:firstColumn=>0,:rowCount=>3,:columnCount=>2,:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_cells_range_value(request);
    end
  end 

  describe 'post_worksheet_cells_range_value test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      range = AsposeCellsCloud::Range.new(:ColumnCount=>1 ,:ColumnWidth=>10.0 ,:FirstRow=>1 ,:RowCount=>10 );
      request =   AsposeCellsCloud::PostWorksheetCellsRangeValueRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:range=>range,:Value=>'100',:isConverted=>true,:setStyle=>true,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_cells_range_value(request);
    end
  end 

  describe 'post_worksheet_cells_range_move_to test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      range = AsposeCellsCloud::Range.new(:ColumnCount=>1 ,:ColumnWidth=>10.0 ,:FirstRow=>1 ,:RowCount=>10 );
      request =   AsposeCellsCloud::PostWorksheetCellsRangeMoveToRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:range=>range,:destRow=>10,:destColumn=>10,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_cells_range_move_to(request);
    end
  end 

  describe 'post_worksheet_cells_range_outline_border test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      rangeOperateborderColor = AsposeCellsCloud::Color.new(:R=>48 ,:G=>48 ,:B=>48 );
      rangeOperateRange = AsposeCellsCloud::Range.new(:ColumnCount=>1 ,:ColumnWidth=>10.0 ,:FirstRow=>1 ,:RowCount=>10 );
      rangeOperate = AsposeCellsCloud::RangeSetOutlineBorderRequest.new(:borderEdge=>'LeftBorder' ,:borderStyle=>'Dotted' ,:borderColor=>rangeOperateborderColor ,:Range=>rangeOperateRange );
      request =   AsposeCellsCloud::PostWorksheetCellsRangeOutlineBorderRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:rangeOperate=>rangeOperate,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_cells_range_outline_border(request);
    end
  end 

  describe 'post_worksheet_cells_range_column_width test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      range = AsposeCellsCloud::Range.new(:ColumnCount=>1 ,:ColumnWidth=>10.0 ,:FirstRow=>1 ,:RowCount=>10 );
      request =   AsposeCellsCloud::PostWorksheetCellsRangeColumnWidthRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:range=>range,:value=>10.7,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_cells_range_column_width(request);
    end
  end 

  describe 'post_worksheet_cells_range_row_height test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      range = AsposeCellsCloud::Range.new(:ColumnCount=>1 ,:ColumnWidth=>10.0 ,:FirstRow=>1 ,:RowCount=>10 );
      request =   AsposeCellsCloud::PostWorksheetCellsRangeRowHeightRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:range=>range,:value=>10.9,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_cells_range_row_height(request);
    end
  end 

  describe 'put_worksheet_cells_range test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutWorksheetCellsRangeRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:range=>'A1:C6',:shift=>'Down',:folder=>remote_folder,:storageName=>'');
      @instance.put_worksheet_cells_range(request);
    end
  end 

  describe 'delete_worksheet_cells_range test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetCellsRangeRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:range=>'A1:C6',:shift=>'Up',:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_cells_range(request);
    end
  end 

  describe 'post_worksheet_cells_range_sort test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Group.xlsx'
      remote_name = 'Group.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      rangeSortRequestDataSorter = AsposeCellsCloud::DataSorter.new(:CaseSensitive=>true );
      rangeSortRequestCellArea = AsposeCellsCloud::Range.new(:ColumnCount=>3 ,:FirstColumn=>0 ,:FirstRow=>0 ,:RowCount=>15 );
      rangeSortRequest = AsposeCellsCloud::RangeSortRequest.new(:DataSorter=>rangeSortRequestDataSorter ,:CellArea=>rangeSortRequestCellArea );
      request =   AsposeCellsCloud::PostWorksheetCellsRangeSortRequest.new(:name=>remote_name,:sheetName=>'book1',:rangeSortRequest=>rangeSortRequest,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_cells_range_sort(request);
    end
  end 
end
