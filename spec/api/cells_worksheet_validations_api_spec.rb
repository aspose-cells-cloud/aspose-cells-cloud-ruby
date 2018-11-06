=begin
#Web API Swagger specification

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for AsposeCellsCloud::CellsWorksheetValidationsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CellsWorksheetValidationsApi' do
  before do
    # run before each test
    if $access_token == nil then
        conf = AsposeCellsCloud::Configuration.new
        conf.base_path = ""
        instance = AsposeCellsCloud::OAuthApi.new(AsposeCellsCloud::ApiClient.new(conf))
        $access_token = instance.o_auth_post($grant_type,$client_id,$client_secret).access_token
    end
  
    conf = AsposeCellsCloud::Configuration.new
    conf.access_token = $access_token	
    client = AsposeCellsCloud::ApiClient.new(conf)
    client.default_headers["Authorization"] ="Bearer " + $access_token
    @instance = AsposeCellsCloud::CellsWorksheetValidationsApi.new(client)
  end

  after do
    # run after each test
  end

  describe 'test an instance of CellsWorksheetValidationsApi' do
    it 'should create an instance of CellsWorksheetValidationsApi' do
      expect(@instance).to be_instance_of(AsposeCellsCloud::CellsWorksheetValidationsApi)
    end
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
      
      @instance.cells_worksheet_validations_get_worksheet_validation(name, sheet_name, validation_index, { :folder=>folder})
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
      
      @instance.cells_worksheet_validations_get_worksheet_validations(name, sheet_name, { :folder=>folder})
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
      
      @instance.cells_worksheet_validations_post_worksheet_validation(name, sheet_name, validation_index,  { :validation=>validation,:folder=>folder})
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
      
      @instance.cells_worksheet_validations_delete_worksheet_validation(name, sheet_name, validation_index, { :folder=>folder})
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
      
      @instance.cells_worksheet_validations_put_worksheet_validation(name, sheet_name,  {:range=>range, :folder=>folder})
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
