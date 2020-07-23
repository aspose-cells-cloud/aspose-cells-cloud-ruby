require 'spec_helper'
require 'json'

# Unit tests for AsposeCellsCloud::CellsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CellsApi' do
  before do
    @instance = AsposeCellsCloud::CellsApi.new($client_id,$client_secret,"v3.0")
  end

  after do
    # run after each test
  end



  describe 'cells_storage_test' do
    it "should work" do
      format = 'pdf'
      password = nil
      out_path = "Tdd.pdf"
      name = $BOOK1
      folder = $TEMPFOLDER
      @instance.create_folder("ruby")
      @instance.copy_folder("ruby","ruby1")
      @instance.move_folder("ruby1","ruby")
      @instance.upload_file( "ruby/"+name,  ::File.open("/home/roy/aspose/cells/cloud/sdk/TestData/" +name,"r") {|io| io.read(io.size) })      
      @instance.copy_file("ruby/"+name,"ruby/1"+name)
      @instance.delete_file("ruby/"+name)
      @instance.move_file("ruby/1"+name,"ruby/"+name)
      @instance.download_file("ruby/"+name)
      @instance.delete_file("ruby/"+name)
      @instance.delete_folder("ruby")
      

      #@instance.cells_workbook_put_convert_workbook(::File.open("/home/roywang/asposecellscloudsdk/data/Book1.xlsx","r") {|io| io.read(io.size) },{:format=>format,out_path=>out_path})
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  

  end
