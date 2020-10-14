=begin
#Web API Swagger specification

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for AsposeCellsCloud::CellsWorksheetsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CellsWorksheetsApi' do
  before do
    @instance = AsposeCellsCloud::CellsApi.new($client_id,$client_secret,$api_version,$baseurl)
    $VERBOSE = nil
  end

  after do
    # run after each test
  end


  # # unit tests for cells_worksheets_put_worksheet_background
  # # Set worksheet background image.
  # # 
  # # @param name 
  # # @param sheet_name 
  # # @param png 
  # # @param [Hash] opts the optional parameters
  # # @option opts [String] :folder 
  # # @option opts [String] :storage storage name.
  # # @return [CellsCloudResponse]
  # describe 'cells_worksheets_put_worksheet_background test' do
  #   it "should work" do
  #     name = $BOOK1
  #     sheet_name = $SHEET1
  #     aFile = File.new(File.expand_path("data/WaterMark.png"),"r")
  #     png = aFile.sysread(aFile.size)
  #     aFile.close
  #     folder = $TEMPFOLDER
  #     result = @instance.delete_file( folder+"/"+name)
  #     result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
  #     expect(result.uploaded.size).to  be > 0
  #     result = @instance.cells_worksheets_put_worksheet_background(name, sheet_name, png, { :folder=>folder})
  #     expect(result.code).to eql(200)
  #     # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
  #   end
  # end
  # unit tests for cells_worksheets_delete_worksheet_background
  # Set worksheet background image.
  # 
  # @param name 
  # @param sheet_name 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_worksheets_delete_worksheet_background test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_delete_worksheet_background(name, sheet_name, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_worksheets_delete_worksheet_comment
  # Delete worksheet&#39;s cell comment.
  # 
  # @param name The document name.
  # @param sheet_name The worksheet name.
  # @param cell_name The cell name
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder The document folder.
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_worksheets_delete_worksheet_comment test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      cell_name = 'C1'
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_delete_worksheet_comment(name, sheet_name, cell_name, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_worksheets_delete_worksheet_comments
  # Delete all comments for worksheet.
  # 
  # @param name 
  # @param sheet_name 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_worksheets_delete_worksheet_comments test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_delete_worksheet_comments(name, sheet_name, { :folder=>folder})
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_worksheets_delete_worksheet_freeze_panes
  # Unfreeze panes
  # 
  # @param name 
  # @param sheet_name 
  # @param row 
  # @param column 
  # @param freezed_rows 
  # @param freezed_columns 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_worksheets_delete_worksheet_freeze_panes test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      row = 1
      column = 1
      freezed_rows = 2
      freezed_columns = 2
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_delete_worksheet_freeze_panes(name, sheet_name, row, column, freezed_rows, freezed_columns, { :folder=>folder})
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_worksheets_get_named_ranges
  # Read worksheets ranges info.
  # 
  # @param name Document name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Document folder.
  # @option opts [String] :storage storage name.
  # @return [RangesResponse]
  describe 'cells_worksheets_get_named_ranges test' do
    it "should work" do
      name = $BOOK1
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_get_named_ranges(name, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_worksheets_get_worksheet
  # Read worksheet info or export.
  # 
  # @param name The document name.
  # @param sheet_name The worksheet name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :format The exported file format.
  # @option opts [Integer] :vertical_resolution Image vertical resolution.
  # @option opts [Integer] :horizontal_resolution Image horizontal resolution.
  # @option opts [String] :folder The document folder.
  # @option opts [String] :storage storage name.
  # @return [String]
  describe 'cells_worksheets_get_worksheet test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      format = 'PNG'
      vertical_resolution = 100
      horizontal_resolution = 90
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_get_worksheet(name, sheet_name,  {:format=>format, :vertical_resolution=>vertical_resolution, :horizontal_resolution=>horizontal_resolution, :folder=>folder})
      # expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_worksheets_get_worksheet_calculate_formula
  # Calculate formula value.
  # 
  # @param name Document name.
  # @param sheet_name Worksheet name.
  # @param formula The formula.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Document&#39;s folder.
  # @option opts [String] :storage storage name.
  # @return [SingleValueResponse]
  describe 'cells_worksheets_get_worksheet_calculate_formula test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      formula = '=NOW()'
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_get_worksheet_calculate_formula(name, sheet_name, formula, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end



  # unit tests for cells_worksheets_get_worksheet_comments
  # Get worksheet comments.
  # 
  # @param name Workbook name.
  # @param sheet_name The worksheet name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder The document folder.
  # @option opts [String] :storage storage name.
  # @return [CommentsResponse]
  describe 'cells_worksheets_get_worksheet_comments test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_get_worksheet_comments(name, sheet_name, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_worksheets_get_worksheet_merged_cell
  # Get worksheet merged cell by its index.
  # 
  # @param name Document name.
  # @param sheet_name Worksheet name.
  # @param merged_cell_index Merged cell index.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Document folder.
  # @option opts [String] :storage storage name.
  # @return [MergedCellResponse]
  describe 'cells_worksheets_get_worksheet_merged_cell test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      merged_cell_index = 1
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_get_worksheet_merged_cell(name, sheet_name, merged_cell_index, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_worksheets_get_worksheet_merged_cells
  # Get worksheet merged cells.
  # 
  # @param name Document name.
  # @param sheet_name The workseet name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Document folder.
  # @option opts [String] :storage storage name.
  # @return [MergedCellsResponse]
  describe 'cells_worksheets_get_worksheet_merged_cells test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_get_worksheet_merged_cells(name, sheet_name, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_worksheets_get_worksheet_text_items
  # Get worksheet text items.
  # 
  # @param name Workbook name.
  # @param sheet_name The worksheet name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder The workbook&#39;s folder.
  # @option opts [String] :storage storage name.
  # @return [TextItemsResponse]
  describe 'cells_worksheets_get_worksheet_text_items test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_get_worksheet_text_items(name, sheet_name, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_worksheets_get_worksheets
  # Read worksheets info.
  # 
  # @param name Document name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Document folder.
  # @option opts [String] :storage storage name.
  # @return [WorksheetsResponse]
  describe 'cells_worksheets_get_worksheets test' do
    it "should work" do
      name = $BOOK1
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_get_worksheets(name, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_worksheets_post_autofit_worksheet_columns
  # 
  # 
  # @param name 
  # @param sheet_name 
  # @param first_column 
  # @param last_column 
  # @param [Hash] opts the optional parameters
  # @option opts [AutoFitterOptions] :auto_fitter_options 
  # @option opts [Integer] :first_row 
  # @option opts [Integer] :last_row 
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_worksheets_post_autofit_worksheet_columns test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      first_column = 1
      last_column = 10
      auto_fitter_options = nil
      first_row = 1
      last_row = 10
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_post_autofit_worksheet_columns(name, sheet_name, first_column, last_column,  {:auto_fitter_options=>auto_fitter_options, :first_row=>first_row, :last_row=>last_row, :folder=>folder})
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_worksheets_post_autofit_worksheet_row
  # 
  # 
  # @param name 
  # @param sheet_name 
  # @param row_index 
  # @param first_column 
  # @param last_column 
  # @param [Hash] opts the optional parameters
  # @option opts [AutoFitterOptions] :auto_fitter_options 
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_worksheets_post_autofit_worksheet_row test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      row_index = 1
      first_column = 1
      last_column = 10
      auto_fitter_options = AsposeCellsCloud::AutoFitterOptions.new({:AutoFitMergedCells=>true})
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_post_autofit_worksheet_row(name, sheet_name, row_index, first_column, last_column,  { :auto_fitter_options=>auto_fitter_options,:folder=>folder})
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_worksheets_post_autofit_worksheet_rows
  # Autofit worksheet rows.
  # 
  # @param name Document name.
  # @param sheet_name The worksheet name.
  # @param [Hash] opts the optional parameters
  # @option opts [AutoFitterOptions] :auto_fitter_options Auto Fitter Options.
  # @option opts [Integer] :start_row Start row.
  # @option opts [Integer] :end_row End row.
  # @option opts [BOOLEAN] :only_auto Only auto.
  # @option opts [String] :folder Document&#39;s folder.
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_worksheets_post_autofit_worksheet_rows test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      auto_fitter_options =  AsposeCellsCloud::AutoFitterOptions.new({:AutoFitMergedCells=>true})
      start_row = 1
      end_row = 10
      only_auto = true
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_post_autofit_worksheet_rows(name, sheet_name,  {:auto_fitter_options=>auto_fitter_options, :start_row=>start_row, :end_row=>end_row, :only_auto=>only_auto, :folder=>folder})
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_worksheets_post_copy_worksheet
  # 
  # 
  # @param name 
  # @param sheet_name 
  # @param source_sheet 
  # @param [Hash] opts the optional parameters
  # @option opts [CopyOptions] :options 
  # @option opts [String] :source_workbook 
  # @option opts [String] :source_folder 
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_worksheets_post_copy_worksheet test' do
    it "should work" do
      name = 'NewCopy.xlsx'
      sheet_name = $SHEET5
      source_sheet = $SHEET6
      options = AsposeCellsCloud::CopyOptions.new({:ColumnCharacterWidth=>true})
      source_workbook = $BOOK1
      source_folder = $TEMPFOLDER
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.upload_file( folder+"/"+source_workbook,  ::File.open(File.expand_path("data/"+source_workbook),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_post_copy_worksheet(name, sheet_name, source_sheet,{  :options=>options,  :source_workbook=>source_workbook, :source_folder=>source_folder,:folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_worksheets_post_move_worksheet
  # Move worksheet.
  # 
  # @param name Document name.
  # @param sheet_name The worksheet name.
  # @param [Hash] opts the optional parameters
  # @option opts [WorksheetMovingRequest] :moving with moving parameters.
  # @option opts [String] :folder The document folder.
  # @option opts [String] :storage storage name.
  # @return [WorksheetsResponse]
  describe 'cells_worksheets_post_move_worksheet test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      moving = AsposeCellsCloud::WorksheetMovingRequest.new({:DestinationWorksheet=>$SHEET3,:Position=>'after'})
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_post_move_worksheet(name, sheet_name,  { :moving=>moving,:folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
  # unit tests for cells_worksheets_post_update_worksheet_zoom
  # 
  # 
  # @param name 
  # @param sheet_name 
  # @param value 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_worksheets_post_update_worksheet_zoom test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      value = 1
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_post_update_worksheet_zoom(name, sheet_name, value, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_worksheets_post_worksheet_range_sort
  # Sort worksheet range.
  # 
  # @param name The workbook name.
  # @param sheet_name The worksheet name.
  # @param cell_area The range to sort.
  # @param [Hash] opts the optional parameters
  # @option opts [DataSorter] :data_sorter with sorting settings.
  # @option opts [String] :folder The workbook folder.
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_worksheets_post_worksheet_range_sort test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      cell_area = $CELLAREA
      data_sorter = AsposeCellsCloud::DataSorter.new(:CaseSensitive=>true)
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_post_worksheet_range_sort(name, sheet_name, cell_area, {:data_sorter=>data_sorter,  :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_worksheets_post_worksheet_text_search
  # Search text.
  # 
  # @param name Document name.
  # @param sheet_name The worksheet name.
  # @param text Text to search.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Document&#39;s folder.
  # @option opts [String] :storage storage name.
  # @return [TextItemsResponse]
  describe 'cells_worksheets_post_worksheet_text_search test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      text = '123456'
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_post_worksheet_text_search(name, sheet_name, text, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_worksheets_post_worsheet_text_replace
  # Replace text.
  # 
  # @param name Document name.
  # @param sheet_name Worksheet name.
  # @param old_value The old text to replace.
  # @param new_value The new text to replace by.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Document&#39;s folder.
  # @option opts [String] :storage storage name.
  # @return [WorksheetReplaceResponse]
  describe 'cells_worksheets_post_worsheet_text_replace test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      old_value = '123'
      new_value = '123456'
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_post_worsheet_text_replace(name, sheet_name, old_value, new_value, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_worksheets_post_update_worksheet_property
  # Update worksheet property
  # 
  # @param name 
  # @param sheet_name 
  # @param [Hash] opts the optional parameters
  # @option opts [Worksheet] :sheet 
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [WorksheetResponse]
  describe 'cells_worksheets_post_update_worksheet_property test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      sheet = AsposeCellsCloud::Worksheet.new({:IsGridlinesVisible=>true})
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_post_update_worksheet_property(name, sheet_name,  { :sheet=>sheet,:folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_worksheets_put_worksheet_comment
  # Add worksheet&#39;s cell comment.
  # 
  # @param name The document name.
  # @param sheet_name The worksheet name.
  # @param cell_name The cell name
  # @param [Hash] opts the optional parameters
  # @option opts [Comment] :comment Comment object
  # @option opts [String] :folder The document folder.
  # @option opts [String] :storage storage name.
  # @return [CommentResponse]
  describe 'cells_worksheets_put_worksheet_comment test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      cell_name = 'C1'
      comment = AsposeCellsCloud::Comment.new({:Author=>'Roy'})
      folder = $TEMPFOLDER
      @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      @instance.cells_worksheets_put_worksheet_comment(name, sheet_name, cell_name, {:comment=>comment,  :folder=>folder})
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
  # unit tests for cells_worksheets_get_worksheet_comment
  # Get worksheet comment by cell name.
  # 
  # @param name The document name.
  # @param sheet_name The worksheet name.
  # @param cell_name The cell name
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder The document folder.
  # @option opts [String] :storage storage name.
  # @return [CommentResponse]
  describe 'cells_worksheets_get_worksheet_comment test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      cell_name = 'B3'
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_get_worksheet_comment(name, sheet_name, cell_name, { :folder=>folder})
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
  # unit tests for cells_worksheets_post_worksheet_comment
  # Update worksheet&#39;s cell comment.
  # 
  # @param name The document name.
  # @param sheet_name The worksheet name.
  # @param cell_name The cell name
  # @param [Hash] opts the optional parameters
  # @option opts [Comment] :comment Comment object
  # @option opts [String] :folder The document folder.
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_worksheets_post_worksheet_comment test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      cell_name = 'B3'
      comment = AsposeCellsCloud::Comment.new({:Author=>'Roy'})
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_post_worksheet_comment(name, sheet_name, cell_name, {:comment=>comment,  :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
  # unit tests for cells_worksheets_put_worksheet_freeze_panes
  # Set freeze panes
  # 
  # @param name 
  # @param sheet_name 
  # @param row 
  # @param column 
  # @param freezed_rows 
  # @param freezed_columns 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_worksheets_put_worksheet_freeze_panes test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      row = 1
      column = 1
      freezed_rows = 10
      freezed_columns = 10
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_put_worksheet_freeze_panes(name, sheet_name, row, column, freezed_rows, freezed_columns, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
  # unit tests for cells_worksheets_put_protect_worksheet
  # Protect worksheet.
  # 
  # @param name Document name.
  # @param sheet_name The worksheet name.
  # @param [Hash] opts the optional parameters
  # @option opts [ProtectSheetParameter] :protect_parameter with protection settings.
  # @option opts [String] :folder Document folder.
  # @option opts [String] :storage storage name.
  # @return [WorksheetResponse]
  describe 'cells_worksheets_put_protect_worksheet test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      protect_parameter = AsposeCellsCloud::ProtectSheetParameter.new({:ProtectionType=>'All',:Password=>'123456'})
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_put_protect_worksheet(name, sheet_name,  { :protect_parameter=>protect_parameter,:folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
  # unit tests for cells_worksheets_delete_unprotect_worksheet
  # Unprotect worksheet.
  # 
  # @param name Document name.
  # @param sheet_name The worksheet name.
  # @param [Hash] opts the optional parameters
  # @option opts [ProtectSheetParameter] :protect_parameter with protection settings. Only password is used here.
  # @option opts [String] :folder Document folder.
  # @option opts [String] :storage storage name.
  # @return [WorksheetResponse]
  describe 'cells_worksheets_delete_unprotect_worksheet test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      protect_parameter = AsposeCellsCloud::ProtectSheetParameter.new({:Password=>'123456',:ProtectionType=>'All'})
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_delete_unprotect_worksheet(name, sheet_name, {:protect_parameter=>protect_parameter,  :folder=>folder})
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
  # unit tests for cells_worksheets_post_rename_worksheet
  # Rename worksheet
  # 
  # @param name 
  # @param sheet_name 
  # @param newname 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder 
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_worksheets_post_rename_worksheet test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      newname = 'renametest'
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_post_rename_worksheet(name, sheet_name, newname, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_worksheets_put_add_new_worksheet
  # Add new worksheet.
  # 
  # @param name Document name.
  # @param sheet_name The new sheet name.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :position The new sheet position.
  # @option opts [String] :sheettype The new sheet type.
  # @option opts [String] :folder Document folder.
  # @option opts [String] :storage storage name.
  # @return [WorksheetsResponse]
  describe 'cells_worksheets_put_add_new_worksheet test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      position = 1
      sheettype = 'VB'
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_put_add_new_worksheet(name, sheet_name,  {:position=>position, :sheettype=>sheettype, :folder=>folder})
      expect(result.code).to eql(201)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_worksheets_put_change_visibility_worksheet
  # Change worksheet visibility.
  # 
  # @param name Document name.
  # @param sheet_name Worksheet name.
  # @param is_visible New worksheet visibility value.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder The document folder.
  # @option opts [String] :storage storage name.
  # @return [WorksheetResponse]
  describe 'cells_worksheets_put_change_visibility_worksheet test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      is_visible = true
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_put_change_visibility_worksheet(name, sheet_name, is_visible, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_worksheets_delete_worksheet
  # Delete worksheet.
  # 
  # @param name Document name.
  # @param sheet_name The worksheet name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Document&#39;s folder.
  # @option opts [String] :storage storage name.
  # @return [WorksheetsResponse]
  describe 'cells_worksheets_delete_worksheet test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name, ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_worksheets_delete_worksheet(name, sheet_name, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
end
