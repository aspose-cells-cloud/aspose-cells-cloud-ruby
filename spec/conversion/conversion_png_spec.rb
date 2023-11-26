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

  describe 'convert_workbook_html test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'cloud.png'
      remote_name = 'cloud.png'

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

      local_name = 'cloud.png'
      remote_name = 'cloud.png'

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

      local_name = 'cloud.png'
      remote_name = 'cloud.png'

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

      local_name = 'cloud.png'
      remote_name = 'cloud.png'

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

      local_name = 'cloud.png'
      remote_name = 'cloud.png'

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

  describe 'convert_workbook_tif test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'cloud.png'
      remote_name = 'cloud.png'

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

      local_name = 'cloud.png'
      remote_name = 'cloud.png'

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

  describe 'convert_workbook_xps test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'cloud.png'
      remote_name = 'cloud.png'

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

  describe 'convert_workbook_jpg test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'cloud.png'
      remote_name = 'cloud.png'

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

  describe 'convert_workbook_md test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'cloud.png'
      remote_name = 'cloud.png'

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

      local_name = 'cloud.png'
      remote_name = 'cloud.png'

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

  describe 'convert_workbook_svg test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'cloud.png'
      remote_name = 'cloud.png'

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

      local_name = 'cloud.png'
      remote_name = 'cloud.png'

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

      local_name = 'cloud.png'
      remote_name = 'cloud.png'

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

      local_name = 'cloud.png'
      remote_name = 'cloud.png'

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

      local_name = 'cloud.png'
      remote_name = 'cloud.png'

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
end
