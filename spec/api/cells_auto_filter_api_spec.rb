=begin
#Web API Swagger specification

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for AsposeCellsCloud::CellsAutoFilterApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CellsAutoFilterApi' do
  before do
   @instance = AsposeCellsCloud::CellsApi.new("66164C51-693E-4904-A121-545961673EC1","536e76768419db9585afdd37bb5f7533")
  end

  after do
    # run after each test
  end

  # unit tests for cells_auto_filter_get_worksheet_auto_filter
  # Get Auto filter Description
  # 
  # @param name 
  # @param sheet_name 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [AutoFilterResponse]
  describe 'cells_auto_filter_get_worksheet_auto_filter test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      folder = $TEMPFOLDER
      @instance.upload_file( folder+"/"+name,  ::File.open("/home/roywang/asposecellscloudsdk/data/" +name,"r") {|io| io.read(io.size) })
      @instance.cells_auto_filter_get_worksheet_auto_filter(name, sheet_name,  { :folder=>folder})
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_auto_filter_post_worksheet_auto_filter_refresh
  # 
  # 
  # @param name 
  # @param sheet_name 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_auto_filter_post_worksheet_auto_filter_refresh test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      folder = $TEMPFOLDER
      @instance.upload_file( folder+"/"+name,  ::File.open("/home/roywang/asposecellscloudsdk/data/" +name,"r") {|io| io.read(io.size) })
      @instance.cells_auto_filter_post_worksheet_auto_filter_refresh(name, sheet_name,  { :folder=>folder})
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_auto_filter_post_worksheet_match_blanks
  # Match all blank cell in the list.
  # 
  # @param name 
  # @param sheet_name 
  # @param field_index 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_auto_filter_post_worksheet_match_blanks test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      field_index = 0
      folder = $TEMPFOLDER
      @instance.upload_file( folder+"/"+name,  ::File.open("/home/roywang/asposecellscloudsdk/data/" +name,"r") {|io| io.read(io.size) })
      @instance.cells_auto_filter_post_worksheet_match_blanks(name, sheet_name, field_index,  { :folder=>folder})
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_auto_filter_post_worksheet_match_non_blanks
  # Match all not blank cell in the list.             
  # 
  # @param name 
  # @param sheet_name 
  # @param field_index 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_auto_filter_post_worksheet_match_non_blanks test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      field_index = 0
      folder = $TEMPFOLDER
      @instance.upload_file( folder+"/"+name,  ::File.open("/home/roywang/asposecellscloudsdk/data/" +name,"r") {|io| io.read(io.size) })
      @instance.cells_auto_filter_post_worksheet_match_non_blanks(name, sheet_name, field_index,  { :folder=>folder})
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_auto_filter_put_worksheet_color_filter
  # 
  # 
  # @param name 
  # @param sheet_name 
  # @param range 
  # @param field_index 
  # @param [Hash] opts the optional parameters
  # @option opts [ColorFilterRequest] :color_filter 
  # @option opts [BOOLEAN] :match_blanks 
  # @option opts [BOOLEAN] :refresh 
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_auto_filter_put_worksheet_color_filter test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      range = $RANGE
      field_index = 0
      color = AsposeCellsCloud::Color.new
	  foregroundcolor = AsposeCellsCloud::CellsColor.new({:Color=>color})
      color_filter = AsposeCellsCloud::ColorFilterRequest.new({:ForegroundColor=>foregroundcolor,:Pattern=>'Solid'})
      match_blanks = true
      refresh = true
      folder = $TEMPFOLDER
      @instance.upload_file( folder+"/"+name,  ::File.open("/home/roywang/asposecellscloudsdk/data/" +name,"r") {|io| io.read(io.size) })
      @instance.cells_auto_filter_put_worksheet_color_filter(name, sheet_name, range, field_index,  { :color_filter=>color_filter, :match_blanks=>match_blanks, :refresh=>refresh,:folder=>folder})
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_auto_filter_put_worksheet_custom_filter
  # Filters a list with a custom criteria.             
  # 
  # @param name 
  # @param sheet_name 
  # @param range 
  # @param field_index 
  # @param operator_type1 
  # @param criteria1 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :is_and 
  # @option opts [String] :operator_type2 
  # @option opts [String] :criteria2 
  # @option opts [BOOLEAN] :match_blanks 
  # @option opts [BOOLEAN] :refresh 
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_auto_filter_put_worksheet_custom_filter test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      range = $RANGE
      field_index = 0
      operator_type1 = 'LessOrEqual'
      criteria1 = 'test'
      is_and = false
      operator_type2 = 'LessOrEqual'
      criteria2 = 'test'
      match_blanks = true
      refresh = true
      folder = $TEMPFOLDER
      @instance.upload_file( folder+"/"+name,  ::File.open("/home/roywang/asposecellscloudsdk/data/" +name,"r") {|io| io.read(io.size) })
      @instance.cells_auto_filter_put_worksheet_custom_filter(name, sheet_name, range, field_index, operator_type1, criteria1, {:is_and=>is_and, :operator_type2=>operator_type2, :criteria2=>criteria2, :match_blanks=>match_blanks, :refresh=>refresh,  :folder=>folder})
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_auto_filter_put_worksheet_date_filter
  # add date filter in worksheet 
  # 
  # @param name 
  # @param sheet_name 
  # @param range 
  # @param field_index 
  # @param date_time_grouping_type 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :year 
  # @option opts [Integer] :month 
  # @option opts [Integer] :day 
  # @option opts [Integer] :hour 
  # @option opts [Integer] :minute 
  # @option opts [Integer] :second 
  # @option opts [BOOLEAN] :match_blanks 
  # @option opts [BOOLEAN] :refresh 
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_auto_filter_put_worksheet_date_filter test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      range = $RANGE
      field_index = 0
      date_time_grouping_type = 'Day'
      year = 2019
      month = 1
      day = 1
      hour = 1
      minute = 1
      second = 1
      match_blanks = true
      refresh = true
      folder = $TEMPFOLDER
      @instance.upload_file( folder+"/"+name,  ::File.open("/home/roywang/asposecellscloudsdk/data/" +name,"r") {|io| io.read(io.size) })
      @instance.cells_auto_filter_put_worksheet_date_filter(name, sheet_name, range, field_index, date_time_grouping_type, {:year=>year, :month=>month, :day=>day, :hour=>hour, :minute=>minute, :second=>second, :match_blanks=>match_blanks, :refresh=>refresh,  :folder=>folder})
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_auto_filter_put_worksheet_dynamic_filter
  # 
  # 
  # @param name 
  # @param sheet_name 
  # @param range 
  # @param field_index 
  # @param dynamic_filter_type 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :match_blanks 
  # @option opts [BOOLEAN] :refresh 
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_auto_filter_put_worksheet_dynamic_filter test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      range = $RANGE
      field_index = 0
      dynamic_filter_type = 'May'
      match_blanks = true
      refresh = true
      folder = $TEMPFOLDER
      @instance.upload_file( folder+"/"+name,  ::File.open("/home/roywang/asposecellscloudsdk/data/" +name,"r") {|io| io.read(io.size) })
      @instance.cells_auto_filter_put_worksheet_dynamic_filter(name, sheet_name, range, field_index, dynamic_filter_type, {:match_blanks=>match_blanks, :refresh=>refresh,  :folder=>folder})
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_auto_filter_put_worksheet_filter
  # Adds a filter for a filter column.             
  # 
  # @param name 
  # @param sheet_name 
  # @param range 
  # @param field_index 
  # @param criteria 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :match_blanks 
  # @option opts [BOOLEAN] :refresh 
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_auto_filter_put_worksheet_filter test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      range = $RANGE
      field_index = 0
      criteria = 'test'
      match_blanks = true
      refresh = true
      folder = $TEMPFOLDER
      @instance.upload_file( folder+"/"+name,  ::File.open("/home/roywang/asposecellscloudsdk/data/" +name,"r") {|io| io.read(io.size) })
      @instance.cells_auto_filter_put_worksheet_filter(name, sheet_name, range, field_index, criteria,  {:match_blanks=>match_blanks, :refresh=>refresh,  :folder=>folder})
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_auto_filter_put_worksheet_filter_top10
  # Filter the top 10 item in the list
  # 
  # @param name 
  # @param sheet_name 
  # @param range 
  # @param field_index 
  # @param is_top 
  # @param is_percent 
  # @param item_count 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :match_blanks 
  # @option opts [BOOLEAN] :refresh 
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_auto_filter_put_worksheet_filter_top10 test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      range = $RANGE
      field_index = 0
      is_top = true
      is_percent = true
      item_count = 1
      match_blanks = true
      refresh = true
      folder = $TEMPFOLDER
      @instance.upload_file( folder+"/"+name,  ::File.open("/home/roywang/asposecellscloudsdk/data/" +name,"r") {|io| io.read(io.size) })
      @instance.cells_auto_filter_put_worksheet_filter_top10(name, sheet_name, range, field_index, is_top, is_percent, item_count, {:match_blanks=>match_blanks, :refresh=>refresh,  :folder=>folder})
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_auto_filter_put_worksheet_icon_filter
  # Adds an icon filter.
  # 
  # @param name 
  # @param sheet_name 
  # @param range 
  # @param field_index 
  # @param icon_set_type 
  # @param icon_id 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :match_blanks 
  # @option opts [BOOLEAN] :refresh 
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_auto_filter_put_worksheet_icon_filter test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      range = $RANGE
      field_index = 0
      icon_set_type = 'None'
      icon_id = 0
      match_blanks = true
      refresh = true
      folder = $TEMPFOLDER
      @instance.upload_file( folder+"/"+name,  ::File.open("/home/roywang/asposecellscloudsdk/data/" +name,"r") {|io| io.read(io.size) })
      @instance.cells_auto_filter_put_worksheet_icon_filter(name, sheet_name, range, field_index, icon_set_type, icon_id,  {:match_blanks=>match_blanks, :refresh=>refresh,  :folder=>folder})
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
  # unit tests for cells_auto_filter_delete_worksheet_date_filter
  # Removes a date filter.             
  # 
  # @param name 
  # @param sheet_name 
  # @param field_index 
  # @param date_time_grouping_type 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :year 
  # @option opts [Integer] :month 
  # @option opts [Integer] :day 
  # @option opts [Integer] :hour 
  # @option opts [Integer] :minute 
  # @option opts [Integer] :second 
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_auto_filter_delete_worksheet_date_filter test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      field_index = 1
      date_time_grouping_type = 'Day'
      year = 2018
      month = 12
      day = 1
      hour = 1
      minute = 1
      second = 1
      folder = $TEMPFOLDER
      @instance.upload_file( folder+"/"+name,  ::File.open("/home/roywang/asposecellscloudsdk/data/" +name,"r") {|io| io.read(io.size) })
      @instance.cells_auto_filter_delete_worksheet_date_filter(name, sheet_name, field_index, date_time_grouping_type, {:year=>year, :month=>month, :day=>day, :hour=>hour, :minute=>minute, :second=>second, :folder=>folder})
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_auto_filter_delete_worksheet_filter
  # Delete a filter for a filter column.             
  # 
  # @param name 
  # @param sheet_name 
  # @param field_index 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :criteria 
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_auto_filter_delete_worksheet_filter test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      field_index = 1
      criteria = 'test'
      folder = $TEMPFOLDER
      @instance.upload_file( folder+"/"+name,  ::File.open("/home/roywang/asposecellscloudsdk/data/" +name,"r") {|io| io.read(io.size) })
      @instance.cells_auto_filter_delete_worksheet_filter(name, sheet_name, field_index, {:criteria=>criteria,   :folder=>folder})
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
