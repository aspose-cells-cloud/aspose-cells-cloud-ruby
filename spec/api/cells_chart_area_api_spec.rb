

require 'spec_helper'
require 'json'

# Unit tests for AsposeCellsCloud::CellsChartAreaApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CellsChartAreaApi' do
  before do
    @instance = AsposeCellsCloud::CellsApi.new($client_id,$client_secret,$api_version,$baseurl)
    $VERBOSE = nil
  end

  after do
    # run after each test
  end



  # unit tests for cells_chart_area_get_chart_area
  # Get chart area info.
  # 
  # @param name Workbook name.
  # @param sheet_name Worksheet name.
  # @param chart_index The chart index.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Workbook folder.
  # @option opts [String] :storage storage name.
  # @return [ChartAreaResponse]
  describe 'cells_chart_area_get_chart_area test' do
    it "should work" do
      name = $MYDOC
      sheet_name = $SHEET3
      chart_index = 0
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_chart_area_get_chart_area(name, sheet_name, chart_index, { :folder=>folder})
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_chart_area_get_chart_area_border
  # Get chart area border info.
  # 
  # @param name Workbook name.
  # @param sheet_name Worksheet name.
  # @param chart_index The chart index.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Workbook folder.
  # @option opts [String] :storage storage name.
  # @return [LineResponse]
  describe 'cells_chart_area_get_chart_area_border test' do
    it "should work" do
      name = $MYDOC
      sheet_name = $SHEET3
      chart_index = 0
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_chart_area_get_chart_area_border(name, sheet_name, chart_index, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_chart_area_get_chart_area_fill_format
  # Get chart area fill format info.
  # 
  # @param name Workbook name.
  # @param sheet_name Worksheet name.
  # @param chart_index The chart index.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Workbook folder.
  # @option opts [String] :storage storage name.
  # @return [FillFormatResponse]
  describe 'cells_chart_area_get_chart_area_fill_format test' do
    it "should work" do
      name = $MYDOC
      sheet_name = $SHEET3
      chart_index = 0
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_chart_area_get_chart_area_fill_format(name, sheet_name, chart_index, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
