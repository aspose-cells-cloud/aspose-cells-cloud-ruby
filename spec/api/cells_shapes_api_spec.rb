

require 'spec_helper'
require 'json'

# Unit tests for AsposeCellsCloud::CellsShapesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CellsShapesApi' do
  before do
    @instance = AsposeCellsCloud::CellsApi.new($client_id,$client_secret,"v3.0")
  end

  after do
    # run after each test
  end


  # unit tests for cells_shapes_get_worksheet_shape
  # Get worksheet shape
  # 
  # @param name document name.
  # @param sheet_name worksheet name.
  # @param shapeindex shape index in worksheet shapes.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Document&#39;s folder.
  # @option opts [String] :storage storage name.
  # @return [ShapeResponse]
  describe 'cells_shapes_get_worksheet_shape test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      shapeindex = 0
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_shapes_get_worksheet_shape(name, sheet_name, shapeindex, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_shapes_get_worksheet_shapes
  # Get worksheet shapes 
  # 
  # @param name document name.
  # @param sheet_name worksheet name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Document&#39;s folder.
  # @option opts [String] :storage storage name.
  # @return [ShapesResponse]
  describe 'cells_shapes_get_worksheet_shapes test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_shapes_get_worksheet_shapes(name, sheet_name, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_shapes_post_worksheet_shape
  # Update a shape in worksheet
  # 
  # @param name document name.
  # @param sheet_name worksheet name.
  # @param shapeindex shape index in worksheet shapes.
  # @param [Hash] opts the optional parameters
  # @option opts [Shape] :dto 
  # @option opts [String] :folder Document&#39;s folder.
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_shapes_post_worksheet_shape test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      shapeindex = 0
      dto = AsposeCellsCloud::Shape.new({:Name=>'postShape'})
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_shapes_post_worksheet_shape(name, sheet_name, shapeindex,  { :dto=>dto, :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_shapes_put_worksheet_shape
  # Add shape in worksheet
  # 
  # @param name document name.
  # @param sheet_name worksheet name.
  # @param drawing_type shape object type
  # @param upper_left_row Upper left row index.
  # @param upper_left_column Upper left column index.
  # @param top Represents the vertical offset of Spinner from its left row, in unit of pixel.
  # @param left Represents the horizontal offset of Spinner from its left column, in unit of pixel.
  # @param width Represents the height of Spinner, in unit of pixel.
  # @param height Represents the width of Spinner, in unit of pixel.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Document&#39;s folder.
  # @option opts [String] :storage storage name.
  # @return [ShapeResponse]
  describe 'cells_shapes_put_worksheet_shape test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      drawing_type = 'button'
      upper_left_row = 1
      upper_left_column = 1
      top = 10
      left = 10
      width = 100
      height = 80
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_shapes_put_worksheet_shape(name, sheet_name, drawing_type, upper_left_row, upper_left_column, top, left, width, height, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_shapes_delete_worksheet_shape
  # Delete a shape in worksheet
  # 
  # @param name document name.
  # @param sheet_name worksheet name.
  # @param shapeindex shape index in worksheet shapes.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Document&#39;s folder.
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_shapes_delete_worksheet_shape test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      shapeindex = 0
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_shapes_delete_worksheet_shape(name, sheet_name, shapeindex, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cells_shapes_delete_worksheet_shapes
  # delete all shapes in worksheet
  # 
  # @param name document name.
  # @param sheet_name worksheet name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder Document&#39;s folder.
  # @option opts [String] :storage storage name.
  # @return [CellsCloudResponse]
  describe 'cells_shapes_delete_worksheet_shapes test' do
    it "should work" do
      name = $BOOK1
      sheet_name = $SHEET1
      folder = $TEMPFOLDER
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_shapes_delete_worksheet_shapes(name, sheet_name, { :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
