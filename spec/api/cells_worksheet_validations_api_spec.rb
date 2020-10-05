
require 'spec_helper'
require 'json'

# Unit tests for AsposeCellsCloud::CellsWorksheetValidationsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CellsWorksheetValidationsApi' do
  before do
   @instance = AsposeCellsCloud::CellsApi.new($client_id,$client_secret,$api_version,$baseurl)
   $VERBOSE = nil
  end

  after do
    # run after each test
  end


  # unit tests for cells_worksheet_validations_get_worksheet_validation
  # Get worksheet validation by index.
  # 
  # @param name Document name.
  # @param sheet_name Worksheet name.
  # @param validation_index The validation index.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Document&#39;s folder.
  # @option opts [String] :storage storage name.
  # @return [ValidationResponse]
  describe 'cells_worksheet_validations_get_worksheet_validation test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      validation_index = 0
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheet_validations_get_worksheet_validation(name, sheet_name, validation_index, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_worksheet_validations_get_worksheet_validations
  # Get worksheet validations.
  # 
  # @param name Document name.
  # @param sheet_name Worksheet name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Document folder.
  # @option opts [String] :storage storage name.
  # @return [ValidationsResponse]
  describe 'cells_worksheet_validations_get_worksheet_validations test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheet_validations_get_worksheet_validations(name, sheet_name, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_worksheet_validations_post_worksheet_validation
  # Update worksheet validation by index.
  # 
  # @param name Document name.
  # @param sheet_name Worksheet name.
  # @param validation_index The validation index.
  # @param [Hash] opts the optional parameters
  # @option opts [Validation] :validation 
  # @option opts [String] :folder Document&#39;s folder.
  # @option opts [String] :storage storage name.
  # @return [ValidationResponse]
  describe 'cells_worksheet_validations_post_worksheet_validation test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      validation_index = 0
      validation = AsposeCellsCloud::Validation.new({:IgnoreBlank=>true})
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheet_validations_post_worksheet_validation(name, sheet_name, validation_index,  { :validation=>validation,:folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_worksheet_validations_delete_worksheet_validation
  # Delete worksheet validation by index.
  # 
  # @param name Document name.
  # @param sheet_name Worksheet name.
  # @param validation_index The validation index.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Document&#39;s folder.
  # @option opts [String] :storage storage name.
  # @return [ValidationResponse]
  describe 'cells_worksheet_validations_delete_worksheet_validation test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      validation_index = 0
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheet_validations_delete_worksheet_validation(name, sheet_name, validation_index, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_worksheet_validations_put_worksheet_validation
  # Add worksheet validation at index.
  # 
  # @param name Document name.
  # @param sheet_name Worksheet name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :range Specified cells area
  # @option opts [String] :folder Document&#39;s folder.
  # @option opts [String] :storage storage name.
  # @return [ValidationResponse]
  describe 'cells_worksheet_validations_put_worksheet_validation test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      range = $RANGE
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheet_validations_put_worksheet_validation(name, sheet_name,  {:range=>range, :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
