=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PostWorkbookExportXML_request.rb.cs">
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
  class PostWorkbookExportXMLRequest

    attr_accessor :name  
    attr_accessor :password  
    attr_accessor :folder  
    attr_accessor :storage_name  
    attr_accessor :out_path  
    attr_accessor :out_storage_name  
    attr_accessor :check_excel_restriction  
    attr_accessor :region  

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'name')
          self.name = attributes[:'name']
      end

      if attributes.has_key?(:'password')
          self.password = attributes[:'password']
      end

      if attributes.has_key?(:'folder')
          self.folder = attributes[:'folder']
      end

      if attributes.has_key?(:'storageName')
          self.storage_name = attributes[:'storageName']
      end

      if attributes.has_key?(:'outPath')
          self.out_path = attributes[:'outPath']
      end

      if attributes.has_key?(:'outStorageName')
          self.out_storage_name = attributes[:'outStorageName']
      end

      if attributes.has_key?(:'checkExcelRestriction')
          self.check_excel_restriction = attributes[:'checkExcelRestriction']
      end

      if attributes.has_key?(:'region')
          self.region = attributes[:'region']
      end

    end    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'password' => :'password',
        :'folder' => :'folder',
        :'storage_name' => :'storageName',
        :'out_path' => :'outPath',
        :'out_storage_name' => :'outStorageName',
        :'check_excel_restriction' => :'checkExcelRestriction',
        :'region' => :'region'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'password' => :'String',
        :'folder' => :'String',
        :'storage_name' => :'String',
        :'out_path' => :'String',
        :'out_storage_name' => :'String',
        :'check_excel_restriction' => :'BOOLEAN',
        :'region' => :'String'
      }
    end

    def create_http_request(api_client,opts = {})
      if api_client.config.debugging
        api_client.config.logger.debug "Calling API: CellsApi.post_workbook_export_xml ..."
      end
      api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if api_client.config.client_side_validation && name.nil?
          fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.post_workbook_export_xml "
      end 

      # resource path
      local_var_path = "v3.0/cells/{name}/exportxml".sub('{' + 'name' + '}', name.to_s)
      # query parameters
      query_params = {}
      query_params[:'password'] = self.password if !self.password.nil? 
      query_params[:'folder'] = self.folder if !self.folder.nil? 
      query_params[:'storageName'] = self.storage_name if !self.storage_name.nil? 
      query_params[:'outPath'] = self.out_path if !self.out_path.nil? 
      query_params[:'outStorageName'] = self.out_storage_name if !self.out_storage_name.nil? 
      query_params[:'checkExcelRestriction'] = self.check_excel_restriction if !self.check_excel_restriction.nil? 
      query_params[:'region'] = self.region if !self.region.nil? 

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
        :return_type => 'File')
      if api_client.config.debugging
        api_client.config.logger.debug "API called: Specification.Name>Api.post_workbook_export_xml\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end