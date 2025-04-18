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
rangeOperateSource = AsposeCellsCloud::Range.new(:ColumnCount=>3 ,:FirstColumn=>8 ,:FirstRow=>3 ,:RowCount=>2 );
rangeOperateTarget = AsposeCellsCloud::Range.new(:ColumnCount=>3 ,:FirstColumn=>8 ,:FirstRow=>13 ,:RowCount=>2 );
rangeOperate = AsposeCellsCloud::RangeCopyRequest.new(:Operate=>'copydata' ,:Source=>rangeOperateSource ,:Target=>rangeOperateTarget );
request =   AsposeCellsCloud::PostWorksheetCellsRangesCopyRequest.new(:name=>remote_name,:sheetName=>'Sheet1',:rangeOperate=>rangeOperate,:folder=>remote_folder,:storageName=>'');
@instance.post_worksheet_cells_ranges_copy(request);
