=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PostWorksheetListObjectInsertSlicer_request.rb.cs">
   Copyright (c) 2025 Aspose.Cells Cloud
 </copyright>
 <summary>
   Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all
  copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  SOFTWARE.
 </summary>
--------------------------------------------------------------------------------------------------------------------
=end


require "uri"

module AsposeCellsCloud
  class PostWorksheetListObjectInsertSlicerRequest

    attr_accessor :name  
    attr_accessor :sheet_name  
    attr_accessor :list_object_index  
    attr_accessor :column_index  
    attr_accessor :dest_cell_name  
    attr_accessor :folder  
    attr_accessor :storage_name  

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'name')
          self.name = attributes[:'name']
      end
      if attributes.has_key?(:'sheetName')
          self.sheet_name = attributes[:'sheetName']
      end
      if attributes.has_key?(:'listObjectIndex')
          self.list_object_index = attributes[:'listObjectIndex']
      end
      if attributes.has_key?(:'columnIndex')
          self.column_index = attributes[:'columnIndex']
      end
      if attributes.has_key?(:'destCellName')
          self.dest_cell_name = attributes[:'destCellName']
      end
      if attributes.has_key?(:'folder')
          self.folder = attributes[:'folder']
      end
      if attributes.has_key?(:'storageName')
          self.storage_name = attributes[:'storageName']
      end

    end    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'sheet_name' => :'sheetName',
        :'list_object_index' => :'listObjectIndex',
        :'column_index' => :'columnIndex',
        :'dest_cell_name' => :'destCellName',
        :'folder' => :'folder',
        :'storage_name' => :'storageName'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'sheet_name' => :'String',
        :'list_object_index' => :'Integer',
        :'column_index' => :'Integer',
        :'dest_cell_name' => :'String',
        :'folder' => :'String',
        :'storage_name' => :'String'
      }
    end

    def create_http_request(api_client,opts = {})
      if api_client.config.debugging
        api_client.config.logger.debug "Calling API: CellsApi.post_worksheet_list_object_insert_slicer ..."
      end
      api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if api_client.config.client_side_validation && name.nil?
          fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.post_worksheet_list_object_insert_slicer "
      end 
      # verify the required parameter 'sheet_name' is set
      if api_client.config.client_side_validation && sheet_name.nil?
          fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.post_worksheet_list_object_insert_slicer "
      end 
      # verify the required parameter 'list_object_index' is set
      if api_client.config.client_side_validation && list_object_index.nil?
          fail ArgumentError, "Missing the required parameter 'list_object_index' when calling CellsApi.post_worksheet_list_object_insert_slicer "
      end 
      # verify the required parameter 'column_index' is set
      if api_client.config.client_side_validation && column_index.nil?
          fail ArgumentError, "Missing the required parameter 'column_index' when calling CellsApi.post_worksheet_list_object_insert_slicer "
      end 
      # verify the required parameter 'dest_cell_name' is set
      if api_client.config.client_side_validation && dest_cell_name.nil?
          fail ArgumentError, "Missing the required parameter 'dest_cell_name' when calling CellsApi.post_worksheet_list_object_insert_slicer "
      end 

      # resource path
      local_var_path = "v3.0/cells/{name}/worksheets/{sheetName}/listobjects/{listObjectIndex}/InsertSlicer".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'listObjectIndex' + '}', list_object_index.to_s)
      # query parameters
      query_params = {}
      query_params[:'columnIndex'] = self.column_index if !self.column_index.nil? 
      query_params[:'destCellName'] = self.dest_cell_name if !self.dest_cell_name.nil? 
      query_params[:'folder'] = self.folder if !self.folder.nil? 
      query_params[:'storageName'] = self.storage_name if !self.storage_name.nil? 

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      post_body = nil 
         

      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if api_client.config.debugging
        api_client.config.logger.debug "API called: Specification.Name>Api.post_worksheet_list_object_insert_slicer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end