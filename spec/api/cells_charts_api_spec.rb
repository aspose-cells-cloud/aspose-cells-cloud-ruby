=begin
#Web API Swagger specification

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for AsposeCellsCloud::CellsChartsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CellsChartsApi' do
  before do
    @instance = AsposeCellsCloud::CellsApi.new($client_id,$client_secret,$api_version,$baseurl)
    $VERBOSE = nil
  end

  after do
    # run after each test
  end



  # unit tests for cells_charts_delete_worksheet_chart_legend
  # Hide legend in chart
  # 
  # @param name Workbook name.
  # @param sheet_name Worksheet name.
  # @param chart_index The chart index.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder The workbook folder.
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_charts_delete_worksheet_chart_legend test' do
    it "should work" do
      name = $MYDOC
      sheet_name = $SHEET3
      chart_index = 0
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_charts_delete_worksheet_chart_legend(name, sheet_name, chart_index, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end


  # unit tests for cells_charts_get_worksheet_chart
  # Get chart info.
  # 
  # @param name Document name.
  # @param sheet_name Worksheet name.
  # @param chart_number The chart number.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :format The exported file format.
  # @option opts [String] :folder The document folder.
  # @option opts [String] :storage storage name.
  # @return [File]
  describe 'cells_charts_get_worksheet_chart test' do
    it "should work" do
      name = $MYDOC
      sheet_name = $SHEET3
      chart_number = 0
      format = 'PNG'
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_charts_get_worksheet_chart(name, sheet_name, chart_number, {:format=>format,  :folder=>folder})
      # expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_charts_get_worksheet_chart_legend
  # Get chart legend
  # 
  # @param name Workbook name.
  # @param sheet_name Worksheet name.
  # @param chart_index The chart index.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder The workbook folder.
  # @option opts [String] :storage storage name.
  # @return [LegendResponse]
  describe 'cells_charts_get_worksheet_chart_legend test' do
    it "should work" do
      name = $MYDOC
      sheet_name = $SHEET3
      chart_index = 0
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_charts_get_worksheet_chart_legend(name, sheet_name, chart_index, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_charts_get_worksheet_chart_title
  # Get chart title
  # 
  # @param name Workbook name.
  # @param sheet_name Worksheet name.
  # @param chart_index The chart index.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder The workbook folder.
  # @option opts [String] :storage storage name.
  # @return [TitleResponse]
  describe 'cells_charts_get_worksheet_chart_title test' do
    it "should work" do
      name = $MYDOC
      sheet_name = $SHEET3
      chart_index = 0
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_charts_get_worksheet_chart_title(name, sheet_name, chart_index, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_charts_get_worksheet_charts
  # Get worksheet charts info.
  # 
  # @param name Document name.
  # @param sheet_name The worksheet name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Document&#39;s folder.
  # @option opts [String] :storage storage name.
  # @return [ChartsResponse]
  describe 'cells_charts_get_worksheet_charts test' do
    it "should work" do
      name = $MYDOC
      sheet_name = $SHEET3
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_charts_get_worksheet_charts(name, sheet_name, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_charts_post_worksheet_chart
  # Update chart propreties
  # 
  # @param name 
  # @param sheet_name 
  # @param chart_index 
  # @param [Hash] opts the optional parameters
  # @option opts [Chart] :chart 
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_charts_post_worksheet_chart test' do
    it "should work" do
      name = $MYDOC
      sheet_name = $SHEET3
      chart_index = 0
      chart = AsposeCellsCloud::Chart.new
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_charts_post_worksheet_chart(name, sheet_name, chart_index,  { :chart=>chart,:folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_charts_post_worksheet_chart_legend
  # Update chart legend
  # 
  # @param name Workbook name.
  # @param sheet_name Worksheet name.
  # @param chart_index The chart index.
  # @param [Hash] opts the optional parameters
  # @option opts [Legend] :legend 
  # @option opts [String] :folder The workbook folder.
  # @option opts [String] :storage storage name.
  # @return [LegendResponse]
  describe 'cells_charts_post_worksheet_chart_legend test' do
    it "should work" do
      name = $MYDOC
      sheet_name = $SHEET3
      chart_index = 0
      legend = AsposeCellsCloud::Legend.new
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_charts_post_worksheet_chart_legend(name, sheet_name, chart_index, { :legend=>legend, :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_charts_post_worksheet_chart_title
  # Update chart title
  # 
  # @param name Workbook name.
  # @param sheet_name Worksheet name.
  # @param chart_index The chart index.
  # @param [Hash] opts the optional parameters
  # @option opts [Title] :title Chart title
  # @option opts [String] :folder The workbook folder.
  # @option opts [String] :storage storage name.
  # @return [TitleResponse]
  describe 'cells_charts_post_worksheet_chart_title test' do
    it "should work" do
      name = $MYDOC
      sheet_name = $SHEET3
      chart_index = 0
      title = AsposeCellsCloud::Title.new
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_charts_post_worksheet_chart_title(name, sheet_name, chart_index,  { :title=>title, :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_charts_put_worksheet_add_chart
  # Add new chart to worksheet.
  # 
  # @param name Workbook name.
  # @param sheet_name The worksheet name.
  # @param chart_type Chart type, please refer property Type in chart resource.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :upper_left_row New chart upper left row.
  # @option opts [Integer] :upper_left_column New chart upperleft column.
  # @option opts [Integer] :lower_right_row New chart lower right row.
  # @option opts [Integer] :lower_right_column New chart lower right column.
  # @option opts [String] :area Specifies values from which to plot the data series. 
  # @option opts [BOOLEAN] :is_vertical Specifies whether to plot the series from a range of cell values by row or by column. 
  # @option opts [String] :category_data Gets or sets the range of category Axis values. It can be a range of cells (such as, \&quot;d1:e10\&quot;). 
  # @option opts [BOOLEAN] :is_auto_get_serial_name Specifies whether auto update serial name. 
  # @option opts [String] :title Specifies chart title name.
  # @option opts [String] :folder The workbook folder.
  # @option opts [String] :storage storage name.
  # @return [ChartsResponse]
  describe 'cells_charts_put_worksheet_add_chart test' do
    it "should work" do
      name = $MYDOC
      sheet_name = $SHEET3
      chart_type = 'Pie'
      upper_left_row = 5
      upper_left_column = 5
      lower_right_row = 10
      lower_right_column = 10
      area = $CELLAREA
      is_vertical = true
      category_data = nil
      is_auto_get_serial_name = nil
      title = nil
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = result = @instance.cells_charts_put_worksheet_add_chart(name, sheet_name, chart_type, { :upper_left_row=>upper_left_row, :upper_left_column=>upper_left_column, :lower_right_row=>lower_right_row, :lower_right_column=>lower_right_column, :area=>area, :is_vertical=>is_vertical,  :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_charts_put_worksheet_chart_legend
  # Show legend in chart
  # 
  # @param name Workbook name.
  # @param sheet_name Worksheet name.
  # @param chart_index The chart index.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder The workbook folder.
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_charts_put_worksheet_chart_legend test' do
    it "should work" do
      name = $MYDOC
      sheet_name = $SHEET3
      chart_index = 0
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_charts_put_worksheet_chart_legend(name, sheet_name, chart_index, { :folder=>folder})
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_charts_put_worksheet_chart_title
  # Add chart title / Set chart title visible
  # 
  # @param name Workbook name.
  # @param sheet_name Worksheet name.
  # @param chart_index The chart index.
  # @param [Hash] opts the optional parameters
  # @option opts [Title] :title Chart title.
  # @option opts [String] :folder The workbook folder.
  # @option opts [String] :storage storage name.
  # @return [TitleResponse]
  describe 'cells_charts_put_worksheet_chart_title test' do
    it "should work" do
      name = $MYDOC
      sheet_name = $SHEET3
      chart_index = 0
      title = AsposeCellsCloud::Title.new
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_charts_put_worksheet_chart_title(name, sheet_name, chart_index, {:title=>title,  :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
  # unit tests for cells_charts_delete_worksheet_chart_title
  # Hide title in chart
  # 
  # @param name Workbook name.
  # @param sheet_name Worksheet name.
  # @param chart_index The chart index.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder The workbook folder.
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_charts_delete_worksheet_chart_title test' do
    it "should work" do
      name = $MYDOC
      sheet_name = $SHEET3
      chart_index = 0
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_charts_delete_worksheet_chart_title(name, sheet_name, chart_index, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_charts_delete_worksheet_delete_chart
  # Delete worksheet chart by index.
  # 
  # @param name Workbook name.
  # @param sheet_name Worksheet name.
  # @param chart_index The chart index.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder The workbook folder.
  # @option opts [String] :storage storage name.
  # @return [ChartsResponse]
  describe 'cells_charts_delete_worksheet_delete_chart test' do
    it "should work" do
      name = $MYDOC
      sheet_name = $SHEET3
      chart_index = 0
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_charts_delete_worksheet_delete_chart(name, sheet_name, chart_index, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

 # unit tests for cells_charts_delete_worksheet_clear_charts
  # Clear the charts.
  # 
  # @param name Workbook name.
  # @param sheet_name The worksheet name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder The workbook folder.
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_charts_delete_worksheet_clear_charts test' do
    it "should work" do
      name = $MYDOC
      sheet_name = $SHEET3
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_charts_delete_worksheet_clear_charts(name, sheet_name, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
