require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'],'v3.0',ENV['CellsCloudApiBaseUrl'])

remote_folder = 'TestData/In'

local_name = 'Group.xlsx'
remote_name = 'Group.xlsx'

    
mapFiles = { }               
mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
 
uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
@instance.upload_file(uploadrequest)
rangeSortRequestDataSorter = AsposeCellsCloud::DataSorter.new(:CaseSensitive=>true );
rangeSortRequestCellArea = AsposeCellsCloud::Range.new(:ColumnCount=>3 ,:FirstColumn=>0 ,:FirstRow=>0 ,:RowCount=>15 );
rangeSortRequest = AsposeCellsCloud::RangeSortRequest.new(:DataSorter=>rangeSortRequestDataSorter ,:CellArea=>rangeSortRequestCellArea );
request =   AsposeCellsCloud::PostWorksheetCellsRangeSortRequest.new(:name=>remote_name,:sheetName=>'book1',:rangeSortRequest=>rangeSortRequest,:folder=>remote_folder,:storageName=>'');
@instance.post_worksheet_cells_range_sort(request);
