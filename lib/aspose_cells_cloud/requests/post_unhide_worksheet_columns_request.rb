=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PostUnhideWorksheetColumns_request.rb.cs">
   Copyright (c) 2023 Aspose.Cells Cloud
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
  class PostUnhideWorksheetColumnsRequest

    attr_accessor :name  
    attr_accessor :sheet_name  
    attr_accessor :start_column  
    attr_accessor :total_columns  
    attr_accessor :width  
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
      if attributes.has_key?(:'startColumn')
          self.start_column = attributes[:'startColumn']
      end
      if attributes.has_key?(:'totalColumns')
          self.total_columns = attributes[:'totalColumns']
      end
      if attributes.has_key?(:'width')
          self.width = attributes[:'width']
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
        :'start_column' => :'startColumn',
        :'total_columns' => :'totalColumns',
        :'width' => :'width',
        :'folder' => :'folder',
        :'storage_name' => :'storageName'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'sheet_name' => :'String',
        :'start_column' => :'Integer',
        :'total_columns' => :'Integer',
        :'width' => :'Float',
        :'folder' => :'String',
        :'storage_name' => :'String'
      }
    end

    def create_http_request(api_client,opts = {})
      if api_client.config.debugging
        api_client.config.logger.debug "Calling API: CellsApi.post_unhide_worksheet_columns ..."
      end
      api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if api_client.config.client_side_validation && name.nil?
          fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.post_unhide_worksheet_columns "
      end 
      # verify the required parameter 'sheet_name' is set
      if api_client.config.client_side_validation && sheet_name.nil?
          fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.post_unhide_worksheet_columns "
      end 
      # verify the required parameter 'start_column' is set
      if api_client.config.client_side_validation && start_column.nil?
          fail ArgumentError, "Missing the required parameter 'start_column' when calling CellsApi.post_unhide_worksheet_columns "
      end 
      # verify the required parameter 'total_columns' is set
      if api_client.config.client_side_validation && total_columns.nil?
          fail ArgumentError, "Missing the required parameter 'total_columns' when calling CellsApi.post_unhide_worksheet_columns "
      end 

      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/columns/unhide".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)
      # query parameters
      query_params = {}
      query_params[:'startColumn'] = self.start_column if !self.start_column.nil? 
      query_params[:'totalColumns'] = self.total_columns if !self.total_columns.nil? 
      query_params[:'width'] = self.width if !self.width.nil? 
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
        api_client.config.logger.debug "API called: Specification.Name>Api.post_unhide_worksheet_columns\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end