=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PostReverse_request.rb.cs">
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
  class PostReverseRequest

    attr_accessor :file  
    attr_accessor :rotate_type  
    attr_accessor :format  
    attr_accessor :password  
    attr_accessor :check_excel_restriction  

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'File')
          self.file = attributes[:'File']
      end
      if attributes.has_key?(:'rotateType')
          self.rotate_type = attributes[:'rotateType']
      end
      if attributes.has_key?(:'format')
          self.format = attributes[:'format']
      end
      if attributes.has_key?(:'password')
          self.password = attributes[:'password']
      end
      if attributes.has_key?(:'checkExcelRestriction')
          self.check_excel_restriction = attributes[:'checkExcelRestriction']
      end

    end    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'file' => :'File',
        :'rotate_type' => :'rotateType',
        :'format' => :'format',
        :'password' => :'password',
        :'check_excel_restriction' => :'checkExcelRestriction'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'file' => :'Hash',
        :'rotate_type' => :'String',
        :'format' => :'String',
        :'password' => :'String',
        :'check_excel_restriction' => :'BOOLEAN'
      }
    end

    def create_http_request(api_client,opts = {})
      if api_client.config.debugging
        api_client.config.logger.debug "Calling API: CellsApi.post_reverse ..."
      end
      api_client.request_token_if_needed
      # verify the required parameter 'file' is set
      if api_client.config.client_side_validation && file.nil?
          fail ArgumentError, "Missing the required parameter 'file' when calling CellsApi.post_reverse "
      end 
      # verify the required parameter 'rotate_type' is set
      if api_client.config.client_side_validation && rotate_type.nil?
          fail ArgumentError, "Missing the required parameter 'rotate_type' when calling CellsApi.post_reverse "
      end 

      # resource path
      local_var_path = "/cells/reverse"
      # query parameters
      query_params = {}
      query_params[:'rotateType'] = self.rotate_type if !self.rotate_type.nil? 
      query_params[:'format'] = self.format if !self.format.nil? 
      query_params[:'password'] = self.password if !self.password.nil? 
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
        :return_type => 'FilesResult')
      if api_client.config.debugging
        api_client.config.logger.debug "API called: Specification.Name>Api.post_reverse\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end