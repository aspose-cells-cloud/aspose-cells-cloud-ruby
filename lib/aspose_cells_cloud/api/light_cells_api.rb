=begin
--------------------------------------------------------------------------------------------------------------------
Copyright (c) 2022 Aspose.Cells Cloud
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
--------------------------------------------------------------------------------------------------------------------

=end

require "uri"

module AsposeCellsCloud
  class LightCellsApi
    attr_accessor :api_client

    def initialize(client_id,client_secret, app_version = 'v3.0', app_host = 'api.aspose.cloud',  api_client = ApiClient.default)
      @api_client = api_client
      @api_client.config.client_secret = client_secret
      @api_client.config.client_id = client_id
      @api_client.config.api_version = app_version
      @api_client.config.host = app_host
    end

    # 
    # 
    # @param file File to upload
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type  (default to all)
    # @return [FilesResult]
    def delete_metadata(file, opts = {})
      data, _status_code, _headers = delete_metadata_with_http_info(file, opts)
      return data
    end

    # 
    # 
    # @param file File to upload
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type 
    # @return [Array<(FilesResult, Fixnum, Hash)>] FilesResult data, response status code and response headers
    def delete_metadata_with_http_info(file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LightCellsApi.delete_metadata ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling LightCellsApi.delete_metadata"
      end
      # resource path
      local_var_path = "/cells/metadata/delete"

      # query parameters
      query_params = {}
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      file.each do |filename , context|
        form_params[filename]  = context
      end 
      
      # http body (model)
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      post_body = ""
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FilesResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LightCellsApi#delete_metadata\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param file File to upload
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type  (default to all)
    # @return [Array<CellsDocumentProperty>]
    def get_metadata(file, opts = {})
      data, _status_code, _headers = get_metadata_with_http_info(file, opts)
      return data
    end

    # 
    # 
    # @param file File to upload
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type 
    # @return [Array<(Array<CellsDocumentProperty>, Fixnum, Hash)>] Array<CellsDocumentProperty> data, response status code and response headers
    def get_metadata_with_http_info(file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LightCellsApi.get_metadata ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling LightCellsApi.get_metadata"
      end
      # resource path
      local_var_path = "/cells/metadata/get"

      # query parameters
      query_params = {}
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      file.each do |filename , context|
        form_params[filename]  = context
      end 
      
      # http body (model)
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      post_body = ""
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<CellsDocumentProperty>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LightCellsApi#get_metadata\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param file File to upload
    # @param datasource 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format  (default to Xlsx)
    # @return [FilesResult]
    def post_assemble(file, datasource, opts = {})
      data, _status_code, _headers = post_assemble_with_http_info(file, datasource, opts)
      return data
    end

    # 
    # 
    # @param file File to upload
    # @param datasource 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format 
    # @return [Array<(FilesResult, Fixnum, Hash)>] FilesResult data, response status code and response headers
    def post_assemble_with_http_info(file, datasource, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LightCellsApi.post_assemble ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling LightCellsApi.post_assemble"
      end
      # verify the required parameter 'datasource' is set
      if @api_client.config.client_side_validation && datasource.nil?
        fail ArgumentError, "Missing the required parameter 'datasource' when calling LightCellsApi.post_assemble"
      end
      # resource path
      local_var_path = "/cells/assemble"

      # query parameters
      query_params = {}
      query_params[:'datasource'] = datasource
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      # header_params['Content-Type'] == 'multipart/form-data'
      # form parameters
      form_params = {}
      file.each do |filename , context|
        form_params[filename]  = context
      end 
      
      # http body (model)
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      post_body = ""
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FilesResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LightCellsApi#post_assemble\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param file File to upload
    # @param objecttype 
    # @param [Hash] opts the optional parameters
    # @return [FilesResult]
    def post_clear_objects(file, objecttype, opts = {})
      data, _status_code, _headers = post_clear_objects_with_http_info(file, objecttype, opts)
      return data
    end

    # 
    # 
    # @param file File to upload
    # @param objecttype 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FilesResult, Fixnum, Hash)>] FilesResult data, response status code and response headers
    def post_clear_objects_with_http_info(file, objecttype, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LightCellsApi.post_clear_objects ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling LightCellsApi.post_clear_objects"
      end
      # verify the required parameter 'objecttype' is set
      if @api_client.config.client_side_validation && objecttype.nil?
        fail ArgumentError, "Missing the required parameter 'objecttype' when calling LightCellsApi.post_clear_objects"
      end
      # resource path
      local_var_path = "/cells/clearobjects"

      # query parameters
      query_params = {}
      query_params[:'objecttype'] = objecttype

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      file.each do |filename , context|
        form_params[filename]  = context
      end

      # http body (model)
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      post_body = ""
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FilesResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LightCellsApi#post_clear_objects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param file File to upload
    # @param object_type 
    # @param format 
    # @param [Hash] opts the optional parameters
    # @return [FilesResult]
    def post_export(file, object_type, format, opts = {})
      data, _status_code, _headers = post_export_with_http_info(file, object_type, format, opts)
      return data
    end

    # 
    # 
    # @param file File to upload
    # @param object_type 
    # @param format 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FilesResult, Fixnum, Hash)>] FilesResult data, response status code and response headers
    def post_export_with_http_info(file, object_type, format, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LightCellsApi.post_export ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling LightCellsApi.post_export"
      end
      # verify the required parameter 'object_type' is set
      if @api_client.config.client_side_validation && object_type.nil?
        fail ArgumentError, "Missing the required parameter 'object_type' when calling LightCellsApi.post_export"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling LightCellsApi.post_export"
      end
      # resource path
      local_var_path = "/cells/export"

      # query parameters
      query_params = {}
      query_params[:'objectType'] = object_type
      query_params[:'format'] = format
      if  opts[:'extendedQueryParameters'] 
        opts[:'extendedQueryParameters'].each do |key , value|
          query_params[key]  = value
        end
      end 

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      file.each do |filename , context|
        form_params[filename]  = context
      end

      # http body (model)
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      post_body = ""
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FilesResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LightCellsApi#post_export\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param file File to upload
    # @param import_data 
    # @param [Hash] opts the optional parameters
    # @return [FilesResult]
    def post_import(file, import_data, opts = {})
      data, _status_code, _headers = post_import_with_http_info(file, import_data, opts)
      return data
    end

    # 
    # 
    # @param file File to upload
    # @param import_data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FilesResult, Fixnum, Hash)>] FilesResult data, response status code and response headers
    def post_import_with_http_info(file, import_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LightCellsApi.post_import ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling LightCellsApi.post_import"
      end
      # verify the required parameter 'import_data' is set
      if @api_client.config.client_side_validation && import_data.nil?
        fail ArgumentError, "Missing the required parameter 'import_data' when calling LightCellsApi.post_import"
      end
      # resource path
      local_var_path = "/cells/import"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      file.each do |filename , context|
        form_params[filename]  = context
      end

      # http body (model)
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      post_body = ""

      # http body (model)
      post_body = @api_client.object_to_http_body(import_data)
      if post_body
        form_params['documentproperties']  = post_body.to_json
      end

      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FilesResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LightCellsApi#post_import\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param file File to upload
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format  (default to xlsx)
    # @option opts [BOOLEAN] :merge_to_one_sheet  (default to false)
    # @return [FileInfo]
    def post_merge(file, opts = {})
      data, _status_code, _headers = post_merge_with_http_info(file, opts)
      return data
    end

    # 
    # 
    # @param file File to upload
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format 
    # @option opts [BOOLEAN] :merge_to_one_sheet 
    # @return [Array<(FileInfo, Fixnum, Hash)>] FileInfo data, response status code and response headers
    def post_merge_with_http_info(file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LightCellsApi.post_merge ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling LightCellsApi.post_merge"
      end
      # resource path
      local_var_path = "/cells/merge"

      # query parameters
      query_params = {}
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?
      query_params[:'mergeToOneSheet'] = opts[:'merge_to_one_sheet'] if !opts[:'merge_to_one_sheet'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      file.each do |filename , context|
        form_params[filename]  = context
      end

      # http body (model)
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      post_body = ""
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FileInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LightCellsApi#post_merge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param file File to upload
    # @param document_properties Cells document property.
    # @param [Hash] opts the optional parameters
    # @return [FilesResult]
    def post_metadata(file, document_properties, opts = {})
      data, _status_code, _headers = post_metadata_with_http_info(file, document_properties, opts)
      return data
    end

    # 
    # 
    # @param file File to upload
    # @param document_properties Cells document property.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FilesResult, Fixnum, Hash)>] FilesResult data, response status code and response headers
    def post_metadata_with_http_info(file, document_properties, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LightCellsApi.post_metadata ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling LightCellsApi.post_metadata"
      end
      # verify the required parameter 'document_properties' is set
      if @api_client.config.client_side_validation && document_properties.nil?
        fail ArgumentError, "Missing the required parameter 'document_properties' when calling LightCellsApi.post_metadata"
      end
      # resource path
      local_var_path = "/cells/metadata/update"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      file.each do |filename , context|
        form_params[filename]  = context
      end

      # http body (model)
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      post_body = ""

      # http body (model)
      post_body = @api_client.object_to_http_body(document_properties)
      if post_body
        form_params['documentproperties']  = post_body.to_json
      end 
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FilesResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LightCellsApi#post_metadata\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param file File to upload
    # @param password 
    # @param [Hash] opts the optional parameters
    # @return [FilesResult]
    def post_protect(file, password, opts = {})
      data, _status_code, _headers = post_protect_with_http_info(file, password, opts)
      return data
    end

    # 
    # 
    # @param file File to upload
    # @param password 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FilesResult, Fixnum, Hash)>] FilesResult data, response status code and response headers
    def post_protect_with_http_info(file, password, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LightCellsApi.post_protect ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling LightCellsApi.post_protect"
      end
      # verify the required parameter 'password' is set
      if @api_client.config.client_side_validation && password.nil?
        fail ArgumentError, "Missing the required parameter 'password' when calling LightCellsApi.post_protect"
      end
      # resource path
      local_var_path = "/cells/protect"

      # query parameters
      query_params = {}
      query_params[:'password'] = password

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      file.each do |filename , context|
        form_params[filename]  = context
      end

      # http body (model)
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      post_body = ""
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FilesResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LightCellsApi#post_protect\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param file File to upload
    # @param text 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :password 
    # @option opts [String] :sheetname 
    # @return [Array<TextItem>]
    def post_search(file, text, opts = {})
      data, _status_code, _headers = post_search_with_http_info(file, text, opts)
      return data
    end

    # 
    # 
    # @param file File to upload
    # @param text 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :password 
    # @option opts [String] :sheetname  
    # @return [Array<(Array<TextItem>, Fixnum, Hash)>] Array<TextItem> data, response status code and response headers
    def post_search_with_http_info(file, text, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LightCellsApi.post_search ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling LightCellsApi.post_search"
      end
      # verify the required parameter 'text' is set
      if @api_client.config.client_side_validation && text.nil?
        fail ArgumentError, "Missing the required parameter 'text' when calling LightCellsApi.post_search"
      end
      # resource path
      local_var_path = "/cells/search"

      # query parameters
      query_params = {}
      query_params[:'text'] = text
      query_params[:'password'] = opts[:'password'] if !opts[:'password'].nil?
      query_params[:'sheetname'] = opts[:'sheetname'] if !opts[:'sheetname'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      file.each do |filename , context|
        form_params[filename]  = context
      end

      # http body (model)
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      post_body = ""
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<TextItem>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LightCellsApi#post_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param file File to upload
    # @param format 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :password 
    # @option opts [Integer] :from 
    # @option opts [Integer] :to 
    # @return [FilesResult]
    def post_split(file, format, opts = {})
      data, _status_code, _headers = post_split_with_http_info(file, format, opts)
      return data
    end

    # 
    # 
    # @param file File to upload
    # @param format 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :password 
    # @option opts [Integer] :from 
    # @option opts [Integer] :to 
    # @option opts [String] :path 
    # @option opts [String] :storage_name 
    # @return [Array<(FilesResult, Fixnum, Hash)>] FilesResult data, response status code and response headers
    def post_split_with_http_info(file, format, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LightCellsApi.post_split ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling LightCellsApi.post_split"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling LightCellsApi.post_split"
      end
      # resource path
      local_var_path = "/cells/split"

      # query parameters
      query_params = {}
      query_params[:'format'] = format
      query_params[:'password'] = opts[:'password'] if !opts[:'password'].nil?
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      file.each do |filename , context|
        form_params[filename]  = context
      end

      # http body (model)
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      post_body = ""
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FilesResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LightCellsApi#post_split\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param file File to upload
    # @param password 
    # @param [Hash] opts the optional parameters
    # @return [FilesResult]
    def post_unlock(file, password, opts = {})
      data, _status_code, _headers = post_unlock_with_http_info(file, password, opts)
      return data
    end

    # 
    # 
    # @param file File to upload
    # @param password 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FilesResult, Fixnum, Hash)>] FilesResult data, response status code and response headers
    def post_unlock_with_http_info(file, password, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LightCellsApi.post_unlock ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling LightCellsApi.post_unlock"
      end
      # verify the required parameter 'password' is set
      if @api_client.config.client_side_validation && password.nil?
        fail ArgumentError, "Missing the required parameter 'password' when calling LightCellsApi.post_unlock"
      end
      # resource path
      local_var_path = "/cells/unlock"

      # query parameters
      query_params = {}
      query_params[:'password'] = password

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      file.each do |filename , context|
        form_params[filename]  = context
      end

      # http body (model)
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      post_body = ""
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FilesResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LightCellsApi#post_unlock\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param file File to upload
    # @param text 
    # @param color 
    # @param [Hash] opts the optional parameters
    # @return [FilesResult]
    def post_watermark(file, text, color, opts = {})
      data, _status_code, _headers = post_watermark_with_http_info(file, text, color, opts)
      return data
    end

    # 
    # 
    # @param file File to upload
    # @param text 
    # @param color 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FilesResult, Fixnum, Hash)>] FilesResult data, response status code and response headers
    def post_watermark_with_http_info(file, text, color, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LightCellsApi.post_watermark ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling LightCellsApi.post_watermark"
      end
      # verify the required parameter 'text' is set
      if @api_client.config.client_side_validation && text.nil?
        fail ArgumentError, "Missing the required parameter 'text' when calling LightCellsApi.post_watermark"
      end
      # verify the required parameter 'color' is set
      if @api_client.config.client_side_validation && color.nil?
        fail ArgumentError, "Missing the required parameter 'color' when calling LightCellsApi.post_watermark"
      end
      # resource path
      local_var_path = "/cells/watermark"

      # query parameters
      query_params = {}
      query_params[:'text'] = text
      query_params[:'color'] = color

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      file.each do |filename , context|
        form_params[filename]  = context
      end

      # http body (model)
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      post_body = ""
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FilesResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LightCellsApi#post_watermark\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param file File to upload
    # @param compress_level 
    # @param [Hash] opts the optional parameters
    # @return [FilesResult]
    def post_compress(file, compress_level, opts = {})
      data, _status_code, _headers = post_compress_with_http_info(file, compress_level, opts)
      return data
    end

    # 
    # 
    # @param file File to upload
    # @param compress_level 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FilesResult, Fixnum, Hash)>] FilesResult data, response status code and response headers
    def post_compress_with_http_info(file, compress_level, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LightCellsApi.post_compress ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling LightCellsApi.post_compress"
      end
      # verify the required parameter 'compress_level' is set
      if @api_client.config.client_side_validation && compress_level.nil?
        fail ArgumentError, "Missing the required parameter 'compress_level' when calling LightCellsApi.post_compress"
      end

      # resource path
      local_var_path = "/cells/compress"

      # query parameters
      query_params = {}
      query_params[:'compressLevel'] = compress_level

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      file.each do |filename , context|
        form_params[filename]  = context
      end

      # http body (model)
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      post_body = ""
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FilesResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LightCellsApi#post_compress\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param file File to upload
    # @param text 
    # @param newtext 
    # @param [Hash] opts the optional parameters
    # @param password 
    # @param sheet_name
    # @return [FilesResult]
    def post_replace(file, text, newtext, opts = {})
      data, _status_code, _headers = post_replace_with_http_info(file, text, newtext, opts)
      return data
    end

    # 
    # 
    # @param file File to upload
    # @param text 
    # @param newtext 
    # @param [Hash] opts the optional parameters
    # @param password 
    # @param sheet_name
    # @return [Array<(FilesResult, Fixnum, Hash)>] FilesResult data, response status code and response headers
    def post_replace_with_http_info(file, text, newtext, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LightCellsApi.post_replace ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling LightCellsApi.post_replace"
      end
      # verify the required parameter 'text' is set
      if @api_client.config.client_side_validation && text.nil?
        fail ArgumentError, "Missing the required parameter 'text' when calling LightCellsApi.post_replace"
      end
      # verify the required parameter 'color' is set
      if @api_client.config.client_side_validation && newtext.nil?
        fail ArgumentError, "Missing the required parameter 'newtext' when calling LightCellsApi.post_replace"
      end
      # resource path
      local_var_path = "/cells/replace"

      # query parameters
      query_params = {}
      query_params[:'text'] = text
      query_params[:'newtext'] = newtext
      query_params[:'password'] = opts[:'password'] if !opts[:'storagpassworde_name'].nil?
      query_params[:'sheetName'] = opts[:'sheet_name'] if !opts[:'sheet_name'].nil?
      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      file.each do |filename , context|
        form_params[filename]  = context
      end

      # http body (model)
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      post_body = ""
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FilesResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LightCellsApi#post_replace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # 
    # 
    # @param file File to upload
    # @param rotate_type 
    # @param format 
    # @return [FilesResult]
    def post_reverse(file, rotate_type, format, opts = {})
      data, _status_code, _headers = post_reverse_with_http_info(file, rotate_type, format, opts)
      return data
    end

    # 
    # 
    # @param file File to upload
    # @param rotate_type 
    # @param format 
    # @return [Array<(FilesResult, Fixnum, Hash)>] FilesResult data, response status code and response headers
    def post_reverse_with_http_info(file, rotate_type, format, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LightCellsApi.post_reverse ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling LightCellsApi.post_reverse"
      end
      # verify the required parameter 'rotate_type' is set
      if @api_client.config.client_side_validation && rotate_type.nil?
        fail ArgumentError, "Missing the required parameter 'rotate_type' when calling LightCellsApi.post_reverse"
      end
      # verify the required parameter 'color' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling LightCellsApi.post_reverse"
      end
      # resource path
      local_var_path = "/cells/reverse"

      # query parameters
      query_params = {}
      query_params[:'rotateType'] = rotate_type
      query_params[:'format'] = format
      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      file.each do |filename , context|
        form_params[filename]  = context
      end

      # http body (model)
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      post_body = ""
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FilesResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LightCellsApi#post_reverse\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end
