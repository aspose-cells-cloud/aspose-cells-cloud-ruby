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

  describe 'get_worksheet_list_objects test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetListObjectsRequest.new(:name=>remote_name,:sheetName=>'Sheet7',:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_list_objects(request);
    end
  end 

  describe 'get_worksheet_list_object test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorksheetListObjectRequest.new(:name=>remote_name,:sheetName=>'Sheet7',:listobjectindex=>0,:format=>'pdf',:folder=>remote_folder,:storageName=>'');
      @instance.get_worksheet_list_object(request);
    end
  end 

  describe 'put_worksheet_list_object test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutWorksheetListObjectRequest.new(:name=>remote_name,:sheetName=>'Sheet7',:startRow=>1,:startColumn=>1,:endRow=>6,:endColumn=>6,:folder=>remote_folder,:hasHeaders=>true,:displayName=>'true',:showTotals=>false,:storageName=>'');
      @instance.put_worksheet_list_object(request);
    end
  end 

  describe 'delete_worksheet_list_objects test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetListObjectsRequest.new(:name=>remote_name,:sheetName=>'Sheet7',:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_list_objects(request);
    end
  end 

  describe 'delete_worksheet_list_object test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorksheetListObjectRequest.new(:name=>remote_name,:sheetName=>'Sheet7',:listObjectIndex=>0,:folder=>remote_folder,:storageName=>'');
      @instance.delete_worksheet_list_object(request);
    end
  end 

  describe 'post_worksheet_list_object test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      listObject = AsposeCellsCloud::ListObject.new(:ShowHeaderRow=>true );
      request =   AsposeCellsCloud::PostWorksheetListObjectRequest.new(:name=>remote_name,:sheetName=>'Sheet7',:listObjectIndex=>0,:listObject=>listObject,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_list_object(request);
    end
  end 

  describe 'post_worksheet_list_object_convert_to_range test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostWorksheetListObjectConvertToRangeRequest.new(:name=>remote_name,:sheetName=>'Sheet7',:listObjectIndex=>0,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_list_object_convert_to_range(request);
    end
  end 

  describe 'post_worksheet_list_object_summarize_with_pivot_table test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      createPivotTableRequestPivotFieldColumns = [
          2
      ];
      createPivotTableRequestPivotFieldData = [
          1
      ];
      createPivotTableRequestPivotFieldRows = [
          0
      ];
      createPivotTableRequest = AsposeCellsCloud::CreatePivotTableRequest.new(:DestCellName=>'C1' ,:Name=>'testp' ,:SourceData=>'=Sheet2!A1:E8' ,:UseSameSource=>true ,:PivotFieldColumns=>createPivotTableRequestPivotFieldColumns ,:PivotFieldData=>createPivotTableRequestPivotFieldData ,:PivotFieldRows=>createPivotTableRequestPivotFieldRows );
      request =   AsposeCellsCloud::PostWorksheetListObjectSummarizeWithPivotTableRequest.new(:name=>remote_name,:sheetName=>'Sheet7',:listObjectIndex=>0,:destsheetName=>'Sheet2',:createPivotTableRequest=>createPivotTableRequest,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_list_object_summarize_with_pivot_table(request);
    end
  end 

  describe 'post_worksheet_list_object_sort_table test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      dataSorter = AsposeCellsCloud::DataSorter.new(:CaseSensitive=>true );
      request =   AsposeCellsCloud::PostWorksheetListObjectSortTableRequest.new(:name=>remote_name,:sheetName=>'Sheet7',:listObjectIndex=>0,:dataSorter=>dataSorter,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_list_object_sort_table(request);
    end
  end 

  describe 'post_worksheet_list_column test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      listColumn = AsposeCellsCloud::ListColumn.new(:Name=>'test cloumn' );
      request =   AsposeCellsCloud::PostWorksheetListColumnRequest.new(:name=>remote_name,:sheetName=>'Sheet7',:listObjectIndex=>0,:columnIndex=>0,:listColumn=>listColumn,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_list_column(request);
    end
  end 

  describe 'post_worksheet_list_columns_total test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      tableTotalRequeststableTotalRequest0 = AsposeCellsCloud::TableTotalRequest.new(:ListColumnIndex=>1 ,:TotalsCalculation=>'Average' );
      tableTotalRequests = [
          tableTotalRequeststableTotalRequest0
      ];
      request =   AsposeCellsCloud::PostWorksheetListColumnsTotalRequest.new(:name=>remote_name,:sheetName=>'Sheet7',:listObjectIndex=>0,:tableTotalRequests=>tableTotalRequests,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_list_columns_total(request);
    end
  end 

  describe 'post_worksheet_list_object_remove_duplicates test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestTables.xlsx'
      remote_name = 'TestTables.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostWorksheetListObjectRemoveDuplicatesRequest.new(:name=>remote_name,:sheetName=>'Sheet2',:listObjectIndex=>0,:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_list_object_remove_duplicates(request);
    end
  end 

  describe 'post_worksheet_list_object_insert_slicer test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'TestTables.xlsx'
      remote_name = 'TestTables.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostWorksheetListObjectInsertSlicerRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:listObjectIndex=>0,:columnIndex=>2,:destCellName=>'j9',:folder=>remote_folder,:storageName=>'');
      @instance.post_worksheet_list_object_insert_slicer(request);
    end
  end 
end
