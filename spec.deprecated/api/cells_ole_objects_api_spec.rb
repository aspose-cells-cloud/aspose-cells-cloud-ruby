

require 'spec_helper'
require 'json'

# Unit tests for AsposeCellsCloud::CellsOleObjectsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CellsOleObjectsApi' do
  before do
    @instance = AsposeCellsCloud::CellsApi.new($client_id,$client_secret,$api_version,$baseurl)
    $VERBOSE = nil
  end
  after do
    # run after each test
  end


  # unit tests for cells_ole_objects_get_worksheet_ole_object
  # Get OLE object info.
  # 
  # @param name Document name.
  # @param sheet_name Worksheet name.
  # @param object_number The object number.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :format The exported object format.
  # @option opts [String] :folder The document folder.
  # @option opts [String] :storage storage name.
  # @return [File]
  describe 'cells_ole_objects_get_worksheet_ole_object test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET6
      object_number = 0
      format = 'PNG'
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_ole_objects_get_worksheet_ole_object(name, sheet_name, object_number,  {:format=>format, :folder=>folder})
      # expect(result).not_to be_empty
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_ole_objects_get_worksheet_ole_objects
  # Get worksheet OLE objects info.
  # 
  # @param name Document name.
  # @param sheet_name The worksheet name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Document&#39;s folder.
  # @option opts [String] :storage storage name.
  # @return [OleObjectsResponse]
  describe 'cells_ole_objects_get_worksheet_ole_objects test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET6
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_ole_objects_get_worksheet_ole_objects(name, sheet_name, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_ole_objects_post_update_worksheet_ole_object
  # Update OLE object.
  # 
  # @param name The workbook name.
  # @param sheet_name The worsheet name.
  # @param ole_object_index Ole object index
  # @param [Hash] opts the optional parameters
  # @option opts [OleObject] :ole Ole Object
  # @option opts [String] :folder The workbook folder.
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_ole_objects_post_update_worksheet_ole_object test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET6
      ole_object_index = 0
      ole = AsposeCellsCloud::OleObject.new({:Left=>10,:Right=>10,:Height=>100,:Width=>90})
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_ole_objects_post_update_worksheet_ole_object(name, sheet_name, ole_object_index,  { :ole=>ole,:folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_ole_objects_put_worksheet_ole_object
  # Add OLE object
  # 
  # @param name The workbook name.
  # @param sheet_name The worsheet name.
  # @param [Hash] opts the optional parameters
  # @option opts [OleObject] :ole_object Ole Object
  # @option opts [Integer] :upper_left_row Upper left row index
  # @option opts [Integer] :upper_left_column Upper left column index
  # @option opts [Integer] :height Height of oleObject, in unit of pixel
  # @option opts [Integer] :width Width of oleObject, in unit of pixel
  # @option opts [String] :ole_file OLE filename
  # @option opts [String] :image_file Image filename
  # @option opts [String] :folder The workbook folder.
  # @option opts [String] :storage storage name.
  # @return [OleObjectResponse]
  describe 'cells_ole_objects_put_worksheet_ole_object test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET6
      ole_object = nil
      upper_left_row = 1
      upper_left_column = 1
      height = 100
      width = 80
      ole_file = 'OLEDoc.docx'
      image_file = 'word.jpg'
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      result = @instance.upload_file( folder+"/"+ole_file,  ::File.open(File.expand_path("data/"+ole_file),"r") {|io| io.read(io.size) })
      result = @instance.upload_file( folder+"/"+image_file,  ::File.open(File.expand_path("data/"+image_file),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_ole_objects_put_worksheet_ole_object(name, sheet_name, {  :ole_object=>ole_object, :upper_left_row=>upper_left_row, :upper_left_column=>upper_left_column, :height=>height, :width=>width, :ole_file=> (folder+"/"+ole_file), :image_file=> (folder+"/"+image_file),:folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_ole_objects_delete_worksheet_ole_object
  # Delete OLE object.
  # 
  # @param name The workbook name.
  # @param sheet_name The worsheet name.
  # @param ole_object_index Ole object index
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder The workbook folder.
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_ole_objects_delete_worksheet_ole_object test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET6
      ole_object_index = 0
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_ole_objects_delete_worksheet_ole_object(name, sheet_name, ole_object_index, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_ole_objects_delete_worksheet_ole_objects
  # Delete all OLE objects.
  # 
  # @param name The workbook name.
  # @param sheet_name The worsheet name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder The workbook folder.
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_ole_objects_delete_worksheet_ole_objects test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET6
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_ole_objects_delete_worksheet_ole_objects(name, sheet_name, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end