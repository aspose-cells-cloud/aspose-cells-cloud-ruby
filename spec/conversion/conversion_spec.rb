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

  describe 'workbook_save_as_csv__dot_net_sdk_out_result_post_excel_save_ascsv test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "csv"
      newfilename = "DotNetSDK/OutResult/PostExcelSaveAs.csv"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      saveOptions = AsposeCellsCloud::PdfSaveOptions.new(:SaveFormat=>format );
      request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
      @instance.post_workbook_save_as(request);
    end
  end 

  describe 'workbook_save_as_xls__dot_net_sdk_out_result_post_excel_save_asxls test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xls"
      newfilename = "DotNetSDK/OutResult/PostExcelSaveAs.xls"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      saveOptions = AsposeCellsCloud::PdfSaveOptions.new(:SaveFormat=>format );
      request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
      @instance.post_workbook_save_as(request);
    end
  end 

  describe 'workbook_save_as_html__dot_net_sdk_out_result_post_excel_save_ashtml test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "html"
      newfilename = "DotNetSDK/OutResult/PostExcelSaveAs.html"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      saveOptions = AsposeCellsCloud::PdfSaveOptions.new(:SaveFormat=>format );
      request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
      @instance.post_workbook_save_as(request);
    end
  end 

  describe 'workbook_save_as_mhtml__dot_net_sdk_out_result_post_excel_save_asmhtml test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "mhtml"
      newfilename = "DotNetSDK/OutResult/PostExcelSaveAs.mhtml"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      saveOptions = AsposeCellsCloud::PdfSaveOptions.new(:SaveFormat=>format );
      request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
      @instance.post_workbook_save_as(request);
    end
  end 

  describe 'workbook_save_as_ods__dot_net_sdk_out_result_post_excel_save_asods test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "ods"
      newfilename = "DotNetSDK/OutResult/PostExcelSaveAs.ods"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      saveOptions = AsposeCellsCloud::PdfSaveOptions.new(:SaveFormat=>format );
      request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
      @instance.post_workbook_save_as(request);
    end
  end 

  describe 'workbook_save_as_pdf__dot_net_sdk_out_result_post_excel_save_aspdf test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "pdf"
      newfilename = "DotNetSDK/OutResult/PostExcelSaveAs.pdf"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      saveOptions = AsposeCellsCloud::PdfSaveOptions.new(:SaveFormat=>format );
      request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
      @instance.post_workbook_save_as(request);
    end
  end 

  describe 'workbook_save_as_xml__dot_net_sdk_out_result_post_excel_save_asxml test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xml"
      newfilename = "DotNetSDK/OutResult/PostExcelSaveAs.xml"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      saveOptions = AsposeCellsCloud::PdfSaveOptions.new(:SaveFormat=>format );
      request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
      @instance.post_workbook_save_as(request);
    end
  end 

  describe 'workbook_save_as_txt__dot_net_sdk_out_result_post_excel_save_astxt test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "txt"
      newfilename = "DotNetSDK/OutResult/PostExcelSaveAs.txt"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      saveOptions = AsposeCellsCloud::PdfSaveOptions.new(:SaveFormat=>format );
      request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
      @instance.post_workbook_save_as(request);
    end
  end 

  describe 'workbook_save_as_tif__dot_net_sdk_out_result_post_excel_save_astif test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "tif"
      newfilename = "DotNetSDK/OutResult/PostExcelSaveAs.tif"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      saveOptions = AsposeCellsCloud::PdfSaveOptions.new(:SaveFormat=>format );
      request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
      @instance.post_workbook_save_as(request);
    end
  end 

  describe 'workbook_save_as_xlsb__dot_net_sdk_out_result_post_excel_save_asxlsb test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xlsb"
      newfilename = "DotNetSDK/OutResult/PostExcelSaveAs.xlsb"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      saveOptions = AsposeCellsCloud::PdfSaveOptions.new(:SaveFormat=>format );
      request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
      @instance.post_workbook_save_as(request);
    end
  end 

  describe 'workbook_save_as_xlsm__dot_net_sdk_out_result_post_excel_save_asxlsm test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xlsm"
      newfilename = "DotNetSDK/OutResult/PostExcelSaveAs.xlsm"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      saveOptions = AsposeCellsCloud::PdfSaveOptions.new(:SaveFormat=>format );
      request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
      @instance.post_workbook_save_as(request);
    end
  end 

  describe 'workbook_save_as_xlsx__dot_net_sdk_out_result_post_excel_save_asxlsx test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xlsx"
      newfilename = "DotNetSDK/OutResult/PostExcelSaveAs.xlsx"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      saveOptions = AsposeCellsCloud::PdfSaveOptions.new(:SaveFormat=>format );
      request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
      @instance.post_workbook_save_as(request);
    end
  end 

  describe 'workbook_save_as_xltm__dot_net_sdk_out_result_post_excel_save_asxltm test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xltm"
      newfilename = "DotNetSDK/OutResult/PostExcelSaveAs.xltm"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      saveOptions = AsposeCellsCloud::PdfSaveOptions.new(:SaveFormat=>format );
      request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
      @instance.post_workbook_save_as(request);
    end
  end 

  describe 'workbook_save_as_xltx__dot_net_sdk_out_result_post_excel_save_asxltx test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xltx"
      newfilename = "DotNetSDK/OutResult/PostExcelSaveAs.xltx"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      saveOptions = AsposeCellsCloud::PdfSaveOptions.new(:SaveFormat=>format );
      request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
      @instance.post_workbook_save_as(request);
    end
  end 

  describe 'workbook_save_as_xps__dot_net_sdk_out_result_post_excel_save_asxps test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xps"
      newfilename = "DotNetSDK/OutResult/PostExcelSaveAs.xps"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      saveOptions = AsposeCellsCloud::PdfSaveOptions.new(:SaveFormat=>format );
      request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
      @instance.post_workbook_save_as(request);
    end
  end 

  describe 'workbook_save_as_png__dot_net_sdk_out_result_post_excel_save_aspng test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "png"
      newfilename = "DotNetSDK/OutResult/PostExcelSaveAs.png"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      saveOptions = AsposeCellsCloud::PdfSaveOptions.new(:SaveFormat=>format );
      request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
      @instance.post_workbook_save_as(request);
    end
  end 

  describe 'workbook_save_as_jpg__dot_net_sdk_out_result_post_excel_save_asjpg test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "jpg"
      newfilename = "DotNetSDK/OutResult/PostExcelSaveAs.jpg"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      saveOptions = AsposeCellsCloud::PdfSaveOptions.new(:SaveFormat=>format );
      request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
      @instance.post_workbook_save_as(request);
    end
  end 

  describe 'workbook_save_as_gif__dot_net_sdk_out_result_post_excel_save_asgif test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "gif"
      newfilename = "DotNetSDK/OutResult/PostExcelSaveAs.gif"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      saveOptions = AsposeCellsCloud::PdfSaveOptions.new(:SaveFormat=>format );
      request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
      @instance.post_workbook_save_as(request);
    end
  end 

  describe 'workbook_save_as_emf__dot_net_sdk_out_result_post_excel_save_asemf test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "emf"
      newfilename = "DotNetSDK/OutResult/PostExcelSaveAs.emf"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      saveOptions = AsposeCellsCloud::PdfSaveOptions.new(:SaveFormat=>format );
      request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
      @instance.post_workbook_save_as(request);
    end
  end 

  describe 'workbook_save_as_bmp__dot_net_sdk_out_result_post_excel_save_asbmp test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "bmp"
      newfilename = "DotNetSDK/OutResult/PostExcelSaveAs.bmp"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      saveOptions = AsposeCellsCloud::PdfSaveOptions.new(:SaveFormat=>format );
      request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
      @instance.post_workbook_save_as(request);
    end
  end 

  describe 'workbook_save_as_md__dot_net_sdk_out_result_post_excel_save_asmd test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "md"
      newfilename = "DotNetSDK/OutResult/PostExcelSaveAs.md"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      saveOptions = AsposeCellsCloud::PdfSaveOptions.new(:SaveFormat=>format );
      request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
      @instance.post_workbook_save_as(request);
    end
  end 

  describe 'workbook_save_as_numbers__dot_net_sdk_out_result_post_excel_save_asnumbers test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "numbers"
      newfilename = "DotNetSDK/OutResult/PostExcelSaveAs.numbers"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      saveOptions = AsposeCellsCloud::PdfSaveOptions.new(:SaveFormat=>format );
      request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
      @instance.post_workbook_save_as(request);
    end
  end 

  describe 'workbook_save_as_wmf__dot_net_sdk_out_result_post_excel_save_aswmf test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "wmf"
      newfilename = "DotNetSDK/OutResult/PostExcelSaveAs.wmf"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      saveOptions = AsposeCellsCloud::PdfSaveOptions.new(:SaveFormat=>format );
      request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
      @instance.post_workbook_save_as(request);
    end
  end 

  describe 'workbook_save_as_svg__dot_net_sdk_out_result_post_excel_save_assvg test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "svg"
      newfilename = "DotNetSDK/OutResult/PostExcelSaveAs.svg"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      saveOptions = AsposeCellsCloud::PdfSaveOptions.new(:SaveFormat=>format );
      request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
      @instance.post_workbook_save_as(request);
    end
  end 

  describe 'workbook_save_as_docx__dot_net_sdk_out_result_post_excel_save_asdocx test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "docx"
      newfilename = "DotNetSDK/OutResult/PostExcelSaveAs.docx"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      saveOptions = AsposeCellsCloud::PdfSaveOptions.new(:SaveFormat=>format );
      request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
      @instance.post_workbook_save_as(request);
    end
  end 

  describe 'workbook_save_as_pptx__dot_net_sdk_out_result_post_excel_save_aspptx test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "pptx"
      newfilename = "DotNetSDK/OutResult/PostExcelSaveAs.pptx"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      saveOptions = AsposeCellsCloud::PdfSaveOptions.new(:SaveFormat=>format );
      request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
      @instance.post_workbook_save_as(request);
    end
  end 

  describe 'workbook_save_as_json__dot_net_sdk_out_result_post_excel_save_asjson test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "json"
      newfilename = "DotNetSDK/OutResult/PostExcelSaveAs.json"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      saveOptions = AsposeCellsCloud::PdfSaveOptions.new(:SaveFormat=>format );
      request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
      @instance.post_workbook_save_as(request);
    end
  end 

  describe 'workbook_save_as_sql__dot_net_sdk_out_result_post_excel_save_assql test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "sql"
      newfilename = "DotNetSDK/OutResult/PostExcelSaveAs.sql"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      saveOptions = AsposeCellsCloud::PdfSaveOptions.new(:SaveFormat=>format );
      request =   AsposeCellsCloud::PostWorkbookSaveAsRequest.new(:name=>remote_name,:newfilename=>newfilename,:saveOptions=>saveOptions,:folder=>remote_folder);
      @instance.post_workbook_save_as(request);
    end
  end 

  describe 'get_workbook_format_csv test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "csv"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookRequest.new(:name=>remote_name,:format=>format,:folder=>remote_folder);
      @instance.get_workbook(request);
    end
  end 

  describe 'get_workbook_format_xls test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xls"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookRequest.new(:name=>remote_name,:format=>format,:folder=>remote_folder);
      @instance.get_workbook(request);
    end
  end 

  describe 'get_workbook_format_html test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "html"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookRequest.new(:name=>remote_name,:format=>format,:folder=>remote_folder);
      @instance.get_workbook(request);
    end
  end 

  describe 'get_workbook_format_mhtml test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "mhtml"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookRequest.new(:name=>remote_name,:format=>format,:folder=>remote_folder);
      @instance.get_workbook(request);
    end
  end 

  describe 'get_workbook_format_ods test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "ods"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookRequest.new(:name=>remote_name,:format=>format,:folder=>remote_folder);
      @instance.get_workbook(request);
    end
  end 

  describe 'get_workbook_format_pdf test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "pdf"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookRequest.new(:name=>remote_name,:format=>format,:folder=>remote_folder);
      @instance.get_workbook(request);
    end
  end 

  describe 'get_workbook_format_xml test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xml"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookRequest.new(:name=>remote_name,:format=>format,:folder=>remote_folder);
      @instance.get_workbook(request);
    end
  end 

  describe 'get_workbook_format_txt test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "txt"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookRequest.new(:name=>remote_name,:format=>format,:folder=>remote_folder);
      @instance.get_workbook(request);
    end
  end 

  describe 'get_workbook_format_tif test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "tif"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookRequest.new(:name=>remote_name,:format=>format,:folder=>remote_folder);
      @instance.get_workbook(request);
    end
  end 

  describe 'get_workbook_format_xlsb test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xlsb"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookRequest.new(:name=>remote_name,:format=>format,:folder=>remote_folder);
      @instance.get_workbook(request);
    end
  end 

  describe 'get_workbook_format_xlsm test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xlsm"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookRequest.new(:name=>remote_name,:format=>format,:folder=>remote_folder);
      @instance.get_workbook(request);
    end
  end 

  describe 'get_workbook_format_xlsx test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xlsx"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookRequest.new(:name=>remote_name,:format=>format,:folder=>remote_folder);
      @instance.get_workbook(request);
    end
  end 

  describe 'get_workbook_format_xltm test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xltm"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookRequest.new(:name=>remote_name,:format=>format,:folder=>remote_folder);
      @instance.get_workbook(request);
    end
  end 

  describe 'get_workbook_format_xltx test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xltx"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookRequest.new(:name=>remote_name,:format=>format,:folder=>remote_folder);
      @instance.get_workbook(request);
    end
  end 

  describe 'get_workbook_format_xps test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xps"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookRequest.new(:name=>remote_name,:format=>format,:folder=>remote_folder);
      @instance.get_workbook(request);
    end
  end 

  describe 'get_workbook_format_png test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "png"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookRequest.new(:name=>remote_name,:format=>format,:folder=>remote_folder);
      @instance.get_workbook(request);
    end
  end 

  describe 'get_workbook_format_jpg test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "jpg"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookRequest.new(:name=>remote_name,:format=>format,:folder=>remote_folder);
      @instance.get_workbook(request);
    end
  end 

  describe 'get_workbook_format_gif test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "gif"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookRequest.new(:name=>remote_name,:format=>format,:folder=>remote_folder);
      @instance.get_workbook(request);
    end
  end 

  describe 'get_workbook_format_emf test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "emf"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookRequest.new(:name=>remote_name,:format=>format,:folder=>remote_folder);
      @instance.get_workbook(request);
    end
  end 

  describe 'get_workbook_format_bmp test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "bmp"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookRequest.new(:name=>remote_name,:format=>format,:folder=>remote_folder);
      @instance.get_workbook(request);
    end
  end 

  describe 'get_workbook_format_md test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "md"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookRequest.new(:name=>remote_name,:format=>format,:folder=>remote_folder);
      @instance.get_workbook(request);
    end
  end 

  describe 'get_workbook_format_numbers test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "numbers"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookRequest.new(:name=>remote_name,:format=>format,:folder=>remote_folder);
      @instance.get_workbook(request);
    end
  end 

  describe 'get_workbook_format_wmf test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "wmf"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookRequest.new(:name=>remote_name,:format=>format,:folder=>remote_folder);
      @instance.get_workbook(request);
    end
  end 

  describe 'get_workbook_format_svg test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "svg"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookRequest.new(:name=>remote_name,:format=>format,:folder=>remote_folder);
      @instance.get_workbook(request);
    end
  end 

  describe 'get_workbook_format_docx test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "docx"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookRequest.new(:name=>remote_name,:format=>format,:folder=>remote_folder);
      @instance.get_workbook(request);
    end
  end 

  describe 'get_workbook_format_pptx test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "pptx"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookRequest.new(:name=>remote_name,:format=>format,:folder=>remote_folder);
      @instance.get_workbook(request);
    end
  end 

  describe 'get_workbook_format_json test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "json"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookRequest.new(:name=>remote_name,:format=>format,:folder=>remote_folder);
      @instance.get_workbook(request);
    end
  end 

  describe 'get_workbook_format_sql test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "sql"

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::GetWorkbookRequest.new(:name=>remote_name,:format=>format,:folder=>remote_folder);
      @instance.get_workbook(request);
    end
  end 

  describe 'convert_workbook_csv test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "csv"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_xls test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xls"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_html test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "html"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_mhtml test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "mhtml"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_ods test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "ods"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_pdf test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "pdf"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_xml test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xml"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_txt test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "txt"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_tif test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "tif"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_xlsb test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xlsb"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_xlsm test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xlsm"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_xlsx test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xlsx"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_xltm test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xltm"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_xltx test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xltx"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_xps test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xps"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_png test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "png"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_jpg test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "jpg"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_gif test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "gif"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_emf test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "emf"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_bmp test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "bmp"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_md test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "md"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_numbers test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "numbers"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_wmf test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "wmf"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_svg test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "svg"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_docx test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "docx"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_pptx test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "pptx"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_json test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "json"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_sql test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "sql"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_save_cloud_csv__dot_net_sdk_out_result_convert_workbookcsv test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "csv"
      out_path = "DotNetSDK/OutResult/ConvertWorkbook.csv"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format,:outPath=>out_path);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_save_cloud_xls__dot_net_sdk_out_result_convert_workbookxls test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xls"
      out_path = "DotNetSDK/OutResult/ConvertWorkbook.xls"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format,:outPath=>out_path);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_save_cloud_html__dot_net_sdk_out_result_convert_workbookhtml test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "html"
      out_path = "DotNetSDK/OutResult/ConvertWorkbook.html"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format,:outPath=>out_path);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_save_cloud_mhtml__dot_net_sdk_out_result_convert_workbookmhtml test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "mhtml"
      out_path = "DotNetSDK/OutResult/ConvertWorkbook.mhtml"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format,:outPath=>out_path);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_save_cloud_ods__dot_net_sdk_out_result_convert_workbookods test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "ods"
      out_path = "DotNetSDK/OutResult/ConvertWorkbook.ods"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format,:outPath=>out_path);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_save_cloud_pdf__dot_net_sdk_out_result_convert_workbookpdf test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "pdf"
      out_path = "DotNetSDK/OutResult/ConvertWorkbook.pdf"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format,:outPath=>out_path);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_save_cloud_xml__dot_net_sdk_out_result_convert_workbookxml test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xml"
      out_path = "DotNetSDK/OutResult/ConvertWorkbook.xml"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format,:outPath=>out_path);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_save_cloud_txt__dot_net_sdk_out_result_convert_workbooktxt test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "txt"
      out_path = "DotNetSDK/OutResult/ConvertWorkbook.txt"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format,:outPath=>out_path);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_save_cloud_tif__dot_net_sdk_out_result_convert_workbooktif test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "tif"
      out_path = "DotNetSDK/OutResult/ConvertWorkbook.tif"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format,:outPath=>out_path);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_save_cloud_xlsb__dot_net_sdk_out_result_convert_workbookxlsb test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xlsb"
      out_path = "DotNetSDK/OutResult/ConvertWorkbook.xlsb"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format,:outPath=>out_path);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_save_cloud_xlsm__dot_net_sdk_out_result_convert_workbookxlsm test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xlsm"
      out_path = "DotNetSDK/OutResult/ConvertWorkbook.xlsm"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format,:outPath=>out_path);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_save_cloud_xlsx__dot_net_sdk_out_result_convert_workbookxlsx test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xlsx"
      out_path = "DotNetSDK/OutResult/ConvertWorkbook.xlsx"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format,:outPath=>out_path);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_save_cloud_xltm__dot_net_sdk_out_result_convert_workbookxltm test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xltm"
      out_path = "DotNetSDK/OutResult/ConvertWorkbook.xltm"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format,:outPath=>out_path);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_save_cloud_xltx__dot_net_sdk_out_result_convert_workbookxltx test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xltx"
      out_path = "DotNetSDK/OutResult/ConvertWorkbook.xltx"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format,:outPath=>out_path);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_save_cloud_xps__dot_net_sdk_out_result_convert_workbookxps test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "xps"
      out_path = "DotNetSDK/OutResult/ConvertWorkbook.xps"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format,:outPath=>out_path);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_save_cloud_png__dot_net_sdk_out_result_convert_workbookpng test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "png"
      out_path = "DotNetSDK/OutResult/ConvertWorkbook.png"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format,:outPath=>out_path);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_save_cloud_jpg__dot_net_sdk_out_result_convert_workbookjpg test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "jpg"
      out_path = "DotNetSDK/OutResult/ConvertWorkbook.jpg"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format,:outPath=>out_path);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_save_cloud_gif__dot_net_sdk_out_result_convert_workbookgif test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "gif"
      out_path = "DotNetSDK/OutResult/ConvertWorkbook.gif"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format,:outPath=>out_path);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_save_cloud_emf__dot_net_sdk_out_result_convert_workbookemf test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "emf"
      out_path = "DotNetSDK/OutResult/ConvertWorkbook.emf"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format,:outPath=>out_path);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_save_cloud_bmp__dot_net_sdk_out_result_convert_workbookbmp test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "bmp"
      out_path = "DotNetSDK/OutResult/ConvertWorkbook.bmp"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format,:outPath=>out_path);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_save_cloud_md__dot_net_sdk_out_result_convert_workbookmd test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "md"
      out_path = "DotNetSDK/OutResult/ConvertWorkbook.md"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format,:outPath=>out_path);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_save_cloud_numbers__dot_net_sdk_out_result_convert_workbooknumbers test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "numbers"
      out_path = "DotNetSDK/OutResult/ConvertWorkbook.numbers"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format,:outPath=>out_path);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_save_cloud_wmf__dot_net_sdk_out_result_convert_workbookwmf test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "wmf"
      out_path = "DotNetSDK/OutResult/ConvertWorkbook.wmf"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format,:outPath=>out_path);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_save_cloud_svg__dot_net_sdk_out_result_convert_workbooksvg test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "svg"
      out_path = "DotNetSDK/OutResult/ConvertWorkbook.svg"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format,:outPath=>out_path);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_save_cloud_docx__dot_net_sdk_out_result_convert_workbookdocx test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "docx"
      out_path = "DotNetSDK/OutResult/ConvertWorkbook.docx"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format,:outPath=>out_path);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_save_cloud_pptx__dot_net_sdk_out_result_convert_workbookpptx test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "pptx"
      out_path = "DotNetSDK/OutResult/ConvertWorkbook.pptx"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format,:outPath=>out_path);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_save_cloud_json__dot_net_sdk_out_result_convert_workbookjson test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "json"
      out_path = "DotNetSDK/OutResult/ConvertWorkbook.json"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format,:outPath=>out_path);
      @instance.put_convert_workbook(request);
    end
  end 

  describe 'convert_workbook_save_cloud_sql__dot_net_sdk_out_result_convert_workbooksql test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Book1.xlsx'
      remote_name = 'Book1.xlsx'

      format = "sql"
      out_path = "DotNetSDK/OutResult/ConvertWorkbook.sql"

      
     mapFiles = { }   
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      mapFiles[local_name]= ::File.open(File.expand_path("TestData/"+local_name),"r")
      request =   AsposeCellsCloud::PutConvertWorkbookRequest.new(:File=>mapFiles,:format=>format,:outPath=>out_path);
      @instance.put_convert_workbook(request);
    end
  end 
end
