
require 'spec_helper'
require 'json'

# Unit tests for AsposeCellsCloud::CellsPivotTablesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CellsPivotTablesApi' do
  before do
    @instance = AsposeCellsCloud::CellsApi.new($client_id,$client_secret,"v3.0",$baseurl)
  end

  after do
    # run after each test
  end


  # unit tests for cells_pivot_tables_get_pivot_table_field
  # Get pivot field into into pivot table
  # 
  # @param name Document name.
  # @param sheet_name The worksheet name.
  # @param pivot_table_index Pivot table index
  # @param pivot_field_index The field index in the base fields.
  # @param pivot_field_type The fields area type.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Document&#39;s folder.
  # @option opts [String] :storage storage name.
  # @return [PivotFieldResponse]
  describe 'cells_pivot_tables_get_pivot_table_field test' do
    it "should work" do
      name = $PivTestFile
      sheet_name = $SHEET4
      pivot_table_index = 0
      pivot_field_index = 0
      pivot_field_type = 'row'
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_pivot_tables_get_pivot_table_field(name, sheet_name, pivot_table_index, pivot_field_index, pivot_field_type, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_pivot_tables_get_worksheet_pivot_table
  # Get worksheet pivottable info by index.
  # 
  # @param name Document name.
  # @param sheet_name The worksheet name.
  # @param pivottable_index 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Document&#39;s folder.
  # @option opts [String] :storage storage name.
  # @return [PivotTableResponse]
  describe 'cells_pivot_tables_get_worksheet_pivot_table test' do
    it "should work" do
      name = $PivTestFile
      sheet_name = $SHEET4
      pivottable_index = 0
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_pivot_tables_get_worksheet_pivot_table(name, sheet_name, pivottable_index, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_pivot_tables_get_worksheet_pivot_table_filters
  # 
  # 
  # @param name 
  # @param sheet_name 
  # @param pivot_table_index 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [PivotFiltersResponse]
  describe 'cells_pivot_tables_get_worksheet_pivot_table_filters test' do
    it "should work" do
      name = $PivTestFile
      sheet_name = $SHEET4
      pivot_table_index = 0
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_pivot_tables_get_worksheet_pivot_table_filters(name, sheet_name, pivot_table_index, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_pivot_tables_get_worksheet_pivot_tables
  # Get worksheet pivottables info.
  # 
  # @param name Document name.
  # @param sheet_name The worksheet name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Document&#39;s folder.
  # @option opts [String] :storage storage name.
  # @return [PivotTablesResponse]
  describe 'cells_pivot_tables_get_worksheet_pivot_tables test' do
    it "should work" do
      name = $PivTestFile
      sheet_name = $SHEET4
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_pivot_tables_get_worksheet_pivot_tables(name, sheet_name, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_pivot_tables_post_pivot_table_cell_style
  # Update cell style for pivot table
  # 
  # @param name Document name.
  # @param sheet_name The worksheet name.
  # @param pivot_table_index Pivot table index
  # @param column 
  # @param row 
  # @param [Hash] opts the optional parameters
  # @option opts [Style] :style Style dto in request body.
  # @option opts [BOOLEAN] :need_re_calculate 
  # @option opts [String] :folder Document&#39;s folder.
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_pivot_tables_post_pivot_table_cell_style test' do
    it "should work" do
      name = $PivTestFile
      sheet_name = $SHEET4
      pivot_table_index = 0
      column = 1
      row = 1
      style = AsposeCellsCloud::Style.new({:Custom=>'p'})
      need_re_calculate = true
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_pivot_tables_post_pivot_table_cell_style(name, sheet_name, pivot_table_index, column, row,  {:style=>style, :need_re_calculate=>need_re_calculate, :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_pivot_tables_post_pivot_table_field_hide_item
  # 
  # 
  # @param name 
  # @param sheet_name 
  # @param pivot_table_index 
  # @param pivot_field_type 
  # @param field_index 
  # @param item_index 
  # @param is_hide 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :need_re_calculate 
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_pivot_tables_post_pivot_table_field_hide_item test' do
    it "should work" do
      name = $PivTestFile
      sheet_name = $SHEET4
      pivot_table_index = 0
      pivot_field_type = 'Row'
      field_index = 0
      item_index = 1
      is_hide = true
      need_re_calculate = true
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_pivot_tables_post_pivot_table_field_hide_item(name, sheet_name, pivot_table_index, pivot_field_type, field_index, item_index, is_hide,  { :need_re_calculate=>need_re_calculate,:folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_pivot_tables_post_pivot_table_field_move_to
  # 
  # 
  # @param name 
  # @param sheet_name 
  # @param pivot_table_index 
  # @param field_index 
  # @param from 
  # @param to 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_pivot_tables_post_pivot_table_field_move_to test' do
    it "should work" do
      name = $PivTestFile
      sheet_name = $SHEET4
      pivot_table_index = 0
      field_index = 0
      from = 'Row'
      to = 'Column'
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_pivot_tables_post_pivot_table_field_move_to(name, sheet_name, pivot_table_index, field_index, from, to, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'cells_pivot_tables_post_pivot_table_update_pivot_fields test' do
    it "should work" do
      name = $PivTestFile
      sheet_name = $SHEET4
      pivot_table_index = 0
      field_index = 0
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      pivot_field = AsposeCellsCloud::PivotField.new({:Number=>5})
      result = @instance.cells_pivot_tables_post_pivot_table_update_pivot_fields(name, sheet_name, pivot_table_index, "Data",pivot_field , { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
  
  describe 'cells_pivot_tables_post_pivot_table_update_pivot_field test' do
    it "should work" do
      name = $PivTestFile
      sheet_name = $SHEET4
      pivot_table_index = 0
      field_index = 0
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      pivot_field = AsposeCellsCloud::PivotField.new({:Number=>5})
      result = @instance.cells_pivot_tables_post_pivot_table_update_pivot_field(name, sheet_name, pivot_table_index,0, "Data",pivot_field , { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
  # unit tests for cells_pivot_tables_post_pivot_table_style
  # Update style for pivot table
  # 
  # @param name Document name.
  # @param sheet_name The worksheet name.
  # @param pivot_table_index Pivot table index
  # @param [Hash] opts the optional parameters
  # @option opts [Style] :style Style dto in request body.
  # @option opts [BOOLEAN] :need_re_calculate 
  # @option opts [String] :folder Document&#39;s folder.
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_pivot_tables_post_pivot_table_style test' do
    it "should work" do
      name = $PivTestFile
      sheet_name = $SHEET4
      pivot_table_index = 0
      style =  AsposeCellsCloud::Style.new({:Custom=>'p'})
      need_re_calculate = true
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_pivot_tables_post_pivot_table_style(name, sheet_name, pivot_table_index,  { :style=>style, :need_re_calculate=>need_re_calculate,:folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_pivot_tables_post_worksheet_pivot_table_calculate
  # Calculates pivottable&#39;s data to cells.
  # 
  # @param name Document name.
  # @param sheet_name The worksheet name.
  # @param pivot_table_index Pivot table index
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Document&#39;s folder.
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_pivot_tables_post_worksheet_pivot_table_calculate test' do
    it "should work" do
      name = $PivTestFile
      sheet_name = $SHEET4
      pivot_table_index = 0
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_pivot_tables_post_worksheet_pivot_table_calculate(name, sheet_name, pivot_table_index, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_pivot_tables_post_worksheet_pivot_table_move
  # 
  # 
  # @param name 
  # @param sheet_name 
  # @param pivot_table_index 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :row 
  # @option opts [Integer] :column 
  # @option opts [String] :dest_cell_name 
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_pivot_tables_post_worksheet_pivot_table_move test' do
    it "should work" do
      name = $PivTestFile
      sheet_name = $SHEET4
      pivot_table_index = 0
      row = 1
      column = 1
      dest_cell_name = 'C10'
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_pivot_tables_post_worksheet_pivot_table_move(name, sheet_name, pivot_table_index, { :row=>row, :column=>column, :dest_cell_name=>dest_cell_name, :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_pivot_tables_put_pivot_table_field
  # Add pivot field into into pivot table
  # 
  # @param name Document name.
  # @param sheet_name The worksheet name.
  # @param pivot_table_index Pivot table index
  # @param pivot_field_type The fields area type.
  # @param [Hash] opts the optional parameters
  # @option opts [PivotTableFieldRequest] :request Dto that conrains field indexes
  # @option opts [BOOLEAN] :need_re_calculate 
  # @option opts [String] :folder Document&#39;s folder.
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_pivot_tables_put_pivot_table_field test' do
    it "should work" do
      name = $PivTestFile
      sheet_name = $SHEET4
      pivot_table_index = 0
      pivot_field_type = 'Row'
      request = AsposeCellsCloud::PivotTableFieldRequest.new({:Data=>[1]})
      need_re_calculate = nil
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_pivot_tables_put_pivot_table_field(name, sheet_name, pivot_table_index, pivot_field_type,  {:request=>request, :need_re_calculate=>need_re_calculate, :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_pivot_tables_put_worksheet_pivot_table
  # Add a pivot table into worksheet.
  # 
  # @param name Document name.
  # @param sheet_name The worksheet name.
  # @param [Hash] opts the optional parameters
  # @option opts [CreatePivotTableRequest] :request CreatePivotTableRequest dto in request body.
  # @option opts [String] :folder Document&#39;s folder.
  # @option opts [String] :storage storage name.
  # @option opts [String] :source_data The data for the new PivotTable cache.
  # @option opts [String] :dest_cell_name The cell in the upper-left corner of the PivotTable report&#39;s destination range.
  # @option opts [String] :table_name The name of the new PivotTable report.
  # @option opts [BOOLEAN] :use_same_source Indicates whether using same data source when another existing pivot table has used this data source. If the property is true, it will save memory.
  # @return [PivotTableResponse]
  describe 'cells_pivot_tables_put_worksheet_pivot_table test' do
    it "should work" do
      name = $PivTestFile
      sheet_name = $SHEET4
      request = AsposeCellsCloud::CreatePivotTableRequest.new({:Name=>'TestPivot',:DestCellName=>'C1',:SourceData =>'Sheet1!C6:E13',:UseSameSource=>true})
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      source_data = 'Sheet1!C6:E13'
      dest_cell_name = 'C1'
      table_name = 'TestPivot'
      use_same_source = true
      result = @instance.cells_pivot_tables_put_worksheet_pivot_table(name, sheet_name,  { :folder=>folder, :source_data=>source_data, :dest_cell_name=>dest_cell_name, :table_name=>table_name, :use_same_source=>use_same_source})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_pivot_tables_put_worksheet_pivot_table_filter
  # Add pivot filter for piovt table index
  # 
  # @param name 
  # @param sheet_name 
  # @param pivot_table_index 
  # @param [Hash] opts the optional parameters
  # @option opts [PivotFilter] :filter 
  # @option opts [BOOLEAN] :need_re_calculate 
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_pivot_tables_put_worksheet_pivot_table_filter and cells_pivot_tables_get_worksheet_pivot_table_filter test' do
    it "should work" do
      name = $PivTestFile
      sheet_name = $SHEET4
      pivot_table_index = 0
      top10Filter = AsposeCellsCloud::Top10Filter.new({:Items=>1 ,:IsTop=>true,:IsPercent=>false})
      filterColumn = AsposeCellsCloud::FilterColumn.new({:FilterType=>'Top10',:FieldIndex=>0,:Top10Filter=>top10Filter})
      autoFilter = AsposeCellsCloud::AutoFilter.new({:FilterColumns=>[filterColumn]})
      filter = AsposeCellsCloud::PivotFilter.new({:FieldIndex=>1,:FilterType=>'Count',:AutoFilter=>autoFilter})
      need_re_calculate = true
      folder = $TEMPFOLDER
      filter_index =0
      field_index=0
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_pivot_tables_put_worksheet_pivot_table_filter(name, sheet_name, pivot_table_index, { :filter=>filter, :need_re_calculate=>need_re_calculate, :folder=>folder})
      expect(result.code).to eql(200)
      result = @instance.cells_pivot_tables_get_worksheet_pivot_table_filter(name, sheet_name, pivot_table_index, filter_index, { :folder=>folder})
      expect(result.code).to eql(200)
      result = @instance.cells_pivot_tables_delete_worksheet_pivot_table_filter(name, sheet_name, pivot_table_index, field_index,  {:need_re_calculate=>need_re_calculate, :folder=>folder})
      expect(result.code).to eql(200)
    end
  end

  # unit tests for cells_pivot_tables_delete_pivot_table_field
  # Delete pivot field into into pivot table
  # 
  # @param name Document name.
  # @param sheet_name The worksheet name.
  # @param pivot_table_index Pivot table index
  # @param pivot_field_type The fields area type.
  # @param [Hash] opts the optional parameters
  # @option opts [PivotTableFieldRequest] :request Dto that conrains field indexes
  # @option opts [String] :folder Document&#39;s folder.
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_pivot_tables_delete_pivot_table_field test' do
    it "should work" do
      name = $PivTestFile
      sheet_name = $SHEET4
      pivot_table_index = 0
      pivot_field_type = 'Row'
      request = AsposeCellsCloud::PivotTableFieldRequest.new({:Data=>[1]})
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_pivot_tables_delete_pivot_table_field(name, sheet_name, pivot_table_index, pivot_field_type,  { :request=>request,:folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_pivot_tables_delete_worksheet_pivot_table
  # Delete worksheet pivot table by index
  # 
  # @param name Document name.
  # @param sheet_name The worksheet name.
  # @param pivot_table_index Pivot table index
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Document&#39;s folder.
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_pivot_tables_delete_worksheet_pivot_table test' do
    it "should work" do
      name = $PivTestFile
      sheet_name = $SHEET4
      pivot_table_index = 0
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_pivot_tables_delete_worksheet_pivot_table(name, sheet_name, pivot_table_index, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end


  # unit tests for cells_pivot_tables_delete_worksheet_pivot_table_filters
  # delete all pivot filters for piovt table
  # 
  # @param name 
  # @param sheet_name 
  # @param pivot_table_index 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :need_re_calculate 
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_pivot_tables_delete_worksheet_pivot_table_filters test' do
    it "should work" do
      name = $PivTestFile
      sheet_name = $SHEET4
      pivot_table_index = 0
      need_re_calculate = true
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_pivot_tables_delete_worksheet_pivot_table_filters(name, sheet_name, pivot_table_index,  {:need_re_calculate=>need_re_calculate, :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_pivot_tables_delete_worksheet_pivot_tables
  # Delete worksheet pivot tables
  # 
  # @param name Document name.
  # @param sheet_name The worksheet name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Document&#39;s folder.
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_pivot_tables_delete_worksheet_pivot_tables test' do
    it "should work" do
      name = $PivTestFile
      sheet_name = $SHEET4
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_pivot_tables_delete_worksheet_pivot_tables(name, sheet_name, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
