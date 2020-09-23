require 'spec_helper'
require 'json'


describe 'Cells Sparkline Group Api' do
  before do
     @instance = AsposeCellsCloud::CellsApi.new($client_id,$client_secret,"v3.0",$baseurl)
  end

  after do
    # run after each test
  end


  # unit tests for one case

  describe 'cells_get_worksheet_cell test' do
    it "should work" do
      name = $PivTestFile
      sheet_name = $SHEET1
      folder = $TEMPFOLDER
      storage = nil
      result = @instance.upload_file( folder+"/"+name,  ::File.open(File.expand_path("data/"+name),"r") {|io| io.read(io.size) })
      expect(result.uploaded.size).to  be > 0
      result = @instance.cells_sparkline_groups_get_worksheet_sparkline_groups(name, sheet_name, { :folder=>folder})
      expect(result.code).to eql(200)
      result = @instance.cells_sparkline_groups_put_worksheet_sparkline_group(name, sheet_name,"Line","C6:E13",'false', "G6:G13", { :folder=>folder})
      expect(result.code).to eql(200)
      result = @instance.cells_sparkline_groups_get_worksheet_sparkline_group(name, sheet_name,0,{ :folder=>folder})
      expect(result.code).to eql(200)
      sparkline_group = AsposeCellsCloud::SparklineGroup.new({:DisplayHidden=>true})
      result = @instance.cells_sparkline_groups_post_worksheet_sparkline_group(name, sheet_name,0,sparkline_group,{ :folder=>folder})
      expect(result.code).to eql(200)
      result = @instance.cells_sparkline_groups_delete_worksheet_sparkline_group(name, sheet_name,0,{ :folder=>folder})
      expect(result.code).to eql(200)
      result = @instance.cells_sparkline_groups_delete_worksheet_sparkline_groups(name, sheet_name,{ :folder=>folder})
      expect(result.code).to eql(200)
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
