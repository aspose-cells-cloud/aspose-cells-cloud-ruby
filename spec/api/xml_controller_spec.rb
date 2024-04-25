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

  describe 'post_workbook_export_xml test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Template.xlsx'
      remote_name = 'Template.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      request =   AsposeCellsCloud::PostWorkbookExportXMLRequest.new(:name=>remote_name,:folder=>remote_folder,:storageName=>'');
      @instance.post_workbook_export_xml(request);
    end
  end 

  describe 'post_workbook_import_xml test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'Template.xlsx'
      data_xml = 'data.xml'
      remote_name = 'Template.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
      mapFiles[data_xml] = ::File.open(File.expand_path("TestData/"+data_xml),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      importXMLRequestXMLFileSource = AsposeCellsCloud::DataSource.new(:DataSourceType=>'CloudFileSystem' ,:DataPath=>remote_folder + '/data.xml' );
      importXMLRequestImportPosition = AsposeCellsCloud::ImportPosition.new(:SheetName=>'Sheet1' ,:RowIndex=>3 ,:ColumnIndex=>4 );
      importXMLRequest = AsposeCellsCloud::ImportXMLRequest.new(:XMLFileSource=>importXMLRequestXMLFileSource ,:ImportPosition=>importXMLRequestImportPosition );
      request =   AsposeCellsCloud::PostWorkbookImportXMLRequest.new(:name=>remote_name,:importXMLRequest=>importXMLRequest,:folder=>remote_folder,:storageName=>'');
      @instance.post_workbook_import_xml(request);
    end
  end 
end
