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

  describe 'post_add_text_content test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'BookText.xlsx'
      remote_name = 'BookText.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      addTextOptionsDataSource = AsposeCellsCloud::DataSource.new(:DataSourceType=>'CloudFileSystem' ,:DataPath=>'BookText.xlsx' );
      addTextOptions = AsposeCellsCloud::AddTextOptions.new(:DataSource=>addTextOptionsDataSource ,:Text=>'Aspose.Cells Cloud is an excellent product.' ,:Worksheet=>'202401' ,:SelectPoistion=>'AtTheBeginning' ,:SkipEmptyCells=>true );
      request =   AsposeCellsCloud::PostAddTextContentRequest.new(:addTextOptions=>addTextOptions);
      @instance.post_add_text_content(request);
    end
  end 

  describe 'post_trim_content test' do
    it "should work" do
      remote_folder = 'TestData/In'

      local_name = 'BookText.xlsx'
      remote_name = 'BookText.xlsx'

      
      mapFiles = { }               
      mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
   
      uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
      @instance.upload_file(uploadrequest)
      trimContentOptionsDataSource = AsposeCellsCloud::DataSource.new(:DataSourceType=>'CloudFileSystem' ,:DataPath=>'BookText.xlsx' );
      trimContentOptionsScopeOptions = AsposeCellsCloud::ScopeOptions.new(:Scope=>'EntireWorkbook' );
      trimContentOptions = AsposeCellsCloud::TrimContentOptions.new(:DataSource=>trimContentOptionsDataSource ,:TrimLeading=>true ,:TrimTrailing=>true ,:TrimSpaceBetweenWordTo1=>true ,:RemoveAllLineBreaks=>true ,:ScopeOptions=>trimContentOptionsScopeOptions );
      request =   AsposeCellsCloud::PostTrimContentRequest.new(:trimContentOptions=>trimContentOptions);
      @instance.post_trim_content(request);
    end
  end 
end
