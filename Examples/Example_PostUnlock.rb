require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'],'v3.0',ENV['CellsCloudApiBaseUrl'])

need_unlock_xlsx = 'needUnlock.xlsx'

    
mapFiles = { }   
mapFiles[need_unlock_xlsx]= ::File.open(File.expand_path("TestData/"+need_unlock_xlsx),"r")
request =   AsposeCellsCloud::PostUnlockRequest.new(:File=>mapFiles,:password=>'123456');
@instance.post_unlock(request);
