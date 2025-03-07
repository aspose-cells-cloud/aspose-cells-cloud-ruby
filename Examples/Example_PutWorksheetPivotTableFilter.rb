require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'],'v3.0',ENV['CellsCloudApiBaseUrl'])

remote_folder = 'TestData/In'

local_name = 'TestCase.xlsx'
remote_name = 'TestCase.xlsx'

    
mapFiles = { }               
mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
 
uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
@instance.upload_file(uploadrequest)
filter = AsposeCellsCloud::PivotFilter.new(:FieldIndex=>0 ,:FilterType=>'Count' );
request =   AsposeCellsCloud::PutWorksheetPivotTableFilterRequest.new(:name=>remote_name,:sheetName=>'Sheet4',:pivotTableIndex=>0,:filter=>filter,:needReCalculate=>true,:folder=>remote_folder,:storageName=>'');
@instance.put_worksheet_pivot_table_filter(request);
