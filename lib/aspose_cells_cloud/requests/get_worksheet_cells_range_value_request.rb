=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="GetWorksheetCellsRangeValue_request.rb.cs">
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
  class GetWorksheetCellsRangeValueRequest

    attr_accessor :name  
    attr_accessor :sheet_name  
    attr_accessor :namerange  
    attr_accessor :first_row  
    attr_accessor :first_column  
    attr_accessor :row_count  
    attr_accessor :column_count  
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
      if attributes.has_key?(:'namerange')
          self.namerange = attributes[:'namerange']
      end
      if attributes.has_key?(:'firstRow')
          self.first_row = attributes[:'firstRow']
      end
      if attributes.has_key?(:'firstColumn')
          self.first_column = attributes[:'firstColumn']
      end
      if attributes.has_key?(:'rowCount')
          self.row_count = attributes[:'rowCount']
      end
      if attributes.has_key?(:'columnCount')
          self.column_count = attributes[:'columnCount']
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
        :'namerange' => :'namerange',
        :'first_row' => :'firstRow',
        :'first_column' => :'firstColumn',
        :'row_count' => :'rowCount',
        :'column_count' => :'columnCount',
        :'folder' => :'folder',
        :'storage_name' => :'storageName'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'sheet_name' => :'String',
        :'namerange' => :'String',
        :'first_row' => :'Integer',
        :'first_column' => :'Integer',
        :'row_count' => :'Integer',
        :'column_count' => :'Integer',
        :'folder' => :'String',
        :'storage_name' => :'String'
      }
    end

    def create_http_request(api_client,opts = {})
      if api_client.config.debugging
        api_client.config.logger.debug "Calling API: CellsApi.get_worksheet_cells_range_value ..."
      end
      api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if api_client.config.client_side_validation && name.nil?
          fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.get_worksheet_cells_range_value "
      end 
      # verify the required parameter 'sheet_name' is set
      if api_client.config.client_side_validation && sheet_name.nil?
          fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.get_worksheet_cells_range_value "
      end 

      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/ranges/value".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)
      # query parameters
      query_params = {}
      query_params[:'namerange'] = self.namerange if !self.namerange.nil? 
      query_params[:'firstRow'] = self.first_row if !self.first_row.nil? 
      query_params[:'firstColumn'] = self.first_column if !self.first_column.nil? 
      query_params[:'rowCount'] = self.row_count if !self.row_count.nil? 
      query_params[:'columnCount'] = self.column_count if !self.column_count.nil? 
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
      data, status_code, headers = api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RangeValueResponse')
      if api_client.config.debugging
        api_client.config.logger.debug "API called: Specification.Name>Api.get_worksheet_cells_range_value\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end