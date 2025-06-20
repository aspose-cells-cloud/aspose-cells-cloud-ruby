=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="SearchContentInRemoteWorksheet_request.rb.cs">
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
  class SearchContentInRemoteWorksheetRequest

    attr_accessor :name  
    attr_accessor :worksheet  
    attr_accessor :search_text  
    attr_accessor :ignoring_case  
    attr_accessor :folder  
    attr_accessor :storage_name  
    attr_accessor :regoin  
    attr_accessor :password  

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'name')
          self.name = attributes[:'name']
      end

      if attributes.has_key?(:'worksheet')
          self.worksheet = attributes[:'worksheet']
      end

      if attributes.has_key?(:'searchText')
          self.search_text = attributes[:'searchText']
      end

      if attributes.has_key?(:'ignoringCase')
          self.ignoring_case = attributes[:'ignoringCase']
      end

      if attributes.has_key?(:'folder')
          self.folder = attributes[:'folder']
      end

      if attributes.has_key?(:'storageName')
          self.storage_name = attributes[:'storageName']
      end

      if attributes.has_key?(:'regoin')
          self.regoin = attributes[:'regoin']
      end

      if attributes.has_key?(:'password')
          self.password = attributes[:'password']
      end

    end    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'worksheet' => :'worksheet',
        :'search_text' => :'searchText',
        :'ignoring_case' => :'ignoringCase',
        :'folder' => :'folder',
        :'storage_name' => :'storageName',
        :'regoin' => :'regoin',
        :'password' => :'password'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'worksheet' => :'String',
        :'search_text' => :'String',
        :'ignoring_case' => :'BOOLEAN',
        :'folder' => :'String',
        :'storage_name' => :'String',
        :'regoin' => :'String',
        :'password' => :'String'
      }
    end

    def create_http_request(api_client,opts = {})
      if api_client.config.debugging
        api_client.config.logger.debug "Calling API: CellsApi.search_content_in_remote_worksheet ..."
      end
      api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if api_client.config.client_side_validation && name.nil?
          fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.search_content_in_remote_worksheet "
      end 
      # verify the required parameter 'worksheet' is set
      if api_client.config.client_side_validation && worksheet.nil?
          fail ArgumentError, "Missing the required parameter 'worksheet' when calling CellsApi.search_content_in_remote_worksheet "
      end 
      # verify the required parameter 'search_text' is set
      if api_client.config.client_side_validation && search_text.nil?
          fail ArgumentError, "Missing the required parameter 'search_text' when calling CellsApi.search_content_in_remote_worksheet "
      end 

      # resource path
      local_var_path = "v4.0/cells/{name}/worksheets/{worksheet}/search/content".sub('{' + 'name' + '}', name.to_s).sub('{' + 'worksheet' + '}', worksheet.to_s)
      # query parameters
      query_params = {}
      query_params[:'searchText'] = self.search_text if !self.search_text.nil? 
      query_params[:'ignoringCase'] = self.ignoring_case if !self.ignoring_case.nil? 
      query_params[:'folder'] = self.folder if !self.folder.nil? 
      query_params[:'storageName'] = self.storage_name if !self.storage_name.nil? 
      query_params[:'regoin'] = self.regoin if !self.regoin.nil? 
      query_params[:'password'] = self.password if !self.password.nil? 

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
      data, status_code, headers = api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SearchResponse')
      if api_client.config.debugging
        api_client.config.logger.debug "API called: Specification.Name>Api.search_content_in_remote_worksheet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end