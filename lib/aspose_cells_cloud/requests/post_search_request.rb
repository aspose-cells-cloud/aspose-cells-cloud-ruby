=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PostSearch_request.rb.cs">
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
  class PostSearchRequest

    attr_accessor :file  
    attr_accessor :text  
    attr_accessor :password  
    attr_accessor :sheetname  
    attr_accessor :check_excel_restriction  

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'File')
          self.file = attributes[:'File']
      end
      if attributes.has_key?(:'text')
          self.text = attributes[:'text']
      end
      if attributes.has_key?(:'password')
          self.password = attributes[:'password']
      end
      if attributes.has_key?(:'sheetname')
          self.sheetname = attributes[:'sheetname']
      end
      if attributes.has_key?(:'checkExcelRestriction')
          self.check_excel_restriction = attributes[:'checkExcelRestriction']
      end

    end    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'file' => :'File',
        :'text' => :'text',
        :'password' => :'password',
        :'sheetname' => :'sheetname',
        :'check_excel_restriction' => :'checkExcelRestriction'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'file' => :'Hash',
        :'text' => :'String',
        :'password' => :'String',
        :'sheetname' => :'String',
        :'check_excel_restriction' => :'BOOLEAN'
      }
    end

    def create_http_request(api_client,opts = {})
      if api_client.config.debugging
        api_client.config.logger.debug "Calling API: CellsApi.post_search ..."
      end
      api_client.request_token_if_needed
      # verify the required parameter 'file' is set
      if api_client.config.client_side_validation && file.nil?
          fail ArgumentError, "Missing the required parameter 'file' when calling CellsApi.post_search "
      end 
      # verify the required parameter 'text' is set
      if api_client.config.client_side_validation && text.nil?
          fail ArgumentError, "Missing the required parameter 'text' when calling CellsApi.post_search "
      end 

      # resource path
      local_var_path = "v3.0/cells/search"
      # query parameters
      query_params = {}
      query_params[:'text'] = self.text if !self.text.nil? 
      query_params[:'password'] = self.password if !self.password.nil? 
      query_params[:'sheetname'] = self.sheetname if !self.sheetname.nil? 
      query_params[:'checkExcelRestriction'] = self.check_excel_restriction if !self.check_excel_restriction.nil? 

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      post_body = nil 
      if(!file.nil?)
      file.each do |filename , context|
        form_params[filename]  = context
      end 
      end
      header_params['Content-Type'] = api_client.select_header_content_type(['multipart/form-data'])
         

      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<TextItem>')
      if api_client.config.debugging
        api_client.config.logger.debug "API called: Specification.Name>Api.post_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end