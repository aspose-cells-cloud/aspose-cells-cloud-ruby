require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret']);
request = AsposeCellsCloud::ConvertSpreadsheetRequest.new(:Spreadsheet=>'EmployeeSalesSummary.xlsx',:format=>format);
response = @instance.convert_spreadsheet(request);
FileUtils.cp(response.path, 'EmployeeSalesSummary.csv')