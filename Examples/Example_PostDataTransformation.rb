require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'],'v3.0',ENV['CellsCloudApiBaseUrl'])

remote_folder = 'TestData/In'

local_name = 'BookTableL2W.xlsx'
remote_name = 'BookTableL2W.xlsx'

    
mapFiles = { }               
mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
 
uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
@instance.upload_file(uploadrequest)
dataTransformationRequestLoadDataLoadTo = AsposeCellsCloud::LoadTo.new(:beginColumnIndex=>2 ,:beginRowIndex=>3 ,:Worksheet=>'L2W' );
dataTransformationRequestLoadDataDataQueryDataItem = AsposeCellsCloud::DataItem.new(:DataItemType=>'Table' ,:Value=>'Table1' );
dataTransformationRequestLoadDataDataQueryDataSource = AsposeCellsCloud::DataSource.new(:DataSourceType=>'CloudFileSystem' ,:DataPath=>'BookTableL2W.xlsx' );
dataTransformationRequestLoadDataDataQuery = AsposeCellsCloud::DataQuery.new(:Name=>'DataQuery' ,:DataItem=>dataTransformationRequestLoadDataDataQueryDataItem ,:DataSource=>dataTransformationRequestLoadDataDataQueryDataSource ,:DataSourceDataType=>'ListObject' );
dataTransformationRequestLoadData = AsposeCellsCloud::LoadData.new(:LoadTo=>dataTransformationRequestLoadDataLoadTo ,:DataQuery=>dataTransformationRequestLoadDataDataQuery );
dataTransformationRequestAppliedStepsAppliedStep0AppliedOperateUnpivotColumnNames = [
    '2017',
    '2018',
    '2019'
];
dataTransformationRequestAppliedStepsAppliedStep0AppliedOperate = AsposeCellsCloud::UnpivotColumn.new(:AppliedOperateType=>'UnpivotColumn' ,:ValueMapName=>'Count' ,:ColumnMapName=>'Date' ,:UnpivotColumnNames=>dataTransformationRequestAppliedStepsAppliedStep0AppliedOperateUnpivotColumnNames );
dataTransformationRequestAppliedStepsAppliedStep0 = AsposeCellsCloud::AppliedStep.new(:StepName=>'UnpivotColumn' ,:AppliedOperate=>dataTransformationRequestAppliedStepsAppliedStep0AppliedOperate );
dataTransformationRequestAppliedSteps = [
    dataTransformationRequestAppliedStepsAppliedStep0
];
dataTransformationRequest = AsposeCellsCloud::DataTransformationRequest.new(:LoadData=>dataTransformationRequestLoadData ,:AppliedSteps=>dataTransformationRequestAppliedSteps );
request =   AsposeCellsCloud::PostDataTransformationRequest.new(:dataTransformationRequest=>dataTransformationRequest);
@instance.post_data_transformation(request);
