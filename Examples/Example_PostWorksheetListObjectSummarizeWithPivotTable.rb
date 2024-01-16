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
createPivotTableRequestPivotFieldColumns = [
    2
];
createPivotTableRequestPivotFieldData = [
    1
];
createPivotTableRequestPivotFieldRows = [
    0
];
createPivotTableRequest = AsposeCellsCloud::CreatePivotTableRequest.new(:DestCellName=>'C1' ,:Name=>'testp' ,:SourceData=>'=Sheet2!A1:E8' ,:UseSameSource=>true ,:PivotFieldColumns=>createPivotTableRequestPivotFieldColumns ,:PivotFieldData=>createPivotTableRequestPivotFieldData ,:PivotFieldRows=>createPivotTableRequestPivotFieldRows );
request =   AsposeCellsCloud::PostWorksheetListObjectSummarizeWithPivotTableRequest.new(:name=>remote_name,:sheetName=>'Sheet7',:listObjectIndex=>0,:destsheetName=>'Sheet2',:createPivotTableRequest=>createPivotTableRequest,:folder=>remote_folder,:storageName=>'');
@instance.post_worksheet_list_object_summarize_with_pivot_table(request);
