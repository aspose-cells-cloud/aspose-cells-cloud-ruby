=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="MergeSpreadsheetsInRemoteFolder_request.rb.cs">
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
  class MergeSpreadsheetsInRemoteFolderRequest

    attr_accessor :folder  
    attr_accessor :file_match_expression  
    attr_accessor :out_format  
    attr_accessor :merge_in_one_sheet  
    attr_accessor :storage_name  
    attr_accessor :out_path  
    attr_accessor :out_storage_name  
    attr_accessor :fonts_location  
    attr_accessor :regoin  
    attr_accessor :password  

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'folder')
          self.folder = attributes[:'folder']
      end

      if attributes.has_key?(:'fileMatchExpression')
          self.file_match_expression = attributes[:'fileMatchExpression']
      end

      if attributes.has_key?(:'outFormat')
          self.out_format = attributes[:'outFormat']
      end

      if attributes.has_key?(:'mergeInOneSheet')
          self.merge_in_one_sheet = attributes[:'mergeInOneSheet']
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

      if attributes.has_key?(:'fontsLocation')
          self.fonts_location = attributes[:'fontsLocation']
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
        :'folder' => :'folder',
        :'file_match_expression' => :'fileMatchExpression',
        :'out_format' => :'outFormat',
        :'merge_in_one_sheet' => :'mergeInOneSheet',
        :'storage_name' => :'storageName',
        :'out_path' => :'outPath',
        :'out_storage_name' => :'outStorageName',
        :'fonts_location' => :'fontsLocation',
        :'regoin' => :'regoin',
        :'password' => :'password'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'folder' => :'String',
        :'file_match_expression' => :'String',
        :'out_format' => :'String',
        :'merge_in_one_sheet' => :'BOOLEAN',
        :'storage_name' => :'String',
        :'out_path' => :'String',
        :'out_storage_name' => :'String',
        :'fonts_location' => :'String',
        :'regoin' => :'String',
        :'password' => :'String'
      }
    end

    def create_http_request(api_client,opts = {})
      if api_client.config.debugging
        api_client.config.logger.debug "Calling API: CellsApi.merge_spreadsheets_in_remote_folder ..."
      end
      api_client.request_token_if_needed
      # verify the required parameter 'folder' is set
      if api_client.config.client_side_validation && folder.nil?
          fail ArgumentError, "Missing the required parameter 'folder' when calling CellsApi.merge_spreadsheets_in_remote_folder "
      end 

      # resource path
      local_var_path = "v4.0/cells/merge/remote-spreadsheets"
      # query parameters
      query_params = {}
      query_params[:'folder'] = self.folder if !self.folder.nil? 
      query_params[:'fileMatchExpression'] = self.file_match_expression if !self.file_match_expression.nil? 
      query_params[:'outFormat'] = self.out_format if !self.out_format.nil? 
      query_params[:'mergeInOneSheet'] = self.merge_in_one_sheet if !self.merge_in_one_sheet.nil? 
      query_params[:'storageName'] = self.storage_name if !self.storage_name.nil? 
      query_params[:'outPath'] = self.out_path if !self.out_path.nil? 
      query_params[:'outStorageName'] = self.out_storage_name if !self.out_storage_name.nil? 
      query_params[:'fontsLocation'] = self.fonts_location if !self.fonts_location.nil? 
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
        :return_type => 'File')
      if api_client.config.debugging
        api_client.config.logger.debug "API called: Specification.Name>Api.merge_spreadsheets_in_remote_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end