require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'],'v3.0',ENV['CellsCloudApiBaseUrl'])

remote_folder = 'TestData/In'

local_name = 'BookCsvDuplicateData.csv'
remote_name = 'BookCsvDuplicateData.csv'

    
mapFiles = { }               
mapFiles[local_name] = ::File.open(File.expand_path("TestData/"+local_name),"r")  
 
uploadrequest = AsposeCellsCloud::UploadFileRequest.new( { :UploadFiles=>mapFiles,:path=>remote_folder })
@instance.upload_file(uploadrequest)
dataCleansingDataFillDataFillDefaultValue = AsposeCellsCloud::DataFillValue.new(:DefaultDate=>'2024-01-01' ,:DefaultNumber=>0 ,:DefaultBoolean=>false );
dataCleansingDataFill = AsposeCellsCloud::DataFill.new(:DataFillDefaultValue=>dataCleansingDataFillDataFillDefaultValue );
dataCleansing = AsposeCellsCloud::DataCleansing.new(:NeedFillData=>true ,:DataFill=>dataCleansingDataFill );
request =   AsposeCellsCloud::PostWorkbookDataCleansingRequest.new(:name=>remote_name,:dataCleansing=>dataCleansing,:folder=>remote_folder,:storageName=>'');
@instance.post_workbook_data_cleansing(request);
