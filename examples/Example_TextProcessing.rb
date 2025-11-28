require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret']);
request =   AsposeCellsCloud::TrimCharacterRequest(:Spreadsheet=>'BookText.xlsx',:trimSpaceBetweenWordTo1=>true)
response = @instance.trim_character(request );
FileUtils.cp(response.path, 'out.xlsx')