require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'],'v3.0',ENV['CellsCloudApiBaseUrl'])

book1_xlsx = 'Book1.xlsx'

    
mapFiles = { }   
cellsDocumentscellsDocument0 = AsposeCellsCloud::CellsDocumentProperty.new(:Name=>'Author' ,:Value=>'roy.wang' );
cellsDocuments = [
    cellsDocumentscellsDocument0
];
mapFiles[book1_xlsx]= ::File.open(File.expand_path("TestData/"+book1_xlsx),"r")
request =   AsposeCellsCloud::PostMetadataRequest.new(:File=>mapFiles,:cellsDocuments=>cellsDocuments);
@instance.post_metadata(request);
