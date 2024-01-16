require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'],'v3.0',ENV['CellsCloudApiBaseUrl'])

remote_folder = 'TestData/In'

local_name = 'Book1.xlsx'
remote_name = 'Book1.xlsx'

    
mapFiles = { }               
mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
 
uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
@instance.upload_file(uploadrequest)
range = AsposeCellsCloud::Range.new(:ColumnCount=>1 ,:ColumnWidth=>10.0 ,:FirstRow=>1 ,:RowCount=>10 );
request =   AsposeCellsCloud::PostWorksheetCellsRangeRowHeightRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:range=>range,:value=>10.9,:folder=>remote_folder,:storageName=>'');
@instance.post_worksheet_cells_range_row_height(request);
