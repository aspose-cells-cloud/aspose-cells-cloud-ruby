=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="CopyFolder_request.rb.cs">
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
  class CopyFolderRequest

    attr_accessor :src_path  
    attr_accessor :dest_path  
    attr_accessor :src_storage_name  
    attr_accessor :dest_storage_name  

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'srcPath')
          self.src_path = attributes[:'srcPath']
      end
      if attributes.has_key?(:'destPath')
          self.dest_path = attributes[:'destPath']
      end
      if attributes.has_key?(:'srcStorageName')
          self.src_storage_name = attributes[:'srcStorageName']
      end
      if attributes.has_key?(:'destStorageName')
          self.dest_storage_name = attributes[:'destStorageName']
      end

    end    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'src_path' => :'srcPath',
        :'dest_path' => :'destPath',
        :'src_storage_name' => :'srcStorageName',
        :'dest_storage_name' => :'destStorageName'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'src_path' => :'String',
        :'dest_path' => :'String',
        :'src_storage_name' => :'String',
        :'dest_storage_name' => :'String'
      }
    end

    def create_http_request(api_client,opts = {})
      if api_client.config.debugging
        api_client.config.logger.debug "Calling API: CellsApi.copy_folder ..."
      end
      api_client.request_token_if_needed
      # verify the required parameter 'src_path' is set
      if api_client.config.client_side_validation && src_path.nil?
          fail ArgumentError, "Missing the required parameter 'src_path' when calling CellsApi.copy_folder "
      end 
      # verify the required parameter 'dest_path' is set
      if api_client.config.client_side_validation && dest_path.nil?
          fail ArgumentError, "Missing the required parameter 'dest_path' when calling CellsApi.copy_folder "
      end 

      # resource path
      local_var_path = "/cells/storage/folder/copy/{srcPath}".sub('{' + 'srcPath' + '}', src_path.to_s)
      # query parameters
      query_params = {}
      query_params[:'destPath'] = self.dest_path if !self.dest_path.nil? 
      query_params[:'srcStorageName'] = self.src_storage_name if !self.src_storage_name.nil? 
      query_params[:'destStorageName'] = self.dest_storage_name if !self.dest_storage_name.nil? 

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
        :auth_names => auth_names)
      if api_client.config.debugging
        api_client.config.logger.debug "API called: Specification.Name>Api.copy_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end