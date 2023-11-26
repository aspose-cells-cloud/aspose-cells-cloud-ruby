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

  describe 'post_digital_signature test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      roywang_pfx = 'roywang.pfx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
      mapFiles[roywang_pfx] = ::File.open(File.expand_path("TestData/"+roywang_pfx),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostDigitalSignatureRequest.new(:name=>remote_name,:digitalsignaturefile=>remote_folder + '/roywang.pfx',:password=>'123456',:folder=>remote_folder,:storageName=>'');
      @instance.post_digital_signature(request);
    end
  end 

  describe 'post_encrypt_workbook test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      encryption = AsposeCellsCloud::WorkbookEncryptionRequest.new(:Password=>'123456' ,:EncryptionType=>'XOR' ,:KeyLength=>128 );
      request =   AsposeCellsCloud::PostEncryptWorkbookRequest.new(:name=>remote_name,:encryption=>encryption,:folder=>remote_folder,:storageName=>'');
      @instance.post_encrypt_workbook(request);
    end
  end 

  describe 'delete_decrypt_workbook test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      encryption = AsposeCellsCloud::WorkbookEncryptionRequest.new(:Password=>'123456' ,:EncryptionType=>'XOR' ,:KeyLength=>128 );
      request =   AsposeCellsCloud::DeleteDecryptWorkbookRequest.new(:name=>remote_name,:encryption=>encryption,:folder=>remote_folder,:storageName=>'');
      @instance.delete_decrypt_workbook(request);
    end
  end 

  describe 'post_protect_workbook test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      protectWorkbookRequest = AsposeCellsCloud::ProtectWorkbookRequest.new(:EncryptWithPassword=>'123456' ,:ProtectWorkbookStructure=>'ALL' );
      request =   AsposeCellsCloud::PostProtectWorkbookRequest.new(:name=>remote_name,:protectWorkbookRequest=>protectWorkbookRequest,:folder=>remote_folder,:storageName=>'');
      @instance.post_protect_workbook(request);
    end
  end 

  describe 'delete_un_protect_workbook test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteUnProtectWorkbookRequest.new(:name=>remote_name,:password=>remote_name,:folder=>remote_folder,:storageName=>'');
      @instance.delete_un_protect_workbook(request);
    end
  end 

  describe 'get_workbook_default_style test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookDefaultStyleRequest.new(:name=>remote_name,:folder=>remote_folder,:storageName=>'');
      @instance.get_workbook_default_style(request);
    end
  end 

  describe 'get_workbook_text_items test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookTextItemsRequest.new(:name=>remote_name,:folder=>remote_folder,:storageName=>'');
      @instance.get_workbook_text_items(request);
    end
  end 

  describe 'get_workbook_names test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookNamesRequest.new(:name=>remote_name,:folder=>remote_folder,:storageName=>'');
      @instance.get_workbook_names(request);
    end
  end 

  describe 'put_workbook_name test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      newName = AsposeCellsCloud::Name.new(:Text=>'name_1804' ,:Comment=>'KeepSourceFormatting' ,:RefersTo=>'=Sheet1!$I$4' );
      request =   AsposeCellsCloud::PutWorkbookNameRequest.new(:name=>remote_name,:newName=>newName,:folder=>remote_folder,:storageName=>'');
      @instance.put_workbook_name(request);
    end
  end 

  describe 'get_workbook_name test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookNameRequest.new(:name=>remote_name,:nameName=>'Name_2',:folder=>remote_folder,:storageName=>'');
      @instance.get_workbook_name(request);
    end
  end 

  describe 'post_workbook_name test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      newName = AsposeCellsCloud::Name.new(:Text=>'name_1804' ,:Comment=>'KeepSourceFormatting' ,:RefersTo=>'=Sheet1!$I$4' );
      request =   AsposeCellsCloud::PostWorkbookNameRequest.new(:name=>remote_name,:nameName=>'Name_2',:newName=>newName,:folder=>remote_folder,:storageName=>'');
      @instance.post_workbook_name(request);
    end
  end 

  describe 'get_workbook_name_value test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookNameValueRequest.new(:name=>remote_name,:nameName=>'Name_2',:folder=>remote_folder,:storageName=>'');
      @instance.get_workbook_name_value(request);
    end
  end 

  describe 'delete_workbook_names test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorkbookNamesRequest.new(:name=>remote_name,:folder=>remote_folder,:storageName=>'');
      @instance.delete_workbook_names(request);
    end
  end 

  describe 'delete_workbook_name test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorkbookNameRequest.new(:name=>remote_name,:nameName=>'Name_2',:folder=>remote_folder,:storageName=>'');
      @instance.delete_workbook_name(request);
    end
  end 

  describe 'put_document_protect_from_changes test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      password = AsposeCellsCloud::PasswordRequest.new(:Password=>'123456' );
      request =   AsposeCellsCloud::PutDocumentProtectFromChangesRequest.new(:name=>remote_name,:password=>password,:folder=>remote_folder,:storageName=>'');
      @instance.put_document_protect_from_changes(request);
    end
  end 

  describe 'delete_document_un_protect_from_changes test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteDocumentUnProtectFromChangesRequest.new(:name=>remote_name,:folder=>remote_folder,:storageName=>'');
      @instance.delete_document_un_protect_from_changes(request);
    end
  end 

  describe 'post_workbooks_merge test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      my_document_xlsx = 'myDocument.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
      mapFiles[my_document_xlsx] = ::File.open(File.expand_path("TestData/"+my_document_xlsx),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostWorkbooksMergeRequest.new(:name=>remote_name,:mergeWith=>remote_folder + '/myDocument.xlsx',:folder=>remote_folder,:storageName=>'',:mergedStorageName=>'');
      @instance.post_workbooks_merge(request);
    end
  end 

  describe 'post_workbooks_text_search test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostWorkbooksTextSearchRequest.new(:name=>remote_name,:text=>'1234',:folder=>remote_folder,:storageName=>'');
      @instance.post_workbooks_text_search(request);
    end
  end 

  describe 'post_workbook_text_replace test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostWorkbookTextReplaceRequest.new(:name=>remote_name,:oldValue=>'1234',:newValue=>'5678',:folder=>remote_folder,:storageName=>'');
      @instance.post_workbook_text_replace(request);
    end
  end 

  describe 'post_workbook_get_smart_marker_result test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      report_data_xml = 'ReportData.xml'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
      mapFiles[report_data_xml] = ::File.open(File.expand_path("TestData/"+report_data_xml),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostWorkbookGetSmartMarkerResultRequest.new(:name=>remote_name,:xmlFile=>remote_folder + '/ReportData.xml',:folder=>remote_folder,:outPath=>'OutResult/SmartMarkerResult.xlsx',:storageName=>'',:outStorageName=>'');
      @instance.post_workbook_get_smart_marker_result(request);
    end
  end 

  describe 'put_workbook_create test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      report_data_xml = 'ReportData.xml'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
      mapFiles[report_data_xml] = ::File.open(File.expand_path("TestData/"+report_data_xml),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PutWorkbookCreateRequest.new(:name=>'PutWorkbookCreate.xlsx',:templateFile=>remote_folder + '/' + remote_name,:dataFile=>remote_folder + '/ReportData.xml',:isWriteOver=>true,:folder=>remote_folder,:storageName=>'',:checkExcelRestriction=>true);
      @instance.put_workbook_create(request);
    end
  end 

  describe 'post_workbook_split test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostWorkbookSplitRequest.new(:name=>remote_name,:format=>'png',:outFolder=>'OutResult',:from=>1,:to=>5,:splitNameRule=>'sheetname',:folder=>remote_folder,:storageName=>'',:outStorageName=>'');
      @instance.post_workbook_split(request);
    end
  end 

  describe 'post_import_data test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      importOptionData = [
          1,
          2,
          3,
          4
      ];
      importOption = AsposeCellsCloud::ImportIntArrayOption.new(:DestinationWorksheet=>'Sheet1' ,:FirstColumn=>1 ,:FirstRow=>3 ,:ImportDataType=>'IntArray' ,:IsInsert=>true ,:IsVertical=>true ,:Data=>importOptionData );
      request =   AsposeCellsCloud::PostImportDataRequest.new(:name=>remote_name,:importOption=>importOption,:folder=>remote_folder,:storageName=>'');
      @instance.post_import_data(request);
    end
  end 

  describe 'post_workbook_calculate_formula test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      options = AsposeCellsCloud::CalculationOptions.new(:IgnoreError=>true ,:Recursive=>true );
      request =   AsposeCellsCloud::PostWorkbookCalculateFormulaRequest.new(:name=>remote_name,:options=>options,:ignoreError=>true,:folder=>remote_folder,:storageName=>'');
      @instance.post_workbook_calculate_formula(request);
    end
  end 

  describe 'post_autofit_workbook_rows test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostAutofitWorkbookRowsRequest.new(:name=>remote_name,:startRow=>1,:endRow=>100,:onlyAuto=>true,:folder=>remote_folder,:storageName=>'');
      @instance.post_autofit_workbook_rows(request);
    end
  end 

  describe 'post_autofit_workbook_columns test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostAutofitWorkbookColumnsRequest.new(:name=>remote_name,:startColumn=>1,:endColumn=>20,:folder=>remote_folder,:storageName=>'');
      @instance.post_autofit_workbook_columns(request);
    end
  end 

  describe 'get_workbook_settings test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookSettingsRequest.new(:name=>remote_name,:folder=>remote_folder,:storageName=>'');
      @instance.get_workbook_settings(request);
    end
  end 

  describe 'post_workbook_settings test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      settings = AsposeCellsCloud::WorkbookSettings.new(:AutoCompressPictures=>true ,:HidePivotFieldList=>true );
      request =   AsposeCellsCloud::PostWorkbookSettingsRequest.new(:name=>remote_name,:settings=>settings,:folder=>remote_folder,:storageName=>'');
      @instance.post_workbook_settings(request);
    end
  end 

  describe 'put_workbook_background test' do
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
      request =   AsposeCellsCloud::PutWorkbookBackgroundRequest.new(:name=>remote_name,:picPath=>remote_folder + '/WaterMark.png',:folder=>remote_folder,:storageName=>'');
      @instance.put_workbook_background(request);
    end
  end 

  describe 'delete_workbook_background test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::DeleteWorkbookBackgroundRequest.new(:name=>remote_name,:folder=>remote_folder,:storageName=>'');
      @instance.delete_workbook_background(request);
    end
  end 

  describe 'put_workbook_water_marker test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      textWaterMarkerRequest = AsposeCellsCloud::TextWaterMarkerRequest.new(:Text=>'Aspose Cells Cloud' ,:FontSize=>12 );
      request =   AsposeCellsCloud::PutWorkbookWaterMarkerRequest.new(:name=>remote_name,:textWaterMarkerRequest=>textWaterMarkerRequest,:folder=>remote_folder,:storageName=>'');
      @instance.put_workbook_water_marker(request);
    end
  end 

  describe 'get_page_count test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetPageCountRequest.new(:name=>remote_name,:folder=>remote_folder,:storageName=>'');
      @instance.get_page_count(request);
    end
  end 
end
