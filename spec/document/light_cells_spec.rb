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

  describe 'post_split_csv test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "csv"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSplitRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_split(request);
    end
  end 

  describe 'post_split_xls test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "xls"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSplitRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_split(request);
    end
  end 

  describe 'post_split_html test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "html"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSplitRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_split(request);
    end
  end 

  describe 'post_split_mhtml test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "mhtml"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSplitRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_split(request);
    end
  end 

  describe 'post_split_ods test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "ods"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSplitRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_split(request);
    end
  end 

  describe 'post_split_pdf test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "pdf"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSplitRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_split(request);
    end
  end 

  describe 'post_split_xml test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "xml"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSplitRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_split(request);
    end
  end 

  describe 'post_split_txt test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "txt"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSplitRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_split(request);
    end
  end 

  describe 'post_split_tif test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "tif"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSplitRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_split(request);
    end
  end 

  describe 'post_split_xlsb test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "xlsb"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSplitRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_split(request);
    end
  end 

  describe 'post_split_xlsm test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "xlsm"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSplitRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_split(request);
    end
  end 

  describe 'post_split_xlsx test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "xlsx"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSplitRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_split(request);
    end
  end 

  describe 'post_split_xltm test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "xltm"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSplitRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_split(request);
    end
  end 

  describe 'post_split_xltx test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "xltx"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSplitRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_split(request);
    end
  end 

  describe 'post_split_xps test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "xps"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSplitRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_split(request);
    end
  end 

  describe 'post_split_png test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "png"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSplitRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_split(request);
    end
  end 

  describe 'post_split_jpg test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "jpg"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSplitRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_split(request);
    end
  end 

  describe 'post_split_gif test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "gif"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSplitRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_split(request);
    end
  end 

  describe 'post_split_emf test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "emf"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSplitRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_split(request);
    end
  end 

  describe 'post_split_bmp test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "bmp"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSplitRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_split(request);
    end
  end 

  describe 'post_split_md test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "md"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSplitRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_split(request);
    end
  end 

  describe 'post_split_numbers test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "numbers"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSplitRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_split(request);
    end
  end 

  describe 'post_split_wmf test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "wmf"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSplitRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_split(request);
    end
  end 

  describe 'post_split_svg test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "svg"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSplitRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_split(request);
    end
  end 

  describe 'post_split_docx test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "docx"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSplitRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_split(request);
    end
  end 

  describe 'post_split_pptx test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "pptx"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSplitRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_split(request);
    end
  end 

  describe 'post_split_json test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "json"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSplitRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_split(request);
    end
  end 

  describe 'post_split_sql test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "sql"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSplitRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_split(request);
    end
  end 

  describe 'post_assemble_csv test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "csv"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostAssembleRequest.new(:File=>mapFiles,:datasource=>'ds',:format=>format);
      @instance.post_assemble(request);
    end
  end 

  describe 'post_assemble_xls test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "xls"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostAssembleRequest.new(:File=>mapFiles,:datasource=>'ds',:format=>format);
      @instance.post_assemble(request);
    end
  end 

  describe 'post_assemble_html test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "html"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostAssembleRequest.new(:File=>mapFiles,:datasource=>'ds',:format=>format);
      @instance.post_assemble(request);
    end
  end 

  describe 'post_assemble_mhtml test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "mhtml"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostAssembleRequest.new(:File=>mapFiles,:datasource=>'ds',:format=>format);
      @instance.post_assemble(request);
    end
  end 

  describe 'post_assemble_ods test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "ods"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostAssembleRequest.new(:File=>mapFiles,:datasource=>'ds',:format=>format);
      @instance.post_assemble(request);
    end
  end 

  describe 'post_assemble_pdf test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "pdf"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostAssembleRequest.new(:File=>mapFiles,:datasource=>'ds',:format=>format);
      @instance.post_assemble(request);
    end
  end 

  describe 'post_assemble_xml test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "xml"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostAssembleRequest.new(:File=>mapFiles,:datasource=>'ds',:format=>format);
      @instance.post_assemble(request);
    end
  end 

  describe 'post_assemble_txt test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "txt"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostAssembleRequest.new(:File=>mapFiles,:datasource=>'ds',:format=>format);
      @instance.post_assemble(request);
    end
  end 

  describe 'post_assemble_tif test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "tif"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostAssembleRequest.new(:File=>mapFiles,:datasource=>'ds',:format=>format);
      @instance.post_assemble(request);
    end
  end 

  describe 'post_assemble_xlsb test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "xlsb"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostAssembleRequest.new(:File=>mapFiles,:datasource=>'ds',:format=>format);
      @instance.post_assemble(request);
    end
  end 

  describe 'post_assemble_xlsm test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "xlsm"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostAssembleRequest.new(:File=>mapFiles,:datasource=>'ds',:format=>format);
      @instance.post_assemble(request);
    end
  end 

  describe 'post_assemble_xlsx test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "xlsx"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostAssembleRequest.new(:File=>mapFiles,:datasource=>'ds',:format=>format);
      @instance.post_assemble(request);
    end
  end 

  describe 'post_assemble_xltm test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "xltm"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostAssembleRequest.new(:File=>mapFiles,:datasource=>'ds',:format=>format);
      @instance.post_assemble(request);
    end
  end 

  describe 'post_assemble_xltx test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "xltx"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostAssembleRequest.new(:File=>mapFiles,:datasource=>'ds',:format=>format);
      @instance.post_assemble(request);
    end
  end 

  describe 'post_assemble_xps test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "xps"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostAssembleRequest.new(:File=>mapFiles,:datasource=>'ds',:format=>format);
      @instance.post_assemble(request);
    end
  end 

  describe 'post_assemble_png test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "png"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostAssembleRequest.new(:File=>mapFiles,:datasource=>'ds',:format=>format);
      @instance.post_assemble(request);
    end
  end 

  describe 'post_assemble_jpg test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "jpg"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostAssembleRequest.new(:File=>mapFiles,:datasource=>'ds',:format=>format);
      @instance.post_assemble(request);
    end
  end 

  describe 'post_assemble_gif test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "gif"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostAssembleRequest.new(:File=>mapFiles,:datasource=>'ds',:format=>format);
      @instance.post_assemble(request);
    end
  end 

  describe 'post_assemble_emf test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "emf"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostAssembleRequest.new(:File=>mapFiles,:datasource=>'ds',:format=>format);
      @instance.post_assemble(request);
    end
  end 

  describe 'post_assemble_bmp test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "bmp"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostAssembleRequest.new(:File=>mapFiles,:datasource=>'ds',:format=>format);
      @instance.post_assemble(request);
    end
  end 

  describe 'post_assemble_md test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "md"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostAssembleRequest.new(:File=>mapFiles,:datasource=>'ds',:format=>format);
      @instance.post_assemble(request);
    end
  end 

  describe 'post_assemble_numbers test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "numbers"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostAssembleRequest.new(:File=>mapFiles,:datasource=>'ds',:format=>format);
      @instance.post_assemble(request);
    end
  end 

  describe 'post_assemble_wmf test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "wmf"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostAssembleRequest.new(:File=>mapFiles,:datasource=>'ds',:format=>format);
      @instance.post_assemble(request);
    end
  end 

  describe 'post_assemble_svg test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "svg"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostAssembleRequest.new(:File=>mapFiles,:datasource=>'ds',:format=>format);
      @instance.post_assemble(request);
    end
  end 

  describe 'post_assemble_docx test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "docx"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostAssembleRequest.new(:File=>mapFiles,:datasource=>'ds',:format=>format);
      @instance.post_assemble(request);
    end
  end 

  describe 'post_assemble_pptx test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "pptx"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostAssembleRequest.new(:File=>mapFiles,:datasource=>'ds',:format=>format);
      @instance.post_assemble(request);
    end
  end 

  describe 'post_assemble_json test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "json"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostAssembleRequest.new(:File=>mapFiles,:datasource=>'ds',:format=>format);
      @instance.post_assemble(request);
    end
  end 

  describe 'post_assemble_sql test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "sql"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostAssembleRequest.new(:File=>mapFiles,:datasource=>'ds',:format=>format);
      @instance.post_assemble(request);
    end
  end 

  describe 'post_export_csv_workbook test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "csv"
      object_type = "workbook"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_xls_workbook test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "xls"
      object_type = "workbook"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_html_workbook test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "html"
      object_type = "workbook"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_mhtml_workbook test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "mhtml"
      object_type = "workbook"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_ods_workbook test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "ods"
      object_type = "workbook"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_pdf_workbook test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "pdf"
      object_type = "workbook"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_xml_workbook test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "xml"
      object_type = "workbook"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_txt_workbook test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "txt"
      object_type = "workbook"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_tif_workbook test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "tif"
      object_type = "workbook"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_xlsb_workbook test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "xlsb"
      object_type = "workbook"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_xlsm_workbook test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "xlsm"
      object_type = "workbook"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_xlsx_workbook test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "xlsx"
      object_type = "workbook"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_xltm_workbook test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "xltm"
      object_type = "workbook"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_xltx_workbook test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "xltx"
      object_type = "workbook"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_xps_workbook test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "xps"
      object_type = "workbook"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_png_workbook test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "png"
      object_type = "workbook"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_jpg_workbook test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "jpg"
      object_type = "workbook"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_gif_workbook test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "gif"
      object_type = "workbook"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_emf_workbook test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "emf"
      object_type = "workbook"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_bmp_workbook test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "bmp"
      object_type = "workbook"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_md_workbook test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "md"
      object_type = "workbook"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_numbers_workbook test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "numbers"
      object_type = "workbook"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_wmf_workbook test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "wmf"
      object_type = "workbook"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_svg_workbook test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "svg"
      object_type = "workbook"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_docx_workbook test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "docx"
      object_type = "workbook"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_pptx_workbook test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "pptx"
      object_type = "workbook"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_json_workbook test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "json"
      object_type = "workbook"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_sql_workbook test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "sql"
      object_type = "workbook"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_csv_worksheet test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "csv"
      object_type = "worksheet"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_xls_worksheet test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "xls"
      object_type = "worksheet"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_html_worksheet test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "html"
      object_type = "worksheet"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_mhtml_worksheet test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "mhtml"
      object_type = "worksheet"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_ods_worksheet test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "ods"
      object_type = "worksheet"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_pdf_worksheet test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "pdf"
      object_type = "worksheet"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_xml_worksheet test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "xml"
      object_type = "worksheet"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_txt_worksheet test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "txt"
      object_type = "worksheet"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_tif_worksheet test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "tif"
      object_type = "worksheet"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_xlsb_worksheet test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "xlsb"
      object_type = "worksheet"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_xlsm_worksheet test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "xlsm"
      object_type = "worksheet"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_xlsx_worksheet test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "xlsx"
      object_type = "worksheet"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_xltm_worksheet test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "xltm"
      object_type = "worksheet"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_xltx_worksheet test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "xltx"
      object_type = "worksheet"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_xps_worksheet test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "xps"
      object_type = "worksheet"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_png_worksheet test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "png"
      object_type = "worksheet"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_jpg_worksheet test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "jpg"
      object_type = "worksheet"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_gif_worksheet test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "gif"
      object_type = "worksheet"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_emf_worksheet test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "emf"
      object_type = "worksheet"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_bmp_worksheet test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "bmp"
      object_type = "worksheet"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_md_worksheet test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "md"
      object_type = "worksheet"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_numbers_worksheet test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "numbers"
      object_type = "worksheet"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_wmf_worksheet test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "wmf"
      object_type = "worksheet"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_svg_worksheet test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "svg"
      object_type = "worksheet"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_docx_worksheet test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "docx"
      object_type = "worksheet"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_pptx_worksheet test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "pptx"
      object_type = "worksheet"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_json_worksheet test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "json"
      object_type = "worksheet"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_sql_worksheet test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "sql"
      object_type = "worksheet"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_pdf_chart test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "pdf"
      object_type = "chart"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_tif_chart test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "tif"
      object_type = "chart"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_png_chart test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "png"
      object_type = "chart"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_jpg_chart test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "jpg"
      object_type = "chart"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_gif_chart test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "gif"
      object_type = "chart"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_emf_chart test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "emf"
      object_type = "chart"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_bmp_chart test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "bmp"
      object_type = "chart"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_png_picture test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "png"
      object_type = "picture"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_jpg_picture test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "jpg"
      object_type = "picture"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_gif_picture test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "gif"
      object_type = "picture"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_emf_picture test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "emf"
      object_type = "picture"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_bmp_picture test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "bmp"
      object_type = "picture"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_csv_listobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "csv"
      object_type = "listobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_xls_listobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "xls"
      object_type = "listobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_html_listobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "html"
      object_type = "listobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_mhtml_listobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "mhtml"
      object_type = "listobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_ods_listobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "ods"
      object_type = "listobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_pdf_listobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "pdf"
      object_type = "listobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_xml_listobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "xml"
      object_type = "listobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_txt_listobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "txt"
      object_type = "listobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_tif_listobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "tif"
      object_type = "listobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_xlsb_listobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "xlsb"
      object_type = "listobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_xlsm_listobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "xlsm"
      object_type = "listobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_xlsx_listobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "xlsx"
      object_type = "listobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_xltm_listobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "xltm"
      object_type = "listobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_xltx_listobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "xltx"
      object_type = "listobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_xps_listobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "xps"
      object_type = "listobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_png_listobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "png"
      object_type = "listobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_jpg_listobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "jpg"
      object_type = "listobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_gif_listobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "gif"
      object_type = "listobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_emf_listobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "emf"
      object_type = "listobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_bmp_listobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "bmp"
      object_type = "listobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_md_listobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "md"
      object_type = "listobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_numbers_listobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "numbers"
      object_type = "listobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_wmf_listobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "wmf"
      object_type = "listobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_svg_listobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "svg"
      object_type = "listobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_docx_listobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "docx"
      object_type = "listobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_pptx_listobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "pptx"
      object_type = "listobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_json_listobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "json"
      object_type = "listobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_sql_listobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "sql"
      object_type = "listobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_png_oleobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "png"
      object_type = "oleobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_jpg_oleobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "jpg"
      object_type = "oleobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_gif_oleobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "gif"
      object_type = "oleobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_emf_oleobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "emf"
      object_type = "oleobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_export_bmp_oleobject test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      book1_xlsx = 'Book1.xlsx'

      format = "bmp"
      object_type = "oleobject"

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostExportRequest.new(:File=>mapFiles,:objectType=>object_type,:format=>format);
      @instance.post_export(request);
    end
  end 

  describe 'post_compress_50 test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      compress_level = 50

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostCompressRequest.new(:File=>mapFiles,:CompressLevel=>compress_level);
      @instance.post_compress(request);
    end
  end 

  describe 'post_compress_90 test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      compress_level = 90

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostCompressRequest.new(:File=>mapFiles,:CompressLevel=>compress_level);
      @instance.post_compress(request);
    end
  end 

  describe 'post_merge_csv_true test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "csv"
      merge_to_one_sheet = true

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:format=>format,:mergeToOneSheet=>merge_to_one_sheet);
      @instance.post_merge(request);
    end
  end 

  describe 'post_merge_xls_true test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "xls"
      merge_to_one_sheet = true

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:format=>format,:mergeToOneSheet=>merge_to_one_sheet);
      @instance.post_merge(request);
    end
  end 

  describe 'post_merge_html_true test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "html"
      merge_to_one_sheet = true

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:format=>format,:mergeToOneSheet=>merge_to_one_sheet);
      @instance.post_merge(request);
    end
  end 

  describe 'post_merge_mhtml_true test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "mhtml"
      merge_to_one_sheet = true

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:format=>format,:mergeToOneSheet=>merge_to_one_sheet);
      @instance.post_merge(request);
    end
  end 

  describe 'post_merge_ods_true test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "ods"
      merge_to_one_sheet = true

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:format=>format,:mergeToOneSheet=>merge_to_one_sheet);
      @instance.post_merge(request);
    end
  end 

  describe 'post_merge_pdf_true test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "pdf"
      merge_to_one_sheet = true

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:format=>format,:mergeToOneSheet=>merge_to_one_sheet);
      @instance.post_merge(request);
    end
  end 

  describe 'post_merge_xml_true test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "xml"
      merge_to_one_sheet = true

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:format=>format,:mergeToOneSheet=>merge_to_one_sheet);
      @instance.post_merge(request);
    end
  end 

  describe 'post_merge_txt_true test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "txt"
      merge_to_one_sheet = true

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:format=>format,:mergeToOneSheet=>merge_to_one_sheet);
      @instance.post_merge(request);
    end
  end 

  describe 'post_merge_tif_true test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "tif"
      merge_to_one_sheet = true

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:format=>format,:mergeToOneSheet=>merge_to_one_sheet);
      @instance.post_merge(request);
    end
  end 

  describe 'post_merge_xlsb_true test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "xlsb"
      merge_to_one_sheet = true

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:format=>format,:mergeToOneSheet=>merge_to_one_sheet);
      @instance.post_merge(request);
    end
  end 

  describe 'post_merge_xlsm_true test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "xlsm"
      merge_to_one_sheet = true

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:format=>format,:mergeToOneSheet=>merge_to_one_sheet);
      @instance.post_merge(request);
    end
  end 

  describe 'post_merge_xlsx_true test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "xlsx"
      merge_to_one_sheet = true

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:format=>format,:mergeToOneSheet=>merge_to_one_sheet);
      @instance.post_merge(request);
    end
  end 

  describe 'post_merge_xltm_true test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "xltm"
      merge_to_one_sheet = true

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:format=>format,:mergeToOneSheet=>merge_to_one_sheet);
      @instance.post_merge(request);
    end
  end 

  describe 'post_merge_xltx_true test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "xltx"
      merge_to_one_sheet = true

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:format=>format,:mergeToOneSheet=>merge_to_one_sheet);
      @instance.post_merge(request);
    end
  end 

  describe 'post_merge_xps_true test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "xps"
      merge_to_one_sheet = true

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:format=>format,:mergeToOneSheet=>merge_to_one_sheet);
      @instance.post_merge(request);
    end
  end 

  describe 'post_merge_png_true test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "png"
      merge_to_one_sheet = true

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:format=>format,:mergeToOneSheet=>merge_to_one_sheet);
      @instance.post_merge(request);
    end
  end 

  describe 'post_merge_jpg_true test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "jpg"
      merge_to_one_sheet = true

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:format=>format,:mergeToOneSheet=>merge_to_one_sheet);
      @instance.post_merge(request);
    end
  end 

  describe 'post_merge_gif_true test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "gif"
      merge_to_one_sheet = true

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:format=>format,:mergeToOneSheet=>merge_to_one_sheet);
      @instance.post_merge(request);
    end
  end 

  describe 'post_merge_emf_true test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "emf"
      merge_to_one_sheet = true

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:format=>format,:mergeToOneSheet=>merge_to_one_sheet);
      @instance.post_merge(request);
    end
  end 

  describe 'post_merge_bmp_true test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "bmp"
      merge_to_one_sheet = true

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:format=>format,:mergeToOneSheet=>merge_to_one_sheet);
      @instance.post_merge(request);
    end
  end 

  describe 'post_merge_md_true test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "md"
      merge_to_one_sheet = true

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:format=>format,:mergeToOneSheet=>merge_to_one_sheet);
      @instance.post_merge(request);
    end
  end 

  describe 'post_merge_numbers_true test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "numbers"
      merge_to_one_sheet = true

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:format=>format,:mergeToOneSheet=>merge_to_one_sheet);
      @instance.post_merge(request);
    end
  end 

  describe 'post_merge_wmf_true test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "wmf"
      merge_to_one_sheet = true

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:format=>format,:mergeToOneSheet=>merge_to_one_sheet);
      @instance.post_merge(request);
    end
  end 

  describe 'post_merge_svg_true test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "svg"
      merge_to_one_sheet = true

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:format=>format,:mergeToOneSheet=>merge_to_one_sheet);
      @instance.post_merge(request);
    end
  end 

  describe 'post_merge_docx_false test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "docx"
      merge_to_one_sheet = false

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:format=>format,:mergeToOneSheet=>merge_to_one_sheet);
      @instance.post_merge(request);
    end
  end 

  describe 'post_merge_pptx_false test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "pptx"
      merge_to_one_sheet = false

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:format=>format,:mergeToOneSheet=>merge_to_one_sheet);
      @instance.post_merge(request);
    end
  end 

  describe 'post_merge_json_false test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "json"
      merge_to_one_sheet = false

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:format=>format,:mergeToOneSheet=>merge_to_one_sheet);
      @instance.post_merge(request);
    end
  end 

  describe 'post_merge_sql_false test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      format = "sql"
      merge_to_one_sheet = false

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostMergeRequest.new(:File=>mapFiles,:format=>format,:mergeToOneSheet=>merge_to_one_sheet);
      @instance.post_merge(request);
    end
  end 

  describe 'post_unlock test' do
    it "should work" do
      need_unlock_xlsx = 'needUnlock.xlsx'

      
     mapFiles = { }   
      mapFiles[need_unlock_xlsx]= ::File.open(File.expand_path("TestData/"+need_unlock_xlsx),"r")
      request =   AsposeCellsCloud::PostUnlockRequest.new(:File=>mapFiles,:password=>'123456');
      @instance.post_unlock(request);
    end
  end 

  describe 'post_protect test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      
     mapFiles = { }   
      protectWorkbookRequest = AsposeCellsCloud::ProtectWorkbookRequest.new(:AwaysOpenReadOnly=>true ,:EncryptWithPassword=>'123456' );
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostProtectRequest.new(:File=>mapFiles,:protectWorkbookRequest=>protectWorkbookRequest,:password=>'123456');
      @instance.post_protect(request);
    end
  end 

  describe 'post_protect__protect_workbook_request test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      
     mapFiles = { }   
      protectWorkbookRequest = AsposeCellsCloud::ProtectWorkbookRequest.new(:AwaysOpenReadOnly=>true ,:EncryptWithPassword=>'123456' );
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostProtectRequest.new(:File=>mapFiles,:protectWorkbookRequest=>protectWorkbookRequest);
      @instance.post_protect(request);
    end
  end 

  describe 'post_search test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostSearchRequest.new(:File=>mapFiles,:text=>'12');
      @instance.post_search(request);
    end
  end 

  describe 'post_replace test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostReplaceRequest.new(:File=>mapFiles,:text=>'12',:newtext=>'newtext');
      @instance.post_replace(request);
    end
  end 

  describe 'post_replace_only_sheetname test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostReplaceRequest.new(:File=>mapFiles,:text=>'12',:newtext=>'newtext',:sheetname=>'Sheet1');
      @instance.post_replace(request);
    end
  end 

  describe 'post_watermark test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      
     mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostWatermarkRequest.new(:File=>mapFiles,:text=>'aspose.cells cloud sdk',:color=>'#773322');
      @instance.post_watermark(request);
    end
  end 

  describe 'post_clear_objects_chart test' do
    it "should work" do
      book1_xlsx = 'Book1.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      objecttype = "chart"

      
     mapFiles = { }   
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostClearObjectsRequest.new(:File=>mapFiles,:objecttype=>objecttype);
      @instance.post_clear_objects(request);
    end
  end 

  describe 'post_clear_objects_comment test' do
    it "should work" do
      book1_xlsx = 'Book1.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      objecttype = "comment"

      
     mapFiles = { }   
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostClearObjectsRequest.new(:File=>mapFiles,:objecttype=>objecttype);
      @instance.post_clear_objects(request);
    end
  end 

  describe 'post_clear_objects_picture test' do
    it "should work" do
      book1_xlsx = 'Book1.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      objecttype = "picture"

      
     mapFiles = { }   
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostClearObjectsRequest.new(:File=>mapFiles,:objecttype=>objecttype);
      @instance.post_clear_objects(request);
    end
  end 

  describe 'post_clear_objects_shape test' do
    it "should work" do
      book1_xlsx = 'Book1.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      objecttype = "shape"

      
     mapFiles = { }   
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostClearObjectsRequest.new(:File=>mapFiles,:objecttype=>objecttype);
      @instance.post_clear_objects(request);
    end
  end 

  describe 'post_clear_objects_listobject test' do
    it "should work" do
      book1_xlsx = 'Book1.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      objecttype = "listobject"

      
     mapFiles = { }   
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostClearObjectsRequest.new(:File=>mapFiles,:objecttype=>objecttype);
      @instance.post_clear_objects(request);
    end
  end 

  describe 'post_clear_objects_hyperlink test' do
    it "should work" do
      book1_xlsx = 'Book1.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      objecttype = "hyperlink"

      
     mapFiles = { }   
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostClearObjectsRequest.new(:File=>mapFiles,:objecttype=>objecttype);
      @instance.post_clear_objects(request);
    end
  end 

  describe 'post_clear_objects_oleobject test' do
    it "should work" do
      book1_xlsx = 'Book1.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      objecttype = "oleobject"

      
     mapFiles = { }   
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostClearObjectsRequest.new(:File=>mapFiles,:objecttype=>objecttype);
      @instance.post_clear_objects(request);
    end
  end 

  describe 'post_clear_objects_pivottable test' do
    it "should work" do
      book1_xlsx = 'Book1.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      objecttype = "pivottable"

      
     mapFiles = { }   
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostClearObjectsRequest.new(:File=>mapFiles,:objecttype=>objecttype);
      @instance.post_clear_objects(request);
    end
  end 

  describe 'post_clear_objects_validation test' do
    it "should work" do
      book1_xlsx = 'Book1.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      objecttype = "validation"

      
     mapFiles = { }   
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostClearObjectsRequest.new(:File=>mapFiles,:objecttype=>objecttype);
      @instance.post_clear_objects(request);
    end
  end 

  describe 'post_clear_objects__background test' do
    it "should work" do
      book1_xlsx = 'Book1.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      objecttype = "Background"

      
     mapFiles = { }   
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      request =   AsposeCellsCloud::PostClearObjectsRequest.new(:File=>mapFiles,:objecttype=>objecttype);
      @instance.post_clear_objects(request);
    end
  end 

  describe 'post_repair_xlsx test' do
    it "should work" do
      book1_xlsx = 'Book1.xlsx'

      format = "xlsx"

      
     mapFiles = { }   
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostRepairRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_repair(request);
    end
  end 

  describe 'post_repair_pdf test' do
    it "should work" do
      book1_xlsx = 'Book1.xlsx'

      format = "pdf"

      
     mapFiles = { }   
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostRepairRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_repair(request);
    end
  end 

  describe 'post_repair_csv test' do
    it "should work" do
      book1_xlsx = 'Book1.xlsx'

      format = "csv"

      
     mapFiles = { }   
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostRepairRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_repair(request);
    end
  end 

  describe 'post_repair_png test' do
    it "should work" do
      book1_xlsx = 'Book1.xlsx'

      format = "png"

      
     mapFiles = { }   
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostRepairRequest.new(:File=>mapFiles,:format=>format);
      @instance.post_repair(request);
    end
  end 

  describe 'post_reverse_rows_pdf test' do
    it "should work" do
      book1_xlsx = 'Book1.xlsx'

      rotate_type = "rows"
      format = "pdf"

      
     mapFiles = { }   
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostReverseRequest.new(:File=>mapFiles,:rotateType=>rotate_type,:format=>format);
      @instance.post_reverse(request);
    end
  end 

  describe 'post_reverse_cols_pdf test' do
    it "should work" do
      book1_xlsx = 'Book1.xlsx'

      rotate_type = "cols"
      format = "pdf"

      
     mapFiles = { }   
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostReverseRequest.new(:File=>mapFiles,:rotateType=>rotate_type,:format=>format);
      @instance.post_reverse(request);
    end
  end 

  describe 'post_reverse_both_pdf test' do
    it "should work" do
      book1_xlsx = 'Book1.xlsx'

      rotate_type = "both"
      format = "pdf"

      
     mapFiles = { }   
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostReverseRequest.new(:File=>mapFiles,:rotateType=>rotate_type,:format=>format);
      @instance.post_reverse(request);
    end
  end 

  describe 'post_reverse_rows_csv test' do
    it "should work" do
      book1_xlsx = 'Book1.xlsx'

      rotate_type = "rows"
      format = "csv"

      
     mapFiles = { }   
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostReverseRequest.new(:File=>mapFiles,:rotateType=>rotate_type,:format=>format);
      @instance.post_reverse(request);
    end
  end 

  describe 'post_reverse_cols_png test' do
    it "should work" do
      book1_xlsx = 'Book1.xlsx'

      rotate_type = "cols"
      format = "png"

      
     mapFiles = { }   
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostReverseRequest.new(:File=>mapFiles,:rotateType=>rotate_type,:format=>format);
      @instance.post_reverse(request);
    end
  end 

  describe 'post_reverse_both_xlsx test' do
    it "should work" do
      book1_xlsx = 'Book1.xlsx'

      rotate_type = "both"
      format = "xlsx"

      
     mapFiles = { }   
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostReverseRequest.new(:File=>mapFiles,:rotateType=>rotate_type,:format=>format);
      @instance.post_reverse(request);
    end
  end 

  describe 'get_metadata test' do
    it "should work" do
      book1_xlsx = 'Book1.xlsx'

      
     mapFiles = { }   
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::GetMetadataRequest.new(:File=>mapFiles,:type=>'all');
      @instance.get_metadata(request);
    end
  end 

  describe 'delete_metadata test' do
    it "should work" do
      book1_xlsx = 'Book1.xlsx'

      
     mapFiles = { }   
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::DeleteMetadataRequest.new(:File=>mapFiles,:type=>'all');
      @instance.delete_metadata(request);
    end
  end 

  describe 'post_metadata test' do
    it "should work" do
      book1_xlsx = 'Book1.xlsx'

      
     mapFiles = { }   
      cellsDocumentscellsDocument0 = AsposeCellsCloud::CellsDocumentProperty.new(:Name=>'Author' ,:Value=>'roy.wang' );
      cellsDocuments = [
          cellsDocumentscellsDocument0
      ];
      mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
      request =   AsposeCellsCloud::PostMetadataRequest.new(:File=>mapFiles,:cellsDocuments=>cellsDocuments);
      @instance.post_metadata(request);
    end
  end 
end
