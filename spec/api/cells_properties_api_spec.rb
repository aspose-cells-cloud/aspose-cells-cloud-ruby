

require 'spec_helper'
require 'json'

# Unit tests for AsposeCellsCloud::CellsPropertiesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CellsPropertiesApi' do
  before do
    @instance = AsposeCellsCloud::CellsApi.new($client_id,$client_secret,$api_version,$baseurl)
    $VERBOSE = nil
  end

  after do
    # run after each test
  end



  # unit tests for cells_properties_delete_document_properties
  # Delete all custom document properties and clean built-in ones.
  # 
  # @param name The document name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder The document folder.
  # @option opts [String] :storage storage name.
  # @return [CellsDocumentPropertiesResponse]
  describe 'cells_properties_delete_document_properties test' do
    it "should work" do
      name = $BOOK1
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_properties_delete_document_properties(name,  { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_properties_delete_document_property
  # Delete document property.
  # 
  # @param name The document name.
  # @param property_name The property name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder The document folder.
  # @option opts [String] :storage storage name.
  # @return [CellsDocumentPropertiesResponse]
  describe 'cells_properties_delete_document_property test' do
    it "should work" do
      name = $BOOK1
      property_name = 'Author'
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_properties_delete_document_property(name, property_name,  { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_properties_get_document_properties
  # Read document properties.
  # 
  # @param name The document name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder The document folder.
  # @option opts [String] :storage storage name.
  # @return [CellsDocumentPropertiesResponse]
  describe 'cells_properties_get_document_properties test' do
    it "should work" do
      name = $BOOK1
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_properties_get_document_properties(name,  { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_properties_get_document_property
  # Read document property by name.
  # 
  # @param name The document name.
  # @param property_name The property name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder The document folder.
  # @option opts [String] :storage storage name.
  # @return [CellsDocumentPropertyResponse]
  describe 'cells_properties_get_document_property test' do
    it "should work" do
      name = $BOOK1
      property_name = 'Author'
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_properties_get_document_property(name, property_name,  { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_properties_put_document_property
  # Set/create document property.
  # 
  # @param name The document name.
  # @param property_name The property name.
  # @param [Hash] opts the optional parameters
  # @option opts [CellsDocumentProperty] :property with new property value.
  # @option opts [String] :folder The document folder.
  # @option opts [String] :storage storage name.
  # @return [CellsDocumentPropertyResponse]
  describe 'cells_properties_put_document_property test' do
    it "should work" do
      name = $BOOK1
      property_name = 'Author'
      property = AsposeCellsCloud::CellsDocumentProperty.new({:Name=>'Author',:Value=>'roy'})
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_properties_put_document_property(name, property_name, { :property=>property,  :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
