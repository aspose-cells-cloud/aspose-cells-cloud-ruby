require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'],'v3.0',ENV['CellsCloudApiBaseUrl'])

needlock_xlsx = 'needlock.xlsx'

    
mapFiles = { }   
mapFiles[needlock_xlsx]= ::File.open(File.expand_path("TestData/"+needlock_xlsx),"r")
request =   AsposeCellsCloud::PostLockRequest.new(:File=>mapFiles,:password=>'123456');
@instance.post_lock(request);
