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
  describe 'post_protect test' do
    it "should work" do
      assembly_test_xlsx = 'assemblytest.xlsx'
      data_source_xlsx = 'datasource.xlsx'

      
      mapFiles = { }   
      mapFiles[assembly_test_xlsx]= ::File.open(File.expand_path("TestData/"+assembly_test_xlsx),"r")
      mapFiles[data_source_xlsx]= ::File.open(File.expand_path("TestData/"+data_source_xlsx),"r")
      protectWorkbookRequst =  AsposeCellsCloud::ProtectWorkbookRequst.new();
      request =   AsposeCellsCloud::PostProtectRequest.new(:File=>mapFiles,:password=>'123456',:protectWorkbookRequst =>protectWorkbookRequst);
      @instance.post_protect(request);
    end
  end 
end
