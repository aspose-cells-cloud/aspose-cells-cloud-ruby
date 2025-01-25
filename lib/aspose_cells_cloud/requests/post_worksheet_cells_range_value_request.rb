=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PostWorksheetCellsRangeValue_request.rb.cs">
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
  class PostWorksheetCellsRangeValueRequest

    attr_accessor :name  
    attr_accessor :sheet_name  
    attr_accessor :range  
    attr_accessor :value  
    attr_accessor :is_converted  
    attr_accessor :set_style  
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
      if attributes.has_key?(:'range')
          self.range = attributes[:'range']
      end
      if attributes.has_key?(:'Value')
          self.value = attributes[:'Value']
      end
      if attributes.has_key?(:'isConverted')
          self.is_converted = attributes[:'isConverted']
      end
      if attributes.has_key?(:'setStyle')
          self.set_style = attributes[:'setStyle']
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
        :'range' => :'range',
        :'value' => :'Value',
        :'is_converted' => :'isConverted',
        :'set_style' => :'setStyle',
        :'folder' => :'folder',
        :'storage_name' => :'storageName'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'sheet_name' => :'String',
        :'range' => :'Range',
        :'value' => :'String',
        :'is_converted' => :'BOOLEAN',
        :'set_style' => :'BOOLEAN',
        :'folder' => :'String',
        :'storage_name' => :'String'
      }
    end

    def create_http_request(api_client,opts = {})
      if api_client.config.debugging
        api_client.config.logger.debug "Calling API: CellsApi.post_worksheet_cells_range_value ..."
      end
      api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if api_client.config.client_side_validation && name.nil?
          fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.post_worksheet_cells_range_value "
      end 
      # verify the required parameter 'sheet_name' is set
      if api_client.config.client_side_validation && sheet_name.nil?
          fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.post_worksheet_cells_range_value "
      end 
      # verify the required parameter 'range' is set
      if api_client.config.client_side_validation && range.nil?
          fail ArgumentError, "Missing the required parameter 'range' when calling CellsApi.post_worksheet_cells_range_value "
      end 
      # verify the required parameter 'value' is set
      if api_client.config.client_side_validation && value.nil?
          fail ArgumentError, "Missing the required parameter 'value' when calling CellsApi.post_worksheet_cells_range_value "
      end 

      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/ranges/value".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)
      # query parameters
      query_params = {}
      query_params[:'Value'] = self.value if !self.value.nil? 
      query_params[:'isConverted'] = self.is_converted if !self.is_converted.nil? 
      query_params[:'setStyle'] = self.set_style if !self.set_style.nil? 
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
      post_body = api_client.object_to_http_body(range) 
         

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
        api_client.config.logger.debug "API called: Specification.Name>Api.post_worksheet_cells_range_value\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end