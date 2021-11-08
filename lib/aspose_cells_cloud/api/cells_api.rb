=begin
--------------------------------------------------------------------------------------------------------------------
Copyright (c) 2021 Aspose.Cells Cloud
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
  class CellsApi
    attr_accessor :api_client

    def initialize(client_id,client_secret, app_version = 'v3.0', app_host = 'api.aspose.cloud',  api_client = ApiClient.default)
      @api_client = api_client
      @api_client.config.client_secret = client_secret
      @api_client.config.client_id = client_id
      @api_client.config.api_version = app_version
      @api_client.config.host = app_host
    end

    # Removes a date filter.             
    # 
    # @param name 
    # @param sheet_name 
    # @param field_index 
    # @param date_time_grouping_type 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :year  (default to 0)
    # @option opts [Integer] :month  (default to 0)
    # @option opts [Integer] :day  (default to 0)
    # @option opts [Integer] :hour  (default to 0)
    # @option opts [Integer] :minute  (default to 0)
    # @option opts [Integer] :second  (default to 0)
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_auto_filter_delete_worksheet_date_filter(name, sheet_name, field_index, date_time_grouping_type, opts = {})
      data, _status_code, _headers = cells_auto_filter_delete_worksheet_date_filter_with_http_info(name, sheet_name, field_index, date_time_grouping_type, opts)
      return data
    end

    # Removes a date filter.             
    # 
    # @param name 
    # @param sheet_name 
    # @param field_index 
    # @param date_time_grouping_type 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :year 
    # @option opts [Integer] :month 
    # @option opts [Integer] :day 
    # @option opts [Integer] :hour 
    # @option opts [Integer] :minute 
    # @option opts [Integer] :second 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_auto_filter_delete_worksheet_date_filter_with_http_info(name, sheet_name, field_index, date_time_grouping_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_auto_filter_delete_worksheet_date_filter ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_auto_filter_delete_worksheet_date_filter"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_auto_filter_delete_worksheet_date_filter"
      end
      # verify the required parameter 'field_index' is set
      if @api_client.config.client_side_validation && field_index.nil?
        fail ArgumentError, "Missing the required parameter 'field_index' when calling CellsApi.cells_auto_filter_delete_worksheet_date_filter"
      end
      # verify the required parameter 'date_time_grouping_type' is set
      if @api_client.config.client_side_validation && date_time_grouping_type.nil?
        fail ArgumentError, "Missing the required parameter 'date_time_grouping_type' when calling CellsApi.cells_auto_filter_delete_worksheet_date_filter"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/autoFilter/dateFilter".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'fieldIndex'] = field_index
      query_params[:'dateTimeGroupingType'] = date_time_grouping_type
      query_params[:'year'] = opts[:'year'] if !opts[:'year'].nil?
      query_params[:'month'] = opts[:'month'] if !opts[:'month'].nil?
      query_params[:'day'] = opts[:'day'] if !opts[:'day'].nil?
      query_params[:'hour'] = opts[:'hour'] if !opts[:'hour'].nil?
      query_params[:'minute'] = opts[:'minute'] if !opts[:'minute'].nil?
      query_params[:'second'] = opts[:'second'] if !opts[:'second'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_auto_filter_delete_worksheet_date_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a filter for a filter column.             
    # 
    # @param name 
    # @param sheet_name 
    # @param field_index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :criteria 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_auto_filter_delete_worksheet_filter(name, sheet_name, field_index, opts = {})
      data, _status_code, _headers = cells_auto_filter_delete_worksheet_filter_with_http_info(name, sheet_name, field_index, opts)
      return data
    end

    # Delete a filter for a filter column.             
    # 
    # @param name 
    # @param sheet_name 
    # @param field_index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :criteria 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_auto_filter_delete_worksheet_filter_with_http_info(name, sheet_name, field_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_auto_filter_delete_worksheet_filter ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_auto_filter_delete_worksheet_filter"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_auto_filter_delete_worksheet_filter"
      end
      # verify the required parameter 'field_index' is set
      if @api_client.config.client_side_validation && field_index.nil?
        fail ArgumentError, "Missing the required parameter 'field_index' when calling CellsApi.cells_auto_filter_delete_worksheet_filter"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/autoFilter/filter".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'fieldIndex'] = field_index
      query_params[:'criteria'] = opts[:'criteria'] if !opts[:'criteria'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_auto_filter_delete_worksheet_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Auto filter Description
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [AutoFilterResponse]
    def cells_auto_filter_get_worksheet_auto_filter(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_auto_filter_get_worksheet_auto_filter_with_http_info(name, sheet_name, opts)
      return data
    end

    # Get Auto filter Description
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(AutoFilterResponse, Fixnum, Hash)>] AutoFilterResponse data, response status code and response headers
    def cells_auto_filter_get_worksheet_auto_filter_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_auto_filter_get_worksheet_auto_filter ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_auto_filter_get_worksheet_auto_filter"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_auto_filter_get_worksheet_auto_filter"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/autoFilter".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AutoFilterResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_auto_filter_get_worksheet_auto_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_auto_filter_post_worksheet_auto_filter_refresh(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_auto_filter_post_worksheet_auto_filter_refresh_with_http_info(name, sheet_name, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_auto_filter_post_worksheet_auto_filter_refresh_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_auto_filter_post_worksheet_auto_filter_refresh ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_auto_filter_post_worksheet_auto_filter_refresh"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_auto_filter_post_worksheet_auto_filter_refresh"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/autoFilter/refresh".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_auto_filter_post_worksheet_auto_filter_refresh\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Match all blank cell in the list.
    # 
    # @param name 
    # @param sheet_name 
    # @param field_index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_auto_filter_post_worksheet_match_blanks(name, sheet_name, field_index, opts = {})
      data, _status_code, _headers = cells_auto_filter_post_worksheet_match_blanks_with_http_info(name, sheet_name, field_index, opts)
      return data
    end

    # Match all blank cell in the list.
    # 
    # @param name 
    # @param sheet_name 
    # @param field_index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_auto_filter_post_worksheet_match_blanks_with_http_info(name, sheet_name, field_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_auto_filter_post_worksheet_match_blanks ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_auto_filter_post_worksheet_match_blanks"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_auto_filter_post_worksheet_match_blanks"
      end
      # verify the required parameter 'field_index' is set
      if @api_client.config.client_side_validation && field_index.nil?
        fail ArgumentError, "Missing the required parameter 'field_index' when calling CellsApi.cells_auto_filter_post_worksheet_match_blanks"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/autoFilter/matchBlanks".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'fieldIndex'] = field_index
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_auto_filter_post_worksheet_match_blanks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Match all not blank cell in the list.             
    # 
    # @param name 
    # @param sheet_name 
    # @param field_index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_auto_filter_post_worksheet_match_non_blanks(name, sheet_name, field_index, opts = {})
      data, _status_code, _headers = cells_auto_filter_post_worksheet_match_non_blanks_with_http_info(name, sheet_name, field_index, opts)
      return data
    end

    # Match all not blank cell in the list.             
    # 
    # @param name 
    # @param sheet_name 
    # @param field_index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_auto_filter_post_worksheet_match_non_blanks_with_http_info(name, sheet_name, field_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_auto_filter_post_worksheet_match_non_blanks ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_auto_filter_post_worksheet_match_non_blanks"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_auto_filter_post_worksheet_match_non_blanks"
      end
      # verify the required parameter 'field_index' is set
      if @api_client.config.client_side_validation && field_index.nil?
        fail ArgumentError, "Missing the required parameter 'field_index' when calling CellsApi.cells_auto_filter_post_worksheet_match_non_blanks"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/autoFilter/matchNonBlanks".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'fieldIndex'] = field_index
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_auto_filter_post_worksheet_match_non_blanks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param range 
    # @param field_index 
    # @param [Hash] opts the optional parameters
    # @option opts [ColorFilterRequest] :color_filter 
    # @option opts [BOOLEAN] :match_blanks 
    # @option opts [BOOLEAN] :refresh 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_auto_filter_put_worksheet_color_filter(name, sheet_name, range, field_index, opts = {})
      data, _status_code, _headers = cells_auto_filter_put_worksheet_color_filter_with_http_info(name, sheet_name, range, field_index, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param range 
    # @param field_index 
    # @param [Hash] opts the optional parameters
    # @option opts [ColorFilterRequest] :color_filter 
    # @option opts [BOOLEAN] :match_blanks 
    # @option opts [BOOLEAN] :refresh 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_auto_filter_put_worksheet_color_filter_with_http_info(name, sheet_name, range, field_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_auto_filter_put_worksheet_color_filter ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_auto_filter_put_worksheet_color_filter"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_auto_filter_put_worksheet_color_filter"
      end
      # verify the required parameter 'range' is set
      if @api_client.config.client_side_validation && range.nil?
        fail ArgumentError, "Missing the required parameter 'range' when calling CellsApi.cells_auto_filter_put_worksheet_color_filter"
      end
      # verify the required parameter 'field_index' is set
      if @api_client.config.client_side_validation && field_index.nil?
        fail ArgumentError, "Missing the required parameter 'field_index' when calling CellsApi.cells_auto_filter_put_worksheet_color_filter"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/autoFilter/colorFilter".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'range'] = range
      query_params[:'fieldIndex'] = field_index
      query_params[:'matchBlanks'] = opts[:'match_blanks'] if !opts[:'match_blanks'].nil?
      query_params[:'refresh'] = opts[:'refresh'] if !opts[:'refresh'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'color_filter'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_auto_filter_put_worksheet_color_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Filters a list with a custom criteria.             
    # 
    # @param name 
    # @param sheet_name 
    # @param range 
    # @param field_index 
    # @param operator_type1 
    # @param criteria1 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :is_and 
    # @option opts [String] :operator_type2 
    # @option opts [String] :criteria2 
    # @option opts [BOOLEAN] :match_blanks 
    # @option opts [BOOLEAN] :refresh 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_auto_filter_put_worksheet_custom_filter(name, sheet_name, range, field_index, operator_type1, criteria1, opts = {})
      data, _status_code, _headers = cells_auto_filter_put_worksheet_custom_filter_with_http_info(name, sheet_name, range, field_index, operator_type1, criteria1, opts)
      return data
    end

    # Filters a list with a custom criteria.             
    # 
    # @param name 
    # @param sheet_name 
    # @param range 
    # @param field_index 
    # @param operator_type1 
    # @param criteria1 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :is_and 
    # @option opts [String] :operator_type2 
    # @option opts [String] :criteria2 
    # @option opts [BOOLEAN] :match_blanks 
    # @option opts [BOOLEAN] :refresh 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_auto_filter_put_worksheet_custom_filter_with_http_info(name, sheet_name, range, field_index, operator_type1, criteria1, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_auto_filter_put_worksheet_custom_filter ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_auto_filter_put_worksheet_custom_filter"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_auto_filter_put_worksheet_custom_filter"
      end
      # verify the required parameter 'range' is set
      if @api_client.config.client_side_validation && range.nil?
        fail ArgumentError, "Missing the required parameter 'range' when calling CellsApi.cells_auto_filter_put_worksheet_custom_filter"
      end
      # verify the required parameter 'field_index' is set
      if @api_client.config.client_side_validation && field_index.nil?
        fail ArgumentError, "Missing the required parameter 'field_index' when calling CellsApi.cells_auto_filter_put_worksheet_custom_filter"
      end
      # verify the required parameter 'operator_type1' is set
      if @api_client.config.client_side_validation && operator_type1.nil?
        fail ArgumentError, "Missing the required parameter 'operator_type1' when calling CellsApi.cells_auto_filter_put_worksheet_custom_filter"
      end
      # verify the required parameter 'criteria1' is set
      if @api_client.config.client_side_validation && criteria1.nil?
        fail ArgumentError, "Missing the required parameter 'criteria1' when calling CellsApi.cells_auto_filter_put_worksheet_custom_filter"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/autoFilter/custom".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'range'] = range
      query_params[:'fieldIndex'] = field_index
      query_params[:'operatorType1'] = operator_type1
      query_params[:'criteria1'] = criteria1
      query_params[:'isAnd'] = opts[:'is_and'] if !opts[:'is_and'].nil?
      query_params[:'operatorType2'] = opts[:'operator_type2'] if !opts[:'operator_type2'].nil?
      query_params[:'criteria2'] = opts[:'criteria2'] if !opts[:'criteria2'].nil?
      query_params[:'matchBlanks'] = opts[:'match_blanks'] if !opts[:'match_blanks'].nil?
      query_params[:'refresh'] = opts[:'refresh'] if !opts[:'refresh'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_auto_filter_put_worksheet_custom_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # add date filter in worksheet 
    # 
    # @param name 
    # @param sheet_name 
    # @param range 
    # @param field_index 
    # @param date_time_grouping_type 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :year  (default to 0)
    # @option opts [Integer] :month  (default to 0)
    # @option opts [Integer] :day  (default to 0)
    # @option opts [Integer] :hour  (default to 0)
    # @option opts [Integer] :minute  (default to 0)
    # @option opts [Integer] :second  (default to 0)
    # @option opts [BOOLEAN] :match_blanks 
    # @option opts [BOOLEAN] :refresh 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_auto_filter_put_worksheet_date_filter(name, sheet_name, range, field_index, date_time_grouping_type, opts = {})
      data, _status_code, _headers = cells_auto_filter_put_worksheet_date_filter_with_http_info(name, sheet_name, range, field_index, date_time_grouping_type, opts)
      return data
    end

    # add date filter in worksheet 
    # 
    # @param name 
    # @param sheet_name 
    # @param range 
    # @param field_index 
    # @param date_time_grouping_type 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :year 
    # @option opts [Integer] :month 
    # @option opts [Integer] :day 
    # @option opts [Integer] :hour 
    # @option opts [Integer] :minute 
    # @option opts [Integer] :second 
    # @option opts [BOOLEAN] :match_blanks 
    # @option opts [BOOLEAN] :refresh 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_auto_filter_put_worksheet_date_filter_with_http_info(name, sheet_name, range, field_index, date_time_grouping_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_auto_filter_put_worksheet_date_filter ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_auto_filter_put_worksheet_date_filter"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_auto_filter_put_worksheet_date_filter"
      end
      # verify the required parameter 'range' is set
      if @api_client.config.client_side_validation && range.nil?
        fail ArgumentError, "Missing the required parameter 'range' when calling CellsApi.cells_auto_filter_put_worksheet_date_filter"
      end
      # verify the required parameter 'field_index' is set
      if @api_client.config.client_side_validation && field_index.nil?
        fail ArgumentError, "Missing the required parameter 'field_index' when calling CellsApi.cells_auto_filter_put_worksheet_date_filter"
      end
      # verify the required parameter 'date_time_grouping_type' is set
      if @api_client.config.client_side_validation && date_time_grouping_type.nil?
        fail ArgumentError, "Missing the required parameter 'date_time_grouping_type' when calling CellsApi.cells_auto_filter_put_worksheet_date_filter"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/autoFilter/dateFilter".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'range'] = range
      query_params[:'fieldIndex'] = field_index
      query_params[:'dateTimeGroupingType'] = date_time_grouping_type
      query_params[:'year'] = opts[:'year'] if !opts[:'year'].nil?
      query_params[:'month'] = opts[:'month'] if !opts[:'month'].nil?
      query_params[:'day'] = opts[:'day'] if !opts[:'day'].nil?
      query_params[:'hour'] = opts[:'hour'] if !opts[:'hour'].nil?
      query_params[:'minute'] = opts[:'minute'] if !opts[:'minute'].nil?
      query_params[:'second'] = opts[:'second'] if !opts[:'second'].nil?
      query_params[:'matchBlanks'] = opts[:'match_blanks'] if !opts[:'match_blanks'].nil?
      query_params[:'refresh'] = opts[:'refresh'] if !opts[:'refresh'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_auto_filter_put_worksheet_date_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param range 
    # @param field_index 
    # @param dynamic_filter_type 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :match_blanks 
    # @option opts [BOOLEAN] :refresh 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_auto_filter_put_worksheet_dynamic_filter(name, sheet_name, range, field_index, dynamic_filter_type, opts = {})
      data, _status_code, _headers = cells_auto_filter_put_worksheet_dynamic_filter_with_http_info(name, sheet_name, range, field_index, dynamic_filter_type, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param range 
    # @param field_index 
    # @param dynamic_filter_type 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :match_blanks 
    # @option opts [BOOLEAN] :refresh 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_auto_filter_put_worksheet_dynamic_filter_with_http_info(name, sheet_name, range, field_index, dynamic_filter_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_auto_filter_put_worksheet_dynamic_filter ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_auto_filter_put_worksheet_dynamic_filter"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_auto_filter_put_worksheet_dynamic_filter"
      end
      # verify the required parameter 'range' is set
      if @api_client.config.client_side_validation && range.nil?
        fail ArgumentError, "Missing the required parameter 'range' when calling CellsApi.cells_auto_filter_put_worksheet_dynamic_filter"
      end
      # verify the required parameter 'field_index' is set
      if @api_client.config.client_side_validation && field_index.nil?
        fail ArgumentError, "Missing the required parameter 'field_index' when calling CellsApi.cells_auto_filter_put_worksheet_dynamic_filter"
      end
      # verify the required parameter 'dynamic_filter_type' is set
      if @api_client.config.client_side_validation && dynamic_filter_type.nil?
        fail ArgumentError, "Missing the required parameter 'dynamic_filter_type' when calling CellsApi.cells_auto_filter_put_worksheet_dynamic_filter"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/autoFilter/dynamicFilter".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'range'] = range
      query_params[:'fieldIndex'] = field_index
      query_params[:'dynamicFilterType'] = dynamic_filter_type
      query_params[:'matchBlanks'] = opts[:'match_blanks'] if !opts[:'match_blanks'].nil?
      query_params[:'refresh'] = opts[:'refresh'] if !opts[:'refresh'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_auto_filter_put_worksheet_dynamic_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a filter for a filter column.             
    # 
    # @param name 
    # @param sheet_name 
    # @param range 
    # @param field_index 
    # @param criteria 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :match_blanks 
    # @option opts [BOOLEAN] :refresh 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_auto_filter_put_worksheet_filter(name, sheet_name, range, field_index, criteria, opts = {})
      data, _status_code, _headers = cells_auto_filter_put_worksheet_filter_with_http_info(name, sheet_name, range, field_index, criteria, opts)
      return data
    end

    # Adds a filter for a filter column.             
    # 
    # @param name 
    # @param sheet_name 
    # @param range 
    # @param field_index 
    # @param criteria 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :match_blanks 
    # @option opts [BOOLEAN] :refresh 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_auto_filter_put_worksheet_filter_with_http_info(name, sheet_name, range, field_index, criteria, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_auto_filter_put_worksheet_filter ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_auto_filter_put_worksheet_filter"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_auto_filter_put_worksheet_filter"
      end
      # verify the required parameter 'range' is set
      if @api_client.config.client_side_validation && range.nil?
        fail ArgumentError, "Missing the required parameter 'range' when calling CellsApi.cells_auto_filter_put_worksheet_filter"
      end
      # verify the required parameter 'field_index' is set
      if @api_client.config.client_side_validation && field_index.nil?
        fail ArgumentError, "Missing the required parameter 'field_index' when calling CellsApi.cells_auto_filter_put_worksheet_filter"
      end
      # verify the required parameter 'criteria' is set
      if @api_client.config.client_side_validation && criteria.nil?
        fail ArgumentError, "Missing the required parameter 'criteria' when calling CellsApi.cells_auto_filter_put_worksheet_filter"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/autoFilter/filter".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'range'] = range
      query_params[:'fieldIndex'] = field_index
      query_params[:'criteria'] = criteria
      query_params[:'matchBlanks'] = opts[:'match_blanks'] if !opts[:'match_blanks'].nil?
      query_params[:'refresh'] = opts[:'refresh'] if !opts[:'refresh'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_auto_filter_put_worksheet_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Filter the top 10 item in the list
    # 
    # @param name 
    # @param sheet_name 
    # @param range 
    # @param field_index 
    # @param is_top 
    # @param is_percent 
    # @param item_count 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :match_blanks 
    # @option opts [BOOLEAN] :refresh 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_auto_filter_put_worksheet_filter_top10(name, sheet_name, range, field_index, is_top, is_percent, item_count, opts = {})
      data, _status_code, _headers = cells_auto_filter_put_worksheet_filter_top10_with_http_info(name, sheet_name, range, field_index, is_top, is_percent, item_count, opts)
      return data
    end

    # Filter the top 10 item in the list
    # 
    # @param name 
    # @param sheet_name 
    # @param range 
    # @param field_index 
    # @param is_top 
    # @param is_percent 
    # @param item_count 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :match_blanks 
    # @option opts [BOOLEAN] :refresh 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_auto_filter_put_worksheet_filter_top10_with_http_info(name, sheet_name, range, field_index, is_top, is_percent, item_count, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_auto_filter_put_worksheet_filter_top10 ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_auto_filter_put_worksheet_filter_top10"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_auto_filter_put_worksheet_filter_top10"
      end
      # verify the required parameter 'range' is set
      if @api_client.config.client_side_validation && range.nil?
        fail ArgumentError, "Missing the required parameter 'range' when calling CellsApi.cells_auto_filter_put_worksheet_filter_top10"
      end
      # verify the required parameter 'field_index' is set
      if @api_client.config.client_side_validation && field_index.nil?
        fail ArgumentError, "Missing the required parameter 'field_index' when calling CellsApi.cells_auto_filter_put_worksheet_filter_top10"
      end
      # verify the required parameter 'is_top' is set
      if @api_client.config.client_side_validation && is_top.nil?
        fail ArgumentError, "Missing the required parameter 'is_top' when calling CellsApi.cells_auto_filter_put_worksheet_filter_top10"
      end
      # verify the required parameter 'is_percent' is set
      if @api_client.config.client_side_validation && is_percent.nil?
        fail ArgumentError, "Missing the required parameter 'is_percent' when calling CellsApi.cells_auto_filter_put_worksheet_filter_top10"
      end
      # verify the required parameter 'item_count' is set
      if @api_client.config.client_side_validation && item_count.nil?
        fail ArgumentError, "Missing the required parameter 'item_count' when calling CellsApi.cells_auto_filter_put_worksheet_filter_top10"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/autoFilter/filterTop10".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'range'] = range
      query_params[:'fieldIndex'] = field_index
      query_params[:'isTop'] = is_top
      query_params[:'isPercent'] = is_percent
      query_params[:'itemCount'] = item_count
      query_params[:'matchBlanks'] = opts[:'match_blanks'] if !opts[:'match_blanks'].nil?
      query_params[:'refresh'] = opts[:'refresh'] if !opts[:'refresh'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_auto_filter_put_worksheet_filter_top10\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds an icon filter.
    # 
    # @param name 
    # @param sheet_name 
    # @param range 
    # @param field_index 
    # @param icon_set_type 
    # @param icon_id 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :match_blanks 
    # @option opts [BOOLEAN] :refresh 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_auto_filter_put_worksheet_icon_filter(name, sheet_name, range, field_index, icon_set_type, icon_id, opts = {})
      data, _status_code, _headers = cells_auto_filter_put_worksheet_icon_filter_with_http_info(name, sheet_name, range, field_index, icon_set_type, icon_id, opts)
      return data
    end

    # Adds an icon filter.
    # 
    # @param name 
    # @param sheet_name 
    # @param range 
    # @param field_index 
    # @param icon_set_type 
    # @param icon_id 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :match_blanks 
    # @option opts [BOOLEAN] :refresh 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_auto_filter_put_worksheet_icon_filter_with_http_info(name, sheet_name, range, field_index, icon_set_type, icon_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_auto_filter_put_worksheet_icon_filter ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_auto_filter_put_worksheet_icon_filter"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_auto_filter_put_worksheet_icon_filter"
      end
      # verify the required parameter 'range' is set
      if @api_client.config.client_side_validation && range.nil?
        fail ArgumentError, "Missing the required parameter 'range' when calling CellsApi.cells_auto_filter_put_worksheet_icon_filter"
      end
      # verify the required parameter 'field_index' is set
      if @api_client.config.client_side_validation && field_index.nil?
        fail ArgumentError, "Missing the required parameter 'field_index' when calling CellsApi.cells_auto_filter_put_worksheet_icon_filter"
      end
      # verify the required parameter 'icon_set_type' is set
      if @api_client.config.client_side_validation && icon_set_type.nil?
        fail ArgumentError, "Missing the required parameter 'icon_set_type' when calling CellsApi.cells_auto_filter_put_worksheet_icon_filter"
      end
      # verify the required parameter 'icon_id' is set
      if @api_client.config.client_side_validation && icon_id.nil?
        fail ArgumentError, "Missing the required parameter 'icon_id' when calling CellsApi.cells_auto_filter_put_worksheet_icon_filter"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/autoFilter/iconFilter".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'range'] = range
      query_params[:'fieldIndex'] = field_index
      query_params[:'iconSetType'] = icon_set_type
      query_params[:'iconId'] = icon_id
      query_params[:'matchBlanks'] = opts[:'match_blanks'] if !opts[:'match_blanks'].nil?
      query_params[:'refresh'] = opts[:'refresh'] if !opts[:'refresh'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_auto_filter_put_worksheet_icon_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get autoshape info.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param autoshape_number The autoshape number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format Exported format.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [File]
    def cells_autoshapes_get_worksheet_autoshape(name, sheet_name, autoshape_number, opts = {})
      data, _status_code, _headers = cells_autoshapes_get_worksheet_autoshape_with_http_info(name, sheet_name, autoshape_number, opts)
      return data
    end

    # Get autoshape info.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param autoshape_number The autoshape number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format Exported format.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def cells_autoshapes_get_worksheet_autoshape_with_http_info(name, sheet_name, autoshape_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_autoshapes_get_worksheet_autoshape ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_autoshapes_get_worksheet_autoshape"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_autoshapes_get_worksheet_autoshape"
      end
      # verify the required parameter 'autoshape_number' is set
      if @api_client.config.client_side_validation && autoshape_number.nil?
        fail ArgumentError, "Missing the required parameter 'autoshape_number' when calling CellsApi.cells_autoshapes_get_worksheet_autoshape"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/autoshapes/{autoshapeNumber}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'autoshapeNumber' + '}', autoshape_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_autoshapes_get_worksheet_autoshape\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get worksheet autoshapes info.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [AutoShapesResponse]
    def cells_autoshapes_get_worksheet_autoshapes(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_autoshapes_get_worksheet_autoshapes_with_http_info(name, sheet_name, opts)
      return data
    end

    # Get worksheet autoshapes info.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(AutoShapesResponse, Fixnum, Hash)>] AutoShapesResponse data, response status code and response headers
    def cells_autoshapes_get_worksheet_autoshapes_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_autoshapes_get_worksheet_autoshapes ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_autoshapes_get_worksheet_autoshapes"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_autoshapes_get_worksheet_autoshapes"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/autoshapes".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AutoShapesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_autoshapes_get_worksheet_autoshapes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get chart area info.
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [ChartAreaResponse]
    def cells_chart_area_get_chart_area(name, sheet_name, chart_index, opts = {})
      data, _status_code, _headers = cells_chart_area_get_chart_area_with_http_info(name, sheet_name, chart_index, opts)
      return data
    end

    # Get chart area info.
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(ChartAreaResponse, Fixnum, Hash)>] ChartAreaResponse data, response status code and response headers
    def cells_chart_area_get_chart_area_with_http_info(name, sheet_name, chart_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_chart_area_get_chart_area ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_chart_area_get_chart_area"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_chart_area_get_chart_area"
      end
      # verify the required parameter 'chart_index' is set
      if @api_client.config.client_side_validation && chart_index.nil?
        fail ArgumentError, "Missing the required parameter 'chart_index' when calling CellsApi.cells_chart_area_get_chart_area"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/chartArea".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'chartIndex' + '}', chart_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ChartAreaResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_chart_area_get_chart_area\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get chart area border info.
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [LineResponse]
    def cells_chart_area_get_chart_area_border(name, sheet_name, chart_index, opts = {})
      data, _status_code, _headers = cells_chart_area_get_chart_area_border_with_http_info(name, sheet_name, chart_index, opts)
      return data
    end

    # Get chart area border info.
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(LineResponse, Fixnum, Hash)>] LineResponse data, response status code and response headers
    def cells_chart_area_get_chart_area_border_with_http_info(name, sheet_name, chart_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_chart_area_get_chart_area_border ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_chart_area_get_chart_area_border"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_chart_area_get_chart_area_border"
      end
      # verify the required parameter 'chart_index' is set
      if @api_client.config.client_side_validation && chart_index.nil?
        fail ArgumentError, "Missing the required parameter 'chart_index' when calling CellsApi.cells_chart_area_get_chart_area_border"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/chartArea/border".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'chartIndex' + '}', chart_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LineResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_chart_area_get_chart_area_border\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get chart area fill format info.
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [FillFormatResponse]
    def cells_chart_area_get_chart_area_fill_format(name, sheet_name, chart_index, opts = {})
      data, _status_code, _headers = cells_chart_area_get_chart_area_fill_format_with_http_info(name, sheet_name, chart_index, opts)
      return data
    end

    # Get chart area fill format info.
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(FillFormatResponse, Fixnum, Hash)>] FillFormatResponse data, response status code and response headers
    def cells_chart_area_get_chart_area_fill_format_with_http_info(name, sheet_name, chart_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_chart_area_get_chart_area_fill_format ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_chart_area_get_chart_area_fill_format"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_chart_area_get_chart_area_fill_format"
      end
      # verify the required parameter 'chart_index' is set
      if @api_client.config.client_side_validation && chart_index.nil?
        fail ArgumentError, "Missing the required parameter 'chart_index' when calling CellsApi.cells_chart_area_get_chart_area_fill_format"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/chartArea/fillFormat".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'chartIndex' + '}', chart_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FillFormatResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_chart_area_get_chart_area_fill_format\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Hide legend in chart
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_charts_delete_worksheet_chart_legend(name, sheet_name, chart_index, opts = {})
      data, _status_code, _headers = cells_charts_delete_worksheet_chart_legend_with_http_info(name, sheet_name, chart_index, opts)
      return data
    end

    # Hide legend in chart
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_charts_delete_worksheet_chart_legend_with_http_info(name, sheet_name, chart_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_charts_delete_worksheet_chart_legend ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_charts_delete_worksheet_chart_legend"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_charts_delete_worksheet_chart_legend"
      end
      # verify the required parameter 'chart_index' is set
      if @api_client.config.client_side_validation && chart_index.nil?
        fail ArgumentError, "Missing the required parameter 'chart_index' when calling CellsApi.cells_charts_delete_worksheet_chart_legend"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'chartIndex' + '}', chart_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_charts_delete_worksheet_chart_legend\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Hide title in chart
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_charts_delete_worksheet_chart_title(name, sheet_name, chart_index, opts = {})
      data, _status_code, _headers = cells_charts_delete_worksheet_chart_title_with_http_info(name, sheet_name, chart_index, opts)
      return data
    end

    # Hide title in chart
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_charts_delete_worksheet_chart_title_with_http_info(name, sheet_name, chart_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_charts_delete_worksheet_chart_title ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_charts_delete_worksheet_chart_title"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_charts_delete_worksheet_chart_title"
      end
      # verify the required parameter 'chart_index' is set
      if @api_client.config.client_side_validation && chart_index.nil?
        fail ArgumentError, "Missing the required parameter 'chart_index' when calling CellsApi.cells_charts_delete_worksheet_chart_title"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'chartIndex' + '}', chart_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_charts_delete_worksheet_chart_title\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Clear the charts.
    # 
    # @param name Workbook name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_charts_delete_worksheet_clear_charts(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_charts_delete_worksheet_clear_charts_with_http_info(name, sheet_name, opts)
      return data
    end

    # Clear the charts.
    # 
    # @param name Workbook name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_charts_delete_worksheet_clear_charts_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_charts_delete_worksheet_clear_charts ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_charts_delete_worksheet_clear_charts"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_charts_delete_worksheet_clear_charts"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/charts".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_charts_delete_worksheet_clear_charts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete worksheet chart by index.
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_charts_delete_worksheet_delete_chart(name, sheet_name, chart_index, opts = {})
      data, _status_code, _headers = cells_charts_delete_worksheet_delete_chart_with_http_info(name, sheet_name, chart_index, opts)
      return data
    end

    # Delete worksheet chart by index.
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_charts_delete_worksheet_delete_chart_with_http_info(name, sheet_name, chart_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_charts_delete_worksheet_delete_chart ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_charts_delete_worksheet_delete_chart"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_charts_delete_worksheet_delete_chart"
      end
      # verify the required parameter 'chart_index' is set
      if @api_client.config.client_side_validation && chart_index.nil?
        fail ArgumentError, "Missing the required parameter 'chart_index' when calling CellsApi.cells_charts_delete_worksheet_delete_chart"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'chartIndex' + '}', chart_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_charts_delete_worksheet_delete_chart\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get chart info.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param chart_number The chart number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The exported file format.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [File]
    def cells_charts_get_worksheet_chart(name, sheet_name, chart_number, opts = {})
      data, _status_code, _headers = cells_charts_get_worksheet_chart_with_http_info(name, sheet_name, chart_number, opts)
      return data
    end

    # Get chart info.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param chart_number The chart number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The exported file format.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def cells_charts_get_worksheet_chart_with_http_info(name, sheet_name, chart_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_charts_get_worksheet_chart ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_charts_get_worksheet_chart"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_charts_get_worksheet_chart"
      end
      # verify the required parameter 'chart_number' is set
      if @api_client.config.client_side_validation && chart_number.nil?
        fail ArgumentError, "Missing the required parameter 'chart_number' when calling CellsApi.cells_charts_get_worksheet_chart"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/charts/{chartNumber}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'chartNumber' + '}', chart_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_charts_get_worksheet_chart\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get chart legend
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [LegendResponse]
    def cells_charts_get_worksheet_chart_legend(name, sheet_name, chart_index, opts = {})
      data, _status_code, _headers = cells_charts_get_worksheet_chart_legend_with_http_info(name, sheet_name, chart_index, opts)
      return data
    end

    # Get chart legend
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(LegendResponse, Fixnum, Hash)>] LegendResponse data, response status code and response headers
    def cells_charts_get_worksheet_chart_legend_with_http_info(name, sheet_name, chart_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_charts_get_worksheet_chart_legend ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_charts_get_worksheet_chart_legend"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_charts_get_worksheet_chart_legend"
      end
      # verify the required parameter 'chart_index' is set
      if @api_client.config.client_side_validation && chart_index.nil?
        fail ArgumentError, "Missing the required parameter 'chart_index' when calling CellsApi.cells_charts_get_worksheet_chart_legend"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'chartIndex' + '}', chart_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LegendResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_charts_get_worksheet_chart_legend\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get chart title
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [TitleResponse]
    def cells_charts_get_worksheet_chart_title(name, sheet_name, chart_index, opts = {})
      data, _status_code, _headers = cells_charts_get_worksheet_chart_title_with_http_info(name, sheet_name, chart_index, opts)
      return data
    end

    # Get chart title
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(TitleResponse, Fixnum, Hash)>] TitleResponse data, response status code and response headers
    def cells_charts_get_worksheet_chart_title_with_http_info(name, sheet_name, chart_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_charts_get_worksheet_chart_title ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_charts_get_worksheet_chart_title"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_charts_get_worksheet_chart_title"
      end
      # verify the required parameter 'chart_index' is set
      if @api_client.config.client_side_validation && chart_index.nil?
        fail ArgumentError, "Missing the required parameter 'chart_index' when calling CellsApi.cells_charts_get_worksheet_chart_title"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'chartIndex' + '}', chart_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TitleResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_charts_get_worksheet_chart_title\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get worksheet charts info.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [ChartsResponse]
    def cells_charts_get_worksheet_charts(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_charts_get_worksheet_charts_with_http_info(name, sheet_name, opts)
      return data
    end

    # Get worksheet charts info.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(ChartsResponse, Fixnum, Hash)>] ChartsResponse data, response status code and response headers
    def cells_charts_get_worksheet_charts_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_charts_get_worksheet_charts ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_charts_get_worksheet_charts"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_charts_get_worksheet_charts"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/charts".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ChartsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_charts_get_worksheet_charts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update chart propreties
    # 
    # @param name 
    # @param sheet_name 
    # @param chart_index 
    # @param [Hash] opts the optional parameters
    # @option opts [Chart] :chart 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_charts_post_worksheet_chart(name, sheet_name, chart_index, opts = {})
      data, _status_code, _headers = cells_charts_post_worksheet_chart_with_http_info(name, sheet_name, chart_index, opts)
      return data
    end

    # Update chart propreties
    # 
    # @param name 
    # @param sheet_name 
    # @param chart_index 
    # @param [Hash] opts the optional parameters
    # @option opts [Chart] :chart 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_charts_post_worksheet_chart_with_http_info(name, sheet_name, chart_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_charts_post_worksheet_chart ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_charts_post_worksheet_chart"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_charts_post_worksheet_chart"
      end
      # verify the required parameter 'chart_index' is set
      if @api_client.config.client_side_validation && chart_index.nil?
        fail ArgumentError, "Missing the required parameter 'chart_index' when calling CellsApi.cells_charts_post_worksheet_chart"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'chartIndex' + '}', chart_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'chart'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_charts_post_worksheet_chart\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update chart legend
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [Legend] :legend 
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_charts_post_worksheet_chart_legend(name, sheet_name, chart_index, opts = {})
      data, _status_code, _headers = cells_charts_post_worksheet_chart_legend_with_http_info(name, sheet_name, chart_index, opts)
      return data
    end

    # Update chart legend
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [Legend] :legend 
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_charts_post_worksheet_chart_legend_with_http_info(name, sheet_name, chart_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_charts_post_worksheet_chart_legend ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_charts_post_worksheet_chart_legend"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_charts_post_worksheet_chart_legend"
      end
      # verify the required parameter 'chart_index' is set
      if @api_client.config.client_side_validation && chart_index.nil?
        fail ArgumentError, "Missing the required parameter 'chart_index' when calling CellsApi.cells_charts_post_worksheet_chart_legend"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'chartIndex' + '}', chart_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'legend'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_charts_post_worksheet_chart_legend\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update chart title
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [Title] :title Chart title
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_charts_post_worksheet_chart_title(name, sheet_name, chart_index, opts = {})
      data, _status_code, _headers = cells_charts_post_worksheet_chart_title_with_http_info(name, sheet_name, chart_index, opts)
      return data
    end

    # Update chart title
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [Title] :title Chart title
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_charts_post_worksheet_chart_title_with_http_info(name, sheet_name, chart_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_charts_post_worksheet_chart_title ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_charts_post_worksheet_chart_title"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_charts_post_worksheet_chart_title"
      end
      # verify the required parameter 'chart_index' is set
      if @api_client.config.client_side_validation && chart_index.nil?
        fail ArgumentError, "Missing the required parameter 'chart_index' when calling CellsApi.cells_charts_post_worksheet_chart_title"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'chartIndex' + '}', chart_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'title'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_charts_post_worksheet_chart_title\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add new chart to worksheet.
    # 
    # @param name Workbook name.
    # @param sheet_name The worksheet name.
    # @param chart_type Chart type, please refer property Type in chart resource.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :upper_left_row New chart upper left row. (default to 0)
    # @option opts [Integer] :upper_left_column New chart upperleft column. (default to 0)
    # @option opts [Integer] :lower_right_row New chart lower right row. (default to 0)
    # @option opts [Integer] :lower_right_column New chart lower right column. (default to 0)
    # @option opts [String] :area Specifies values from which to plot the data series. 
    # @option opts [BOOLEAN] :is_vertical Specifies whether to plot the series from a range of cell values by row or by column.  (default to true)
    # @option opts [String] :category_data Gets or sets the range of category Axis values. It can be a range of cells (such as, \&quot;d1:e10\&quot;). 
    # @option opts [BOOLEAN] :is_auto_get_serial_name Specifies whether auto update serial name.  (default to true)
    # @option opts [String] :title Specifies chart title name.
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @option opts [BOOLEAN] :data_labels  (default to true)
    # @option opts [String] :data_labels_position  (default to Above)
    # @option opts [String] :pivot_table_sheet 
    # @option opts [String] :pivot_table_name 
    # @return [CellsCloudResponse]
    def cells_charts_put_worksheet_add_chart(name, sheet_name, chart_type, opts = {})
      data, _status_code, _headers = cells_charts_put_worksheet_add_chart_with_http_info(name, sheet_name, chart_type, opts)
      return data
    end

    # Add new chart to worksheet.
    # 
    # @param name Workbook name.
    # @param sheet_name The worksheet name.
    # @param chart_type Chart type, please refer property Type in chart resource.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :upper_left_row New chart upper left row.
    # @option opts [Integer] :upper_left_column New chart upperleft column.
    # @option opts [Integer] :lower_right_row New chart lower right row.
    # @option opts [Integer] :lower_right_column New chart lower right column.
    # @option opts [String] :area Specifies values from which to plot the data series. 
    # @option opts [BOOLEAN] :is_vertical Specifies whether to plot the series from a range of cell values by row or by column. 
    # @option opts [String] :category_data Gets or sets the range of category Axis values. It can be a range of cells (such as, \&quot;d1:e10\&quot;). 
    # @option opts [BOOLEAN] :is_auto_get_serial_name Specifies whether auto update serial name. 
    # @option opts [String] :title Specifies chart title name.
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @option opts [BOOLEAN] :data_labels 
    # @option opts [String] :data_labels_position 
    # @option opts [String] :pivot_table_sheet 
    # @option opts [String] :pivot_table_name 
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_charts_put_worksheet_add_chart_with_http_info(name, sheet_name, chart_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_charts_put_worksheet_add_chart ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_charts_put_worksheet_add_chart"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_charts_put_worksheet_add_chart"
      end
      # verify the required parameter 'chart_type' is set
      if @api_client.config.client_side_validation && chart_type.nil?
        fail ArgumentError, "Missing the required parameter 'chart_type' when calling CellsApi.cells_charts_put_worksheet_add_chart"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/charts".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'chartType'] = chart_type
      query_params[:'upperLeftRow'] = opts[:'upper_left_row'] if !opts[:'upper_left_row'].nil?
      query_params[:'upperLeftColumn'] = opts[:'upper_left_column'] if !opts[:'upper_left_column'].nil?
      query_params[:'lowerRightRow'] = opts[:'lower_right_row'] if !opts[:'lower_right_row'].nil?
      query_params[:'lowerRightColumn'] = opts[:'lower_right_column'] if !opts[:'lower_right_column'].nil?
      query_params[:'area'] = opts[:'area'] if !opts[:'area'].nil?
      query_params[:'isVertical'] = opts[:'is_vertical'] if !opts[:'is_vertical'].nil?
      query_params[:'categoryData'] = opts[:'category_data'] if !opts[:'category_data'].nil?
      query_params[:'isAutoGetSerialName'] = opts[:'is_auto_get_serial_name'] if !opts[:'is_auto_get_serial_name'].nil?
      query_params[:'title'] = opts[:'title'] if !opts[:'title'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?
      query_params[:'dataLabels'] = opts[:'data_labels'] if !opts[:'data_labels'].nil?
      query_params[:'dataLabelsPosition'] = opts[:'data_labels_position'] if !opts[:'data_labels_position'].nil?
      query_params[:'pivotTableSheet'] = opts[:'pivot_table_sheet'] if !opts[:'pivot_table_sheet'].nil?
      query_params[:'pivotTableName'] = opts[:'pivot_table_name'] if !opts[:'pivot_table_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_charts_put_worksheet_add_chart\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show legend in chart
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_charts_put_worksheet_chart_legend(name, sheet_name, chart_index, opts = {})
      data, _status_code, _headers = cells_charts_put_worksheet_chart_legend_with_http_info(name, sheet_name, chart_index, opts)
      return data
    end

    # Show legend in chart
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_charts_put_worksheet_chart_legend_with_http_info(name, sheet_name, chart_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_charts_put_worksheet_chart_legend ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_charts_put_worksheet_chart_legend"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_charts_put_worksheet_chart_legend"
      end
      # verify the required parameter 'chart_index' is set
      if @api_client.config.client_side_validation && chart_index.nil?
        fail ArgumentError, "Missing the required parameter 'chart_index' when calling CellsApi.cells_charts_put_worksheet_chart_legend"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/legend".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'chartIndex' + '}', chart_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_charts_put_worksheet_chart_legend\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add chart title / Set chart title visible
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [Title] :title Chart title.
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_charts_put_worksheet_chart_title(name, sheet_name, chart_index, opts = {})
      data, _status_code, _headers = cells_charts_put_worksheet_chart_title_with_http_info(name, sheet_name, chart_index, opts)
      return data
    end

    # Add chart title / Set chart title visible
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param chart_index The chart index.
    # @param [Hash] opts the optional parameters
    # @option opts [Title] :title Chart title.
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_charts_put_worksheet_chart_title_with_http_info(name, sheet_name, chart_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_charts_put_worksheet_chart_title ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_charts_put_worksheet_chart_title"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_charts_put_worksheet_chart_title"
      end
      # verify the required parameter 'chart_index' is set
      if @api_client.config.client_side_validation && chart_index.nil?
        fail ArgumentError, "Missing the required parameter 'chart_index' when calling CellsApi.cells_charts_put_worksheet_chart_title"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/charts/{chartIndex}/title".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'chartIndex' + '}', chart_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'title'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_charts_put_worksheet_chart_title\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove conditional formatting
    # 
    # @param name 
    # @param sheet_name 
    # @param index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_conditional_formattings_delete_worksheet_conditional_formatting(name, sheet_name, index, opts = {})
      data, _status_code, _headers = cells_conditional_formattings_delete_worksheet_conditional_formatting_with_http_info(name, sheet_name, index, opts)
      return data
    end

    # Remove conditional formatting
    # 
    # @param name 
    # @param sheet_name 
    # @param index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_conditional_formattings_delete_worksheet_conditional_formatting_with_http_info(name, sheet_name, index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_conditional_formattings_delete_worksheet_conditional_formatting ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_conditional_formattings_delete_worksheet_conditional_formatting"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_conditional_formattings_delete_worksheet_conditional_formatting"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling CellsApi.cells_conditional_formattings_delete_worksheet_conditional_formatting"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/conditionalFormattings/{index}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'index' + '}', index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_conditional_formattings_delete_worksheet_conditional_formatting\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove cell area from conditional formatting.
    # 
    # @param name 
    # @param sheet_name 
    # @param start_row 
    # @param start_column 
    # @param total_rows 
    # @param total_columns 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_conditional_formattings_delete_worksheet_conditional_formatting_area(name, sheet_name, start_row, start_column, total_rows, total_columns, opts = {})
      data, _status_code, _headers = cells_conditional_formattings_delete_worksheet_conditional_formatting_area_with_http_info(name, sheet_name, start_row, start_column, total_rows, total_columns, opts)
      return data
    end

    # Remove cell area from conditional formatting.
    # 
    # @param name 
    # @param sheet_name 
    # @param start_row 
    # @param start_column 
    # @param total_rows 
    # @param total_columns 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_conditional_formattings_delete_worksheet_conditional_formatting_area_with_http_info(name, sheet_name, start_row, start_column, total_rows, total_columns, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_conditional_formattings_delete_worksheet_conditional_formatting_area ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_conditional_formattings_delete_worksheet_conditional_formatting_area"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_conditional_formattings_delete_worksheet_conditional_formatting_area"
      end
      # verify the required parameter 'start_row' is set
      if @api_client.config.client_side_validation && start_row.nil?
        fail ArgumentError, "Missing the required parameter 'start_row' when calling CellsApi.cells_conditional_formattings_delete_worksheet_conditional_formatting_area"
      end
      # verify the required parameter 'start_column' is set
      if @api_client.config.client_side_validation && start_column.nil?
        fail ArgumentError, "Missing the required parameter 'start_column' when calling CellsApi.cells_conditional_formattings_delete_worksheet_conditional_formatting_area"
      end
      # verify the required parameter 'total_rows' is set
      if @api_client.config.client_side_validation && total_rows.nil?
        fail ArgumentError, "Missing the required parameter 'total_rows' when calling CellsApi.cells_conditional_formattings_delete_worksheet_conditional_formatting_area"
      end
      # verify the required parameter 'total_columns' is set
      if @api_client.config.client_side_validation && total_columns.nil?
        fail ArgumentError, "Missing the required parameter 'total_columns' when calling CellsApi.cells_conditional_formattings_delete_worksheet_conditional_formatting_area"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/conditionalFormattings/area".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'startRow'] = start_row
      query_params[:'startColumn'] = start_column
      query_params[:'totalRows'] = total_rows
      query_params[:'totalColumns'] = total_columns
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_conditional_formattings_delete_worksheet_conditional_formatting_area\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Clear all condition formattings
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_conditional_formattings_delete_worksheet_conditional_formattings(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_conditional_formattings_delete_worksheet_conditional_formattings_with_http_info(name, sheet_name, opts)
      return data
    end

    # Clear all condition formattings
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_conditional_formattings_delete_worksheet_conditional_formattings_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_conditional_formattings_delete_worksheet_conditional_formattings ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_conditional_formattings_delete_worksheet_conditional_formattings"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_conditional_formattings_delete_worksheet_conditional_formattings"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/conditionalFormattings".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_conditional_formattings_delete_worksheet_conditional_formattings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get conditional formatting
    # 
    # @param name 
    # @param sheet_name 
    # @param index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [ConditionalFormattingResponse]
    def cells_conditional_formattings_get_worksheet_conditional_formatting(name, sheet_name, index, opts = {})
      data, _status_code, _headers = cells_conditional_formattings_get_worksheet_conditional_formatting_with_http_info(name, sheet_name, index, opts)
      return data
    end

    # Get conditional formatting
    # 
    # @param name 
    # @param sheet_name 
    # @param index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(ConditionalFormattingResponse, Fixnum, Hash)>] ConditionalFormattingResponse data, response status code and response headers
    def cells_conditional_formattings_get_worksheet_conditional_formatting_with_http_info(name, sheet_name, index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_conditional_formattings_get_worksheet_conditional_formatting ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_conditional_formattings_get_worksheet_conditional_formatting"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_conditional_formattings_get_worksheet_conditional_formatting"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling CellsApi.cells_conditional_formattings_get_worksheet_conditional_formatting"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/conditionalFormattings/{index}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'index' + '}', index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ConditionalFormattingResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_conditional_formattings_get_worksheet_conditional_formatting\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get conditional formattings 
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [ConditionalFormattingsResponse]
    def cells_conditional_formattings_get_worksheet_conditional_formattings(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_conditional_formattings_get_worksheet_conditional_formattings_with_http_info(name, sheet_name, opts)
      return data
    end

    # Get conditional formattings 
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(ConditionalFormattingsResponse, Fixnum, Hash)>] ConditionalFormattingsResponse data, response status code and response headers
    def cells_conditional_formattings_get_worksheet_conditional_formattings_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_conditional_formattings_get_worksheet_conditional_formattings ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_conditional_formattings_get_worksheet_conditional_formattings"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_conditional_formattings_get_worksheet_conditional_formattings"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/conditionalFormattings".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ConditionalFormattingsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_conditional_formattings_get_worksheet_conditional_formattings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a condition formatting.
    # 
    # @param name 
    # @param sheet_name 
    # @param cell_area 
    # @param [Hash] opts the optional parameters
    # @option opts [FormatCondition] :format_condition 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_conditional_formattings_put_worksheet_conditional_formatting(name, sheet_name, cell_area, opts = {})
      data, _status_code, _headers = cells_conditional_formattings_put_worksheet_conditional_formatting_with_http_info(name, sheet_name, cell_area, opts)
      return data
    end

    # Add a condition formatting.
    # 
    # @param name 
    # @param sheet_name 
    # @param cell_area 
    # @param [Hash] opts the optional parameters
    # @option opts [FormatCondition] :format_condition 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_conditional_formattings_put_worksheet_conditional_formatting_with_http_info(name, sheet_name, cell_area, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_conditional_formattings_put_worksheet_conditional_formatting ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_conditional_formattings_put_worksheet_conditional_formatting"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_conditional_formattings_put_worksheet_conditional_formatting"
      end
      # verify the required parameter 'cell_area' is set
      if @api_client.config.client_side_validation && cell_area.nil?
        fail ArgumentError, "Missing the required parameter 'cell_area' when calling CellsApi.cells_conditional_formattings_put_worksheet_conditional_formatting"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/conditionalFormattings".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'cellArea'] = cell_area
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'format_condition'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_conditional_formattings_put_worksheet_conditional_formatting\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a format condition.
    # 
    # @param name 
    # @param sheet_name 
    # @param index 
    # @param cell_area 
    # @param type 
    # @param operator_type 
    # @param formula1 
    # @param formula2 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_conditional_formattings_put_worksheet_format_condition(name, sheet_name, index, cell_area, type, operator_type, formula1, formula2, opts = {})
      data, _status_code, _headers = cells_conditional_formattings_put_worksheet_format_condition_with_http_info(name, sheet_name, index, cell_area, type, operator_type, formula1, formula2, opts)
      return data
    end

    # Add a format condition.
    # 
    # @param name 
    # @param sheet_name 
    # @param index 
    # @param cell_area 
    # @param type 
    # @param operator_type 
    # @param formula1 
    # @param formula2 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_conditional_formattings_put_worksheet_format_condition_with_http_info(name, sheet_name, index, cell_area, type, operator_type, formula1, formula2, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_conditional_formattings_put_worksheet_format_condition ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_conditional_formattings_put_worksheet_format_condition"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_conditional_formattings_put_worksheet_format_condition"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling CellsApi.cells_conditional_formattings_put_worksheet_format_condition"
      end
      # verify the required parameter 'cell_area' is set
      if @api_client.config.client_side_validation && cell_area.nil?
        fail ArgumentError, "Missing the required parameter 'cell_area' when calling CellsApi.cells_conditional_formattings_put_worksheet_format_condition"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling CellsApi.cells_conditional_formattings_put_worksheet_format_condition"
      end
      # verify the required parameter 'operator_type' is set
      if @api_client.config.client_side_validation && operator_type.nil?
        fail ArgumentError, "Missing the required parameter 'operator_type' when calling CellsApi.cells_conditional_formattings_put_worksheet_format_condition"
      end
      # verify the required parameter 'formula1' is set
      if @api_client.config.client_side_validation && formula1.nil?
        fail ArgumentError, "Missing the required parameter 'formula1' when calling CellsApi.cells_conditional_formattings_put_worksheet_format_condition"
      end
      # verify the required parameter 'formula2' is set
      if @api_client.config.client_side_validation && formula2.nil?
        fail ArgumentError, "Missing the required parameter 'formula2' when calling CellsApi.cells_conditional_formattings_put_worksheet_format_condition"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/conditionalFormattings/{index}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'index' + '}', index.to_s)

      # query parameters
      query_params = {}
      query_params[:'cellArea'] = cell_area
      query_params[:'type'] = type
      query_params[:'operatorType'] = operator_type
      query_params[:'formula1'] = formula1
      query_params[:'formula2'] = formula2
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_conditional_formattings_put_worksheet_format_condition\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # add a cell area for format condition             
    # 
    # @param name 
    # @param sheet_name 
    # @param index 
    # @param cell_area 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_conditional_formattings_put_worksheet_format_condition_area(name, sheet_name, index, cell_area, opts = {})
      data, _status_code, _headers = cells_conditional_formattings_put_worksheet_format_condition_area_with_http_info(name, sheet_name, index, cell_area, opts)
      return data
    end

    # add a cell area for format condition             
    # 
    # @param name 
    # @param sheet_name 
    # @param index 
    # @param cell_area 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_conditional_formattings_put_worksheet_format_condition_area_with_http_info(name, sheet_name, index, cell_area, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_conditional_formattings_put_worksheet_format_condition_area ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_conditional_formattings_put_worksheet_format_condition_area"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_conditional_formattings_put_worksheet_format_condition_area"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling CellsApi.cells_conditional_formattings_put_worksheet_format_condition_area"
      end
      # verify the required parameter 'cell_area' is set
      if @api_client.config.client_side_validation && cell_area.nil?
        fail ArgumentError, "Missing the required parameter 'cell_area' when calling CellsApi.cells_conditional_formattings_put_worksheet_format_condition_area"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/conditionalFormattings/{index}/area".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'index' + '}', index.to_s)

      # query parameters
      query_params = {}
      query_params[:'cellArea'] = cell_area
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_conditional_formattings_put_worksheet_format_condition_area\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a condition for format condition.
    # 
    # @param name 
    # @param sheet_name 
    # @param index 
    # @param type 
    # @param operator_type 
    # @param formula1 
    # @param formula2 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_conditional_formattings_put_worksheet_format_condition_condition(name, sheet_name, index, type, operator_type, formula1, formula2, opts = {})
      data, _status_code, _headers = cells_conditional_formattings_put_worksheet_format_condition_condition_with_http_info(name, sheet_name, index, type, operator_type, formula1, formula2, opts)
      return data
    end

    # Add a condition for format condition.
    # 
    # @param name 
    # @param sheet_name 
    # @param index 
    # @param type 
    # @param operator_type 
    # @param formula1 
    # @param formula2 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_conditional_formattings_put_worksheet_format_condition_condition_with_http_info(name, sheet_name, index, type, operator_type, formula1, formula2, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_conditional_formattings_put_worksheet_format_condition_condition ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_conditional_formattings_put_worksheet_format_condition_condition"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_conditional_formattings_put_worksheet_format_condition_condition"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling CellsApi.cells_conditional_formattings_put_worksheet_format_condition_condition"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling CellsApi.cells_conditional_formattings_put_worksheet_format_condition_condition"
      end
      # verify the required parameter 'operator_type' is set
      if @api_client.config.client_side_validation && operator_type.nil?
        fail ArgumentError, "Missing the required parameter 'operator_type' when calling CellsApi.cells_conditional_formattings_put_worksheet_format_condition_condition"
      end
      # verify the required parameter 'formula1' is set
      if @api_client.config.client_side_validation && formula1.nil?
        fail ArgumentError, "Missing the required parameter 'formula1' when calling CellsApi.cells_conditional_formattings_put_worksheet_format_condition_condition"
      end
      # verify the required parameter 'formula2' is set
      if @api_client.config.client_side_validation && formula2.nil?
        fail ArgumentError, "Missing the required parameter 'formula2' when calling CellsApi.cells_conditional_formattings_put_worksheet_format_condition_condition"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/conditionalFormattings/{index}/condition".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'index' + '}', index.to_s)

      # query parameters
      query_params = {}
      query_params[:'type'] = type
      query_params[:'operatorType'] = operator_type
      query_params[:'formula1'] = formula1
      query_params[:'formula2'] = formula2
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_conditional_formattings_put_worksheet_format_condition_condition\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete worksheet columns.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param column_index The column index.
    # @param columns The columns.
    # @param update_reference The update reference.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_delete_worksheet_columns(name, sheet_name, column_index, columns, update_reference, opts = {})
      data, _status_code, _headers = cells_delete_worksheet_columns_with_http_info(name, sheet_name, column_index, columns, update_reference, opts)
      return data
    end

    # Delete worksheet columns.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param column_index The column index.
    # @param columns The columns.
    # @param update_reference The update reference.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_delete_worksheet_columns_with_http_info(name, sheet_name, column_index, columns, update_reference, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_delete_worksheet_columns ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_delete_worksheet_columns"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_delete_worksheet_columns"
      end
      # verify the required parameter 'column_index' is set
      if @api_client.config.client_side_validation && column_index.nil?
        fail ArgumentError, "Missing the required parameter 'column_index' when calling CellsApi.cells_delete_worksheet_columns"
      end
      # verify the required parameter 'columns' is set
      if @api_client.config.client_side_validation && columns.nil?
        fail ArgumentError, "Missing the required parameter 'columns' when calling CellsApi.cells_delete_worksheet_columns"
      end
      # verify the required parameter 'update_reference' is set
      if @api_client.config.client_side_validation && update_reference.nil?
        fail ArgumentError, "Missing the required parameter 'update_reference' when calling CellsApi.cells_delete_worksheet_columns"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'columnIndex' + '}', column_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'columns'] = columns
      query_params[:'updateReference'] = update_reference
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_delete_worksheet_columns\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete worksheet row.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet bame.
    # @param row_index The row index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_delete_worksheet_row(name, sheet_name, row_index, opts = {})
      data, _status_code, _headers = cells_delete_worksheet_row_with_http_info(name, sheet_name, row_index, opts)
      return data
    end

    # Delete worksheet row.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet bame.
    # @param row_index The row index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_delete_worksheet_row_with_http_info(name, sheet_name, row_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_delete_worksheet_row ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_delete_worksheet_row"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_delete_worksheet_row"
      end
      # verify the required parameter 'row_index' is set
      if @api_client.config.client_side_validation && row_index.nil?
        fail ArgumentError, "Missing the required parameter 'row_index' when calling CellsApi.cells_delete_worksheet_row"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'rowIndex' + '}', row_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_delete_worksheet_row\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete several worksheet rows.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet bame.
    # @param startrow The begin row index to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :total_rows Number of rows to be operated. (default to 1)
    # @option opts [BOOLEAN] :update_reference Indicates if update references in other worksheets. (default to true)
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_delete_worksheet_rows(name, sheet_name, startrow, opts = {})
      data, _status_code, _headers = cells_delete_worksheet_rows_with_http_info(name, sheet_name, startrow, opts)
      return data
    end

    # Delete several worksheet rows.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet bame.
    # @param startrow The begin row index to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :total_rows Number of rows to be operated.
    # @option opts [BOOLEAN] :update_reference Indicates if update references in other worksheets.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_delete_worksheet_rows_with_http_info(name, sheet_name, startrow, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_delete_worksheet_rows ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_delete_worksheet_rows"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_delete_worksheet_rows"
      end
      # verify the required parameter 'startrow' is set
      if @api_client.config.client_side_validation && startrow.nil?
        fail ArgumentError, "Missing the required parameter 'startrow' when calling CellsApi.cells_delete_worksheet_rows"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/rows".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'startrow'] = startrow
      query_params[:'totalRows'] = opts[:'total_rows'] if !opts[:'total_rows'].nil?
      query_params[:'updateReference'] = opts[:'update_reference'] if !opts[:'update_reference'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_delete_worksheet_rows\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read cell data by cell's name.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param cell_name The cell&#39;s  name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Object]
    def cells_get_cell_html_string(name, sheet_name, cell_name, opts = {})
      data, _status_code, _headers = cells_get_cell_html_string_with_http_info(name, sheet_name, cell_name, opts)
      return data
    end

    # Read cell data by cell&#39;s name.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param cell_name The cell&#39;s  name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def cells_get_cell_html_string_with_http_info(name, sheet_name, cell_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_get_cell_html_string ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_get_cell_html_string"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_get_cell_html_string"
      end
      # verify the required parameter 'cell_name' is set
      if @api_client.config.client_side_validation && cell_name.nil?
        fail ArgumentError, "Missing the required parameter 'cell_name' when calling CellsApi.cells_get_cell_html_string"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/{cellName}/htmlstring".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'cellName' + '}', cell_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_get_cell_html_string\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read cell data by cell's name.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param cell_or_method_name The cell&#39;s or method name. (Method name like firstcell, endcell etc.)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Object]
    def cells_get_worksheet_cell(name, sheet_name, cell_or_method_name, opts = {})
      data, _status_code, _headers = cells_get_worksheet_cell_with_http_info(name, sheet_name, cell_or_method_name, opts)
      return data
    end

    # Read cell data by cell&#39;s name.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param cell_or_method_name The cell&#39;s or method name. (Method name like firstcell, endcell etc.)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def cells_get_worksheet_cell_with_http_info(name, sheet_name, cell_or_method_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_get_worksheet_cell ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_get_worksheet_cell"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_get_worksheet_cell"
      end
      # verify the required parameter 'cell_or_method_name' is set
      if @api_client.config.client_side_validation && cell_or_method_name.nil?
        fail ArgumentError, "Missing the required parameter 'cell_or_method_name' when calling CellsApi.cells_get_worksheet_cell"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/{cellOrMethodName}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'cellOrMethodName' + '}', cell_or_method_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_get_worksheet_cell\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read cell's style info.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param cell_name Cell&#39;s name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [StyleResponse]
    def cells_get_worksheet_cell_style(name, sheet_name, cell_name, opts = {})
      data, _status_code, _headers = cells_get_worksheet_cell_style_with_http_info(name, sheet_name, cell_name, opts)
      return data
    end

    # Read cell&#39;s style info.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param cell_name Cell&#39;s name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(StyleResponse, Fixnum, Hash)>] StyleResponse data, response status code and response headers
    def cells_get_worksheet_cell_style_with_http_info(name, sheet_name, cell_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_get_worksheet_cell_style ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_get_worksheet_cell_style"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_get_worksheet_cell_style"
      end
      # verify the required parameter 'cell_name' is set
      if @api_client.config.client_side_validation && cell_name.nil?
        fail ArgumentError, "Missing the required parameter 'cell_name' when calling CellsApi.cells_get_worksheet_cell_style"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/{cellName}/style".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'cellName' + '}', cell_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'StyleResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_get_worksheet_cell_style\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get cells info.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offest Begginig offset. (default to 0)
    # @option opts [Integer] :count Maximum amount of cells in the response. (default to 0)
    # @option opts [String] :folder Document&#39;s folder name.
    # @option opts [String] :storage_name storage name.
    # @return [CellsResponse]
    def cells_get_worksheet_cells(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_get_worksheet_cells_with_http_info(name, sheet_name, opts)
      return data
    end

    # Get cells info.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offest Begginig offset.
    # @option opts [Integer] :count Maximum amount of cells in the response.
    # @option opts [String] :folder Document&#39;s folder name.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsResponse, Fixnum, Hash)>] CellsResponse data, response status code and response headers
    def cells_get_worksheet_cells_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_get_worksheet_cells ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_get_worksheet_cells"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_get_worksheet_cells"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'offest'] = opts[:'offest'] if !opts[:'offest'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_get_worksheet_cells\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read worksheet column data by column's index.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param column_index The column index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [ColumnResponse]
    def cells_get_worksheet_column(name, sheet_name, column_index, opts = {})
      data, _status_code, _headers = cells_get_worksheet_column_with_http_info(name, sheet_name, column_index, opts)
      return data
    end

    # Read worksheet column data by column&#39;s index.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param column_index The column index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(ColumnResponse, Fixnum, Hash)>] ColumnResponse data, response status code and response headers
    def cells_get_worksheet_column_with_http_info(name, sheet_name, column_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_get_worksheet_column ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_get_worksheet_column"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_get_worksheet_column"
      end
      # verify the required parameter 'column_index' is set
      if @api_client.config.client_side_validation && column_index.nil?
        fail ArgumentError, "Missing the required parameter 'column_index' when calling CellsApi.cells_get_worksheet_column"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'columnIndex' + '}', column_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ColumnResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_get_worksheet_column\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read worksheet columns info.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workdook folder.
    # @option opts [String] :storage_name storage name.
    # @return [ColumnsResponse]
    def cells_get_worksheet_columns(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_get_worksheet_columns_with_http_info(name, sheet_name, opts)
      return data
    end

    # Read worksheet columns info.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workdook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(ColumnsResponse, Fixnum, Hash)>] ColumnsResponse data, response status code and response headers
    def cells_get_worksheet_columns_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_get_worksheet_columns ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_get_worksheet_columns"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_get_worksheet_columns"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/columns".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ColumnsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_get_worksheet_columns\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read worksheet row data by row's index.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param row_index The row index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [RowResponse]
    def cells_get_worksheet_row(name, sheet_name, row_index, opts = {})
      data, _status_code, _headers = cells_get_worksheet_row_with_http_info(name, sheet_name, row_index, opts)
      return data
    end

    # Read worksheet row data by row&#39;s index.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param row_index The row index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(RowResponse, Fixnum, Hash)>] RowResponse data, response status code and response headers
    def cells_get_worksheet_row_with_http_info(name, sheet_name, row_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_get_worksheet_row ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_get_worksheet_row"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_get_worksheet_row"
      end
      # verify the required parameter 'row_index' is set
      if @api_client.config.client_side_validation && row_index.nil?
        fail ArgumentError, "Missing the required parameter 'row_index' when calling CellsApi.cells_get_worksheet_row"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'rowIndex' + '}', row_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RowResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_get_worksheet_row\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read worksheet rows info.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workdook folder.
    # @option opts [String] :storage_name storage name.
    # @return [RowsResponse]
    def cells_get_worksheet_rows(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_get_worksheet_rows_with_http_info(name, sheet_name, opts)
      return data
    end

    # Read worksheet rows info.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workdook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(RowsResponse, Fixnum, Hash)>] RowsResponse data, response status code and response headers
    def cells_get_worksheet_rows_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_get_worksheet_rows ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_get_worksheet_rows"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_get_worksheet_rows"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/rows".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RowsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_get_worksheet_rows\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete worksheet hyperlink by index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param hyperlink_index The hyperlink&#39;s index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_hypelinks_delete_worksheet_hyperlink(name, sheet_name, hyperlink_index, opts = {})
      data, _status_code, _headers = cells_hypelinks_delete_worksheet_hyperlink_with_http_info(name, sheet_name, hyperlink_index, opts)
      return data
    end

    # Delete worksheet hyperlink by index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param hyperlink_index The hyperlink&#39;s index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_hypelinks_delete_worksheet_hyperlink_with_http_info(name, sheet_name, hyperlink_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_hypelinks_delete_worksheet_hyperlink ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_hypelinks_delete_worksheet_hyperlink"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_hypelinks_delete_worksheet_hyperlink"
      end
      # verify the required parameter 'hyperlink_index' is set
      if @api_client.config.client_side_validation && hyperlink_index.nil?
        fail ArgumentError, "Missing the required parameter 'hyperlink_index' when calling CellsApi.cells_hypelinks_delete_worksheet_hyperlink"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/hyperlinks/{hyperlinkIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'hyperlinkIndex' + '}', hyperlink_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_hypelinks_delete_worksheet_hyperlink\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete all hyperlinks in worksheet.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_hypelinks_delete_worksheet_hyperlinks(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_hypelinks_delete_worksheet_hyperlinks_with_http_info(name, sheet_name, opts)
      return data
    end

    # Delete all hyperlinks in worksheet.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_hypelinks_delete_worksheet_hyperlinks_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_hypelinks_delete_worksheet_hyperlinks ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_hypelinks_delete_worksheet_hyperlinks"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_hypelinks_delete_worksheet_hyperlinks"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/hyperlinks".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_hypelinks_delete_worksheet_hyperlinks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get worksheet hyperlink by index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param hyperlink_index The hyperlink&#39;s index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [HyperlinkResponse]
    def cells_hypelinks_get_worksheet_hyperlink(name, sheet_name, hyperlink_index, opts = {})
      data, _status_code, _headers = cells_hypelinks_get_worksheet_hyperlink_with_http_info(name, sheet_name, hyperlink_index, opts)
      return data
    end

    # Get worksheet hyperlink by index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param hyperlink_index The hyperlink&#39;s index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(HyperlinkResponse, Fixnum, Hash)>] HyperlinkResponse data, response status code and response headers
    def cells_hypelinks_get_worksheet_hyperlink_with_http_info(name, sheet_name, hyperlink_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_hypelinks_get_worksheet_hyperlink ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_hypelinks_get_worksheet_hyperlink"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_hypelinks_get_worksheet_hyperlink"
      end
      # verify the required parameter 'hyperlink_index' is set
      if @api_client.config.client_side_validation && hyperlink_index.nil?
        fail ArgumentError, "Missing the required parameter 'hyperlink_index' when calling CellsApi.cells_hypelinks_get_worksheet_hyperlink"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/hyperlinks/{hyperlinkIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'hyperlinkIndex' + '}', hyperlink_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'HyperlinkResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_hypelinks_get_worksheet_hyperlink\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get worksheet hyperlinks.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [HyperlinksResponse]
    def cells_hypelinks_get_worksheet_hyperlinks(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_hypelinks_get_worksheet_hyperlinks_with_http_info(name, sheet_name, opts)
      return data
    end

    # Get worksheet hyperlinks.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(HyperlinksResponse, Fixnum, Hash)>] HyperlinksResponse data, response status code and response headers
    def cells_hypelinks_get_worksheet_hyperlinks_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_hypelinks_get_worksheet_hyperlinks ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_hypelinks_get_worksheet_hyperlinks"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_hypelinks_get_worksheet_hyperlinks"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/hyperlinks".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'HyperlinksResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_hypelinks_get_worksheet_hyperlinks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update worksheet hyperlink by index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param hyperlink_index The hyperlink&#39;s index.
    # @param [Hash] opts the optional parameters
    # @option opts [Hyperlink] :hyperlink Hyperlink object
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_hypelinks_post_worksheet_hyperlink(name, sheet_name, hyperlink_index, opts = {})
      data, _status_code, _headers = cells_hypelinks_post_worksheet_hyperlink_with_http_info(name, sheet_name, hyperlink_index, opts)
      return data
    end

    # Update worksheet hyperlink by index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param hyperlink_index The hyperlink&#39;s index.
    # @param [Hash] opts the optional parameters
    # @option opts [Hyperlink] :hyperlink Hyperlink object
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_hypelinks_post_worksheet_hyperlink_with_http_info(name, sheet_name, hyperlink_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_hypelinks_post_worksheet_hyperlink ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_hypelinks_post_worksheet_hyperlink"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_hypelinks_post_worksheet_hyperlink"
      end
      # verify the required parameter 'hyperlink_index' is set
      if @api_client.config.client_side_validation && hyperlink_index.nil?
        fail ArgumentError, "Missing the required parameter 'hyperlink_index' when calling CellsApi.cells_hypelinks_post_worksheet_hyperlink"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/hyperlinks/{hyperlinkIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'hyperlinkIndex' + '}', hyperlink_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'hyperlink'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_hypelinks_post_worksheet_hyperlink\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add worksheet hyperlink.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param first_row 
    # @param first_column 
    # @param total_rows 
    # @param total_columns 
    # @param address 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_hypelinks_put_worksheet_hyperlink(name, sheet_name, first_row, first_column, total_rows, total_columns, address, opts = {})
      data, _status_code, _headers = cells_hypelinks_put_worksheet_hyperlink_with_http_info(name, sheet_name, first_row, first_column, total_rows, total_columns, address, opts)
      return data
    end

    # Add worksheet hyperlink.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param first_row 
    # @param first_column 
    # @param total_rows 
    # @param total_columns 
    # @param address 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_hypelinks_put_worksheet_hyperlink_with_http_info(name, sheet_name, first_row, first_column, total_rows, total_columns, address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_hypelinks_put_worksheet_hyperlink ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_hypelinks_put_worksheet_hyperlink"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_hypelinks_put_worksheet_hyperlink"
      end
      # verify the required parameter 'first_row' is set
      if @api_client.config.client_side_validation && first_row.nil?
        fail ArgumentError, "Missing the required parameter 'first_row' when calling CellsApi.cells_hypelinks_put_worksheet_hyperlink"
      end
      # verify the required parameter 'first_column' is set
      if @api_client.config.client_side_validation && first_column.nil?
        fail ArgumentError, "Missing the required parameter 'first_column' when calling CellsApi.cells_hypelinks_put_worksheet_hyperlink"
      end
      # verify the required parameter 'total_rows' is set
      if @api_client.config.client_side_validation && total_rows.nil?
        fail ArgumentError, "Missing the required parameter 'total_rows' when calling CellsApi.cells_hypelinks_put_worksheet_hyperlink"
      end
      # verify the required parameter 'total_columns' is set
      if @api_client.config.client_side_validation && total_columns.nil?
        fail ArgumentError, "Missing the required parameter 'total_columns' when calling CellsApi.cells_hypelinks_put_worksheet_hyperlink"
      end
      # verify the required parameter 'address' is set
      if @api_client.config.client_side_validation && address.nil?
        fail ArgumentError, "Missing the required parameter 'address' when calling CellsApi.cells_hypelinks_put_worksheet_hyperlink"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/hyperlinks".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'firstRow'] = first_row
      query_params[:'firstColumn'] = first_column
      query_params[:'totalRows'] = total_rows
      query_params[:'totalColumns'] = total_columns
      query_params[:'address'] = address
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_hypelinks_put_worksheet_hyperlink\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete worksheet list object by index
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param list_object_index List object index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_list_objects_delete_worksheet_list_object(name, sheet_name, list_object_index, opts = {})
      data, _status_code, _headers = cells_list_objects_delete_worksheet_list_object_with_http_info(name, sheet_name, list_object_index, opts)
      return data
    end

    # Delete worksheet list object by index
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param list_object_index List object index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_list_objects_delete_worksheet_list_object_with_http_info(name, sheet_name, list_object_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_list_objects_delete_worksheet_list_object ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_list_objects_delete_worksheet_list_object"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_list_objects_delete_worksheet_list_object"
      end
      # verify the required parameter 'list_object_index' is set
      if @api_client.config.client_side_validation && list_object_index.nil?
        fail ArgumentError, "Missing the required parameter 'list_object_index' when calling CellsApi.cells_list_objects_delete_worksheet_list_object"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/listobjects/{listObjectIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'listObjectIndex' + '}', list_object_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_list_objects_delete_worksheet_list_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete worksheet list objects
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_list_objects_delete_worksheet_list_objects(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_list_objects_delete_worksheet_list_objects_with_http_info(name, sheet_name, opts)
      return data
    end

    # Delete worksheet list objects
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_list_objects_delete_worksheet_list_objects_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_list_objects_delete_worksheet_list_objects ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_list_objects_delete_worksheet_list_objects"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_list_objects_delete_worksheet_list_objects"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/listobjects".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_list_objects_delete_worksheet_list_objects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get worksheet list object info by index.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param listobjectindex list object index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format export format.
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [File]
    def cells_list_objects_get_worksheet_list_object(name, sheet_name, listobjectindex, opts = {})
      data, _status_code, _headers = cells_list_objects_get_worksheet_list_object_with_http_info(name, sheet_name, listobjectindex, opts)
      return data
    end

    # Get worksheet list object info by index.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param listobjectindex list object index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format export format.
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def cells_list_objects_get_worksheet_list_object_with_http_info(name, sheet_name, listobjectindex, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_list_objects_get_worksheet_list_object ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_list_objects_get_worksheet_list_object"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_list_objects_get_worksheet_list_object"
      end
      # verify the required parameter 'listobjectindex' is set
      if @api_client.config.client_side_validation && listobjectindex.nil?
        fail ArgumentError, "Missing the required parameter 'listobjectindex' when calling CellsApi.cells_list_objects_get_worksheet_list_object"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/listobjects/{listobjectindex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'listobjectindex' + '}', listobjectindex.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_list_objects_get_worksheet_list_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get worksheet listobjects info.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [ListObjectsResponse]
    def cells_list_objects_get_worksheet_list_objects(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_list_objects_get_worksheet_list_objects_with_http_info(name, sheet_name, opts)
      return data
    end

    # Get worksheet listobjects info.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(ListObjectsResponse, Fixnum, Hash)>] ListObjectsResponse data, response status code and response headers
    def cells_list_objects_get_worksheet_list_objects_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_list_objects_get_worksheet_list_objects ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_list_objects_get_worksheet_list_objects"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_list_objects_get_worksheet_list_objects"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/listobjects".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListObjectsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_list_objects_get_worksheet_list_objects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update  list object 
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param list_object_index list Object index
    # @param [Hash] opts the optional parameters
    # @option opts [ListObject] :list_object listObject dto in request body.
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_list_objects_post_worksheet_list_object(name, sheet_name, list_object_index, opts = {})
      data, _status_code, _headers = cells_list_objects_post_worksheet_list_object_with_http_info(name, sheet_name, list_object_index, opts)
      return data
    end

    # Update  list object 
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param list_object_index list Object index
    # @param [Hash] opts the optional parameters
    # @option opts [ListObject] :list_object listObject dto in request body.
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_list_objects_post_worksheet_list_object_with_http_info(name, sheet_name, list_object_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_list_objects_post_worksheet_list_object ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_list_objects_post_worksheet_list_object"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_list_objects_post_worksheet_list_object"
      end
      # verify the required parameter 'list_object_index' is set
      if @api_client.config.client_side_validation && list_object_index.nil?
        fail ArgumentError, "Missing the required parameter 'list_object_index' when calling CellsApi.cells_list_objects_post_worksheet_list_object"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/listobjects/{listObjectIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'listObjectIndex' + '}', list_object_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'list_object'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_list_objects_post_worksheet_list_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param list_object_index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_list_objects_post_worksheet_list_object_convert_to_range(name, sheet_name, list_object_index, opts = {})
      data, _status_code, _headers = cells_list_objects_post_worksheet_list_object_convert_to_range_with_http_info(name, sheet_name, list_object_index, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param list_object_index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_list_objects_post_worksheet_list_object_convert_to_range_with_http_info(name, sheet_name, list_object_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_list_objects_post_worksheet_list_object_convert_to_range ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_list_objects_post_worksheet_list_object_convert_to_range"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_list_objects_post_worksheet_list_object_convert_to_range"
      end
      # verify the required parameter 'list_object_index' is set
      if @api_client.config.client_side_validation && list_object_index.nil?
        fail ArgumentError, "Missing the required parameter 'list_object_index' when calling CellsApi.cells_list_objects_post_worksheet_list_object_convert_to_range"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/listobjects/{listObjectIndex}/ConvertToRange".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'listObjectIndex' + '}', list_object_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_list_objects_post_worksheet_list_object_convert_to_range\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param list_object_index 
    # @param [Hash] opts the optional parameters
    # @option opts [DataSorter] :data_sorter 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_list_objects_post_worksheet_list_object_sort_table(name, sheet_name, list_object_index, opts = {})
      data, _status_code, _headers = cells_list_objects_post_worksheet_list_object_sort_table_with_http_info(name, sheet_name, list_object_index, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param list_object_index 
    # @param [Hash] opts the optional parameters
    # @option opts [DataSorter] :data_sorter 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_list_objects_post_worksheet_list_object_sort_table_with_http_info(name, sheet_name, list_object_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_list_objects_post_worksheet_list_object_sort_table ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_list_objects_post_worksheet_list_object_sort_table"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_list_objects_post_worksheet_list_object_sort_table"
      end
      # verify the required parameter 'list_object_index' is set
      if @api_client.config.client_side_validation && list_object_index.nil?
        fail ArgumentError, "Missing the required parameter 'list_object_index' when calling CellsApi.cells_list_objects_post_worksheet_list_object_sort_table"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/listobjects/{listObjectIndex}/sort".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'listObjectIndex' + '}', list_object_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'data_sorter'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_list_objects_post_worksheet_list_object_sort_table\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param list_object_index 
    # @param destsheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [CreatePivotTableRequest] :request 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_list_objects_post_worksheet_list_object_summarize_with_pivot_table(name, sheet_name, list_object_index, destsheet_name, opts = {})
      data, _status_code, _headers = cells_list_objects_post_worksheet_list_object_summarize_with_pivot_table_with_http_info(name, sheet_name, list_object_index, destsheet_name, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param list_object_index 
    # @param destsheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [CreatePivotTableRequest] :request 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_list_objects_post_worksheet_list_object_summarize_with_pivot_table_with_http_info(name, sheet_name, list_object_index, destsheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_list_objects_post_worksheet_list_object_summarize_with_pivot_table ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_list_objects_post_worksheet_list_object_summarize_with_pivot_table"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_list_objects_post_worksheet_list_object_summarize_with_pivot_table"
      end
      # verify the required parameter 'list_object_index' is set
      if @api_client.config.client_side_validation && list_object_index.nil?
        fail ArgumentError, "Missing the required parameter 'list_object_index' when calling CellsApi.cells_list_objects_post_worksheet_list_object_summarize_with_pivot_table"
      end
      # verify the required parameter 'destsheet_name' is set
      if @api_client.config.client_side_validation && destsheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'destsheet_name' when calling CellsApi.cells_list_objects_post_worksheet_list_object_summarize_with_pivot_table"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/listobjects/{listObjectIndex}/SummarizeWithPivotTable".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'listObjectIndex' + '}', list_object_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'destsheetName'] = destsheet_name
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'request'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_list_objects_post_worksheet_list_object_summarize_with_pivot_table\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a list object into worksheet.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param start_row The start row of the list range.
    # @param start_column The start row of the list range.
    # @param end_row The start row of the list range.
    # @param end_column The start row of the list range.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :has_headers Whether the range has headers. (default to true)
    # @option opts [ListObject] :list_object List Object
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_list_objects_put_worksheet_list_object(name, sheet_name, start_row, start_column, end_row, end_column, opts = {})
      data, _status_code, _headers = cells_list_objects_put_worksheet_list_object_with_http_info(name, sheet_name, start_row, start_column, end_row, end_column, opts)
      return data
    end

    # Add a list object into worksheet.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param start_row The start row of the list range.
    # @param start_column The start row of the list range.
    # @param end_row The start row of the list range.
    # @param end_column The start row of the list range.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :has_headers Whether the range has headers.
    # @option opts [ListObject] :list_object List Object
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_list_objects_put_worksheet_list_object_with_http_info(name, sheet_name, start_row, start_column, end_row, end_column, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_list_objects_put_worksheet_list_object ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_list_objects_put_worksheet_list_object"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_list_objects_put_worksheet_list_object"
      end
      # verify the required parameter 'start_row' is set
      if @api_client.config.client_side_validation && start_row.nil?
        fail ArgumentError, "Missing the required parameter 'start_row' when calling CellsApi.cells_list_objects_put_worksheet_list_object"
      end
      # verify the required parameter 'start_column' is set
      if @api_client.config.client_side_validation && start_column.nil?
        fail ArgumentError, "Missing the required parameter 'start_column' when calling CellsApi.cells_list_objects_put_worksheet_list_object"
      end
      # verify the required parameter 'end_row' is set
      if @api_client.config.client_side_validation && end_row.nil?
        fail ArgumentError, "Missing the required parameter 'end_row' when calling CellsApi.cells_list_objects_put_worksheet_list_object"
      end
      # verify the required parameter 'end_column' is set
      if @api_client.config.client_side_validation && end_column.nil?
        fail ArgumentError, "Missing the required parameter 'end_column' when calling CellsApi.cells_list_objects_put_worksheet_list_object"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/listobjects".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'startRow'] = start_row
      query_params[:'startColumn'] = start_column
      query_params[:'endRow'] = end_row
      query_params[:'endColumn'] = end_column
      query_params[:'hasHeaders'] = opts[:'has_headers'] if !opts[:'has_headers'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'list_object'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_list_objects_put_worksheet_list_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete OLE object.
    # 
    # @param name The workbook name.
    # @param sheet_name The worsheet name.
    # @param ole_object_index Ole object index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_ole_objects_delete_worksheet_ole_object(name, sheet_name, ole_object_index, opts = {})
      data, _status_code, _headers = cells_ole_objects_delete_worksheet_ole_object_with_http_info(name, sheet_name, ole_object_index, opts)
      return data
    end

    # Delete OLE object.
    # 
    # @param name The workbook name.
    # @param sheet_name The worsheet name.
    # @param ole_object_index Ole object index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_ole_objects_delete_worksheet_ole_object_with_http_info(name, sheet_name, ole_object_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_ole_objects_delete_worksheet_ole_object ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_ole_objects_delete_worksheet_ole_object"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_ole_objects_delete_worksheet_ole_object"
      end
      # verify the required parameter 'ole_object_index' is set
      if @api_client.config.client_side_validation && ole_object_index.nil?
        fail ArgumentError, "Missing the required parameter 'ole_object_index' when calling CellsApi.cells_ole_objects_delete_worksheet_ole_object"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/oleobjects/{oleObjectIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'oleObjectIndex' + '}', ole_object_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_ole_objects_delete_worksheet_ole_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete all OLE objects.
    # 
    # @param name The workbook name.
    # @param sheet_name The worsheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_ole_objects_delete_worksheet_ole_objects(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_ole_objects_delete_worksheet_ole_objects_with_http_info(name, sheet_name, opts)
      return data
    end

    # Delete all OLE objects.
    # 
    # @param name The workbook name.
    # @param sheet_name The worsheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_ole_objects_delete_worksheet_ole_objects_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_ole_objects_delete_worksheet_ole_objects ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_ole_objects_delete_worksheet_ole_objects"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_ole_objects_delete_worksheet_ole_objects"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/oleobjects".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_ole_objects_delete_worksheet_ole_objects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get OLE object info.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param object_number The object number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The exported object format.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [File]
    def cells_ole_objects_get_worksheet_ole_object(name, sheet_name, object_number, opts = {})
      data, _status_code, _headers = cells_ole_objects_get_worksheet_ole_object_with_http_info(name, sheet_name, object_number, opts)
      return data
    end

    # Get OLE object info.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param object_number The object number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The exported object format.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def cells_ole_objects_get_worksheet_ole_object_with_http_info(name, sheet_name, object_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_ole_objects_get_worksheet_ole_object ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_ole_objects_get_worksheet_ole_object"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_ole_objects_get_worksheet_ole_object"
      end
      # verify the required parameter 'object_number' is set
      if @api_client.config.client_side_validation && object_number.nil?
        fail ArgumentError, "Missing the required parameter 'object_number' when calling CellsApi.cells_ole_objects_get_worksheet_ole_object"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/oleobjects/{objectNumber}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'objectNumber' + '}', object_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_ole_objects_get_worksheet_ole_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get worksheet OLE objects info.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [OleObjectsResponse]
    def cells_ole_objects_get_worksheet_ole_objects(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_ole_objects_get_worksheet_ole_objects_with_http_info(name, sheet_name, opts)
      return data
    end

    # Get worksheet OLE objects info.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(OleObjectsResponse, Fixnum, Hash)>] OleObjectsResponse data, response status code and response headers
    def cells_ole_objects_get_worksheet_ole_objects_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_ole_objects_get_worksheet_ole_objects ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_ole_objects_get_worksheet_ole_objects"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_ole_objects_get_worksheet_ole_objects"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/oleobjects".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OleObjectsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_ole_objects_get_worksheet_ole_objects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update OLE object.
    # 
    # @param name The workbook name.
    # @param sheet_name The worsheet name.
    # @param ole_object_index Ole object index
    # @param [Hash] opts the optional parameters
    # @option opts [OleObject] :ole Ole Object
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_ole_objects_post_update_worksheet_ole_object(name, sheet_name, ole_object_index, opts = {})
      data, _status_code, _headers = cells_ole_objects_post_update_worksheet_ole_object_with_http_info(name, sheet_name, ole_object_index, opts)
      return data
    end

    # Update OLE object.
    # 
    # @param name The workbook name.
    # @param sheet_name The worsheet name.
    # @param ole_object_index Ole object index
    # @param [Hash] opts the optional parameters
    # @option opts [OleObject] :ole Ole Object
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_ole_objects_post_update_worksheet_ole_object_with_http_info(name, sheet_name, ole_object_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_ole_objects_post_update_worksheet_ole_object ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_ole_objects_post_update_worksheet_ole_object"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_ole_objects_post_update_worksheet_ole_object"
      end
      # verify the required parameter 'ole_object_index' is set
      if @api_client.config.client_side_validation && ole_object_index.nil?
        fail ArgumentError, "Missing the required parameter 'ole_object_index' when calling CellsApi.cells_ole_objects_post_update_worksheet_ole_object"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/oleobjects/{oleObjectIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'oleObjectIndex' + '}', ole_object_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'ole'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_ole_objects_post_update_worksheet_ole_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add OLE object
    # 
    # @param name The workbook name.
    # @param sheet_name The worsheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [OleObject] :ole_object Ole Object
    # @option opts [Integer] :upper_left_row Upper left row index (default to 0)
    # @option opts [Integer] :upper_left_column Upper left column index (default to 0)
    # @option opts [Integer] :height Height of oleObject, in unit of pixel (default to 0)
    # @option opts [Integer] :width Width of oleObject, in unit of pixel (default to 0)
    # @option opts [String] :ole_file OLE filename
    # @option opts [String] :image_file Image filename
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_ole_objects_put_worksheet_ole_object(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_ole_objects_put_worksheet_ole_object_with_http_info(name, sheet_name, opts)
      return data
    end

    # Add OLE object
    # 
    # @param name The workbook name.
    # @param sheet_name The worsheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [OleObject] :ole_object Ole Object
    # @option opts [Integer] :upper_left_row Upper left row index
    # @option opts [Integer] :upper_left_column Upper left column index
    # @option opts [Integer] :height Height of oleObject, in unit of pixel
    # @option opts [Integer] :width Width of oleObject, in unit of pixel
    # @option opts [String] :ole_file OLE filename
    # @option opts [String] :image_file Image filename
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_ole_objects_put_worksheet_ole_object_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_ole_objects_put_worksheet_ole_object ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_ole_objects_put_worksheet_ole_object"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_ole_objects_put_worksheet_ole_object"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/oleobjects".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'upperLeftRow'] = opts[:'upper_left_row'] if !opts[:'upper_left_row'].nil?
      query_params[:'upperLeftColumn'] = opts[:'upper_left_column'] if !opts[:'upper_left_column'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'oleFile'] = opts[:'ole_file'] if !opts[:'ole_file'].nil?
      query_params[:'imageFile'] = opts[:'image_file'] if !opts[:'image_file'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'ole_object'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_ole_objects_put_worksheet_ole_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_page_breaks_delete_horizontal_page_break(name, sheet_name, index, opts = {})
      data, _status_code, _headers = cells_page_breaks_delete_horizontal_page_break_with_http_info(name, sheet_name, index, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_page_breaks_delete_horizontal_page_break_with_http_info(name, sheet_name, index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_page_breaks_delete_horizontal_page_break ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_page_breaks_delete_horizontal_page_break"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_page_breaks_delete_horizontal_page_break"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling CellsApi.cells_page_breaks_delete_horizontal_page_break"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/horizontalpagebreaks/{index}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'index' + '}', index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_page_breaks_delete_horizontal_page_break\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :row 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_page_breaks_delete_horizontal_page_breaks(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_page_breaks_delete_horizontal_page_breaks_with_http_info(name, sheet_name, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :row 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_page_breaks_delete_horizontal_page_breaks_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_page_breaks_delete_horizontal_page_breaks ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_page_breaks_delete_horizontal_page_breaks"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_page_breaks_delete_horizontal_page_breaks"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/horizontalpagebreaks".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'row'] = opts[:'row'] if !opts[:'row'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_page_breaks_delete_horizontal_page_breaks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_page_breaks_delete_vertical_page_break(name, sheet_name, index, opts = {})
      data, _status_code, _headers = cells_page_breaks_delete_vertical_page_break_with_http_info(name, sheet_name, index, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_page_breaks_delete_vertical_page_break_with_http_info(name, sheet_name, index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_page_breaks_delete_vertical_page_break ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_page_breaks_delete_vertical_page_break"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_page_breaks_delete_vertical_page_break"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling CellsApi.cells_page_breaks_delete_vertical_page_break"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/verticalpagebreaks/{index}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'index' + '}', index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_page_breaks_delete_vertical_page_break\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :column 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_page_breaks_delete_vertical_page_breaks(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_page_breaks_delete_vertical_page_breaks_with_http_info(name, sheet_name, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :column 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_page_breaks_delete_vertical_page_breaks_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_page_breaks_delete_vertical_page_breaks ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_page_breaks_delete_vertical_page_breaks"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_page_breaks_delete_vertical_page_breaks"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/verticalpagebreaks".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'column'] = opts[:'column'] if !opts[:'column'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_page_breaks_delete_vertical_page_breaks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [HorizontalPageBreakResponse]
    def cells_page_breaks_get_horizontal_page_break(name, sheet_name, index, opts = {})
      data, _status_code, _headers = cells_page_breaks_get_horizontal_page_break_with_http_info(name, sheet_name, index, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(HorizontalPageBreakResponse, Fixnum, Hash)>] HorizontalPageBreakResponse data, response status code and response headers
    def cells_page_breaks_get_horizontal_page_break_with_http_info(name, sheet_name, index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_page_breaks_get_horizontal_page_break ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_page_breaks_get_horizontal_page_break"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_page_breaks_get_horizontal_page_break"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling CellsApi.cells_page_breaks_get_horizontal_page_break"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/horizontalpagebreaks/{index}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'index' + '}', index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'HorizontalPageBreakResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_page_breaks_get_horizontal_page_break\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [HorizontalPageBreaksResponse]
    def cells_page_breaks_get_horizontal_page_breaks(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_page_breaks_get_horizontal_page_breaks_with_http_info(name, sheet_name, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(HorizontalPageBreaksResponse, Fixnum, Hash)>] HorizontalPageBreaksResponse data, response status code and response headers
    def cells_page_breaks_get_horizontal_page_breaks_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_page_breaks_get_horizontal_page_breaks ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_page_breaks_get_horizontal_page_breaks"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_page_breaks_get_horizontal_page_breaks"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/horizontalpagebreaks".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'HorizontalPageBreaksResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_page_breaks_get_horizontal_page_breaks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [VerticalPageBreakResponse]
    def cells_page_breaks_get_vertical_page_break(name, sheet_name, index, opts = {})
      data, _status_code, _headers = cells_page_breaks_get_vertical_page_break_with_http_info(name, sheet_name, index, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(VerticalPageBreakResponse, Fixnum, Hash)>] VerticalPageBreakResponse data, response status code and response headers
    def cells_page_breaks_get_vertical_page_break_with_http_info(name, sheet_name, index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_page_breaks_get_vertical_page_break ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_page_breaks_get_vertical_page_break"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_page_breaks_get_vertical_page_break"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling CellsApi.cells_page_breaks_get_vertical_page_break"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/verticalpagebreaks/{index}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'index' + '}', index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'VerticalPageBreakResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_page_breaks_get_vertical_page_break\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [VerticalPageBreaksResponse]
    def cells_page_breaks_get_vertical_page_breaks(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_page_breaks_get_vertical_page_breaks_with_http_info(name, sheet_name, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(VerticalPageBreaksResponse, Fixnum, Hash)>] VerticalPageBreaksResponse data, response status code and response headers
    def cells_page_breaks_get_vertical_page_breaks_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_page_breaks_get_vertical_page_breaks ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_page_breaks_get_vertical_page_breaks"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_page_breaks_get_vertical_page_breaks"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/verticalpagebreaks".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'VerticalPageBreaksResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_page_breaks_get_vertical_page_breaks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cellname 
    # @option opts [Integer] :row 
    # @option opts [Integer] :column 
    # @option opts [Integer] :start_column 
    # @option opts [Integer] :end_column 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_page_breaks_put_horizontal_page_break(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_page_breaks_put_horizontal_page_break_with_http_info(name, sheet_name, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cellname 
    # @option opts [Integer] :row 
    # @option opts [Integer] :column 
    # @option opts [Integer] :start_column 
    # @option opts [Integer] :end_column 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_page_breaks_put_horizontal_page_break_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_page_breaks_put_horizontal_page_break ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_page_breaks_put_horizontal_page_break"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_page_breaks_put_horizontal_page_break"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/horizontalpagebreaks".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'cellname'] = opts[:'cellname'] if !opts[:'cellname'].nil?
      query_params[:'row'] = opts[:'row'] if !opts[:'row'].nil?
      query_params[:'column'] = opts[:'column'] if !opts[:'column'].nil?
      query_params[:'startColumn'] = opts[:'start_column'] if !opts[:'start_column'].nil?
      query_params[:'endColumn'] = opts[:'end_column'] if !opts[:'end_column'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_page_breaks_put_horizontal_page_break\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cellname 
    # @option opts [Integer] :column 
    # @option opts [Integer] :row 
    # @option opts [Integer] :start_row 
    # @option opts [Integer] :end_row 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_page_breaks_put_vertical_page_break(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_page_breaks_put_vertical_page_break_with_http_info(name, sheet_name, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cellname 
    # @option opts [Integer] :column 
    # @option opts [Integer] :row 
    # @option opts [Integer] :start_row 
    # @option opts [Integer] :end_row 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_page_breaks_put_vertical_page_break_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_page_breaks_put_vertical_page_break ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_page_breaks_put_vertical_page_break"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_page_breaks_put_vertical_page_break"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/verticalpagebreaks".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'cellname'] = opts[:'cellname'] if !opts[:'cellname'].nil?
      query_params[:'column'] = opts[:'column'] if !opts[:'column'].nil?
      query_params[:'row'] = opts[:'row'] if !opts[:'row'].nil?
      query_params[:'startRow'] = opts[:'start_row'] if !opts[:'start_row'].nil?
      query_params[:'endRow'] = opts[:'end_row'] if !opts[:'end_row'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_page_breaks_put_vertical_page_break\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # clear header footer
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_page_setup_delete_header_footer(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_page_setup_delete_header_footer_with_http_info(name, sheet_name, opts)
      return data
    end

    # clear header footer
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_page_setup_delete_header_footer_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_page_setup_delete_header_footer ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_page_setup_delete_header_footer"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_page_setup_delete_header_footer"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pagesetup/clearheaderfooter".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_page_setup_delete_header_footer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # get page footer information
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [PageSectionsResponse]
    def cells_page_setup_get_footer(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_page_setup_get_footer_with_http_info(name, sheet_name, opts)
      return data
    end

    # get page footer information
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(PageSectionsResponse, Fixnum, Hash)>] PageSectionsResponse data, response status code and response headers
    def cells_page_setup_get_footer_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_page_setup_get_footer ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_page_setup_get_footer"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_page_setup_get_footer"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pagesetup/footer".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageSectionsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_page_setup_get_footer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # get page header information
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [PageSectionsResponse]
    def cells_page_setup_get_header(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_page_setup_get_header_with_http_info(name, sheet_name, opts)
      return data
    end

    # get page header information
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(PageSectionsResponse, Fixnum, Hash)>] PageSectionsResponse data, response status code and response headers
    def cells_page_setup_get_header_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_page_setup_get_header ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_page_setup_get_header"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_page_setup_get_header"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pagesetup/header".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageSectionsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_page_setup_get_header\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Page Setup information.             
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [PageSetupResponse]
    def cells_page_setup_get_page_setup(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_page_setup_get_page_setup_with_http_info(name, sheet_name, opts)
      return data
    end

    # Get Page Setup information.             
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(PageSetupResponse, Fixnum, Hash)>] PageSetupResponse data, response status code and response headers
    def cells_page_setup_get_page_setup_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_page_setup_get_page_setup ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_page_setup_get_page_setup"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_page_setup_get_page_setup"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pagesetup".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageSetupResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_page_setup_get_page_setup\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # update  page footer information 
    # 
    # @param name 
    # @param sheet_name 
    # @param section 
    # @param script 
    # @param is_first_page 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_page_setup_post_footer(name, sheet_name, section, script, is_first_page, opts = {})
      data, _status_code, _headers = cells_page_setup_post_footer_with_http_info(name, sheet_name, section, script, is_first_page, opts)
      return data
    end

    # update  page footer information 
    # 
    # @param name 
    # @param sheet_name 
    # @param section 
    # @param script 
    # @param is_first_page 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_page_setup_post_footer_with_http_info(name, sheet_name, section, script, is_first_page, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_page_setup_post_footer ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_page_setup_post_footer"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_page_setup_post_footer"
      end
      # verify the required parameter 'section' is set
      if @api_client.config.client_side_validation && section.nil?
        fail ArgumentError, "Missing the required parameter 'section' when calling CellsApi.cells_page_setup_post_footer"
      end
      # verify the required parameter 'script' is set
      if @api_client.config.client_side_validation && script.nil?
        fail ArgumentError, "Missing the required parameter 'script' when calling CellsApi.cells_page_setup_post_footer"
      end
      # verify the required parameter 'is_first_page' is set
      if @api_client.config.client_side_validation && is_first_page.nil?
        fail ArgumentError, "Missing the required parameter 'is_first_page' when calling CellsApi.cells_page_setup_post_footer"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pagesetup/footer".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'section'] = section
      query_params[:'script'] = script
      query_params[:'isFirstPage'] = is_first_page
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_page_setup_post_footer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # update  page header information 
    # 
    # @param name 
    # @param sheet_name 
    # @param section 
    # @param script 
    # @param is_first_page 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_page_setup_post_header(name, sheet_name, section, script, is_first_page, opts = {})
      data, _status_code, _headers = cells_page_setup_post_header_with_http_info(name, sheet_name, section, script, is_first_page, opts)
      return data
    end

    # update  page header information 
    # 
    # @param name 
    # @param sheet_name 
    # @param section 
    # @param script 
    # @param is_first_page 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_page_setup_post_header_with_http_info(name, sheet_name, section, script, is_first_page, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_page_setup_post_header ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_page_setup_post_header"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_page_setup_post_header"
      end
      # verify the required parameter 'section' is set
      if @api_client.config.client_side_validation && section.nil?
        fail ArgumentError, "Missing the required parameter 'section' when calling CellsApi.cells_page_setup_post_header"
      end
      # verify the required parameter 'script' is set
      if @api_client.config.client_side_validation && script.nil?
        fail ArgumentError, "Missing the required parameter 'script' when calling CellsApi.cells_page_setup_post_header"
      end
      # verify the required parameter 'is_first_page' is set
      if @api_client.config.client_side_validation && is_first_page.nil?
        fail ArgumentError, "Missing the required parameter 'is_first_page' when calling CellsApi.cells_page_setup_post_header"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pagesetup/header".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'section'] = section
      query_params[:'script'] = script
      query_params[:'isFirstPage'] = is_first_page
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_page_setup_post_header\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Page Setup information.
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [PageSetup] :page_setup 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_page_setup_post_page_setup(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_page_setup_post_page_setup_with_http_info(name, sheet_name, opts)
      return data
    end

    # Update Page Setup information.
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [PageSetup] :page_setup 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_page_setup_post_page_setup_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_page_setup_post_page_setup ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_page_setup_post_page_setup"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_page_setup_post_page_setup"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pagesetup".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'page_setup'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_page_setup_post_page_setup\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a picture object in worksheet
    # 
    # @param name The workbook name.
    # @param sheet_name The worsheet name.
    # @param picture_index Picture index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_pictures_delete_worksheet_picture(name, sheet_name, picture_index, opts = {})
      data, _status_code, _headers = cells_pictures_delete_worksheet_picture_with_http_info(name, sheet_name, picture_index, opts)
      return data
    end

    # Delete a picture object in worksheet
    # 
    # @param name The workbook name.
    # @param sheet_name The worsheet name.
    # @param picture_index Picture index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_pictures_delete_worksheet_picture_with_http_info(name, sheet_name, picture_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_pictures_delete_worksheet_picture ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_pictures_delete_worksheet_picture"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_pictures_delete_worksheet_picture"
      end
      # verify the required parameter 'picture_index' is set
      if @api_client.config.client_side_validation && picture_index.nil?
        fail ArgumentError, "Missing the required parameter 'picture_index' when calling CellsApi.cells_pictures_delete_worksheet_picture"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pictures/{pictureIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pictureIndex' + '}', picture_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_pictures_delete_worksheet_picture\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete all pictures in worksheet.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_pictures_delete_worksheet_pictures(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_pictures_delete_worksheet_pictures_with_http_info(name, sheet_name, opts)
      return data
    end

    # Delete all pictures in worksheet.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_pictures_delete_worksheet_pictures_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_pictures_delete_worksheet_pictures ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_pictures_delete_worksheet_pictures"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_pictures_delete_worksheet_pictures"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pictures".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_pictures_delete_worksheet_pictures\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # GRead worksheet picture by number.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param picture_index The picture index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The exported object format.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [File]
    def cells_pictures_get_worksheet_picture(name, sheet_name, picture_index, opts = {})
      data, _status_code, _headers = cells_pictures_get_worksheet_picture_with_http_info(name, sheet_name, picture_index, opts)
      return data
    end

    # GRead worksheet picture by number.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param picture_index The picture index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The exported object format.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def cells_pictures_get_worksheet_picture_with_http_info(name, sheet_name, picture_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_pictures_get_worksheet_picture ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_pictures_get_worksheet_picture"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_pictures_get_worksheet_picture"
      end
      # verify the required parameter 'picture_index' is set
      if @api_client.config.client_side_validation && picture_index.nil?
        fail ArgumentError, "Missing the required parameter 'picture_index' when calling CellsApi.cells_pictures_get_worksheet_picture"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pictures/{pictureIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pictureIndex' + '}', picture_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_pictures_get_worksheet_picture\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read worksheet pictures.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [PicturesResponse]
    def cells_pictures_get_worksheet_pictures(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_pictures_get_worksheet_pictures_with_http_info(name, sheet_name, opts)
      return data
    end

    # Read worksheet pictures.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(PicturesResponse, Fixnum, Hash)>] PicturesResponse data, response status code and response headers
    def cells_pictures_get_worksheet_pictures_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_pictures_get_worksheet_pictures ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_pictures_get_worksheet_pictures"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_pictures_get_worksheet_pictures"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pictures".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PicturesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_pictures_get_worksheet_pictures\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update worksheet picture by index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param picture_index The picture&#39;s index.
    # @param [Hash] opts the optional parameters
    # @option opts [Picture] :picture Picture object
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_pictures_post_worksheet_picture(name, sheet_name, picture_index, opts = {})
      data, _status_code, _headers = cells_pictures_post_worksheet_picture_with_http_info(name, sheet_name, picture_index, opts)
      return data
    end

    # Update worksheet picture by index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param picture_index The picture&#39;s index.
    # @param [Hash] opts the optional parameters
    # @option opts [Picture] :picture Picture object
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_pictures_post_worksheet_picture_with_http_info(name, sheet_name, picture_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_pictures_post_worksheet_picture ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_pictures_post_worksheet_picture"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_pictures_post_worksheet_picture"
      end
      # verify the required parameter 'picture_index' is set
      if @api_client.config.client_side_validation && picture_index.nil?
        fail ArgumentError, "Missing the required parameter 'picture_index' when calling CellsApi.cells_pictures_post_worksheet_picture"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pictures/{pictureIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pictureIndex' + '}', picture_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'picture'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_pictures_post_worksheet_picture\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a new worksheet picture.
    # 
    # @param name The workbook name.
    # @param sheet_name The worsheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [Picture] :picture Pictute object
    # @option opts [Integer] :upper_left_row The image upper left row. (default to 0)
    # @option opts [Integer] :upper_left_column The image upper left column. (default to 0)
    # @option opts [Integer] :lower_right_row The image low right row. (default to 0)
    # @option opts [Integer] :lower_right_column The image low right column. (default to 0)
    # @option opts [String] :picture_path The picture path, if not provided the picture data is inspected in the request body.
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_pictures_put_worksheet_add_picture(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_pictures_put_worksheet_add_picture_with_http_info(name, sheet_name, opts)
      return data
    end

    # Add a new worksheet picture.
    # 
    # @param name The workbook name.
    # @param sheet_name The worsheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [Picture] :picture Pictute object
    # @option opts [Integer] :upper_left_row The image upper left row.
    # @option opts [Integer] :upper_left_column The image upper left column.
    # @option opts [Integer] :lower_right_row The image low right row.
    # @option opts [Integer] :lower_right_column The image low right column.
    # @option opts [String] :picture_path The picture path, if not provided the picture data is inspected in the request body.
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_pictures_put_worksheet_add_picture_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_pictures_put_worksheet_add_picture ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_pictures_put_worksheet_add_picture"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_pictures_put_worksheet_add_picture"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pictures".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'upperLeftRow'] = opts[:'upper_left_row'] if !opts[:'upper_left_row'].nil?
      query_params[:'upperLeftColumn'] = opts[:'upper_left_column'] if !opts[:'upper_left_column'].nil?
      query_params[:'lowerRightRow'] = opts[:'lower_right_row'] if !opts[:'lower_right_row'].nil?
      query_params[:'lowerRightColumn'] = opts[:'lower_right_column'] if !opts[:'lower_right_column'].nil?
      query_params[:'picturePath'] = opts[:'picture_path'] if !opts[:'picture_path'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'picture'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_pictures_put_worksheet_add_picture\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete pivot field into into pivot table
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param pivot_table_index Pivot table index
    # @param pivot_field_type The fields area type.
    # @param [Hash] opts the optional parameters
    # @option opts [PivotTableFieldRequest] :request Dto that conrains field indexes
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_pivot_tables_delete_pivot_table_field(name, sheet_name, pivot_table_index, pivot_field_type, opts = {})
      data, _status_code, _headers = cells_pivot_tables_delete_pivot_table_field_with_http_info(name, sheet_name, pivot_table_index, pivot_field_type, opts)
      return data
    end

    # Delete pivot field into into pivot table
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param pivot_table_index Pivot table index
    # @param pivot_field_type The fields area type.
    # @param [Hash] opts the optional parameters
    # @option opts [PivotTableFieldRequest] :request Dto that conrains field indexes
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_pivot_tables_delete_pivot_table_field_with_http_info(name, sheet_name, pivot_table_index, pivot_field_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_pivot_tables_delete_pivot_table_field ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_pivot_tables_delete_pivot_table_field"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_pivot_tables_delete_pivot_table_field"
      end
      # verify the required parameter 'pivot_table_index' is set
      if @api_client.config.client_side_validation && pivot_table_index.nil?
        fail ArgumentError, "Missing the required parameter 'pivot_table_index' when calling CellsApi.cells_pivot_tables_delete_pivot_table_field"
      end
      # verify the required parameter 'pivot_field_type' is set
      if @api_client.config.client_side_validation && pivot_field_type.nil?
        fail ArgumentError, "Missing the required parameter 'pivot_field_type' when calling CellsApi.cells_pivot_tables_delete_pivot_table_field"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pivotTableIndex' + '}', pivot_table_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'pivotFieldType'] = pivot_field_type
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'request'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_pivot_tables_delete_pivot_table_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete worksheet pivot table by index
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param pivot_table_index Pivot table index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_pivot_tables_delete_worksheet_pivot_table(name, sheet_name, pivot_table_index, opts = {})
      data, _status_code, _headers = cells_pivot_tables_delete_worksheet_pivot_table_with_http_info(name, sheet_name, pivot_table_index, opts)
      return data
    end

    # Delete worksheet pivot table by index
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param pivot_table_index Pivot table index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_pivot_tables_delete_worksheet_pivot_table_with_http_info(name, sheet_name, pivot_table_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_pivot_tables_delete_worksheet_pivot_table ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_pivot_tables_delete_worksheet_pivot_table"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_pivot_tables_delete_worksheet_pivot_table"
      end
      # verify the required parameter 'pivot_table_index' is set
      if @api_client.config.client_side_validation && pivot_table_index.nil?
        fail ArgumentError, "Missing the required parameter 'pivot_table_index' when calling CellsApi.cells_pivot_tables_delete_worksheet_pivot_table"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pivotTableIndex' + '}', pivot_table_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_pivot_tables_delete_worksheet_pivot_table\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # delete  pivot filter for piovt table             
    # 
    # @param name 
    # @param sheet_name 
    # @param pivot_table_index 
    # @param field_index 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :need_re_calculate  (default to false)
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_pivot_tables_delete_worksheet_pivot_table_filter(name, sheet_name, pivot_table_index, field_index, opts = {})
      data, _status_code, _headers = cells_pivot_tables_delete_worksheet_pivot_table_filter_with_http_info(name, sheet_name, pivot_table_index, field_index, opts)
      return data
    end

    # delete  pivot filter for piovt table             
    # 
    # @param name 
    # @param sheet_name 
    # @param pivot_table_index 
    # @param field_index 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :need_re_calculate 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_pivot_tables_delete_worksheet_pivot_table_filter_with_http_info(name, sheet_name, pivot_table_index, field_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_pivot_tables_delete_worksheet_pivot_table_filter ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_pivot_tables_delete_worksheet_pivot_table_filter"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_pivot_tables_delete_worksheet_pivot_table_filter"
      end
      # verify the required parameter 'pivot_table_index' is set
      if @api_client.config.client_side_validation && pivot_table_index.nil?
        fail ArgumentError, "Missing the required parameter 'pivot_table_index' when calling CellsApi.cells_pivot_tables_delete_worksheet_pivot_table_filter"
      end
      # verify the required parameter 'field_index' is set
      if @api_client.config.client_side_validation && field_index.nil?
        fail ArgumentError, "Missing the required parameter 'field_index' when calling CellsApi.cells_pivot_tables_delete_worksheet_pivot_table_filter"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotFilters/{fieldIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pivotTableIndex' + '}', pivot_table_index.to_s).sub('{' + 'fieldIndex' + '}', field_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'needReCalculate'] = opts[:'need_re_calculate'] if !opts[:'need_re_calculate'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_pivot_tables_delete_worksheet_pivot_table_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # delete all pivot filters for piovt table
    # 
    # @param name 
    # @param sheet_name 
    # @param pivot_table_index 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :need_re_calculate  (default to false)
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_pivot_tables_delete_worksheet_pivot_table_filters(name, sheet_name, pivot_table_index, opts = {})
      data, _status_code, _headers = cells_pivot_tables_delete_worksheet_pivot_table_filters_with_http_info(name, sheet_name, pivot_table_index, opts)
      return data
    end

    # delete all pivot filters for piovt table
    # 
    # @param name 
    # @param sheet_name 
    # @param pivot_table_index 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :need_re_calculate 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_pivot_tables_delete_worksheet_pivot_table_filters_with_http_info(name, sheet_name, pivot_table_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_pivot_tables_delete_worksheet_pivot_table_filters ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_pivot_tables_delete_worksheet_pivot_table_filters"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_pivot_tables_delete_worksheet_pivot_table_filters"
      end
      # verify the required parameter 'pivot_table_index' is set
      if @api_client.config.client_side_validation && pivot_table_index.nil?
        fail ArgumentError, "Missing the required parameter 'pivot_table_index' when calling CellsApi.cells_pivot_tables_delete_worksheet_pivot_table_filters"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotFilters".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pivotTableIndex' + '}', pivot_table_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'needReCalculate'] = opts[:'need_re_calculate'] if !opts[:'need_re_calculate'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_pivot_tables_delete_worksheet_pivot_table_filters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete worksheet pivot tables
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_pivot_tables_delete_worksheet_pivot_tables(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_pivot_tables_delete_worksheet_pivot_tables_with_http_info(name, sheet_name, opts)
      return data
    end

    # Delete worksheet pivot tables
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_pivot_tables_delete_worksheet_pivot_tables_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_pivot_tables_delete_worksheet_pivot_tables ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_pivot_tables_delete_worksheet_pivot_tables"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_pivot_tables_delete_worksheet_pivot_tables"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pivottables".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_pivot_tables_delete_worksheet_pivot_tables\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get pivot field into into pivot table
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param pivot_table_index Pivot table index
    # @param pivot_field_index The field index in the base fields.
    # @param pivot_field_type The fields area type.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [PivotFieldResponse]
    def cells_pivot_tables_get_pivot_table_field(name, sheet_name, pivot_table_index, pivot_field_index, pivot_field_type, opts = {})
      data, _status_code, _headers = cells_pivot_tables_get_pivot_table_field_with_http_info(name, sheet_name, pivot_table_index, pivot_field_index, pivot_field_type, opts)
      return data
    end

    # Get pivot field into into pivot table
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param pivot_table_index Pivot table index
    # @param pivot_field_index The field index in the base fields.
    # @param pivot_field_type The fields area type.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(PivotFieldResponse, Fixnum, Hash)>] PivotFieldResponse data, response status code and response headers
    def cells_pivot_tables_get_pivot_table_field_with_http_info(name, sheet_name, pivot_table_index, pivot_field_index, pivot_field_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_pivot_tables_get_pivot_table_field ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_pivot_tables_get_pivot_table_field"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_pivot_tables_get_pivot_table_field"
      end
      # verify the required parameter 'pivot_table_index' is set
      if @api_client.config.client_side_validation && pivot_table_index.nil?
        fail ArgumentError, "Missing the required parameter 'pivot_table_index' when calling CellsApi.cells_pivot_tables_get_pivot_table_field"
      end
      # verify the required parameter 'pivot_field_index' is set
      if @api_client.config.client_side_validation && pivot_field_index.nil?
        fail ArgumentError, "Missing the required parameter 'pivot_field_index' when calling CellsApi.cells_pivot_tables_get_pivot_table_field"
      end
      # verify the required parameter 'pivot_field_type' is set
      if @api_client.config.client_side_validation && pivot_field_type.nil?
        fail ArgumentError, "Missing the required parameter 'pivot_field_type' when calling CellsApi.cells_pivot_tables_get_pivot_table_field"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pivotTableIndex' + '}', pivot_table_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'pivotFieldIndex'] = pivot_field_index
      query_params[:'pivotFieldType'] = pivot_field_type
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PivotFieldResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_pivot_tables_get_pivot_table_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get worksheet pivottable info by index.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param pivottable_index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [PivotTableResponse]
    def cells_pivot_tables_get_worksheet_pivot_table(name, sheet_name, pivottable_index, opts = {})
      data, _status_code, _headers = cells_pivot_tables_get_worksheet_pivot_table_with_http_info(name, sheet_name, pivottable_index, opts)
      return data
    end

    # Get worksheet pivottable info by index.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param pivottable_index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(PivotTableResponse, Fixnum, Hash)>] PivotTableResponse data, response status code and response headers
    def cells_pivot_tables_get_worksheet_pivot_table_with_http_info(name, sheet_name, pivottable_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_pivot_tables_get_worksheet_pivot_table ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_pivot_tables_get_worksheet_pivot_table"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_pivot_tables_get_worksheet_pivot_table"
      end
      # verify the required parameter 'pivottable_index' is set
      if @api_client.config.client_side_validation && pivottable_index.nil?
        fail ArgumentError, "Missing the required parameter 'pivottable_index' when calling CellsApi.cells_pivot_tables_get_worksheet_pivot_table"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivottableIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pivottableIndex' + '}', pivottable_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PivotTableResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_pivot_tables_get_worksheet_pivot_table\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param pivot_table_index 
    # @param filter_index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [PivotFilterResponse]
    def cells_pivot_tables_get_worksheet_pivot_table_filter(name, sheet_name, pivot_table_index, filter_index, opts = {})
      data, _status_code, _headers = cells_pivot_tables_get_worksheet_pivot_table_filter_with_http_info(name, sheet_name, pivot_table_index, filter_index, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param pivot_table_index 
    # @param filter_index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(PivotFilterResponse, Fixnum, Hash)>] PivotFilterResponse data, response status code and response headers
    def cells_pivot_tables_get_worksheet_pivot_table_filter_with_http_info(name, sheet_name, pivot_table_index, filter_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_pivot_tables_get_worksheet_pivot_table_filter ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_pivot_tables_get_worksheet_pivot_table_filter"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_pivot_tables_get_worksheet_pivot_table_filter"
      end
      # verify the required parameter 'pivot_table_index' is set
      if @api_client.config.client_side_validation && pivot_table_index.nil?
        fail ArgumentError, "Missing the required parameter 'pivot_table_index' when calling CellsApi.cells_pivot_tables_get_worksheet_pivot_table_filter"
      end
      # verify the required parameter 'filter_index' is set
      if @api_client.config.client_side_validation && filter_index.nil?
        fail ArgumentError, "Missing the required parameter 'filter_index' when calling CellsApi.cells_pivot_tables_get_worksheet_pivot_table_filter"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotFilters/{filterIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pivotTableIndex' + '}', pivot_table_index.to_s).sub('{' + 'filterIndex' + '}', filter_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PivotFilterResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_pivot_tables_get_worksheet_pivot_table_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param pivot_table_index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [PivotFiltersResponse]
    def cells_pivot_tables_get_worksheet_pivot_table_filters(name, sheet_name, pivot_table_index, opts = {})
      data, _status_code, _headers = cells_pivot_tables_get_worksheet_pivot_table_filters_with_http_info(name, sheet_name, pivot_table_index, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param pivot_table_index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(PivotFiltersResponse, Fixnum, Hash)>] PivotFiltersResponse data, response status code and response headers
    def cells_pivot_tables_get_worksheet_pivot_table_filters_with_http_info(name, sheet_name, pivot_table_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_pivot_tables_get_worksheet_pivot_table_filters ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_pivot_tables_get_worksheet_pivot_table_filters"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_pivot_tables_get_worksheet_pivot_table_filters"
      end
      # verify the required parameter 'pivot_table_index' is set
      if @api_client.config.client_side_validation && pivot_table_index.nil?
        fail ArgumentError, "Missing the required parameter 'pivot_table_index' when calling CellsApi.cells_pivot_tables_get_worksheet_pivot_table_filters"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotFilters".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pivotTableIndex' + '}', pivot_table_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PivotFiltersResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_pivot_tables_get_worksheet_pivot_table_filters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get worksheet pivottables info.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [PivotTablesResponse]
    def cells_pivot_tables_get_worksheet_pivot_tables(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_pivot_tables_get_worksheet_pivot_tables_with_http_info(name, sheet_name, opts)
      return data
    end

    # Get worksheet pivottables info.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(PivotTablesResponse, Fixnum, Hash)>] PivotTablesResponse data, response status code and response headers
    def cells_pivot_tables_get_worksheet_pivot_tables_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_pivot_tables_get_worksheet_pivot_tables ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_pivot_tables_get_worksheet_pivot_tables"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_pivot_tables_get_worksheet_pivot_tables"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pivottables".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PivotTablesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_pivot_tables_get_worksheet_pivot_tables\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update cell style for pivot table
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param pivot_table_index Pivot table index
    # @param column 
    # @param row 
    # @param [Hash] opts the optional parameters
    # @option opts [Style] :style Style dto in request body.
    # @option opts [BOOLEAN] :need_re_calculate  (default to false)
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_pivot_tables_post_pivot_table_cell_style(name, sheet_name, pivot_table_index, column, row, opts = {})
      data, _status_code, _headers = cells_pivot_tables_post_pivot_table_cell_style_with_http_info(name, sheet_name, pivot_table_index, column, row, opts)
      return data
    end

    # Update cell style for pivot table
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param pivot_table_index Pivot table index
    # @param column 
    # @param row 
    # @param [Hash] opts the optional parameters
    # @option opts [Style] :style Style dto in request body.
    # @option opts [BOOLEAN] :need_re_calculate 
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_pivot_tables_post_pivot_table_cell_style_with_http_info(name, sheet_name, pivot_table_index, column, row, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_pivot_tables_post_pivot_table_cell_style ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_pivot_tables_post_pivot_table_cell_style"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_pivot_tables_post_pivot_table_cell_style"
      end
      # verify the required parameter 'pivot_table_index' is set
      if @api_client.config.client_side_validation && pivot_table_index.nil?
        fail ArgumentError, "Missing the required parameter 'pivot_table_index' when calling CellsApi.cells_pivot_tables_post_pivot_table_cell_style"
      end
      # verify the required parameter 'column' is set
      if @api_client.config.client_side_validation && column.nil?
        fail ArgumentError, "Missing the required parameter 'column' when calling CellsApi.cells_pivot_tables_post_pivot_table_cell_style"
      end
      # verify the required parameter 'row' is set
      if @api_client.config.client_side_validation && row.nil?
        fail ArgumentError, "Missing the required parameter 'row' when calling CellsApi.cells_pivot_tables_post_pivot_table_cell_style"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/Format".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pivotTableIndex' + '}', pivot_table_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'column'] = column
      query_params[:'row'] = row
      query_params[:'needReCalculate'] = opts[:'need_re_calculate'] if !opts[:'need_re_calculate'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'style'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_pivot_tables_post_pivot_table_cell_style\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param pivot_table_index 
    # @param pivot_field_type 
    # @param field_index 
    # @param item_index 
    # @param is_hide 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :need_re_calculate  (default to false)
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_pivot_tables_post_pivot_table_field_hide_item(name, sheet_name, pivot_table_index, pivot_field_type, field_index, item_index, is_hide, opts = {})
      data, _status_code, _headers = cells_pivot_tables_post_pivot_table_field_hide_item_with_http_info(name, sheet_name, pivot_table_index, pivot_field_type, field_index, item_index, is_hide, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param pivot_table_index 
    # @param pivot_field_type 
    # @param field_index 
    # @param item_index 
    # @param is_hide 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :need_re_calculate 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_pivot_tables_post_pivot_table_field_hide_item_with_http_info(name, sheet_name, pivot_table_index, pivot_field_type, field_index, item_index, is_hide, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_pivot_tables_post_pivot_table_field_hide_item ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_pivot_tables_post_pivot_table_field_hide_item"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_pivot_tables_post_pivot_table_field_hide_item"
      end
      # verify the required parameter 'pivot_table_index' is set
      if @api_client.config.client_side_validation && pivot_table_index.nil?
        fail ArgumentError, "Missing the required parameter 'pivot_table_index' when calling CellsApi.cells_pivot_tables_post_pivot_table_field_hide_item"
      end
      # verify the required parameter 'pivot_field_type' is set
      if @api_client.config.client_side_validation && pivot_field_type.nil?
        fail ArgumentError, "Missing the required parameter 'pivot_field_type' when calling CellsApi.cells_pivot_tables_post_pivot_table_field_hide_item"
      end
      # verify the required parameter 'field_index' is set
      if @api_client.config.client_side_validation && field_index.nil?
        fail ArgumentError, "Missing the required parameter 'field_index' when calling CellsApi.cells_pivot_tables_post_pivot_table_field_hide_item"
      end
      # verify the required parameter 'item_index' is set
      if @api_client.config.client_side_validation && item_index.nil?
        fail ArgumentError, "Missing the required parameter 'item_index' when calling CellsApi.cells_pivot_tables_post_pivot_table_field_hide_item"
      end
      # verify the required parameter 'is_hide' is set
      if @api_client.config.client_side_validation && is_hide.nil?
        fail ArgumentError, "Missing the required parameter 'is_hide' when calling CellsApi.cells_pivot_tables_post_pivot_table_field_hide_item"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField/Hide".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pivotTableIndex' + '}', pivot_table_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'pivotFieldType'] = pivot_field_type
      query_params[:'fieldIndex'] = field_index
      query_params[:'itemIndex'] = item_index
      query_params[:'isHide'] = is_hide
      query_params[:'needReCalculate'] = opts[:'need_re_calculate'] if !opts[:'need_re_calculate'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_pivot_tables_post_pivot_table_field_hide_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param pivot_table_index 
    # @param field_index 
    # @param from 
    # @param to 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_pivot_tables_post_pivot_table_field_move_to(name, sheet_name, pivot_table_index, field_index, from, to, opts = {})
      data, _status_code, _headers = cells_pivot_tables_post_pivot_table_field_move_to_with_http_info(name, sheet_name, pivot_table_index, field_index, from, to, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param pivot_table_index 
    # @param field_index 
    # @param from 
    # @param to 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_pivot_tables_post_pivot_table_field_move_to_with_http_info(name, sheet_name, pivot_table_index, field_index, from, to, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_pivot_tables_post_pivot_table_field_move_to ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_pivot_tables_post_pivot_table_field_move_to"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_pivot_tables_post_pivot_table_field_move_to"
      end
      # verify the required parameter 'pivot_table_index' is set
      if @api_client.config.client_side_validation && pivot_table_index.nil?
        fail ArgumentError, "Missing the required parameter 'pivot_table_index' when calling CellsApi.cells_pivot_tables_post_pivot_table_field_move_to"
      end
      # verify the required parameter 'field_index' is set
      if @api_client.config.client_side_validation && field_index.nil?
        fail ArgumentError, "Missing the required parameter 'field_index' when calling CellsApi.cells_pivot_tables_post_pivot_table_field_move_to"
      end
      # verify the required parameter 'from' is set
      if @api_client.config.client_side_validation && from.nil?
        fail ArgumentError, "Missing the required parameter 'from' when calling CellsApi.cells_pivot_tables_post_pivot_table_field_move_to"
      end
      # verify the required parameter 'to' is set
      if @api_client.config.client_side_validation && to.nil?
        fail ArgumentError, "Missing the required parameter 'to' when calling CellsApi.cells_pivot_tables_post_pivot_table_field_move_to"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField/Move".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pivotTableIndex' + '}', pivot_table_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'fieldIndex'] = field_index
      query_params[:'from'] = from
      query_params[:'to'] = to
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_pivot_tables_post_pivot_table_field_move_to\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update style for pivot table
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param pivot_table_index Pivot table index
    # @param [Hash] opts the optional parameters
    # @option opts [Style] :style Style dto in request body.
    # @option opts [BOOLEAN] :need_re_calculate  (default to false)
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_pivot_tables_post_pivot_table_style(name, sheet_name, pivot_table_index, opts = {})
      data, _status_code, _headers = cells_pivot_tables_post_pivot_table_style_with_http_info(name, sheet_name, pivot_table_index, opts)
      return data
    end

    # Update style for pivot table
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param pivot_table_index Pivot table index
    # @param [Hash] opts the optional parameters
    # @option opts [Style] :style Style dto in request body.
    # @option opts [BOOLEAN] :need_re_calculate 
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_pivot_tables_post_pivot_table_style_with_http_info(name, sheet_name, pivot_table_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_pivot_tables_post_pivot_table_style ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_pivot_tables_post_pivot_table_style"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_pivot_tables_post_pivot_table_style"
      end
      # verify the required parameter 'pivot_table_index' is set
      if @api_client.config.client_side_validation && pivot_table_index.nil?
        fail ArgumentError, "Missing the required parameter 'pivot_table_index' when calling CellsApi.cells_pivot_tables_post_pivot_table_style"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/FormatAll".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pivotTableIndex' + '}', pivot_table_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'needReCalculate'] = opts[:'need_re_calculate'] if !opts[:'need_re_calculate'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'style'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_pivot_tables_post_pivot_table_style\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param pivot_table_index 
    # @param pivot_field_index 
    # @param pivot_field_type 
    # @param pivot_field 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :need_re_calculate  (default to false)
    # @option opts [String] :folder 
    # @return [CellsCloudResponse]
    def cells_pivot_tables_post_pivot_table_update_pivot_field(name, sheet_name, pivot_table_index, pivot_field_index, pivot_field_type, pivot_field, opts = {})
      data, _status_code, _headers = cells_pivot_tables_post_pivot_table_update_pivot_field_with_http_info(name, sheet_name, pivot_table_index, pivot_field_index, pivot_field_type, pivot_field, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param pivot_table_index 
    # @param pivot_field_index 
    # @param pivot_field_type 
    # @param pivot_field 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :need_re_calculate 
    # @option opts [String] :folder 
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_pivot_tables_post_pivot_table_update_pivot_field_with_http_info(name, sheet_name, pivot_table_index, pivot_field_index, pivot_field_type, pivot_field, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_pivot_tables_post_pivot_table_update_pivot_field ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_pivot_tables_post_pivot_table_update_pivot_field"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_pivot_tables_post_pivot_table_update_pivot_field"
      end
      # verify the required parameter 'pivot_table_index' is set
      if @api_client.config.client_side_validation && pivot_table_index.nil?
        fail ArgumentError, "Missing the required parameter 'pivot_table_index' when calling CellsApi.cells_pivot_tables_post_pivot_table_update_pivot_field"
      end
      # verify the required parameter 'pivot_field_index' is set
      if @api_client.config.client_side_validation && pivot_field_index.nil?
        fail ArgumentError, "Missing the required parameter 'pivot_field_index' when calling CellsApi.cells_pivot_tables_post_pivot_table_update_pivot_field"
      end
      # verify the required parameter 'pivot_field_type' is set
      if @api_client.config.client_side_validation && pivot_field_type.nil?
        fail ArgumentError, "Missing the required parameter 'pivot_field_type' when calling CellsApi.cells_pivot_tables_post_pivot_table_update_pivot_field"
      end
      # verify the required parameter 'pivot_field' is set
      if @api_client.config.client_side_validation && pivot_field.nil?
        fail ArgumentError, "Missing the required parameter 'pivot_field' when calling CellsApi.cells_pivot_tables_post_pivot_table_update_pivot_field"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotFields/{pivotFieldIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pivotTableIndex' + '}', pivot_table_index.to_s).sub('{' + 'pivotFieldIndex' + '}', pivot_field_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'pivotFieldType'] = pivot_field_type
      query_params[:'needReCalculate'] = opts[:'need_re_calculate'] if !opts[:'need_re_calculate'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(pivot_field)
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_pivot_tables_post_pivot_table_update_pivot_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param pivot_table_index 
    # @param pivot_field_type 
    # @param pivot_field 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :need_re_calculate  (default to false)
    # @option opts [String] :folder 
    # @return [CellsCloudResponse]
    def cells_pivot_tables_post_pivot_table_update_pivot_fields(name, sheet_name, pivot_table_index, pivot_field_type, pivot_field, opts = {})
      data, _status_code, _headers = cells_pivot_tables_post_pivot_table_update_pivot_fields_with_http_info(name, sheet_name, pivot_table_index, pivot_field_type, pivot_field, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param pivot_table_index 
    # @param pivot_field_type 
    # @param pivot_field 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :need_re_calculate 
    # @option opts [String] :folder 
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_pivot_tables_post_pivot_table_update_pivot_fields_with_http_info(name, sheet_name, pivot_table_index, pivot_field_type, pivot_field, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_pivot_tables_post_pivot_table_update_pivot_fields ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_pivot_tables_post_pivot_table_update_pivot_fields"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_pivot_tables_post_pivot_table_update_pivot_fields"
      end
      # verify the required parameter 'pivot_table_index' is set
      if @api_client.config.client_side_validation && pivot_table_index.nil?
        fail ArgumentError, "Missing the required parameter 'pivot_table_index' when calling CellsApi.cells_pivot_tables_post_pivot_table_update_pivot_fields"
      end
      # verify the required parameter 'pivot_field_type' is set
      if @api_client.config.client_side_validation && pivot_field_type.nil?
        fail ArgumentError, "Missing the required parameter 'pivot_field_type' when calling CellsApi.cells_pivot_tables_post_pivot_table_update_pivot_fields"
      end
      # verify the required parameter 'pivot_field' is set
      if @api_client.config.client_side_validation && pivot_field.nil?
        fail ArgumentError, "Missing the required parameter 'pivot_field' when calling CellsApi.cells_pivot_tables_post_pivot_table_update_pivot_fields"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotFields".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pivotTableIndex' + '}', pivot_table_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'pivotFieldType'] = pivot_field_type
      query_params[:'needReCalculate'] = opts[:'need_re_calculate'] if !opts[:'need_re_calculate'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(pivot_field)
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_pivot_tables_post_pivot_table_update_pivot_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Calculates pivottable's data to cells.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param pivot_table_index Pivot table index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_pivot_tables_post_worksheet_pivot_table_calculate(name, sheet_name, pivot_table_index, opts = {})
      data, _status_code, _headers = cells_pivot_tables_post_worksheet_pivot_table_calculate_with_http_info(name, sheet_name, pivot_table_index, opts)
      return data
    end

    # Calculates pivottable&#39;s data to cells.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param pivot_table_index Pivot table index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_pivot_tables_post_worksheet_pivot_table_calculate_with_http_info(name, sheet_name, pivot_table_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_pivot_tables_post_worksheet_pivot_table_calculate ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_pivot_tables_post_worksheet_pivot_table_calculate"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_pivot_tables_post_worksheet_pivot_table_calculate"
      end
      # verify the required parameter 'pivot_table_index' is set
      if @api_client.config.client_side_validation && pivot_table_index.nil?
        fail ArgumentError, "Missing the required parameter 'pivot_table_index' when calling CellsApi.cells_pivot_tables_post_worksheet_pivot_table_calculate"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/Calculate".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pivotTableIndex' + '}', pivot_table_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_pivot_tables_post_worksheet_pivot_table_calculate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param pivot_table_index 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :row 
    # @option opts [Integer] :column 
    # @option opts [String] :dest_cell_name 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_pivot_tables_post_worksheet_pivot_table_move(name, sheet_name, pivot_table_index, opts = {})
      data, _status_code, _headers = cells_pivot_tables_post_worksheet_pivot_table_move_with_http_info(name, sheet_name, pivot_table_index, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param pivot_table_index 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :row 
    # @option opts [Integer] :column 
    # @option opts [String] :dest_cell_name 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_pivot_tables_post_worksheet_pivot_table_move_with_http_info(name, sheet_name, pivot_table_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_pivot_tables_post_worksheet_pivot_table_move ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_pivot_tables_post_worksheet_pivot_table_move"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_pivot_tables_post_worksheet_pivot_table_move"
      end
      # verify the required parameter 'pivot_table_index' is set
      if @api_client.config.client_side_validation && pivot_table_index.nil?
        fail ArgumentError, "Missing the required parameter 'pivot_table_index' when calling CellsApi.cells_pivot_tables_post_worksheet_pivot_table_move"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/Move".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pivotTableIndex' + '}', pivot_table_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'row'] = opts[:'row'] if !opts[:'row'].nil?
      query_params[:'column'] = opts[:'column'] if !opts[:'column'].nil?
      query_params[:'destCellName'] = opts[:'dest_cell_name'] if !opts[:'dest_cell_name'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_pivot_tables_post_worksheet_pivot_table_move\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add pivot field into into pivot table
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param pivot_table_index Pivot table index
    # @param pivot_field_type The fields area type.
    # @param [Hash] opts the optional parameters
    # @option opts [PivotTableFieldRequest] :request Dto that conrains field indexes
    # @option opts [BOOLEAN] :need_re_calculate  (default to false)
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_pivot_tables_put_pivot_table_field(name, sheet_name, pivot_table_index, pivot_field_type, opts = {})
      data, _status_code, _headers = cells_pivot_tables_put_pivot_table_field_with_http_info(name, sheet_name, pivot_table_index, pivot_field_type, opts)
      return data
    end

    # Add pivot field into into pivot table
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param pivot_table_index Pivot table index
    # @param pivot_field_type The fields area type.
    # @param [Hash] opts the optional parameters
    # @option opts [PivotTableFieldRequest] :request Dto that conrains field indexes
    # @option opts [BOOLEAN] :need_re_calculate 
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_pivot_tables_put_pivot_table_field_with_http_info(name, sheet_name, pivot_table_index, pivot_field_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_pivot_tables_put_pivot_table_field ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_pivot_tables_put_pivot_table_field"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_pivot_tables_put_pivot_table_field"
      end
      # verify the required parameter 'pivot_table_index' is set
      if @api_client.config.client_side_validation && pivot_table_index.nil?
        fail ArgumentError, "Missing the required parameter 'pivot_table_index' when calling CellsApi.cells_pivot_tables_put_pivot_table_field"
      end
      # verify the required parameter 'pivot_field_type' is set
      if @api_client.config.client_side_validation && pivot_field_type.nil?
        fail ArgumentError, "Missing the required parameter 'pivot_field_type' when calling CellsApi.cells_pivot_tables_put_pivot_table_field"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotField".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pivotTableIndex' + '}', pivot_table_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'pivotFieldType'] = pivot_field_type
      query_params[:'needReCalculate'] = opts[:'need_re_calculate'] if !opts[:'need_re_calculate'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'request'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_pivot_tables_put_pivot_table_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a pivot table into worksheet.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [CreatePivotTableRequest] :request CreatePivotTableRequest dto in request body.
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @option opts [String] :source_data The data for the new PivotTable cache.
    # @option opts [String] :dest_cell_name The cell in the upper-left corner of the PivotTable report&#39;s destination range.
    # @option opts [String] :table_name The name of the new PivotTable report.
    # @option opts [BOOLEAN] :use_same_source Indicates whether using same data source when another existing pivot table has used this data source. If the property is true, it will save memory.
    # @return [CellsCloudResponse]
    def cells_pivot_tables_put_worksheet_pivot_table(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_pivot_tables_put_worksheet_pivot_table_with_http_info(name, sheet_name, opts)
      return data
    end

    # Add a pivot table into worksheet.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [CreatePivotTableRequest] :request CreatePivotTableRequest dto in request body.
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @option opts [String] :source_data The data for the new PivotTable cache.
    # @option opts [String] :dest_cell_name The cell in the upper-left corner of the PivotTable report&#39;s destination range.
    # @option opts [String] :table_name The name of the new PivotTable report.
    # @option opts [BOOLEAN] :use_same_source Indicates whether using same data source when another existing pivot table has used this data source. If the property is true, it will save memory.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_pivot_tables_put_worksheet_pivot_table_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_pivot_tables_put_worksheet_pivot_table ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_pivot_tables_put_worksheet_pivot_table"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_pivot_tables_put_worksheet_pivot_table"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pivottables".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?
      query_params[:'sourceData'] = opts[:'source_data'] if !opts[:'source_data'].nil?
      query_params[:'destCellName'] = opts[:'dest_cell_name'] if !opts[:'dest_cell_name'].nil?
      query_params[:'tableName'] = opts[:'table_name'] if !opts[:'table_name'].nil?
      query_params[:'useSameSource'] = opts[:'use_same_source'] if !opts[:'use_same_source'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'request'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_pivot_tables_put_worksheet_pivot_table\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add pivot filter for piovt table index
    # 
    # @param name 
    # @param sheet_name 
    # @param pivot_table_index 
    # @param [Hash] opts the optional parameters
    # @option opts [PivotFilter] :filter 
    # @option opts [BOOLEAN] :need_re_calculate  (default to false)
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_pivot_tables_put_worksheet_pivot_table_filter(name, sheet_name, pivot_table_index, opts = {})
      data, _status_code, _headers = cells_pivot_tables_put_worksheet_pivot_table_filter_with_http_info(name, sheet_name, pivot_table_index, opts)
      return data
    end

    # Add pivot filter for piovt table index
    # 
    # @param name 
    # @param sheet_name 
    # @param pivot_table_index 
    # @param [Hash] opts the optional parameters
    # @option opts [PivotFilter] :filter 
    # @option opts [BOOLEAN] :need_re_calculate 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_pivot_tables_put_worksheet_pivot_table_filter_with_http_info(name, sheet_name, pivot_table_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_pivot_tables_put_worksheet_pivot_table_filter ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_pivot_tables_put_worksheet_pivot_table_filter"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_pivot_tables_put_worksheet_pivot_table_filter"
      end
      # verify the required parameter 'pivot_table_index' is set
      if @api_client.config.client_side_validation && pivot_table_index.nil?
        fail ArgumentError, "Missing the required parameter 'pivot_table_index' when calling CellsApi.cells_pivot_tables_put_worksheet_pivot_table_filter"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/PivotFilters".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'pivotTableIndex' + '}', pivot_table_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'needReCalculate'] = opts[:'need_re_calculate'] if !opts[:'need_re_calculate'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'filter'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_pivot_tables_put_worksheet_pivot_table_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cell calculate formula
    # 
    # @param name 
    # @param sheet_name 
    # @param cell_name 
    # @param [Hash] opts the optional parameters
    # @option opts [CalculationOptions] :options 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_post_cell_calculate(name, sheet_name, cell_name, opts = {})
      data, _status_code, _headers = cells_post_cell_calculate_with_http_info(name, sheet_name, cell_name, opts)
      return data
    end

    # Cell calculate formula
    # 
    # @param name 
    # @param sheet_name 
    # @param cell_name 
    # @param [Hash] opts the optional parameters
    # @option opts [CalculationOptions] :options 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_post_cell_calculate_with_http_info(name, sheet_name, cell_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_post_cell_calculate ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_post_cell_calculate"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_post_cell_calculate"
      end
      # verify the required parameter 'cell_name' is set
      if @api_client.config.client_side_validation && cell_name.nil?
        fail ArgumentError, "Missing the required parameter 'cell_name' when calling CellsApi.cells_post_cell_calculate"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/{cellName}/calculate".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'cellName' + '}', cell_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'options'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_post_cell_calculate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set cell characters 
    # 
    # @param name 
    # @param sheet_name 
    # @param cell_name 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<FontSetting>] :options 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_post_cell_characters(name, sheet_name, cell_name, opts = {})
      data, _status_code, _headers = cells_post_cell_characters_with_http_info(name, sheet_name, cell_name, opts)
      return data
    end

    # Set cell characters 
    # 
    # @param name 
    # @param sheet_name 
    # @param cell_name 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<FontSetting>] :options 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_post_cell_characters_with_http_info(name, sheet_name, cell_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_post_cell_characters ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_post_cell_characters"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_post_cell_characters"
      end
      # verify the required parameter 'cell_name' is set
      if @api_client.config.client_side_validation && cell_name.nil?
        fail ArgumentError, "Missing the required parameter 'cell_name' when calling CellsApi.cells_post_cell_characters"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/{cellName}/characters".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'cellName' + '}', cell_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'options'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_post_cell_characters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Clear cells contents.
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :range The range.
    # @option opts [Integer] :start_row The start row.
    # @option opts [Integer] :start_column The start column.
    # @option opts [Integer] :end_row The end row.
    # @option opts [Integer] :end_column The end column.
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_post_clear_contents(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_post_clear_contents_with_http_info(name, sheet_name, opts)
      return data
    end

    # Clear cells contents.
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :range The range.
    # @option opts [Integer] :start_row The start row.
    # @option opts [Integer] :start_column The start column.
    # @option opts [Integer] :end_row The end row.
    # @option opts [Integer] :end_column The end column.
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_post_clear_contents_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_post_clear_contents ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_post_clear_contents"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_post_clear_contents"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/clearcontents".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'range'] = opts[:'range'] if !opts[:'range'].nil?
      query_params[:'startRow'] = opts[:'start_row'] if !opts[:'start_row'].nil?
      query_params[:'startColumn'] = opts[:'start_column'] if !opts[:'start_column'].nil?
      query_params[:'endRow'] = opts[:'end_row'] if !opts[:'end_row'].nil?
      query_params[:'endColumn'] = opts[:'end_column'] if !opts[:'end_column'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_post_clear_contents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Clear cells contents.
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :range The range.
    # @option opts [Integer] :start_row The start row.
    # @option opts [Integer] :start_column The start column.
    # @option opts [Integer] :end_row The end row.
    # @option opts [Integer] :end_column The end column.
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_post_clear_formats(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_post_clear_formats_with_http_info(name, sheet_name, opts)
      return data
    end

    # Clear cells contents.
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :range The range.
    # @option opts [Integer] :start_row The start row.
    # @option opts [Integer] :start_column The start column.
    # @option opts [Integer] :end_row The end row.
    # @option opts [Integer] :end_column The end column.
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_post_clear_formats_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_post_clear_formats ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_post_clear_formats"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_post_clear_formats"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/clearformats".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'range'] = opts[:'range'] if !opts[:'range'].nil?
      query_params[:'startRow'] = opts[:'start_row'] if !opts[:'start_row'].nil?
      query_params[:'startColumn'] = opts[:'start_column'] if !opts[:'start_column'].nil?
      query_params[:'endRow'] = opts[:'end_row'] if !opts[:'end_row'].nil?
      query_params[:'endColumn'] = opts[:'end_column'] if !opts[:'end_column'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_post_clear_formats\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set column style
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param column_index The column index.
    # @param [Hash] opts the optional parameters
    # @option opts [Style] :style Style dto
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_post_column_style(name, sheet_name, column_index, opts = {})
      data, _status_code, _headers = cells_post_column_style_with_http_info(name, sheet_name, column_index, opts)
      return data
    end

    # Set column style
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param column_index The column index.
    # @param [Hash] opts the optional parameters
    # @option opts [Style] :style Style dto
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_post_column_style_with_http_info(name, sheet_name, column_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_post_column_style ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_post_column_style"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_post_column_style"
      end
      # verify the required parameter 'column_index' is set
      if @api_client.config.client_side_validation && column_index.nil?
        fail ArgumentError, "Missing the required parameter 'column_index' when calling CellsApi.cells_post_column_style"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}/style".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'columnIndex' + '}', column_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'style'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_post_column_style\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Copy cell into cell
    # 
    # @param name Workbook name.
    # @param dest_cell_name Destination cell name
    # @param sheet_name Destination worksheet name.
    # @param worksheet Source worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cellname Source cell name
    # @option opts [Integer] :row Source row
    # @option opts [Integer] :column Source column
    # @option opts [String] :folder Folder name
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_post_copy_cell_into_cell(name, dest_cell_name, sheet_name, worksheet, opts = {})
      data, _status_code, _headers = cells_post_copy_cell_into_cell_with_http_info(name, dest_cell_name, sheet_name, worksheet, opts)
      return data
    end

    # Copy cell into cell
    # 
    # @param name Workbook name.
    # @param dest_cell_name Destination cell name
    # @param sheet_name Destination worksheet name.
    # @param worksheet Source worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cellname Source cell name
    # @option opts [Integer] :row Source row
    # @option opts [Integer] :column Source column
    # @option opts [String] :folder Folder name
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_post_copy_cell_into_cell_with_http_info(name, dest_cell_name, sheet_name, worksheet, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_post_copy_cell_into_cell ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_post_copy_cell_into_cell"
      end
      # verify the required parameter 'dest_cell_name' is set
      if @api_client.config.client_side_validation && dest_cell_name.nil?
        fail ArgumentError, "Missing the required parameter 'dest_cell_name' when calling CellsApi.cells_post_copy_cell_into_cell"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_post_copy_cell_into_cell"
      end
      # verify the required parameter 'worksheet' is set
      if @api_client.config.client_side_validation && worksheet.nil?
        fail ArgumentError, "Missing the required parameter 'worksheet' when calling CellsApi.cells_post_copy_cell_into_cell"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/{destCellName}/copy".sub('{' + 'name' + '}', name.to_s).sub('{' + 'destCellName' + '}', dest_cell_name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'worksheet'] = worksheet
      query_params[:'cellname'] = opts[:'cellname'] if !opts[:'cellname'].nil?
      query_params[:'row'] = opts[:'row'] if !opts[:'row'].nil?
      query_params[:'column'] = opts[:'column'] if !opts[:'column'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_post_copy_cell_into_cell\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Copy worksheet columns.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param source_column_index Source column index
    # @param destination_column_index Destination column index
    # @param column_number The copied column number
    # @param [Hash] opts the optional parameters
    # @option opts [String] :worksheet The Worksheet (default to )
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_post_copy_worksheet_columns(name, sheet_name, source_column_index, destination_column_index, column_number, opts = {})
      data, _status_code, _headers = cells_post_copy_worksheet_columns_with_http_info(name, sheet_name, source_column_index, destination_column_index, column_number, opts)
      return data
    end

    # Copy worksheet columns.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param source_column_index Source column index
    # @param destination_column_index Destination column index
    # @param column_number The copied column number
    # @param [Hash] opts the optional parameters
    # @option opts [String] :worksheet The Worksheet
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_post_copy_worksheet_columns_with_http_info(name, sheet_name, source_column_index, destination_column_index, column_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_post_copy_worksheet_columns ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_post_copy_worksheet_columns"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_post_copy_worksheet_columns"
      end
      # verify the required parameter 'source_column_index' is set
      if @api_client.config.client_side_validation && source_column_index.nil?
        fail ArgumentError, "Missing the required parameter 'source_column_index' when calling CellsApi.cells_post_copy_worksheet_columns"
      end
      # verify the required parameter 'destination_column_index' is set
      if @api_client.config.client_side_validation && destination_column_index.nil?
        fail ArgumentError, "Missing the required parameter 'destination_column_index' when calling CellsApi.cells_post_copy_worksheet_columns"
      end
      # verify the required parameter 'column_number' is set
      if @api_client.config.client_side_validation && column_number.nil?
        fail ArgumentError, "Missing the required parameter 'column_number' when calling CellsApi.cells_post_copy_worksheet_columns"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/columns/copy".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'sourceColumnIndex'] = source_column_index
      query_params[:'destinationColumnIndex'] = destination_column_index
      query_params[:'columnNumber'] = column_number
      query_params[:'worksheet'] = opts[:'worksheet'] if !opts[:'worksheet'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_post_copy_worksheet_columns\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Copy worksheet rows.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param source_row_index Source row index
    # @param destination_row_index Destination row index
    # @param row_number The copied row number
    # @param [Hash] opts the optional parameters
    # @option opts [String] :worksheet worksheet
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_post_copy_worksheet_rows(name, sheet_name, source_row_index, destination_row_index, row_number, opts = {})
      data, _status_code, _headers = cells_post_copy_worksheet_rows_with_http_info(name, sheet_name, source_row_index, destination_row_index, row_number, opts)
      return data
    end

    # Copy worksheet rows.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param source_row_index Source row index
    # @param destination_row_index Destination row index
    # @param row_number The copied row number
    # @param [Hash] opts the optional parameters
    # @option opts [String] :worksheet worksheet
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_post_copy_worksheet_rows_with_http_info(name, sheet_name, source_row_index, destination_row_index, row_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_post_copy_worksheet_rows ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_post_copy_worksheet_rows"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_post_copy_worksheet_rows"
      end
      # verify the required parameter 'source_row_index' is set
      if @api_client.config.client_side_validation && source_row_index.nil?
        fail ArgumentError, "Missing the required parameter 'source_row_index' when calling CellsApi.cells_post_copy_worksheet_rows"
      end
      # verify the required parameter 'destination_row_index' is set
      if @api_client.config.client_side_validation && destination_row_index.nil?
        fail ArgumentError, "Missing the required parameter 'destination_row_index' when calling CellsApi.cells_post_copy_worksheet_rows"
      end
      # verify the required parameter 'row_number' is set
      if @api_client.config.client_side_validation && row_number.nil?
        fail ArgumentError, "Missing the required parameter 'row_number' when calling CellsApi.cells_post_copy_worksheet_rows"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/rows/copy".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'sourceRowIndex'] = source_row_index
      query_params[:'destinationRowIndex'] = destination_row_index
      query_params[:'rowNumber'] = row_number
      query_params[:'worksheet'] = opts[:'worksheet'] if !opts[:'worksheet'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_post_copy_worksheet_rows\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Group worksheet columns.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param first_index The first column index to be operated.
    # @param last_index The last column index to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :hide columns visible state
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_post_group_worksheet_columns(name, sheet_name, first_index, last_index, opts = {})
      data, _status_code, _headers = cells_post_group_worksheet_columns_with_http_info(name, sheet_name, first_index, last_index, opts)
      return data
    end

    # Group worksheet columns.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param first_index The first column index to be operated.
    # @param last_index The last column index to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :hide columns visible state
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_post_group_worksheet_columns_with_http_info(name, sheet_name, first_index, last_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_post_group_worksheet_columns ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_post_group_worksheet_columns"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_post_group_worksheet_columns"
      end
      # verify the required parameter 'first_index' is set
      if @api_client.config.client_side_validation && first_index.nil?
        fail ArgumentError, "Missing the required parameter 'first_index' when calling CellsApi.cells_post_group_worksheet_columns"
      end
      # verify the required parameter 'last_index' is set
      if @api_client.config.client_side_validation && last_index.nil?
        fail ArgumentError, "Missing the required parameter 'last_index' when calling CellsApi.cells_post_group_worksheet_columns"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/columns/group".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'firstIndex'] = first_index
      query_params[:'lastIndex'] = last_index
      query_params[:'hide'] = opts[:'hide'] if !opts[:'hide'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_post_group_worksheet_columns\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Group worksheet rows.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param first_index The first row index to be operated.
    # @param last_index The last row index to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :hide rows visible state
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_post_group_worksheet_rows(name, sheet_name, first_index, last_index, opts = {})
      data, _status_code, _headers = cells_post_group_worksheet_rows_with_http_info(name, sheet_name, first_index, last_index, opts)
      return data
    end

    # Group worksheet rows.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param first_index The first row index to be operated.
    # @param last_index The last row index to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :hide rows visible state
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_post_group_worksheet_rows_with_http_info(name, sheet_name, first_index, last_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_post_group_worksheet_rows ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_post_group_worksheet_rows"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_post_group_worksheet_rows"
      end
      # verify the required parameter 'first_index' is set
      if @api_client.config.client_side_validation && first_index.nil?
        fail ArgumentError, "Missing the required parameter 'first_index' when calling CellsApi.cells_post_group_worksheet_rows"
      end
      # verify the required parameter 'last_index' is set
      if @api_client.config.client_side_validation && last_index.nil?
        fail ArgumentError, "Missing the required parameter 'last_index' when calling CellsApi.cells_post_group_worksheet_rows"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/rows/group".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'firstIndex'] = first_index
      query_params[:'lastIndex'] = last_index
      query_params[:'hide'] = opts[:'hide'] if !opts[:'hide'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_post_group_worksheet_rows\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Hide worksheet columns.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param start_column The begin column index to be operated.
    # @param total_columns Number of columns to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_post_hide_worksheet_columns(name, sheet_name, start_column, total_columns, opts = {})
      data, _status_code, _headers = cells_post_hide_worksheet_columns_with_http_info(name, sheet_name, start_column, total_columns, opts)
      return data
    end

    # Hide worksheet columns.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param start_column The begin column index to be operated.
    # @param total_columns Number of columns to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_post_hide_worksheet_columns_with_http_info(name, sheet_name, start_column, total_columns, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_post_hide_worksheet_columns ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_post_hide_worksheet_columns"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_post_hide_worksheet_columns"
      end
      # verify the required parameter 'start_column' is set
      if @api_client.config.client_side_validation && start_column.nil?
        fail ArgumentError, "Missing the required parameter 'start_column' when calling CellsApi.cells_post_hide_worksheet_columns"
      end
      # verify the required parameter 'total_columns' is set
      if @api_client.config.client_side_validation && total_columns.nil?
        fail ArgumentError, "Missing the required parameter 'total_columns' when calling CellsApi.cells_post_hide_worksheet_columns"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/columns/hide".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'startColumn'] = start_column
      query_params[:'totalColumns'] = total_columns
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_post_hide_worksheet_columns\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Hide worksheet rows.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param startrow The begin row index to be operated.
    # @param total_rows Number of rows to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_post_hide_worksheet_rows(name, sheet_name, startrow, total_rows, opts = {})
      data, _status_code, _headers = cells_post_hide_worksheet_rows_with_http_info(name, sheet_name, startrow, total_rows, opts)
      return data
    end

    # Hide worksheet rows.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param startrow The begin row index to be operated.
    # @param total_rows Number of rows to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_post_hide_worksheet_rows_with_http_info(name, sheet_name, startrow, total_rows, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_post_hide_worksheet_rows ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_post_hide_worksheet_rows"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_post_hide_worksheet_rows"
      end
      # verify the required parameter 'startrow' is set
      if @api_client.config.client_side_validation && startrow.nil?
        fail ArgumentError, "Missing the required parameter 'startrow' when calling CellsApi.cells_post_hide_worksheet_rows"
      end
      # verify the required parameter 'total_rows' is set
      if @api_client.config.client_side_validation && total_rows.nil?
        fail ArgumentError, "Missing the required parameter 'total_rows' when calling CellsApi.cells_post_hide_worksheet_rows"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/rows/hide".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'startrow'] = startrow
      query_params[:'totalRows'] = total_rows
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_post_hide_worksheet_rows\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set row style.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param row_index The row index.
    # @param [Hash] opts the optional parameters
    # @option opts [Style] :style Style dto
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_post_row_style(name, sheet_name, row_index, opts = {})
      data, _status_code, _headers = cells_post_row_style_with_http_info(name, sheet_name, row_index, opts)
      return data
    end

    # Set row style.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param row_index The row index.
    # @param [Hash] opts the optional parameters
    # @option opts [Style] :style Style dto
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_post_row_style_with_http_info(name, sheet_name, row_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_post_row_style ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_post_row_style"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_post_row_style"
      end
      # verify the required parameter 'row_index' is set
      if @api_client.config.client_side_validation && row_index.nil?
        fail ArgumentError, "Missing the required parameter 'row_index' when calling CellsApi.cells_post_row_style"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}/style".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'rowIndex' + '}', row_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'style'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_post_row_style\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set htmlstring value into cell
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param cell_name The cell name.
    # @param html_string 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellResponse]
    def cells_post_set_cell_html_string(name, sheet_name, cell_name, html_string, opts = {})
      data, _status_code, _headers = cells_post_set_cell_html_string_with_http_info(name, sheet_name, cell_name, html_string, opts)
      return data
    end

    # Set htmlstring value into cell
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param cell_name The cell name.
    # @param html_string 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellResponse, Fixnum, Hash)>] CellResponse data, response status code and response headers
    def cells_post_set_cell_html_string_with_http_info(name, sheet_name, cell_name, html_string, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_post_set_cell_html_string ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_post_set_cell_html_string"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_post_set_cell_html_string"
      end
      # verify the required parameter 'cell_name' is set
      if @api_client.config.client_side_validation && cell_name.nil?
        fail ArgumentError, "Missing the required parameter 'cell_name' when calling CellsApi.cells_post_set_cell_html_string"
      end
      # verify the required parameter 'html_string' is set
      if @api_client.config.client_side_validation && html_string.nil?
        fail ArgumentError, "Missing the required parameter 'html_string' when calling CellsApi.cells_post_set_cell_html_string"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/{cellName}/htmlstring".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'cellName' + '}', cell_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(html_string)
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_post_set_cell_html_string\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set cell range value 
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param cellarea Cell area (like \&quot;A1:C2\&quot;)
    # @param value Range value
    # @param type Value data type (like \&quot;int\&quot;)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Folder name
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_post_set_cell_range_value(name, sheet_name, cellarea, value, type, opts = {})
      data, _status_code, _headers = cells_post_set_cell_range_value_with_http_info(name, sheet_name, cellarea, value, type, opts)
      return data
    end

    # Set cell range value 
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param cellarea Cell area (like \&quot;A1:C2\&quot;)
    # @param value Range value
    # @param type Value data type (like \&quot;int\&quot;)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Folder name
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_post_set_cell_range_value_with_http_info(name, sheet_name, cellarea, value, type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_post_set_cell_range_value ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_post_set_cell_range_value"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_post_set_cell_range_value"
      end
      # verify the required parameter 'cellarea' is set
      if @api_client.config.client_side_validation && cellarea.nil?
        fail ArgumentError, "Missing the required parameter 'cellarea' when calling CellsApi.cells_post_set_cell_range_value"
      end
      # verify the required parameter 'value' is set
      if @api_client.config.client_side_validation && value.nil?
        fail ArgumentError, "Missing the required parameter 'value' when calling CellsApi.cells_post_set_cell_range_value"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling CellsApi.cells_post_set_cell_range_value"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'cellarea'] = cellarea
      query_params[:'value'] = value
      query_params[:'type'] = type
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_post_set_cell_range_value\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set worksheet column width.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param column_index The column index.
    # @param width The width.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_post_set_worksheet_column_width(name, sheet_name, column_index, width, opts = {})
      data, _status_code, _headers = cells_post_set_worksheet_column_width_with_http_info(name, sheet_name, column_index, width, opts)
      return data
    end

    # Set worksheet column width.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param column_index The column index.
    # @param width The width.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_post_set_worksheet_column_width_with_http_info(name, sheet_name, column_index, width, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_post_set_worksheet_column_width ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_post_set_worksheet_column_width"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_post_set_worksheet_column_width"
      end
      # verify the required parameter 'column_index' is set
      if @api_client.config.client_side_validation && column_index.nil?
        fail ArgumentError, "Missing the required parameter 'column_index' when calling CellsApi.cells_post_set_worksheet_column_width"
      end
      # verify the required parameter 'width' is set
      if @api_client.config.client_side_validation && width.nil?
        fail ArgumentError, "Missing the required parameter 'width' when calling CellsApi.cells_post_set_worksheet_column_width"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'columnIndex' + '}', column_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'width'] = width
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_post_set_worksheet_column_width\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Ungroup worksheet columns.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param first_index The first column index to be operated.
    # @param last_index The last column index to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_post_ungroup_worksheet_columns(name, sheet_name, first_index, last_index, opts = {})
      data, _status_code, _headers = cells_post_ungroup_worksheet_columns_with_http_info(name, sheet_name, first_index, last_index, opts)
      return data
    end

    # Ungroup worksheet columns.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param first_index The first column index to be operated.
    # @param last_index The last column index to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_post_ungroup_worksheet_columns_with_http_info(name, sheet_name, first_index, last_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_post_ungroup_worksheet_columns ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_post_ungroup_worksheet_columns"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_post_ungroup_worksheet_columns"
      end
      # verify the required parameter 'first_index' is set
      if @api_client.config.client_side_validation && first_index.nil?
        fail ArgumentError, "Missing the required parameter 'first_index' when calling CellsApi.cells_post_ungroup_worksheet_columns"
      end
      # verify the required parameter 'last_index' is set
      if @api_client.config.client_side_validation && last_index.nil?
        fail ArgumentError, "Missing the required parameter 'last_index' when calling CellsApi.cells_post_ungroup_worksheet_columns"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/columns/ungroup".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'firstIndex'] = first_index
      query_params[:'lastIndex'] = last_index
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_post_ungroup_worksheet_columns\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Ungroup worksheet rows.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param first_index The first row index to be operated.
    # @param last_index The last row index to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :is_all Is all row to be operated
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_post_ungroup_worksheet_rows(name, sheet_name, first_index, last_index, opts = {})
      data, _status_code, _headers = cells_post_ungroup_worksheet_rows_with_http_info(name, sheet_name, first_index, last_index, opts)
      return data
    end

    # Ungroup worksheet rows.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param first_index The first row index to be operated.
    # @param last_index The last row index to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :is_all Is all row to be operated
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_post_ungroup_worksheet_rows_with_http_info(name, sheet_name, first_index, last_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_post_ungroup_worksheet_rows ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_post_ungroup_worksheet_rows"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_post_ungroup_worksheet_rows"
      end
      # verify the required parameter 'first_index' is set
      if @api_client.config.client_side_validation && first_index.nil?
        fail ArgumentError, "Missing the required parameter 'first_index' when calling CellsApi.cells_post_ungroup_worksheet_rows"
      end
      # verify the required parameter 'last_index' is set
      if @api_client.config.client_side_validation && last_index.nil?
        fail ArgumentError, "Missing the required parameter 'last_index' when calling CellsApi.cells_post_ungroup_worksheet_rows"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/rows/ungroup".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'firstIndex'] = first_index
      query_params[:'lastIndex'] = last_index
      query_params[:'isAll'] = opts[:'is_all'] if !opts[:'is_all'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_post_ungroup_worksheet_rows\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unhide worksheet columns.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param startcolumn The begin column index to be operated.
    # @param total_columns Number of columns to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :width The new column width. (default to 50.0)
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_post_unhide_worksheet_columns(name, sheet_name, startcolumn, total_columns, opts = {})
      data, _status_code, _headers = cells_post_unhide_worksheet_columns_with_http_info(name, sheet_name, startcolumn, total_columns, opts)
      return data
    end

    # Unhide worksheet columns.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param startcolumn The begin column index to be operated.
    # @param total_columns Number of columns to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :width The new column width.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_post_unhide_worksheet_columns_with_http_info(name, sheet_name, startcolumn, total_columns, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_post_unhide_worksheet_columns ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_post_unhide_worksheet_columns"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_post_unhide_worksheet_columns"
      end
      # verify the required parameter 'startcolumn' is set
      if @api_client.config.client_side_validation && startcolumn.nil?
        fail ArgumentError, "Missing the required parameter 'startcolumn' when calling CellsApi.cells_post_unhide_worksheet_columns"
      end
      # verify the required parameter 'total_columns' is set
      if @api_client.config.client_side_validation && total_columns.nil?
        fail ArgumentError, "Missing the required parameter 'total_columns' when calling CellsApi.cells_post_unhide_worksheet_columns"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/columns/unhide".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'startcolumn'] = startcolumn
      query_params[:'totalColumns'] = total_columns
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_post_unhide_worksheet_columns\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unhide worksheet rows.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param startrow The begin row index to be operated.
    # @param total_rows Number of rows to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :height The new row height. (default to 15.0)
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_post_unhide_worksheet_rows(name, sheet_name, startrow, total_rows, opts = {})
      data, _status_code, _headers = cells_post_unhide_worksheet_rows_with_http_info(name, sheet_name, startrow, total_rows, opts)
      return data
    end

    # Unhide worksheet rows.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param startrow The begin row index to be operated.
    # @param total_rows Number of rows to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :height The new row height.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_post_unhide_worksheet_rows_with_http_info(name, sheet_name, startrow, total_rows, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_post_unhide_worksheet_rows ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_post_unhide_worksheet_rows"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_post_unhide_worksheet_rows"
      end
      # verify the required parameter 'startrow' is set
      if @api_client.config.client_side_validation && startrow.nil?
        fail ArgumentError, "Missing the required parameter 'startrow' when calling CellsApi.cells_post_unhide_worksheet_rows"
      end
      # verify the required parameter 'total_rows' is set
      if @api_client.config.client_side_validation && total_rows.nil?
        fail ArgumentError, "Missing the required parameter 'total_rows' when calling CellsApi.cells_post_unhide_worksheet_rows"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/rows/unhide".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'startrow'] = startrow
      query_params[:'totalRows'] = total_rows
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_post_unhide_worksheet_rows\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update cell's style.
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param cell_name The cell name.
    # @param [Hash] opts the optional parameters
    # @option opts [Style] :style with update style settings.
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [StyleResponse]
    def cells_post_update_worksheet_cell_style(name, sheet_name, cell_name, opts = {})
      data, _status_code, _headers = cells_post_update_worksheet_cell_style_with_http_info(name, sheet_name, cell_name, opts)
      return data
    end

    # Update cell&#39;s style.
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param cell_name The cell name.
    # @param [Hash] opts the optional parameters
    # @option opts [Style] :style with update style settings.
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(StyleResponse, Fixnum, Hash)>] StyleResponse data, response status code and response headers
    def cells_post_update_worksheet_cell_style_with_http_info(name, sheet_name, cell_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_post_update_worksheet_cell_style ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_post_update_worksheet_cell_style"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_post_update_worksheet_cell_style"
      end
      # verify the required parameter 'cell_name' is set
      if @api_client.config.client_side_validation && cell_name.nil?
        fail ArgumentError, "Missing the required parameter 'cell_name' when calling CellsApi.cells_post_update_worksheet_cell_style"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/{cellName}/style".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'cellName' + '}', cell_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'style'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'StyleResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_post_update_worksheet_cell_style\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update cell's range style.
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param range The range.
    # @param [Hash] opts the optional parameters
    # @option opts [Style] :style with update style settings.
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_post_update_worksheet_range_style(name, sheet_name, range, opts = {})
      data, _status_code, _headers = cells_post_update_worksheet_range_style_with_http_info(name, sheet_name, range, opts)
      return data
    end

    # Update cell&#39;s range style.
    # 
    # @param name Workbook name.
    # @param sheet_name Worksheet name.
    # @param range The range.
    # @param [Hash] opts the optional parameters
    # @option opts [Style] :style with update style settings.
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_post_update_worksheet_range_style_with_http_info(name, sheet_name, range, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_post_update_worksheet_range_style ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_post_update_worksheet_range_style"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_post_update_worksheet_range_style"
      end
      # verify the required parameter 'range' is set
      if @api_client.config.client_side_validation && range.nil?
        fail ArgumentError, "Missing the required parameter 'range' when calling CellsApi.cells_post_update_worksheet_range_style"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/style".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'range'] = range
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'style'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_post_update_worksheet_range_style\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update worksheet row.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param row_index The row index.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :height The new row height. (default to 0.0)
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_post_update_worksheet_row(name, sheet_name, row_index, opts = {})
      data, _status_code, _headers = cells_post_update_worksheet_row_with_http_info(name, sheet_name, row_index, opts)
      return data
    end

    # Update worksheet row.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param row_index The row index.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :height The new row height.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_post_update_worksheet_row_with_http_info(name, sheet_name, row_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_post_update_worksheet_row ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_post_update_worksheet_row"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_post_update_worksheet_row"
      end
      # verify the required parameter 'row_index' is set
      if @api_client.config.client_side_validation && row_index.nil?
        fail ArgumentError, "Missing the required parameter 'row_index' when calling CellsApi.cells_post_update_worksheet_row"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'rowIndex' + '}', row_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_post_update_worksheet_row\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set cell value.
    # 
    # @param name The document name.
    # @param sheet_name The worksheet name.
    # @param cell_name The cell name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :value The cell value.
    # @option opts [String] :type The value type.
    # @option opts [String] :formula Formula for cell
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellResponse]
    def cells_post_worksheet_cell_set_value(name, sheet_name, cell_name, opts = {})
      data, _status_code, _headers = cells_post_worksheet_cell_set_value_with_http_info(name, sheet_name, cell_name, opts)
      return data
    end

    # Set cell value.
    # 
    # @param name The document name.
    # @param sheet_name The worksheet name.
    # @param cell_name The cell name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :value The cell value.
    # @option opts [String] :type The value type.
    # @option opts [String] :formula Formula for cell
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellResponse, Fixnum, Hash)>] CellResponse data, response status code and response headers
    def cells_post_worksheet_cell_set_value_with_http_info(name, sheet_name, cell_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_post_worksheet_cell_set_value ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_post_worksheet_cell_set_value"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_post_worksheet_cell_set_value"
      end
      # verify the required parameter 'cell_name' is set
      if @api_client.config.client_side_validation && cell_name.nil?
        fail ArgumentError, "Missing the required parameter 'cell_name' when calling CellsApi.cells_post_worksheet_cell_set_value"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/{cellName}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'cellName' + '}', cell_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'value'] = opts[:'value'] if !opts[:'value'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'formula'] = opts[:'formula'] if !opts[:'formula'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_post_worksheet_cell_set_value\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Merge cells.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param start_row The start row.
    # @param start_column The start column.
    # @param total_rows The total rows
    # @param total_columns The total columns.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_post_worksheet_merge(name, sheet_name, start_row, start_column, total_rows, total_columns, opts = {})
      data, _status_code, _headers = cells_post_worksheet_merge_with_http_info(name, sheet_name, start_row, start_column, total_rows, total_columns, opts)
      return data
    end

    # Merge cells.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param start_row The start row.
    # @param start_column The start column.
    # @param total_rows The total rows
    # @param total_columns The total columns.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_post_worksheet_merge_with_http_info(name, sheet_name, start_row, start_column, total_rows, total_columns, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_post_worksheet_merge ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_post_worksheet_merge"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_post_worksheet_merge"
      end
      # verify the required parameter 'start_row' is set
      if @api_client.config.client_side_validation && start_row.nil?
        fail ArgumentError, "Missing the required parameter 'start_row' when calling CellsApi.cells_post_worksheet_merge"
      end
      # verify the required parameter 'start_column' is set
      if @api_client.config.client_side_validation && start_column.nil?
        fail ArgumentError, "Missing the required parameter 'start_column' when calling CellsApi.cells_post_worksheet_merge"
      end
      # verify the required parameter 'total_rows' is set
      if @api_client.config.client_side_validation && total_rows.nil?
        fail ArgumentError, "Missing the required parameter 'total_rows' when calling CellsApi.cells_post_worksheet_merge"
      end
      # verify the required parameter 'total_columns' is set
      if @api_client.config.client_side_validation && total_columns.nil?
        fail ArgumentError, "Missing the required parameter 'total_columns' when calling CellsApi.cells_post_worksheet_merge"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/merge".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'startRow'] = start_row
      query_params[:'startColumn'] = start_column
      query_params[:'totalRows'] = total_rows
      query_params[:'totalColumns'] = total_columns
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_post_worksheet_merge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unmerge cells.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param start_row The start row.
    # @param start_column The start column.
    # @param total_rows The total rows
    # @param total_columns The total columns.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_post_worksheet_unmerge(name, sheet_name, start_row, start_column, total_rows, total_columns, opts = {})
      data, _status_code, _headers = cells_post_worksheet_unmerge_with_http_info(name, sheet_name, start_row, start_column, total_rows, total_columns, opts)
      return data
    end

    # Unmerge cells.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param start_row The start row.
    # @param start_column The start column.
    # @param total_rows The total rows
    # @param total_columns The total columns.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_post_worksheet_unmerge_with_http_info(name, sheet_name, start_row, start_column, total_rows, total_columns, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_post_worksheet_unmerge ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_post_worksheet_unmerge"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_post_worksheet_unmerge"
      end
      # verify the required parameter 'start_row' is set
      if @api_client.config.client_side_validation && start_row.nil?
        fail ArgumentError, "Missing the required parameter 'start_row' when calling CellsApi.cells_post_worksheet_unmerge"
      end
      # verify the required parameter 'start_column' is set
      if @api_client.config.client_side_validation && start_column.nil?
        fail ArgumentError, "Missing the required parameter 'start_column' when calling CellsApi.cells_post_worksheet_unmerge"
      end
      # verify the required parameter 'total_rows' is set
      if @api_client.config.client_side_validation && total_rows.nil?
        fail ArgumentError, "Missing the required parameter 'total_rows' when calling CellsApi.cells_post_worksheet_unmerge"
      end
      # verify the required parameter 'total_columns' is set
      if @api_client.config.client_side_validation && total_columns.nil?
        fail ArgumentError, "Missing the required parameter 'total_columns' when calling CellsApi.cells_post_worksheet_unmerge"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/unmerge".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'startRow'] = start_row
      query_params[:'startColumn'] = start_column
      query_params[:'totalRows'] = total_rows
      query_params[:'totalColumns'] = total_columns
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_post_worksheet_unmerge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete all custom document properties and clean built-in ones.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_properties_delete_document_properties(name, opts = {})
      data, _status_code, _headers = cells_properties_delete_document_properties_with_http_info(name, opts)
      return data
    end

    # Delete all custom document properties and clean built-in ones.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_properties_delete_document_properties_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_properties_delete_document_properties ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_properties_delete_document_properties"
      end
      # resource path
      local_var_path = "/cells/{name}/documentproperties".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_properties_delete_document_properties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete document property.
    # 
    # @param name The document name.
    # @param property_name The property name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_properties_delete_document_property(name, property_name, opts = {})
      data, _status_code, _headers = cells_properties_delete_document_property_with_http_info(name, property_name, opts)
      return data
    end

    # Delete document property.
    # 
    # @param name The document name.
    # @param property_name The property name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_properties_delete_document_property_with_http_info(name, property_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_properties_delete_document_property ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_properties_delete_document_property"
      end
      # verify the required parameter 'property_name' is set
      if @api_client.config.client_side_validation && property_name.nil?
        fail ArgumentError, "Missing the required parameter 'property_name' when calling CellsApi.cells_properties_delete_document_property"
      end
      # resource path
      local_var_path = "/cells/{name}/documentproperties/{propertyName}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'propertyName' + '}', property_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_properties_delete_document_property\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read document properties.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsDocumentPropertiesResponse]
    def cells_properties_get_document_properties(name, opts = {})
      data, _status_code, _headers = cells_properties_get_document_properties_with_http_info(name, opts)
      return data
    end

    # Read document properties.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsDocumentPropertiesResponse, Fixnum, Hash)>] CellsDocumentPropertiesResponse data, response status code and response headers
    def cells_properties_get_document_properties_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_properties_get_document_properties ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_properties_get_document_properties"
      end
      # resource path
      local_var_path = "/cells/{name}/documentproperties".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsDocumentPropertiesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_properties_get_document_properties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read document property by name.
    # 
    # @param name The document name.
    # @param property_name The property name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsDocumentPropertyResponse]
    def cells_properties_get_document_property(name, property_name, opts = {})
      data, _status_code, _headers = cells_properties_get_document_property_with_http_info(name, property_name, opts)
      return data
    end

    # Read document property by name.
    # 
    # @param name The document name.
    # @param property_name The property name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsDocumentPropertyResponse, Fixnum, Hash)>] CellsDocumentPropertyResponse data, response status code and response headers
    def cells_properties_get_document_property_with_http_info(name, property_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_properties_get_document_property ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_properties_get_document_property"
      end
      # verify the required parameter 'property_name' is set
      if @api_client.config.client_side_validation && property_name.nil?
        fail ArgumentError, "Missing the required parameter 'property_name' when calling CellsApi.cells_properties_get_document_property"
      end
      # resource path
      local_var_path = "/cells/{name}/documentproperties/{propertyName}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'propertyName' + '}', property_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsDocumentPropertyResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_properties_get_document_property\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set/create document property.
    # 
    # @param name The document name.
    # @param property_name The property name.
    # @param [Hash] opts the optional parameters
    # @option opts [CellsDocumentProperty] :property with new property value.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_properties_put_document_property(name, property_name, opts = {})
      data, _status_code, _headers = cells_properties_put_document_property_with_http_info(name, property_name, opts)
      return data
    end

    # Set/create document property.
    # 
    # @param name The document name.
    # @param property_name The property name.
    # @param [Hash] opts the optional parameters
    # @option opts [CellsDocumentProperty] :property with new property value.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_properties_put_document_property_with_http_info(name, property_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_properties_put_document_property ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_properties_put_document_property"
      end
      # verify the required parameter 'property_name' is set
      if @api_client.config.client_side_validation && property_name.nil?
        fail ArgumentError, "Missing the required parameter 'property_name' when calling CellsApi.cells_properties_put_document_property"
      end
      # resource path
      local_var_path = "/cells/{name}/documentproperties/{propertyName}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'propertyName' + '}', property_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'property'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_properties_put_document_property\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Insert worksheet columns.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param column_index The column index.
    # @param columns The columns.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :update_reference The update reference. (default to true)
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_put_insert_worksheet_columns(name, sheet_name, column_index, columns, opts = {})
      data, _status_code, _headers = cells_put_insert_worksheet_columns_with_http_info(name, sheet_name, column_index, columns, opts)
      return data
    end

    # Insert worksheet columns.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param column_index The column index.
    # @param columns The columns.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :update_reference The update reference.
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_put_insert_worksheet_columns_with_http_info(name, sheet_name, column_index, columns, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_put_insert_worksheet_columns ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_put_insert_worksheet_columns"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_put_insert_worksheet_columns"
      end
      # verify the required parameter 'column_index' is set
      if @api_client.config.client_side_validation && column_index.nil?
        fail ArgumentError, "Missing the required parameter 'column_index' when calling CellsApi.cells_put_insert_worksheet_columns"
      end
      # verify the required parameter 'columns' is set
      if @api_client.config.client_side_validation && columns.nil?
        fail ArgumentError, "Missing the required parameter 'columns' when calling CellsApi.cells_put_insert_worksheet_columns"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'columnIndex' + '}', column_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'columns'] = columns
      query_params[:'updateReference'] = opts[:'update_reference'] if !opts[:'update_reference'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_put_insert_worksheet_columns\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Insert new worksheet row.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param row_index The new row index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_put_insert_worksheet_row(name, sheet_name, row_index, opts = {})
      data, _status_code, _headers = cells_put_insert_worksheet_row_with_http_info(name, sheet_name, row_index, opts)
      return data
    end

    # Insert new worksheet row.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param row_index The new row index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_put_insert_worksheet_row_with_http_info(name, sheet_name, row_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_put_insert_worksheet_row ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_put_insert_worksheet_row"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_put_insert_worksheet_row"
      end
      # verify the required parameter 'row_index' is set
      if @api_client.config.client_side_validation && row_index.nil?
        fail ArgumentError, "Missing the required parameter 'row_index' when calling CellsApi.cells_put_insert_worksheet_row"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/rows/{rowIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'rowIndex' + '}', row_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_put_insert_worksheet_row\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Insert several new worksheet rows.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param startrow The begin row index to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :total_rows Number of rows to be operated. (default to 1)
    # @option opts [BOOLEAN] :update_reference Indicates if update references in other worksheets. (default to true)
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_put_insert_worksheet_rows(name, sheet_name, startrow, opts = {})
      data, _status_code, _headers = cells_put_insert_worksheet_rows_with_http_info(name, sheet_name, startrow, opts)
      return data
    end

    # Insert several new worksheet rows.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param startrow The begin row index to be operated.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :total_rows Number of rows to be operated.
    # @option opts [BOOLEAN] :update_reference Indicates if update references in other worksheets.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_put_insert_worksheet_rows_with_http_info(name, sheet_name, startrow, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_put_insert_worksheet_rows ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_put_insert_worksheet_rows"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_put_insert_worksheet_rows"
      end
      # verify the required parameter 'startrow' is set
      if @api_client.config.client_side_validation && startrow.nil?
        fail ArgumentError, "Missing the required parameter 'startrow' when calling CellsApi.cells_put_insert_worksheet_rows"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/cells/rows".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'startrow'] = startrow
      query_params[:'totalRows'] = opts[:'total_rows'] if !opts[:'total_rows'].nil?
      query_params[:'updateReference'] = opts[:'update_reference'] if !opts[:'update_reference'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_put_insert_worksheet_rows\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete range in the worksheet
    # 
    # @param name workbook name
    # @param sheet_name worksheet name
    # @param range range
    # @param shift Represent the shift options when deleting a range of cells. (Left,Up) 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_ranges_delete_worksheet_cells_range(name, sheet_name, range, shift, opts = {})
      data, _status_code, _headers = cells_ranges_delete_worksheet_cells_range_with_http_info(name, sheet_name, range, shift, opts)
      return data
    end

    # Delete range in the worksheet
    # 
    # @param name workbook name
    # @param sheet_name worksheet name
    # @param range range
    # @param shift Represent the shift options when deleting a range of cells. (Left,Up) 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_ranges_delete_worksheet_cells_range_with_http_info(name, sheet_name, range, shift, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_ranges_delete_worksheet_cells_range ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_ranges_delete_worksheet_cells_range"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_ranges_delete_worksheet_cells_range"
      end
      # verify the required parameter 'range' is set
      if @api_client.config.client_side_validation && range.nil?
        fail ArgumentError, "Missing the required parameter 'range' when calling CellsApi.cells_ranges_delete_worksheet_cells_range"
      end
      # verify the required parameter 'shift' is set
      if @api_client.config.client_side_validation && shift.nil?
        fail ArgumentError, "Missing the required parameter 'shift' when calling CellsApi.cells_ranges_delete_worksheet_cells_range"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/ranges".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'range'] = range
      query_params[:'shift'] = shift
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_ranges_delete_worksheet_cells_range\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get cells list in a range by range name or row column indexes  
    # 
    # @param name workbook name
    # @param sheet_name worksheet name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :namerange range name, for example: &#39;A1:B2&#39; or &#39;range_name1&#39;
    # @option opts [Integer] :first_row the first row of the range
    # @option opts [Integer] :first_column the first column of the range
    # @option opts [Integer] :row_count the count of rows in the range
    # @option opts [Integer] :column_count the count of columns in the range
    # @option opts [String] :folder Workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [RangeValueResponse]
    def cells_ranges_get_worksheet_cells_range_value(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_ranges_get_worksheet_cells_range_value_with_http_info(name, sheet_name, opts)
      return data
    end

    # Get cells list in a range by range name or row column indexes  
    # 
    # @param name workbook name
    # @param sheet_name worksheet name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :namerange range name, for example: &#39;A1:B2&#39; or &#39;range_name1&#39;
    # @option opts [Integer] :first_row the first row of the range
    # @option opts [Integer] :first_column the first column of the range
    # @option opts [Integer] :row_count the count of rows in the range
    # @option opts [Integer] :column_count the count of columns in the range
    # @option opts [String] :folder Workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(RangeValueResponse, Fixnum, Hash)>] RangeValueResponse data, response status code and response headers
    def cells_ranges_get_worksheet_cells_range_value_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_ranges_get_worksheet_cells_range_value ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_ranges_get_worksheet_cells_range_value"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_ranges_get_worksheet_cells_range_value"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/ranges/value".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'namerange'] = opts[:'namerange'] if !opts[:'namerange'].nil?
      query_params[:'firstRow'] = opts[:'first_row'] if !opts[:'first_row'].nil?
      query_params[:'firstColumn'] = opts[:'first_column'] if !opts[:'first_column'].nil?
      query_params[:'rowCount'] = opts[:'row_count'] if !opts[:'row_count'].nil?
      query_params[:'columnCount'] = opts[:'column_count'] if !opts[:'column_count'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RangeValueResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_ranges_get_worksheet_cells_range_value\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set column width of range
    # 
    # @param name 
    # @param sheet_name 
    # @param value 
    # @param [Hash] opts the optional parameters
    # @option opts [Range] :range 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_ranges_post_worksheet_cells_range_column_width(name, sheet_name, value, opts = {})
      data, _status_code, _headers = cells_ranges_post_worksheet_cells_range_column_width_with_http_info(name, sheet_name, value, opts)
      return data
    end

    # Set column width of range
    # 
    # @param name 
    # @param sheet_name 
    # @param value 
    # @param [Hash] opts the optional parameters
    # @option opts [Range] :range 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_ranges_post_worksheet_cells_range_column_width_with_http_info(name, sheet_name, value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_ranges_post_worksheet_cells_range_column_width ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_ranges_post_worksheet_cells_range_column_width"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_ranges_post_worksheet_cells_range_column_width"
      end
      # verify the required parameter 'value' is set
      if @api_client.config.client_side_validation && value.nil?
        fail ArgumentError, "Missing the required parameter 'value' when calling CellsApi.cells_ranges_post_worksheet_cells_range_column_width"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/ranges/columnWidth".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'value'] = value
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'range'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_ranges_post_worksheet_cells_range_column_width\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Combines a range of cells into a single cell.              
    # 
    # @param name workbook name
    # @param sheet_name worksheet name
    # @param [Hash] opts the optional parameters
    # @option opts [Range] :range range in worksheet 
    # @option opts [String] :folder Workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_ranges_post_worksheet_cells_range_merge(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_ranges_post_worksheet_cells_range_merge_with_http_info(name, sheet_name, opts)
      return data
    end

    # Combines a range of cells into a single cell.              
    # 
    # @param name workbook name
    # @param sheet_name worksheet name
    # @param [Hash] opts the optional parameters
    # @option opts [Range] :range range in worksheet 
    # @option opts [String] :folder Workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_ranges_post_worksheet_cells_range_merge_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_ranges_post_worksheet_cells_range_merge ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_ranges_post_worksheet_cells_range_merge"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_ranges_post_worksheet_cells_range_merge"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/ranges/merge".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'range'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_ranges_post_worksheet_cells_range_merge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Move the current range to the dest range.             
    # 
    # @param name workbook name
    # @param sheet_name worksheet name
    # @param dest_row The start row of the dest range.
    # @param dest_column The start column of the dest range.
    # @param [Hash] opts the optional parameters
    # @option opts [Range] :range range in worksheet 
    # @option opts [String] :folder Workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_ranges_post_worksheet_cells_range_move_to(name, sheet_name, dest_row, dest_column, opts = {})
      data, _status_code, _headers = cells_ranges_post_worksheet_cells_range_move_to_with_http_info(name, sheet_name, dest_row, dest_column, opts)
      return data
    end

    # Move the current range to the dest range.             
    # 
    # @param name workbook name
    # @param sheet_name worksheet name
    # @param dest_row The start row of the dest range.
    # @param dest_column The start column of the dest range.
    # @param [Hash] opts the optional parameters
    # @option opts [Range] :range range in worksheet 
    # @option opts [String] :folder Workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_ranges_post_worksheet_cells_range_move_to_with_http_info(name, sheet_name, dest_row, dest_column, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_ranges_post_worksheet_cells_range_move_to ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_ranges_post_worksheet_cells_range_move_to"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_ranges_post_worksheet_cells_range_move_to"
      end
      # verify the required parameter 'dest_row' is set
      if @api_client.config.client_side_validation && dest_row.nil?
        fail ArgumentError, "Missing the required parameter 'dest_row' when calling CellsApi.cells_ranges_post_worksheet_cells_range_move_to"
      end
      # verify the required parameter 'dest_column' is set
      if @api_client.config.client_side_validation && dest_column.nil?
        fail ArgumentError, "Missing the required parameter 'dest_column' when calling CellsApi.cells_ranges_post_worksheet_cells_range_move_to"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/ranges/moveto".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'destRow'] = dest_row
      query_params[:'destColumn'] = dest_column
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'range'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_ranges_post_worksheet_cells_range_move_to\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Sets outline border around a range of cells.
    # 
    # @param name workbook name
    # @param sheet_name worksheet name
    # @param [Hash] opts the optional parameters
    # @option opts [RangeSetOutlineBorderRequest] :range_operate Range Set OutlineBorder Request 
    # @option opts [String] :folder Workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_ranges_post_worksheet_cells_range_outline_border(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_ranges_post_worksheet_cells_range_outline_border_with_http_info(name, sheet_name, opts)
      return data
    end

    # Sets outline border around a range of cells.
    # 
    # @param name workbook name
    # @param sheet_name worksheet name
    # @param [Hash] opts the optional parameters
    # @option opts [RangeSetOutlineBorderRequest] :range_operate Range Set OutlineBorder Request 
    # @option opts [String] :folder Workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_ranges_post_worksheet_cells_range_outline_border_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_ranges_post_worksheet_cells_range_outline_border ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_ranges_post_worksheet_cells_range_outline_border"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_ranges_post_worksheet_cells_range_outline_border"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/ranges/outlineBorder".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'range_operate'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_ranges_post_worksheet_cells_range_outline_border\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # set row height of range
    # 
    # @param name 
    # @param sheet_name 
    # @param value 
    # @param [Hash] opts the optional parameters
    # @option opts [Range] :range 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_ranges_post_worksheet_cells_range_row_height(name, sheet_name, value, opts = {})
      data, _status_code, _headers = cells_ranges_post_worksheet_cells_range_row_height_with_http_info(name, sheet_name, value, opts)
      return data
    end

    # set row height of range
    # 
    # @param name 
    # @param sheet_name 
    # @param value 
    # @param [Hash] opts the optional parameters
    # @option opts [Range] :range 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_ranges_post_worksheet_cells_range_row_height_with_http_info(name, sheet_name, value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_ranges_post_worksheet_cells_range_row_height ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_ranges_post_worksheet_cells_range_row_height"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_ranges_post_worksheet_cells_range_row_height"
      end
      # verify the required parameter 'value' is set
      if @api_client.config.client_side_validation && value.nil?
        fail ArgumentError, "Missing the required parameter 'value' when calling CellsApi.cells_ranges_post_worksheet_cells_range_row_height"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/ranges/rowHeight".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'value'] = value
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'range'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_ranges_post_worksheet_cells_range_row_height\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Sets the style of the range.             
    # 
    # @param name workbook name
    # @param sheet_name worksheet name
    # @param [Hash] opts the optional parameters
    # @option opts [RangeSetStyleRequest] :range_operate Range Set Style Request 
    # @option opts [String] :folder Workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_ranges_post_worksheet_cells_range_style(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_ranges_post_worksheet_cells_range_style_with_http_info(name, sheet_name, opts)
      return data
    end

    # Sets the style of the range.             
    # 
    # @param name workbook name
    # @param sheet_name worksheet name
    # @param [Hash] opts the optional parameters
    # @option opts [RangeSetStyleRequest] :range_operate Range Set Style Request 
    # @option opts [String] :folder Workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_ranges_post_worksheet_cells_range_style_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_ranges_post_worksheet_cells_range_style ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_ranges_post_worksheet_cells_range_style"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_ranges_post_worksheet_cells_range_style"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/ranges/style".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'range_operate'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_ranges_post_worksheet_cells_range_style\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unmerges merged cells of this range.             
    # 
    # @param name workbook name
    # @param sheet_name worksheet name
    # @param [Hash] opts the optional parameters
    # @option opts [Range] :range range in worksheet 
    # @option opts [String] :folder Workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_ranges_post_worksheet_cells_range_unmerge(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_ranges_post_worksheet_cells_range_unmerge_with_http_info(name, sheet_name, opts)
      return data
    end

    # Unmerges merged cells of this range.             
    # 
    # @param name workbook name
    # @param sheet_name worksheet name
    # @param [Hash] opts the optional parameters
    # @option opts [Range] :range range in worksheet 
    # @option opts [String] :folder Workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_ranges_post_worksheet_cells_range_unmerge_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_ranges_post_worksheet_cells_range_unmerge ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_ranges_post_worksheet_cells_range_unmerge"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_ranges_post_worksheet_cells_range_unmerge"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/ranges/unmerge".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'range'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_ranges_post_worksheet_cells_range_unmerge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Puts a value into the range, if appropriate the value will be converted to other data type and cell's number format will be reset.             
    # 
    # @param name workbook name
    # @param sheet_name worksheet name
    # @param value Input value
    # @param [Hash] opts the optional parameters
    # @option opts [Range] :range range in worksheet 
    # @option opts [BOOLEAN] :is_converted True: converted to other data type if appropriate. (default to false)
    # @option opts [BOOLEAN] :set_style True: set the number format to cell&#39;s style when converting to other data type (default to false)
    # @option opts [String] :folder Workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_ranges_post_worksheet_cells_range_value(name, sheet_name, value, opts = {})
      data, _status_code, _headers = cells_ranges_post_worksheet_cells_range_value_with_http_info(name, sheet_name, value, opts)
      return data
    end

    # Puts a value into the range, if appropriate the value will be converted to other data type and cell&#39;s number format will be reset.             
    # 
    # @param name workbook name
    # @param sheet_name worksheet name
    # @param value Input value
    # @param [Hash] opts the optional parameters
    # @option opts [Range] :range range in worksheet 
    # @option opts [BOOLEAN] :is_converted True: converted to other data type if appropriate.
    # @option opts [BOOLEAN] :set_style True: set the number format to cell&#39;s style when converting to other data type
    # @option opts [String] :folder Workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_ranges_post_worksheet_cells_range_value_with_http_info(name, sheet_name, value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_ranges_post_worksheet_cells_range_value ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_ranges_post_worksheet_cells_range_value"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_ranges_post_worksheet_cells_range_value"
      end
      # verify the required parameter 'value' is set
      if @api_client.config.client_side_validation && value.nil?
        fail ArgumentError, "Missing the required parameter 'value' when calling CellsApi.cells_ranges_post_worksheet_cells_range_value"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/ranges/value".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'value'] = value
      query_params[:'isConverted'] = opts[:'is_converted'] if !opts[:'is_converted'].nil?
      query_params[:'setStyle'] = opts[:'set_style'] if !opts[:'set_style'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'range'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_ranges_post_worksheet_cells_range_value\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # copy range in the worksheet
    # 
    # @param name workbook name
    # @param sheet_name worksheet name
    # @param [Hash] opts the optional parameters
    # @option opts [RangeCopyRequest] :range_operate copydata,copystyle,copyto,copyvalue
    # @option opts [String] :folder Workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_ranges_post_worksheet_cells_ranges(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_ranges_post_worksheet_cells_ranges_with_http_info(name, sheet_name, opts)
      return data
    end

    # copy range in the worksheet
    # 
    # @param name workbook name
    # @param sheet_name worksheet name
    # @param [Hash] opts the optional parameters
    # @option opts [RangeCopyRequest] :range_operate copydata,copystyle,copyto,copyvalue
    # @option opts [String] :folder Workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_ranges_post_worksheet_cells_ranges_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_ranges_post_worksheet_cells_ranges ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_ranges_post_worksheet_cells_ranges"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_ranges_post_worksheet_cells_ranges"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/ranges".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'range_operate'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_ranges_post_worksheet_cells_ranges\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Insert range in the worksheet
    # 
    # @param name workbook name
    # @param sheet_name worksheet name
    # @param range range
    # @param shift Represent the shift options when deleting a range of cells. (Right,Down) 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_ranges_put_worksheet_cells_range(name, sheet_name, range, shift, opts = {})
      data, _status_code, _headers = cells_ranges_put_worksheet_cells_range_with_http_info(name, sheet_name, range, shift, opts)
      return data
    end

    # Insert range in the worksheet
    # 
    # @param name workbook name
    # @param sheet_name worksheet name
    # @param range range
    # @param shift Represent the shift options when deleting a range of cells. (Right,Down) 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_ranges_put_worksheet_cells_range_with_http_info(name, sheet_name, range, shift, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_ranges_put_worksheet_cells_range ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_ranges_put_worksheet_cells_range"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_ranges_put_worksheet_cells_range"
      end
      # verify the required parameter 'range' is set
      if @api_client.config.client_side_validation && range.nil?
        fail ArgumentError, "Missing the required parameter 'range' when calling CellsApi.cells_ranges_put_worksheet_cells_range"
      end
      # verify the required parameter 'shift' is set
      if @api_client.config.client_side_validation && shift.nil?
        fail ArgumentError, "Missing the required parameter 'shift' when calling CellsApi.cells_ranges_put_worksheet_cells_range"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/ranges".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'range'] = range
      query_params[:'shift'] = shift
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_ranges_put_worksheet_cells_range\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert document and save result to storage.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [SaveOptions] :save_options Save options.
    # @option opts [String] :newfilename The new file name.
    # @option opts [BOOLEAN] :is_auto_fit_rows Autofit rows. (default to false)
    # @option opts [BOOLEAN] :is_auto_fit_columns Autofit columns. (default to false)
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [SaveResponse]
    def cells_save_as_post_document_save_as(name, opts = {})
      data, _status_code, _headers = cells_save_as_post_document_save_as_with_http_info(name, opts)
      return data
    end

    # Convert document and save result to storage.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [SaveOptions] :save_options Save options.
    # @option opts [String] :newfilename The new file name.
    # @option opts [BOOLEAN] :is_auto_fit_rows Autofit rows.
    # @option opts [BOOLEAN] :is_auto_fit_columns Autofit columns.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(SaveResponse, Fixnum, Hash)>] SaveResponse data, response status code and response headers
    def cells_save_as_post_document_save_as_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_save_as_post_document_save_as ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_save_as_post_document_save_as"
      end
      # resource path
      local_var_path = "/cells/{name}/SaveAs".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'newfilename'] = opts[:'newfilename'] if !opts[:'newfilename'].nil?
      query_params[:'isAutoFitRows'] = opts[:'is_auto_fit_rows'] if !opts[:'is_auto_fit_rows'].nil?
      query_params[:'isAutoFitColumns'] = opts[:'is_auto_fit_columns'] if !opts[:'is_auto_fit_columns'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'save_options'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaveResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_save_as_post_document_save_as\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a shape in worksheet
    # 
    # @param name document name.
    # @param sheet_name worksheet name.
    # @param shapeindex shape index in worksheet shapes.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_shapes_delete_worksheet_shape(name, sheet_name, shapeindex, opts = {})
      data, _status_code, _headers = cells_shapes_delete_worksheet_shape_with_http_info(name, sheet_name, shapeindex, opts)
      return data
    end

    # Delete a shape in worksheet
    # 
    # @param name document name.
    # @param sheet_name worksheet name.
    # @param shapeindex shape index in worksheet shapes.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_shapes_delete_worksheet_shape_with_http_info(name, sheet_name, shapeindex, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_shapes_delete_worksheet_shape ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_shapes_delete_worksheet_shape"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_shapes_delete_worksheet_shape"
      end
      # verify the required parameter 'shapeindex' is set
      if @api_client.config.client_side_validation && shapeindex.nil?
        fail ArgumentError, "Missing the required parameter 'shapeindex' when calling CellsApi.cells_shapes_delete_worksheet_shape"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/shapes/{shapeindex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'shapeindex' + '}', shapeindex.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_shapes_delete_worksheet_shape\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # delete all shapes in worksheet
    # 
    # @param name document name.
    # @param sheet_name worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_shapes_delete_worksheet_shapes(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_shapes_delete_worksheet_shapes_with_http_info(name, sheet_name, opts)
      return data
    end

    # delete all shapes in worksheet
    # 
    # @param name document name.
    # @param sheet_name worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_shapes_delete_worksheet_shapes_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_shapes_delete_worksheet_shapes ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_shapes_delete_worksheet_shapes"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_shapes_delete_worksheet_shapes"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/shapes".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_shapes_delete_worksheet_shapes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get worksheet shape
    # 
    # @param name document name.
    # @param sheet_name worksheet name.
    # @param shapeindex shape index in worksheet shapes.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [ShapeResponse]
    def cells_shapes_get_worksheet_shape(name, sheet_name, shapeindex, opts = {})
      data, _status_code, _headers = cells_shapes_get_worksheet_shape_with_http_info(name, sheet_name, shapeindex, opts)
      return data
    end

    # Get worksheet shape
    # 
    # @param name document name.
    # @param sheet_name worksheet name.
    # @param shapeindex shape index in worksheet shapes.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(ShapeResponse, Fixnum, Hash)>] ShapeResponse data, response status code and response headers
    def cells_shapes_get_worksheet_shape_with_http_info(name, sheet_name, shapeindex, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_shapes_get_worksheet_shape ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_shapes_get_worksheet_shape"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_shapes_get_worksheet_shape"
      end
      # verify the required parameter 'shapeindex' is set
      if @api_client.config.client_side_validation && shapeindex.nil?
        fail ArgumentError, "Missing the required parameter 'shapeindex' when calling CellsApi.cells_shapes_get_worksheet_shape"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/shapes/{shapeindex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'shapeindex' + '}', shapeindex.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ShapeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_shapes_get_worksheet_shape\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get worksheet shapes 
    # 
    # @param name document name.
    # @param sheet_name worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [ShapesResponse]
    def cells_shapes_get_worksheet_shapes(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_shapes_get_worksheet_shapes_with_http_info(name, sheet_name, opts)
      return data
    end

    # Get worksheet shapes 
    # 
    # @param name document name.
    # @param sheet_name worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(ShapesResponse, Fixnum, Hash)>] ShapesResponse data, response status code and response headers
    def cells_shapes_get_worksheet_shapes_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_shapes_get_worksheet_shapes ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_shapes_get_worksheet_shapes"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_shapes_get_worksheet_shapes"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/shapes".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ShapesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_shapes_get_worksheet_shapes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a shape in worksheet
    # 
    # @param name document name.
    # @param sheet_name worksheet name.
    # @param shapeindex shape index in worksheet shapes.
    # @param [Hash] opts the optional parameters
    # @option opts [Shape] :dto 
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_shapes_post_worksheet_shape(name, sheet_name, shapeindex, opts = {})
      data, _status_code, _headers = cells_shapes_post_worksheet_shape_with_http_info(name, sheet_name, shapeindex, opts)
      return data
    end

    # Update a shape in worksheet
    # 
    # @param name document name.
    # @param sheet_name worksheet name.
    # @param shapeindex shape index in worksheet shapes.
    # @param [Hash] opts the optional parameters
    # @option opts [Shape] :dto 
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_shapes_post_worksheet_shape_with_http_info(name, sheet_name, shapeindex, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_shapes_post_worksheet_shape ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_shapes_post_worksheet_shape"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_shapes_post_worksheet_shape"
      end
      # verify the required parameter 'shapeindex' is set
      if @api_client.config.client_side_validation && shapeindex.nil?
        fail ArgumentError, "Missing the required parameter 'shapeindex' when calling CellsApi.cells_shapes_post_worksheet_shape"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/shapes/{shapeindex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'shapeindex' + '}', shapeindex.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'dto'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_shapes_post_worksheet_shape\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add shape in worksheet
    # 
    # @param name document name.
    # @param sheet_name worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [Shape] :shape_dto 
    # @option opts [String] :drawing_type shape object type
    # @option opts [Integer] :upper_left_row Upper left row index.
    # @option opts [Integer] :upper_left_column Upper left column index.
    # @option opts [Integer] :top Represents the vertical offset of Spinner from its left row, in unit of pixel.
    # @option opts [Integer] :left Represents the horizontal offset of Spinner from its left column, in unit of pixel.
    # @option opts [Integer] :width Represents the height of Spinner, in unit of pixel.
    # @option opts [Integer] :height Represents the width of Spinner, in unit of pixel.
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_shapes_put_worksheet_shape(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_shapes_put_worksheet_shape_with_http_info(name, sheet_name, opts)
      return data
    end

    # Add shape in worksheet
    # 
    # @param name document name.
    # @param sheet_name worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [Shape] :shape_dto 
    # @option opts [String] :drawing_type shape object type
    # @option opts [Integer] :upper_left_row Upper left row index.
    # @option opts [Integer] :upper_left_column Upper left column index.
    # @option opts [Integer] :top Represents the vertical offset of Spinner from its left row, in unit of pixel.
    # @option opts [Integer] :left Represents the horizontal offset of Spinner from its left column, in unit of pixel.
    # @option opts [Integer] :width Represents the height of Spinner, in unit of pixel.
    # @option opts [Integer] :height Represents the width of Spinner, in unit of pixel.
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_shapes_put_worksheet_shape_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_shapes_put_worksheet_shape ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_shapes_put_worksheet_shape"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_shapes_put_worksheet_shape"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/shapes".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'drawingType'] = opts[:'drawing_type'] if !opts[:'drawing_type'].nil?
      query_params[:'upperLeftRow'] = opts[:'upper_left_row'] if !opts[:'upper_left_row'].nil?
      query_params[:'upperLeftColumn'] = opts[:'upper_left_column'] if !opts[:'upper_left_column'].nil?
      query_params[:'top'] = opts[:'top'] if !opts[:'top'].nil?
      query_params[:'left'] = opts[:'left'] if !opts[:'left'].nil?
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'shape_dto'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_shapes_put_worksheet_shape\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param sparkline_group_index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_sparkline_groups_delete_worksheet_sparkline_group(name, sheet_name, sparkline_group_index, opts = {})
      data, _status_code, _headers = cells_sparkline_groups_delete_worksheet_sparkline_group_with_http_info(name, sheet_name, sparkline_group_index, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param sparkline_group_index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_sparkline_groups_delete_worksheet_sparkline_group_with_http_info(name, sheet_name, sparkline_group_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_sparkline_groups_delete_worksheet_sparkline_group ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_sparkline_groups_delete_worksheet_sparkline_group"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_sparkline_groups_delete_worksheet_sparkline_group"
      end
      # verify the required parameter 'sparkline_group_index' is set
      if @api_client.config.client_side_validation && sparkline_group_index.nil?
        fail ArgumentError, "Missing the required parameter 'sparkline_group_index' when calling CellsApi.cells_sparkline_groups_delete_worksheet_sparkline_group"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/sparklinegroups/{sparklineGroupIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'sparklineGroupIndex' + '}', sparkline_group_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_sparkline_groups_delete_worksheet_sparkline_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_sparkline_groups_delete_worksheet_sparkline_groups(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_sparkline_groups_delete_worksheet_sparkline_groups_with_http_info(name, sheet_name, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_sparkline_groups_delete_worksheet_sparkline_groups_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_sparkline_groups_delete_worksheet_sparkline_groups ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_sparkline_groups_delete_worksheet_sparkline_groups"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_sparkline_groups_delete_worksheet_sparkline_groups"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/sparklinegroups".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_sparkline_groups_delete_worksheet_sparkline_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param sparkline_group_index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [SparklineGroupResponse]
    def cells_sparkline_groups_get_worksheet_sparkline_group(name, sheet_name, sparkline_group_index, opts = {})
      data, _status_code, _headers = cells_sparkline_groups_get_worksheet_sparkline_group_with_http_info(name, sheet_name, sparkline_group_index, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param sparkline_group_index 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(SparklineGroupResponse, Fixnum, Hash)>] SparklineGroupResponse data, response status code and response headers
    def cells_sparkline_groups_get_worksheet_sparkline_group_with_http_info(name, sheet_name, sparkline_group_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_sparkline_groups_get_worksheet_sparkline_group ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_sparkline_groups_get_worksheet_sparkline_group"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_sparkline_groups_get_worksheet_sparkline_group"
      end
      # verify the required parameter 'sparkline_group_index' is set
      if @api_client.config.client_side_validation && sparkline_group_index.nil?
        fail ArgumentError, "Missing the required parameter 'sparkline_group_index' when calling CellsApi.cells_sparkline_groups_get_worksheet_sparkline_group"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/sparklinegroups/{sparklineGroupIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'sparklineGroupIndex' + '}', sparkline_group_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SparklineGroupResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_sparkline_groups_get_worksheet_sparkline_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get worksheet charts description.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [SparklineGroupsResponse]
    def cells_sparkline_groups_get_worksheet_sparkline_groups(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_sparkline_groups_get_worksheet_sparkline_groups_with_http_info(name, sheet_name, opts)
      return data
    end

    # Get worksheet charts description.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(SparklineGroupsResponse, Fixnum, Hash)>] SparklineGroupsResponse data, response status code and response headers
    def cells_sparkline_groups_get_worksheet_sparkline_groups_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_sparkline_groups_get_worksheet_sparkline_groups ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_sparkline_groups_get_worksheet_sparkline_groups"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_sparkline_groups_get_worksheet_sparkline_groups"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/sparklinegroups".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SparklineGroupsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_sparkline_groups_get_worksheet_sparkline_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param sparkline_group_index 
    # @param sparkline_group 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_sparkline_groups_post_worksheet_sparkline_group(name, sheet_name, sparkline_group_index, sparkline_group, opts = {})
      data, _status_code, _headers = cells_sparkline_groups_post_worksheet_sparkline_group_with_http_info(name, sheet_name, sparkline_group_index, sparkline_group, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param sparkline_group_index 
    # @param sparkline_group 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_sparkline_groups_post_worksheet_sparkline_group_with_http_info(name, sheet_name, sparkline_group_index, sparkline_group, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_sparkline_groups_post_worksheet_sparkline_group ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_sparkline_groups_post_worksheet_sparkline_group"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_sparkline_groups_post_worksheet_sparkline_group"
      end
      # verify the required parameter 'sparkline_group_index' is set
      if @api_client.config.client_side_validation && sparkline_group_index.nil?
        fail ArgumentError, "Missing the required parameter 'sparkline_group_index' when calling CellsApi.cells_sparkline_groups_post_worksheet_sparkline_group"
      end
      # verify the required parameter 'sparkline_group' is set
      if @api_client.config.client_side_validation && sparkline_group.nil?
        fail ArgumentError, "Missing the required parameter 'sparkline_group' when calling CellsApi.cells_sparkline_groups_post_worksheet_sparkline_group"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/sparklinegroups/{sparklineGroupIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'sparklineGroupIndex' + '}', sparkline_group_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(sparkline_group)
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_sparkline_groups_post_worksheet_sparkline_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param type 
    # @param data_range 
    # @param is_vertical 
    # @param location_range 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_sparkline_groups_put_worksheet_sparkline_group(name, sheet_name, type, data_range, is_vertical, location_range, opts = {})
      data, _status_code, _headers = cells_sparkline_groups_put_worksheet_sparkline_group_with_http_info(name, sheet_name, type, data_range, is_vertical, location_range, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param type 
    # @param data_range 
    # @param is_vertical 
    # @param location_range 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_sparkline_groups_put_worksheet_sparkline_group_with_http_info(name, sheet_name, type, data_range, is_vertical, location_range, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_sparkline_groups_put_worksheet_sparkline_group ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_sparkline_groups_put_worksheet_sparkline_group"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_sparkline_groups_put_worksheet_sparkline_group"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling CellsApi.cells_sparkline_groups_put_worksheet_sparkline_group"
      end
      # verify the required parameter 'data_range' is set
      if @api_client.config.client_side_validation && data_range.nil?
        fail ArgumentError, "Missing the required parameter 'data_range' when calling CellsApi.cells_sparkline_groups_put_worksheet_sparkline_group"
      end
      # verify the required parameter 'is_vertical' is set
      if @api_client.config.client_side_validation && is_vertical.nil?
        fail ArgumentError, "Missing the required parameter 'is_vertical' when calling CellsApi.cells_sparkline_groups_put_worksheet_sparkline_group"
      end
      # verify the required parameter 'location_range' is set
      if @api_client.config.client_side_validation && location_range.nil?
        fail ArgumentError, "Missing the required parameter 'location_range' when calling CellsApi.cells_sparkline_groups_put_worksheet_sparkline_group"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/sparklinegroups".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'type'] = type
      query_params[:'dataRange'] = data_range
      query_params[:'isVertical'] = is_vertical
      query_params[:'locationRange'] = location_range
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_sparkline_groups_put_worksheet_sparkline_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Run tasks  
    # 
    # @param task_data 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def cells_task_post_run_task(task_data, opts = {})
      data, _status_code, _headers = cells_task_post_run_task_with_http_info(task_data, opts)
      return data
    end

    # Run tasks  
    # 
    # @param task_data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def cells_task_post_run_task_with_http_info(task_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_task_post_run_task ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'task_data' is set
      if @api_client.config.client_side_validation && task_data.nil?
        fail ArgumentError, "Missing the required parameter 'task_data' when calling CellsApi.cells_task_post_run_task"
      end
      # resource path
      local_var_path = "/cells/task/runtask"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(task_data)
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_task_post_run_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Decrypt document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [WorkbookEncryptionRequest] :encryption Encryption settings, only password can be specified.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_workbook_delete_decrypt_document(name, opts = {})
      data, _status_code, _headers = cells_workbook_delete_decrypt_document_with_http_info(name, opts)
      return data
    end

    # Decrypt document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [WorkbookEncryptionRequest] :encryption Encryption settings, only password can be specified.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_workbook_delete_decrypt_document_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_delete_decrypt_document ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_delete_decrypt_document"
      end
      # resource path
      local_var_path = "/cells/{name}/encryption".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'encryption'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_delete_decrypt_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unprotect document from changes.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_workbook_delete_document_unprotect_from_changes(name, opts = {})
      data, _status_code, _headers = cells_workbook_delete_document_unprotect_from_changes_with_http_info(name, opts)
      return data
    end

    # Unprotect document from changes.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_workbook_delete_document_unprotect_from_changes_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_delete_document_unprotect_from_changes ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_delete_document_unprotect_from_changes"
      end
      # resource path
      local_var_path = "/cells/{name}/writeProtection".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_delete_document_unprotect_from_changes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unprotect document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [WorkbookProtectionRequest] :protection Protection settings, only password can be specified.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_workbook_delete_unprotect_document(name, opts = {})
      data, _status_code, _headers = cells_workbook_delete_unprotect_document_with_http_info(name, opts)
      return data
    end

    # Unprotect document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [WorkbookProtectionRequest] :protection Protection settings, only password can be specified.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_workbook_delete_unprotect_document_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_delete_unprotect_document ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_delete_unprotect_document"
      end
      # resource path
      local_var_path = "/cells/{name}/protection".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'protection'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_delete_unprotect_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set worksheet background image.
    # 
    # @param name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_workbook_delete_workbook_background(name, opts = {})
      data, _status_code, _headers = cells_workbook_delete_workbook_background_with_http_info(name, opts)
      return data
    end

    # Set worksheet background image.
    # 
    # @param name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_workbook_delete_workbook_background_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_delete_workbook_background ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_delete_workbook_background"
      end
      # resource path
      local_var_path = "/cells/{name}/background".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_delete_workbook_background\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Clean workbook's names.
    # 
    # @param name The workbook name.
    # @param name_name The name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_workbook_delete_workbook_name(name, name_name, opts = {})
      data, _status_code, _headers = cells_workbook_delete_workbook_name_with_http_info(name, name_name, opts)
      return data
    end

    # Clean workbook&#39;s names.
    # 
    # @param name The workbook name.
    # @param name_name The name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_workbook_delete_workbook_name_with_http_info(name, name_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_delete_workbook_name ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_delete_workbook_name"
      end
      # verify the required parameter 'name_name' is set
      if @api_client.config.client_side_validation && name_name.nil?
        fail ArgumentError, "Missing the required parameter 'name_name' when calling CellsApi.cells_workbook_delete_workbook_name"
      end
      # resource path
      local_var_path = "/cells/{name}/names/{nameName}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'nameName' + '}', name_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_delete_workbook_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Clean workbook's names.
    # 
    # @param name The workbook name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_workbook_delete_workbook_names(name, opts = {})
      data, _status_code, _headers = cells_workbook_delete_workbook_names_with_http_info(name, opts)
      return data
    end

    # Clean workbook&#39;s names.
    # 
    # @param name The workbook name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_workbook_delete_workbook_names_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_delete_workbook_names ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_delete_workbook_names"
      end
      # resource path
      local_var_path = "/cells/{name}/names".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_delete_workbook_names\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read workbook info or export.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :password The document password.
    # @option opts [String] :format The exported file format.
    # @option opts [BOOLEAN] :is_auto_fit Set document rows to be autofit. (default to false)
    # @option opts [BOOLEAN] :only_save_table Only save table data. (default to false)
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @option opts [String] :out_path The document output folder.
    # @return [File]
    def cells_workbook_get_workbook(name, opts = {})
      data, _status_code, _headers = cells_workbook_get_workbook_with_http_info(name, opts)
      return data
    end

    # Read workbook info or export.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :password The document password.
    # @option opts [String] :format The exported file format.
    # @option opts [BOOLEAN] :is_auto_fit Set document rows to be autofit.
    # @option opts [BOOLEAN] :only_save_table Only save table data.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @option opts [String] :out_path The document output folder.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def cells_workbook_get_workbook_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_get_workbook ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_get_workbook"
      end
      # resource path
      local_var_path = "/cells/{name}".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'password'] = opts[:'password'] if !opts[:'password'].nil?
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?
      query_params[:'isAutoFit'] = opts[:'is_auto_fit'] if !opts[:'is_auto_fit'].nil?
      query_params[:'onlySaveTable'] = opts[:'only_save_table'] if !opts[:'only_save_table'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?
      query_params[:'outPath'] = opts[:'out_path'] if !opts[:'out_path'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_get_workbook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read workbook default style info.
    # 
    # @param name The workbook name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [StyleResponse]
    def cells_workbook_get_workbook_default_style(name, opts = {})
      data, _status_code, _headers = cells_workbook_get_workbook_default_style_with_http_info(name, opts)
      return data
    end

    # Read workbook default style info.
    # 
    # @param name The workbook name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(StyleResponse, Fixnum, Hash)>] StyleResponse data, response status code and response headers
    def cells_workbook_get_workbook_default_style_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_get_workbook_default_style ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_get_workbook_default_style"
      end
      # resource path
      local_var_path = "/cells/{name}/defaultstyle".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'StyleResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_get_workbook_default_style\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read workbook's name.
    # 
    # @param name The workbook name.
    # @param name_name The name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [NameResponse]
    def cells_workbook_get_workbook_name(name, name_name, opts = {})
      data, _status_code, _headers = cells_workbook_get_workbook_name_with_http_info(name, name_name, opts)
      return data
    end

    # Read workbook&#39;s name.
    # 
    # @param name The workbook name.
    # @param name_name The name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(NameResponse, Fixnum, Hash)>] NameResponse data, response status code and response headers
    def cells_workbook_get_workbook_name_with_http_info(name, name_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_get_workbook_name ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_get_workbook_name"
      end
      # verify the required parameter 'name_name' is set
      if @api_client.config.client_side_validation && name_name.nil?
        fail ArgumentError, "Missing the required parameter 'name_name' when calling CellsApi.cells_workbook_get_workbook_name"
      end
      # resource path
      local_var_path = "/cells/{name}/names/{nameName}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'nameName' + '}', name_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'NameResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_get_workbook_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get workbook's name value.
    # 
    # @param name The workbook name.
    # @param name_name The name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [RangeValueResponse]
    def cells_workbook_get_workbook_name_value(name, name_name, opts = {})
      data, _status_code, _headers = cells_workbook_get_workbook_name_value_with_http_info(name, name_name, opts)
      return data
    end

    # Get workbook&#39;s name value.
    # 
    # @param name The workbook name.
    # @param name_name The name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(RangeValueResponse, Fixnum, Hash)>] RangeValueResponse data, response status code and response headers
    def cells_workbook_get_workbook_name_value_with_http_info(name, name_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_get_workbook_name_value ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_get_workbook_name_value"
      end
      # verify the required parameter 'name_name' is set
      if @api_client.config.client_side_validation && name_name.nil?
        fail ArgumentError, "Missing the required parameter 'name_name' when calling CellsApi.cells_workbook_get_workbook_name_value"
      end
      # resource path
      local_var_path = "/cells/{name}/names/{nameName}/value".sub('{' + 'name' + '}', name.to_s).sub('{' + 'nameName' + '}', name_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RangeValueResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_get_workbook_name_value\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read workbook's names.
    # 
    # @param name The workbook name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [NamesResponse]
    def cells_workbook_get_workbook_names(name, opts = {})
      data, _status_code, _headers = cells_workbook_get_workbook_names_with_http_info(name, opts)
      return data
    end

    # Read workbook&#39;s names.
    # 
    # @param name The workbook name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(NamesResponse, Fixnum, Hash)>] NamesResponse data, response status code and response headers
    def cells_workbook_get_workbook_names_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_get_workbook_names ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_get_workbook_names"
      end
      # resource path
      local_var_path = "/cells/{name}/names".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'NamesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_get_workbook_names\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Workbook Settings DTO
    # 
    # @param name Document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [WorkbookSettingsResponse]
    def cells_workbook_get_workbook_settings(name, opts = {})
      data, _status_code, _headers = cells_workbook_get_workbook_settings_with_http_info(name, opts)
      return data
    end

    # Get Workbook Settings DTO
    # 
    # @param name Document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(WorkbookSettingsResponse, Fixnum, Hash)>] WorkbookSettingsResponse data, response status code and response headers
    def cells_workbook_get_workbook_settings_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_get_workbook_settings ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_get_workbook_settings"
      end
      # resource path
      local_var_path = "/cells/{name}/settings".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorkbookSettingsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_get_workbook_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read workbook's text items.
    # 
    # @param name The workbook name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [TextItemsResponse]
    def cells_workbook_get_workbook_text_items(name, opts = {})
      data, _status_code, _headers = cells_workbook_get_workbook_text_items_with_http_info(name, opts)
      return data
    end

    # Read workbook&#39;s text items.
    # 
    # @param name The workbook name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(TextItemsResponse, Fixnum, Hash)>] TextItemsResponse data, response status code and response headers
    def cells_workbook_get_workbook_text_items_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_get_workbook_text_items ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_get_workbook_text_items"
      end
      # resource path
      local_var_path = "/cells/{name}/textItems".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextItemsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_get_workbook_text_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Autofit workbook columns.
    # 
    # @param name Document name.
    # @param [Hash] opts the optional parameters
    # @option opts [AutoFitterOptions] :auto_fitter_options Auto Fitter Options.
    # @option opts [Integer] :start_column Start column.
    # @option opts [Integer] :end_column End column.
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_workbook_post_autofit_workbook_columns(name, opts = {})
      data, _status_code, _headers = cells_workbook_post_autofit_workbook_columns_with_http_info(name, opts)
      return data
    end

    # Autofit workbook columns.
    # 
    # @param name Document name.
    # @param [Hash] opts the optional parameters
    # @option opts [AutoFitterOptions] :auto_fitter_options Auto Fitter Options.
    # @option opts [Integer] :start_column Start column.
    # @option opts [Integer] :end_column End column.
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_workbook_post_autofit_workbook_columns_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_post_autofit_workbook_columns ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_post_autofit_workbook_columns"
      end
      # resource path
      local_var_path = "/cells/{name}/autofitcolumns".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'startColumn'] = opts[:'start_column'] if !opts[:'start_column'].nil?
      query_params[:'endColumn'] = opts[:'end_column'] if !opts[:'end_column'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'auto_fitter_options'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_post_autofit_workbook_columns\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Autofit workbook rows.
    # 
    # @param name Document name.
    # @param [Hash] opts the optional parameters
    # @option opts [AutoFitterOptions] :auto_fitter_options Auto Fitter Options.
    # @option opts [Integer] :start_row Start row.
    # @option opts [Integer] :end_row End row.
    # @option opts [BOOLEAN] :only_auto Only auto. (default to false)
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_workbook_post_autofit_workbook_rows(name, opts = {})
      data, _status_code, _headers = cells_workbook_post_autofit_workbook_rows_with_http_info(name, opts)
      return data
    end

    # Autofit workbook rows.
    # 
    # @param name Document name.
    # @param [Hash] opts the optional parameters
    # @option opts [AutoFitterOptions] :auto_fitter_options Auto Fitter Options.
    # @option opts [Integer] :start_row Start row.
    # @option opts [Integer] :end_row End row.
    # @option opts [BOOLEAN] :only_auto Only auto.
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_workbook_post_autofit_workbook_rows_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_post_autofit_workbook_rows ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_post_autofit_workbook_rows"
      end
      # resource path
      local_var_path = "/cells/{name}/autofitrows".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'startRow'] = opts[:'start_row'] if !opts[:'start_row'].nil?
      query_params[:'endRow'] = opts[:'end_row'] if !opts[:'end_row'].nil?
      query_params[:'onlyAuto'] = opts[:'only_auto'] if !opts[:'only_auto'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'auto_fitter_options'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_post_autofit_workbook_rows\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Encript document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [WorkbookEncryptionRequest] :encryption Encryption parameters.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_workbook_post_encrypt_document(name, opts = {})
      data, _status_code, _headers = cells_workbook_post_encrypt_document_with_http_info(name, opts)
      return data
    end

    # Encript document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [WorkbookEncryptionRequest] :encryption Encryption parameters.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_workbook_post_encrypt_document_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_post_encrypt_document ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_post_encrypt_document"
      end
      # resource path
      local_var_path = "/cells/{name}/encryption".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'encryption'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_post_encrypt_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param import_data 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_workbook_post_import_data(name, import_data, opts = {})
      data, _status_code, _headers = cells_workbook_post_import_data_with_http_info(name, import_data, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param import_data 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_workbook_post_import_data_with_http_info(name, import_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_post_import_data ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_post_import_data"
      end
      # verify the required parameter 'import_data' is set
      if @api_client.config.client_side_validation && import_data.nil?
        fail ArgumentError, "Missing the required parameter 'import_data' when calling CellsApi.cells_workbook_post_import_data"
      end
      # resource path
      local_var_path = "/cells/{name}/importdata".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(import_data)
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_post_import_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Protect document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [WorkbookProtectionRequest] :protection The protection settings.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_workbook_post_protect_document(name, opts = {})
      data, _status_code, _headers = cells_workbook_post_protect_document_with_http_info(name, opts)
      return data
    end

    # Protect document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [WorkbookProtectionRequest] :protection The protection settings.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_workbook_post_protect_document_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_post_protect_document ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_post_protect_document"
      end
      # resource path
      local_var_path = "/cells/{name}/protection".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'protection'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_post_protect_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Calculate all formulas in workbook.
    # 
    # @param name Document name.
    # @param [Hash] opts the optional parameters
    # @option opts [CalculationOptions] :options Calculation Options.
    # @option opts [BOOLEAN] :ignore_error ignore Error.
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_workbook_post_workbook_calculate_formula(name, opts = {})
      data, _status_code, _headers = cells_workbook_post_workbook_calculate_formula_with_http_info(name, opts)
      return data
    end

    # Calculate all formulas in workbook.
    # 
    # @param name Document name.
    # @param [Hash] opts the optional parameters
    # @option opts [CalculationOptions] :options Calculation Options.
    # @option opts [BOOLEAN] :ignore_error ignore Error.
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_workbook_post_workbook_calculate_formula_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_post_workbook_calculate_formula ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_post_workbook_calculate_formula"
      end
      # resource path
      local_var_path = "/cells/{name}/calculateformula".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'ignoreError'] = opts[:'ignore_error'] if !opts[:'ignore_error'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'options'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_post_workbook_calculate_formula\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Smart marker processing result.
    # 
    # @param name The workbook name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :xml_file The xml file full path, if empty the data is read from request body.
    # @option opts [String] :folder The workbook folder full path.
    # @option opts [String] :storage_name storage name.
    # @option opts [String] :out_path Path to save result
    # @return [File]
    def cells_workbook_post_workbook_get_smart_marker_result(name, opts = {})
      data, _status_code, _headers = cells_workbook_post_workbook_get_smart_marker_result_with_http_info(name, opts)
      return data
    end

    # Smart marker processing result.
    # 
    # @param name The workbook name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :xml_file The xml file full path, if empty the data is read from request body.
    # @option opts [String] :folder The workbook folder full path.
    # @option opts [String] :storage_name storage name.
    # @option opts [String] :out_path Path to save result
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def cells_workbook_post_workbook_get_smart_marker_result_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_post_workbook_get_smart_marker_result ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_post_workbook_get_smart_marker_result"
      end
      # resource path
      local_var_path = "/cells/{name}/smartmarker".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'xmlFile'] = opts[:'xml_file'] if !opts[:'xml_file'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?
      query_params[:'outPath'] = opts[:'out_path'] if !opts[:'out_path'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_post_workbook_get_smart_marker_result\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Workbook setting 
    # 
    # @param name Document name.
    # @param [Hash] opts the optional parameters
    # @option opts [WorkbookSettings] :settings Workbook Setting DTO
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_workbook_post_workbook_settings(name, opts = {})
      data, _status_code, _headers = cells_workbook_post_workbook_settings_with_http_info(name, opts)
      return data
    end

    # Update Workbook setting 
    # 
    # @param name Document name.
    # @param [Hash] opts the optional parameters
    # @option opts [WorkbookSettings] :settings Workbook Setting DTO
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_workbook_post_workbook_settings_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_post_workbook_settings ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_post_workbook_settings"
      end
      # resource path
      local_var_path = "/cells/{name}/settings".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'settings'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_post_workbook_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Split workbook.
    # 
    # @param name The workbook name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format Split format.
    # @option opts [Integer] :from Start worksheet index. (default to 0)
    # @option opts [Integer] :to End worksheet index. (default to 0)
    # @option opts [Integer] :horizontal_resolution Image horizontal resolution. (default to 0)
    # @option opts [Integer] :vertical_resolution Image vertical resolution. (default to 0)
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :out_folder out Folder.
    # @option opts [String] :storage_name storage name.
    # @return [SplitResultResponse]
    def cells_workbook_post_workbook_split(name, opts = {})
      data, _status_code, _headers = cells_workbook_post_workbook_split_with_http_info(name, opts)
      return data
    end

    # Split workbook.
    # 
    # @param name The workbook name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format Split format.
    # @option opts [Integer] :from Start worksheet index.
    # @option opts [Integer] :to End worksheet index.
    # @option opts [Integer] :horizontal_resolution Image horizontal resolution.
    # @option opts [Integer] :vertical_resolution Image vertical resolution.
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :out_folder out Folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(SplitResultResponse, Fixnum, Hash)>] SplitResultResponse data, response status code and response headers
    def cells_workbook_post_workbook_split_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_post_workbook_split ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_post_workbook_split"
      end
      # resource path
      local_var_path = "/cells/{name}/split".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'horizontalResolution'] = opts[:'horizontal_resolution'] if !opts[:'horizontal_resolution'].nil?
      query_params[:'verticalResolution'] = opts[:'vertical_resolution'] if !opts[:'vertical_resolution'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'outFolder'] = opts[:'out_folder'] if !opts[:'out_folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SplitResultResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_post_workbook_split\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Merge workbooks.
    # 
    # @param name Workbook name.
    # @param merge_with The workbook to merge with.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Source workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [WorkbookResponse]
    def cells_workbook_post_workbooks_merge(name, merge_with, opts = {})
      data, _status_code, _headers = cells_workbook_post_workbooks_merge_with_http_info(name, merge_with, opts)
      return data
    end

    # Merge workbooks.
    # 
    # @param name Workbook name.
    # @param merge_with The workbook to merge with.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Source workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(WorkbookResponse, Fixnum, Hash)>] WorkbookResponse data, response status code and response headers
    def cells_workbook_post_workbooks_merge_with_http_info(name, merge_with, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_post_workbooks_merge ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_post_workbooks_merge"
      end
      # verify the required parameter 'merge_with' is set
      if @api_client.config.client_side_validation && merge_with.nil?
        fail ArgumentError, "Missing the required parameter 'merge_with' when calling CellsApi.cells_workbook_post_workbooks_merge"
      end
      # resource path
      local_var_path = "/cells/{name}/merge".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'mergeWith'] = merge_with
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorkbookResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_post_workbooks_merge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Replace text.
    # 
    # @param name Document name.
    # @param old_value The old value.
    # @param new_value The new value.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [WorkbookReplaceResponse]
    def cells_workbook_post_workbooks_text_replace(name, old_value, new_value, opts = {})
      data, _status_code, _headers = cells_workbook_post_workbooks_text_replace_with_http_info(name, old_value, new_value, opts)
      return data
    end

    # Replace text.
    # 
    # @param name Document name.
    # @param old_value The old value.
    # @param new_value The new value.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(WorkbookReplaceResponse, Fixnum, Hash)>] WorkbookReplaceResponse data, response status code and response headers
    def cells_workbook_post_workbooks_text_replace_with_http_info(name, old_value, new_value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_post_workbooks_text_replace ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_post_workbooks_text_replace"
      end
      # verify the required parameter 'old_value' is set
      if @api_client.config.client_side_validation && old_value.nil?
        fail ArgumentError, "Missing the required parameter 'old_value' when calling CellsApi.cells_workbook_post_workbooks_text_replace"
      end
      # verify the required parameter 'new_value' is set
      if @api_client.config.client_side_validation && new_value.nil?
        fail ArgumentError, "Missing the required parameter 'new_value' when calling CellsApi.cells_workbook_post_workbooks_text_replace"
      end
      # resource path
      local_var_path = "/cells/{name}/replaceText".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'oldValue'] = old_value
      query_params[:'newValue'] = new_value
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorkbookReplaceResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_post_workbooks_text_replace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search text.
    # 
    # @param name Document name.
    # @param text Text sample.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [TextItemsResponse]
    def cells_workbook_post_workbooks_text_search(name, text, opts = {})
      data, _status_code, _headers = cells_workbook_post_workbooks_text_search_with_http_info(name, text, opts)
      return data
    end

    # Search text.
    # 
    # @param name Document name.
    # @param text Text sample.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(TextItemsResponse, Fixnum, Hash)>] TextItemsResponse data, response status code and response headers
    def cells_workbook_post_workbooks_text_search_with_http_info(name, text, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_post_workbooks_text_search ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_post_workbooks_text_search"
      end
      # verify the required parameter 'text' is set
      if @api_client.config.client_side_validation && text.nil?
        fail ArgumentError, "Missing the required parameter 'text' when calling CellsApi.cells_workbook_post_workbooks_text_search"
      end
      # resource path
      local_var_path = "/cells/{name}/findText".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'text'] = text
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextItemsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_post_workbooks_text_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert workbook from request content to some format.
    # 
    # @param file 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The format to convert.
    # @option opts [String] :password The workbook password.
    # @option opts [String] :out_path Path to save result
    # @return [File]
    def cells_workbook_put_convert_workbook(file, opts = {})
      data, _status_code, _headers = cells_workbook_put_convert_workbook_with_http_info(file, opts)
      return data
    end

    # Convert workbook from request content to some format.
    # 
    # @param file 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The format to convert.
    # @option opts [String] :password The workbook password.
    # @option opts [String] :out_path Path to save result
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def cells_workbook_put_convert_workbook_with_http_info(file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_put_convert_workbook ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling CellsApi.cells_workbook_put_convert_workbook"
      end
      # resource path
      local_var_path = "/cells/convert"

      # query parameters
      query_params = {}
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?
      query_params[:'password'] = opts[:'password'] if !opts[:'password'].nil?
      query_params[:'outPath'] = opts[:'out_path'] if !opts[:'out_path'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream'])
      post_body =file
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_put_convert_workbook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Protect document from changes.
    # 
    # @param name Document name.
    # @param [Hash] opts the optional parameters
    # @option opts [PasswordRequest] :password Modification password.
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_workbook_put_document_protect_from_changes(name, opts = {})
      data, _status_code, _headers = cells_workbook_put_document_protect_from_changes_with_http_info(name, opts)
      return data
    end

    # Protect document from changes.
    # 
    # @param name Document name.
    # @param [Hash] opts the optional parameters
    # @option opts [PasswordRequest] :password Modification password.
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_workbook_put_document_protect_from_changes_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_put_document_protect_from_changes ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_put_document_protect_from_changes"
      end
      # resource path
      local_var_path = "/cells/{name}/writeProtection".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'password'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_put_document_protect_from_changes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set workbook background image.
    # 
    # @param name 
    # @param png 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_workbook_put_workbook_background(name, png, opts = {})
      data, _status_code, _headers = cells_workbook_put_workbook_background_with_http_info(name, png, opts)
      return data
    end

    # Set workbook background image.
    # 
    # @param name 
    # @param png 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_workbook_put_workbook_background_with_http_info(name, png, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_put_workbook_background ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_put_workbook_background"
      end
      # verify the required parameter 'png' is set
      if @api_client.config.client_side_validation && png.nil?
        fail ArgumentError, "Missing the required parameter 'png' when calling CellsApi.cells_workbook_put_workbook_background"
      end
      # resource path
      local_var_path = "/cells/{name}/background".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(png)
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_put_workbook_background\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create new workbook using deferent methods.
    # 
    # @param name The new document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :template_file The template file, if the data not provided default workbook is created.
    # @option opts [String] :data_file Smart marker data file, if the data not provided the request content is checked for the data.
    # @option opts [BOOLEAN] :is_write_over write over file.
    # @option opts [String] :folder The new document folder.
    # @option opts [String] :storage_name storage name.
    # @return [WorkbookResponse]
    def cells_workbook_put_workbook_create(name, opts = {})
      data, _status_code, _headers = cells_workbook_put_workbook_create_with_http_info(name, opts)
      return data
    end

    # Create new workbook using deferent methods.
    # 
    # @param name The new document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :template_file The template file, if the data not provided default workbook is created.
    # @option opts [String] :data_file Smart marker data file, if the data not provided the request content is checked for the data.
    # @option opts [BOOLEAN] :is_write_over write over file.
    # @option opts [String] :folder The new document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(WorkbookResponse, Fixnum, Hash)>] WorkbookResponse data, response status code and response headers
    def cells_workbook_put_workbook_create_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_put_workbook_create ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_put_workbook_create"
      end
      # resource path
      local_var_path = "/cells/{name}".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'templateFile'] = opts[:'template_file'] if !opts[:'template_file'].nil?
      query_params[:'dataFile'] = opts[:'data_file'] if !opts[:'data_file'].nil?
      query_params[:'isWriteOver'] = opts[:'is_write_over'] if !opts[:'is_write_over'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorkbookResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_put_workbook_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set workbook background image.
    # 
    # @param name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @option opts [TextWaterMarkerRequest] :text_water_marker_request The text water marker request.
    # @return [CellsCloudResponse]
    def cells_workbook_put_workbook_water_marker(name, opts = {})
      data, _status_code, _headers = cells_workbook_put_workbook_water_marker_with_http_info(name, opts)
      return data
    end

    # Set workbook background image.
    # 
    # @param name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @option opts [TextWaterMarkerRequest] :text_water_marker_request The text water marker request.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_workbook_put_workbook_water_marker_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_workbook_put_workbook_water_marker ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_workbook_put_workbook_water_marker"
      end
      # resource path
      local_var_path = "/cells/{name}/watermarker".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'text_water_marker_request'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_workbook_put_workbook_water_marker\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete worksheet validation by index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param validation_index The validation index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_worksheet_validations_delete_worksheet_validation(name, sheet_name, validation_index, opts = {})
      data, _status_code, _headers = cells_worksheet_validations_delete_worksheet_validation_with_http_info(name, sheet_name, validation_index, opts)
      return data
    end

    # Delete worksheet validation by index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param validation_index The validation index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_worksheet_validations_delete_worksheet_validation_with_http_info(name, sheet_name, validation_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheet_validations_delete_worksheet_validation ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheet_validations_delete_worksheet_validation"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheet_validations_delete_worksheet_validation"
      end
      # verify the required parameter 'validation_index' is set
      if @api_client.config.client_side_validation && validation_index.nil?
        fail ArgumentError, "Missing the required parameter 'validation_index' when calling CellsApi.cells_worksheet_validations_delete_worksheet_validation"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/validations/{validationIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'validationIndex' + '}', validation_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheet_validations_delete_worksheet_validation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Clear all validation in worksheet.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_worksheet_validations_delete_worksheet_validations(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_worksheet_validations_delete_worksheet_validations_with_http_info(name, sheet_name, opts)
      return data
    end

    # Clear all validation in worksheet.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_worksheet_validations_delete_worksheet_validations_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheet_validations_delete_worksheet_validations ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheet_validations_delete_worksheet_validations"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheet_validations_delete_worksheet_validations"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/validations".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheet_validations_delete_worksheet_validations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get worksheet validation by index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param validation_index The validation index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [ValidationResponse]
    def cells_worksheet_validations_get_worksheet_validation(name, sheet_name, validation_index, opts = {})
      data, _status_code, _headers = cells_worksheet_validations_get_worksheet_validation_with_http_info(name, sheet_name, validation_index, opts)
      return data
    end

    # Get worksheet validation by index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param validation_index The validation index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(ValidationResponse, Fixnum, Hash)>] ValidationResponse data, response status code and response headers
    def cells_worksheet_validations_get_worksheet_validation_with_http_info(name, sheet_name, validation_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheet_validations_get_worksheet_validation ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheet_validations_get_worksheet_validation"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheet_validations_get_worksheet_validation"
      end
      # verify the required parameter 'validation_index' is set
      if @api_client.config.client_side_validation && validation_index.nil?
        fail ArgumentError, "Missing the required parameter 'validation_index' when calling CellsApi.cells_worksheet_validations_get_worksheet_validation"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/validations/{validationIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'validationIndex' + '}', validation_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ValidationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheet_validations_get_worksheet_validation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get worksheet validations.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document folder.
    # @option opts [String] :storage_name storage name.
    # @return [ValidationsResponse]
    def cells_worksheet_validations_get_worksheet_validations(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_worksheet_validations_get_worksheet_validations_with_http_info(name, sheet_name, opts)
      return data
    end

    # Get worksheet validations.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(ValidationsResponse, Fixnum, Hash)>] ValidationsResponse data, response status code and response headers
    def cells_worksheet_validations_get_worksheet_validations_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheet_validations_get_worksheet_validations ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheet_validations_get_worksheet_validations"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheet_validations_get_worksheet_validations"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/validations".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ValidationsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheet_validations_get_worksheet_validations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update worksheet validation by index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param validation_index The validation index.
    # @param [Hash] opts the optional parameters
    # @option opts [Validation] :validation 
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [ValidationResponse]
    def cells_worksheet_validations_post_worksheet_validation(name, sheet_name, validation_index, opts = {})
      data, _status_code, _headers = cells_worksheet_validations_post_worksheet_validation_with_http_info(name, sheet_name, validation_index, opts)
      return data
    end

    # Update worksheet validation by index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param validation_index The validation index.
    # @param [Hash] opts the optional parameters
    # @option opts [Validation] :validation 
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(ValidationResponse, Fixnum, Hash)>] ValidationResponse data, response status code and response headers
    def cells_worksheet_validations_post_worksheet_validation_with_http_info(name, sheet_name, validation_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheet_validations_post_worksheet_validation ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheet_validations_post_worksheet_validation"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheet_validations_post_worksheet_validation"
      end
      # verify the required parameter 'validation_index' is set
      if @api_client.config.client_side_validation && validation_index.nil?
        fail ArgumentError, "Missing the required parameter 'validation_index' when calling CellsApi.cells_worksheet_validations_post_worksheet_validation"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/validations/{validationIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'validationIndex' + '}', validation_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'validation'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ValidationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheet_validations_post_worksheet_validation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add worksheet validation at index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :range Specified cells area
    # @option opts [Validation] :validation validation
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [ValidationResponse]
    def cells_worksheet_validations_put_worksheet_validation(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_worksheet_validations_put_worksheet_validation_with_http_info(name, sheet_name, opts)
      return data
    end

    # Add worksheet validation at index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :range Specified cells area
    # @option opts [Validation] :validation validation
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(ValidationResponse, Fixnum, Hash)>] ValidationResponse data, response status code and response headers
    def cells_worksheet_validations_put_worksheet_validation_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheet_validations_put_worksheet_validation ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheet_validations_put_worksheet_validation"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheet_validations_put_worksheet_validation"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/validations".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'range'] = opts[:'range'] if !opts[:'range'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'validation'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ValidationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheet_validations_put_worksheet_validation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unprotect worksheet.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [ProtectSheetParameter] :protect_parameter with protection settings. Only password is used here.
    # @option opts [String] :folder Document folder.
    # @option opts [String] :storage_name storage name.
    # @return [WorksheetResponse]
    def cells_worksheets_delete_unprotect_worksheet(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_worksheets_delete_unprotect_worksheet_with_http_info(name, sheet_name, opts)
      return data
    end

    # Unprotect worksheet.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [ProtectSheetParameter] :protect_parameter with protection settings. Only password is used here.
    # @option opts [String] :folder Document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(WorksheetResponse, Fixnum, Hash)>] WorksheetResponse data, response status code and response headers
    def cells_worksheets_delete_unprotect_worksheet_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_delete_unprotect_worksheet ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_delete_unprotect_worksheet"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_delete_unprotect_worksheet"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/protection".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'protect_parameter'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorksheetResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_delete_unprotect_worksheet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete worksheet.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [WorksheetsResponse]
    def cells_worksheets_delete_worksheet(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_worksheets_delete_worksheet_with_http_info(name, sheet_name, opts)
      return data
    end

    # Delete worksheet.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(WorksheetsResponse, Fixnum, Hash)>] WorksheetsResponse data, response status code and response headers
    def cells_worksheets_delete_worksheet_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_delete_worksheet ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_delete_worksheet"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_delete_worksheet"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorksheetsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_delete_worksheet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set worksheet background image.
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_worksheets_delete_worksheet_background(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_worksheets_delete_worksheet_background_with_http_info(name, sheet_name, opts)
      return data
    end

    # Set worksheet background image.
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_worksheets_delete_worksheet_background_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_delete_worksheet_background ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_delete_worksheet_background"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_delete_worksheet_background"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/background".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_delete_worksheet_background\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete worksheet's cell comment.
    # 
    # @param name The document name.
    # @param sheet_name The worksheet name.
    # @param cell_name The cell name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_worksheets_delete_worksheet_comment(name, sheet_name, cell_name, opts = {})
      data, _status_code, _headers = cells_worksheets_delete_worksheet_comment_with_http_info(name, sheet_name, cell_name, opts)
      return data
    end

    # Delete worksheet&#39;s cell comment.
    # 
    # @param name The document name.
    # @param sheet_name The worksheet name.
    # @param cell_name The cell name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_worksheets_delete_worksheet_comment_with_http_info(name, sheet_name, cell_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_delete_worksheet_comment ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_delete_worksheet_comment"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_delete_worksheet_comment"
      end
      # verify the required parameter 'cell_name' is set
      if @api_client.config.client_side_validation && cell_name.nil?
        fail ArgumentError, "Missing the required parameter 'cell_name' when calling CellsApi.cells_worksheets_delete_worksheet_comment"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/comments/{cellName}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'cellName' + '}', cell_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_delete_worksheet_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete all comments for worksheet.
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_worksheets_delete_worksheet_comments(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_worksheets_delete_worksheet_comments_with_http_info(name, sheet_name, opts)
      return data
    end

    # Delete all comments for worksheet.
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_worksheets_delete_worksheet_comments_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_delete_worksheet_comments ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_delete_worksheet_comments"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_delete_worksheet_comments"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/comments".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_delete_worksheet_comments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unfreeze panes
    # 
    # @param name 
    # @param sheet_name 
    # @param row 
    # @param column 
    # @param freezed_rows 
    # @param freezed_columns 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_worksheets_delete_worksheet_freeze_panes(name, sheet_name, row, column, freezed_rows, freezed_columns, opts = {})
      data, _status_code, _headers = cells_worksheets_delete_worksheet_freeze_panes_with_http_info(name, sheet_name, row, column, freezed_rows, freezed_columns, opts)
      return data
    end

    # Unfreeze panes
    # 
    # @param name 
    # @param sheet_name 
    # @param row 
    # @param column 
    # @param freezed_rows 
    # @param freezed_columns 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_worksheets_delete_worksheet_freeze_panes_with_http_info(name, sheet_name, row, column, freezed_rows, freezed_columns, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_delete_worksheet_freeze_panes ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_delete_worksheet_freeze_panes"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_delete_worksheet_freeze_panes"
      end
      # verify the required parameter 'row' is set
      if @api_client.config.client_side_validation && row.nil?
        fail ArgumentError, "Missing the required parameter 'row' when calling CellsApi.cells_worksheets_delete_worksheet_freeze_panes"
      end
      # verify the required parameter 'column' is set
      if @api_client.config.client_side_validation && column.nil?
        fail ArgumentError, "Missing the required parameter 'column' when calling CellsApi.cells_worksheets_delete_worksheet_freeze_panes"
      end
      # verify the required parameter 'freezed_rows' is set
      if @api_client.config.client_side_validation && freezed_rows.nil?
        fail ArgumentError, "Missing the required parameter 'freezed_rows' when calling CellsApi.cells_worksheets_delete_worksheet_freeze_panes"
      end
      # verify the required parameter 'freezed_columns' is set
      if @api_client.config.client_side_validation && freezed_columns.nil?
        fail ArgumentError, "Missing the required parameter 'freezed_columns' when calling CellsApi.cells_worksheets_delete_worksheet_freeze_panes"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/freezepanes".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'row'] = row
      query_params[:'column'] = column
      query_params[:'freezedRows'] = freezed_rows
      query_params[:'freezedColumns'] = freezed_columns
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_delete_worksheet_freeze_panes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read worksheets info.
    # 
    # @param name 
    # @param match_condition 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name 
    # @return [CellsCloudResponse]
    def cells_worksheets_delete_worksheets(name, match_condition, opts = {})
      data, _status_code, _headers = cells_worksheets_delete_worksheets_with_http_info(name, match_condition, opts)
      return data
    end

    # Read worksheets info.
    # 
    # @param name 
    # @param match_condition 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name 
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_worksheets_delete_worksheets_with_http_info(name, match_condition, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_delete_worksheets ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_delete_worksheets"
      end
      # verify the required parameter 'match_condition' is set
      if @api_client.config.client_side_validation && match_condition.nil?
        fail ArgumentError, "Missing the required parameter 'match_condition' when calling CellsApi.cells_worksheets_delete_worksheets"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(match_condition)
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_delete_worksheets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read worksheets ranges info.
    # 
    # @param name Document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document folder.
    # @option opts [String] :storage_name storage name.
    # @return [RangesResponse]
    def cells_worksheets_get_named_ranges(name, opts = {})
      data, _status_code, _headers = cells_worksheets_get_named_ranges_with_http_info(name, opts)
      return data
    end

    # Read worksheets ranges info.
    # 
    # @param name Document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(RangesResponse, Fixnum, Hash)>] RangesResponse data, response status code and response headers
    def cells_worksheets_get_named_ranges_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_get_named_ranges ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_get_named_ranges"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/ranges".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RangesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_get_named_ranges\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read worksheet info or export.
    # 
    # @param name The document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The exported file format.
    # @option opts [Integer] :vertical_resolution Image vertical resolution. (default to 0)
    # @option opts [Integer] :horizontal_resolution Image horizontal resolution. (default to 0)
    # @option opts [String] :area Exported area.
    # @option opts [Integer] :page_index Exported page index.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [File]
    def cells_worksheets_get_worksheet(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_worksheets_get_worksheet_with_http_info(name, sheet_name, opts)
      return data
    end

    # Read worksheet info or export.
    # 
    # @param name The document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The exported file format.
    # @option opts [Integer] :vertical_resolution Image vertical resolution.
    # @option opts [Integer] :horizontal_resolution Image horizontal resolution.
    # @option opts [String] :area Exported area.
    # @option opts [Integer] :page_index Exported page index.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def cells_worksheets_get_worksheet_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_get_worksheet ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_get_worksheet"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_get_worksheet"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?
      query_params[:'verticalResolution'] = opts[:'vertical_resolution'] if !opts[:'vertical_resolution'].nil?
      query_params[:'horizontalResolution'] = opts[:'horizontal_resolution'] if !opts[:'horizontal_resolution'].nil?
      query_params[:'area'] = opts[:'area'] if !opts[:'area'].nil?
      query_params[:'pageIndex'] = opts[:'page_index'] if !opts[:'page_index'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_get_worksheet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Calculate formula value.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param formula The formula.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [SingleValueResponse]
    def cells_worksheets_get_worksheet_calculate_formula(name, sheet_name, formula, opts = {})
      data, _status_code, _headers = cells_worksheets_get_worksheet_calculate_formula_with_http_info(name, sheet_name, formula, opts)
      return data
    end

    # Calculate formula value.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param formula The formula.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(SingleValueResponse, Fixnum, Hash)>] SingleValueResponse data, response status code and response headers
    def cells_worksheets_get_worksheet_calculate_formula_with_http_info(name, sheet_name, formula, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_get_worksheet_calculate_formula ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_get_worksheet_calculate_formula"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_get_worksheet_calculate_formula"
      end
      # verify the required parameter 'formula' is set
      if @api_client.config.client_side_validation && formula.nil?
        fail ArgumentError, "Missing the required parameter 'formula' when calling CellsApi.cells_worksheets_get_worksheet_calculate_formula"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/formulaResult".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'formula'] = formula
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SingleValueResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_get_worksheet_calculate_formula\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get worksheet comment by cell name.
    # 
    # @param name The document name.
    # @param sheet_name The worksheet name.
    # @param cell_name The cell name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CommentResponse]
    def cells_worksheets_get_worksheet_comment(name, sheet_name, cell_name, opts = {})
      data, _status_code, _headers = cells_worksheets_get_worksheet_comment_with_http_info(name, sheet_name, cell_name, opts)
      return data
    end

    # Get worksheet comment by cell name.
    # 
    # @param name The document name.
    # @param sheet_name The worksheet name.
    # @param cell_name The cell name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CommentResponse, Fixnum, Hash)>] CommentResponse data, response status code and response headers
    def cells_worksheets_get_worksheet_comment_with_http_info(name, sheet_name, cell_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_get_worksheet_comment ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_get_worksheet_comment"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_get_worksheet_comment"
      end
      # verify the required parameter 'cell_name' is set
      if @api_client.config.client_side_validation && cell_name.nil?
        fail ArgumentError, "Missing the required parameter 'cell_name' when calling CellsApi.cells_worksheets_get_worksheet_comment"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/comments/{cellName}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'cellName' + '}', cell_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CommentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_get_worksheet_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get worksheet comments.
    # 
    # @param name Workbook name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CommentsResponse]
    def cells_worksheets_get_worksheet_comments(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_worksheets_get_worksheet_comments_with_http_info(name, sheet_name, opts)
      return data
    end

    # Get worksheet comments.
    # 
    # @param name Workbook name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CommentsResponse, Fixnum, Hash)>] CommentsResponse data, response status code and response headers
    def cells_worksheets_get_worksheet_comments_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_get_worksheet_comments ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_get_worksheet_comments"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_get_worksheet_comments"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/comments".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CommentsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_get_worksheet_comments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get worksheet merged cell by its index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param merged_cell_index Merged cell index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document folder.
    # @option opts [String] :storage_name storage name.
    # @return [MergedCellResponse]
    def cells_worksheets_get_worksheet_merged_cell(name, sheet_name, merged_cell_index, opts = {})
      data, _status_code, _headers = cells_worksheets_get_worksheet_merged_cell_with_http_info(name, sheet_name, merged_cell_index, opts)
      return data
    end

    # Get worksheet merged cell by its index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param merged_cell_index Merged cell index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(MergedCellResponse, Fixnum, Hash)>] MergedCellResponse data, response status code and response headers
    def cells_worksheets_get_worksheet_merged_cell_with_http_info(name, sheet_name, merged_cell_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_get_worksheet_merged_cell ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_get_worksheet_merged_cell"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_get_worksheet_merged_cell"
      end
      # verify the required parameter 'merged_cell_index' is set
      if @api_client.config.client_side_validation && merged_cell_index.nil?
        fail ArgumentError, "Missing the required parameter 'merged_cell_index' when calling CellsApi.cells_worksheets_get_worksheet_merged_cell"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/mergedCells/{mergedCellIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'mergedCellIndex' + '}', merged_cell_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MergedCellResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_get_worksheet_merged_cell\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get worksheet merged cells.
    # 
    # @param name Document name.
    # @param sheet_name The workseet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document folder.
    # @option opts [String] :storage_name storage name.
    # @return [MergedCellsResponse]
    def cells_worksheets_get_worksheet_merged_cells(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_worksheets_get_worksheet_merged_cells_with_http_info(name, sheet_name, opts)
      return data
    end

    # Get worksheet merged cells.
    # 
    # @param name Document name.
    # @param sheet_name The workseet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(MergedCellsResponse, Fixnum, Hash)>] MergedCellsResponse data, response status code and response headers
    def cells_worksheets_get_worksheet_merged_cells_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_get_worksheet_merged_cells ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_get_worksheet_merged_cells"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_get_worksheet_merged_cells"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/mergedCells".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MergedCellsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_get_worksheet_merged_cells\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get worksheet text items.
    # 
    # @param name Workbook name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [TextItemsResponse]
    def cells_worksheets_get_worksheet_text_items(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_worksheets_get_worksheet_text_items_with_http_info(name, sheet_name, opts)
      return data
    end

    # Get worksheet text items.
    # 
    # @param name Workbook name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The workbook&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(TextItemsResponse, Fixnum, Hash)>] TextItemsResponse data, response status code and response headers
    def cells_worksheets_get_worksheet_text_items_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_get_worksheet_text_items ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_get_worksheet_text_items"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_get_worksheet_text_items"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/textItems".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextItemsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_get_worksheet_text_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read worksheets info.
    # 
    # @param name Document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document folder.
    # @option opts [String] :storage_name storage name.
    # @return [WorksheetsResponse]
    def cells_worksheets_get_worksheets(name, opts = {})
      data, _status_code, _headers = cells_worksheets_get_worksheets_with_http_info(name, opts)
      return data
    end

    # Read worksheets info.
    # 
    # @param name Document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(WorksheetsResponse, Fixnum, Hash)>] WorksheetsResponse data, response status code and response headers
    def cells_worksheets_get_worksheets_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_get_worksheets ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_get_worksheets"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorksheetsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_get_worksheets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param first_column 
    # @param last_column 
    # @param [Hash] opts the optional parameters
    # @option opts [AutoFitterOptions] :auto_fitter_options 
    # @option opts [Integer] :first_row 
    # @option opts [Integer] :last_row 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_worksheets_post_autofit_worksheet_columns(name, sheet_name, first_column, last_column, opts = {})
      data, _status_code, _headers = cells_worksheets_post_autofit_worksheet_columns_with_http_info(name, sheet_name, first_column, last_column, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param first_column 
    # @param last_column 
    # @param [Hash] opts the optional parameters
    # @option opts [AutoFitterOptions] :auto_fitter_options 
    # @option opts [Integer] :first_row 
    # @option opts [Integer] :last_row 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_worksheets_post_autofit_worksheet_columns_with_http_info(name, sheet_name, first_column, last_column, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_post_autofit_worksheet_columns ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_post_autofit_worksheet_columns"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_post_autofit_worksheet_columns"
      end
      # verify the required parameter 'first_column' is set
      if @api_client.config.client_side_validation && first_column.nil?
        fail ArgumentError, "Missing the required parameter 'first_column' when calling CellsApi.cells_worksheets_post_autofit_worksheet_columns"
      end
      # verify the required parameter 'last_column' is set
      if @api_client.config.client_side_validation && last_column.nil?
        fail ArgumentError, "Missing the required parameter 'last_column' when calling CellsApi.cells_worksheets_post_autofit_worksheet_columns"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/autofitcolumns".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'firstColumn'] = first_column
      query_params[:'lastColumn'] = last_column
      query_params[:'firstRow'] = opts[:'first_row'] if !opts[:'first_row'].nil?
      query_params[:'lastRow'] = opts[:'last_row'] if !opts[:'last_row'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'auto_fitter_options'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_post_autofit_worksheet_columns\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param row_index 
    # @param first_column 
    # @param last_column 
    # @param [Hash] opts the optional parameters
    # @option opts [AutoFitterOptions] :auto_fitter_options 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_worksheets_post_autofit_worksheet_row(name, sheet_name, row_index, first_column, last_column, opts = {})
      data, _status_code, _headers = cells_worksheets_post_autofit_worksheet_row_with_http_info(name, sheet_name, row_index, first_column, last_column, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param row_index 
    # @param first_column 
    # @param last_column 
    # @param [Hash] opts the optional parameters
    # @option opts [AutoFitterOptions] :auto_fitter_options 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_worksheets_post_autofit_worksheet_row_with_http_info(name, sheet_name, row_index, first_column, last_column, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_post_autofit_worksheet_row ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_post_autofit_worksheet_row"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_post_autofit_worksheet_row"
      end
      # verify the required parameter 'row_index' is set
      if @api_client.config.client_side_validation && row_index.nil?
        fail ArgumentError, "Missing the required parameter 'row_index' when calling CellsApi.cells_worksheets_post_autofit_worksheet_row"
      end
      # verify the required parameter 'first_column' is set
      if @api_client.config.client_side_validation && first_column.nil?
        fail ArgumentError, "Missing the required parameter 'first_column' when calling CellsApi.cells_worksheets_post_autofit_worksheet_row"
      end
      # verify the required parameter 'last_column' is set
      if @api_client.config.client_side_validation && last_column.nil?
        fail ArgumentError, "Missing the required parameter 'last_column' when calling CellsApi.cells_worksheets_post_autofit_worksheet_row"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/autofitrow".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'rowIndex'] = row_index
      query_params[:'firstColumn'] = first_column
      query_params[:'lastColumn'] = last_column
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'auto_fitter_options'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_post_autofit_worksheet_row\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Autofit worksheet rows.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [AutoFitterOptions] :auto_fitter_options Auto Fitter Options.
    # @option opts [Integer] :start_row Start row.
    # @option opts [Integer] :end_row End row.
    # @option opts [BOOLEAN] :only_auto Only auto. (default to false)
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_worksheets_post_autofit_worksheet_rows(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_worksheets_post_autofit_worksheet_rows_with_http_info(name, sheet_name, opts)
      return data
    end

    # Autofit worksheet rows.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [AutoFitterOptions] :auto_fitter_options Auto Fitter Options.
    # @option opts [Integer] :start_row Start row.
    # @option opts [Integer] :end_row End row.
    # @option opts [BOOLEAN] :only_auto Only auto.
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_worksheets_post_autofit_worksheet_rows_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_post_autofit_worksheet_rows ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_post_autofit_worksheet_rows"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_post_autofit_worksheet_rows"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/autofitrows".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'startRow'] = opts[:'start_row'] if !opts[:'start_row'].nil?
      query_params[:'endRow'] = opts[:'end_row'] if !opts[:'end_row'].nil?
      query_params[:'onlyAuto'] = opts[:'only_auto'] if !opts[:'only_auto'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'auto_fitter_options'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_post_autofit_worksheet_rows\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param source_sheet 
    # @param [Hash] opts the optional parameters
    # @option opts [CopyOptions] :options 
    # @option opts [String] :source_workbook 
    # @option opts [String] :source_folder 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_worksheets_post_copy_worksheet(name, sheet_name, source_sheet, opts = {})
      data, _status_code, _headers = cells_worksheets_post_copy_worksheet_with_http_info(name, sheet_name, source_sheet, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param source_sheet 
    # @param [Hash] opts the optional parameters
    # @option opts [CopyOptions] :options 
    # @option opts [String] :source_workbook 
    # @option opts [String] :source_folder 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_worksheets_post_copy_worksheet_with_http_info(name, sheet_name, source_sheet, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_post_copy_worksheet ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_post_copy_worksheet"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_post_copy_worksheet"
      end
      # verify the required parameter 'source_sheet' is set
      if @api_client.config.client_side_validation && source_sheet.nil?
        fail ArgumentError, "Missing the required parameter 'source_sheet' when calling CellsApi.cells_worksheets_post_copy_worksheet"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/copy".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'sourceSheet'] = source_sheet
      query_params[:'sourceWorkbook'] = opts[:'source_workbook'] if !opts[:'source_workbook'].nil?
      query_params[:'sourceFolder'] = opts[:'source_folder'] if !opts[:'source_folder'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'options'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_post_copy_worksheet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Move worksheet.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [WorksheetMovingRequest] :moving with moving parameters.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [WorksheetsResponse]
    def cells_worksheets_post_move_worksheet(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_worksheets_post_move_worksheet_with_http_info(name, sheet_name, opts)
      return data
    end

    # Move worksheet.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [WorksheetMovingRequest] :moving with moving parameters.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(WorksheetsResponse, Fixnum, Hash)>] WorksheetsResponse data, response status code and response headers
    def cells_worksheets_post_move_worksheet_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_post_move_worksheet ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_post_move_worksheet"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_post_move_worksheet"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/position".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'moving'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorksheetsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_post_move_worksheet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Rename worksheet
    # 
    # @param name 
    # @param sheet_name 
    # @param newname 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_worksheets_post_rename_worksheet(name, sheet_name, newname, opts = {})
      data, _status_code, _headers = cells_worksheets_post_rename_worksheet_with_http_info(name, sheet_name, newname, opts)
      return data
    end

    # Rename worksheet
    # 
    # @param name 
    # @param sheet_name 
    # @param newname 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_worksheets_post_rename_worksheet_with_http_info(name, sheet_name, newname, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_post_rename_worksheet ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_post_rename_worksheet"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_post_rename_worksheet"
      end
      # verify the required parameter 'newname' is set
      if @api_client.config.client_side_validation && newname.nil?
        fail ArgumentError, "Missing the required parameter 'newname' when calling CellsApi.cells_worksheets_post_rename_worksheet"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/rename".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'newname'] = newname
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_post_rename_worksheet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update worksheet property
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [Worksheet] :sheet 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [WorksheetResponse]
    def cells_worksheets_post_update_worksheet_property(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_worksheets_post_update_worksheet_property_with_http_info(name, sheet_name, opts)
      return data
    end

    # Update worksheet property
    # 
    # @param name 
    # @param sheet_name 
    # @param [Hash] opts the optional parameters
    # @option opts [Worksheet] :sheet 
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(WorksheetResponse, Fixnum, Hash)>] WorksheetResponse data, response status code and response headers
    def cells_worksheets_post_update_worksheet_property_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_post_update_worksheet_property ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_post_update_worksheet_property"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_post_update_worksheet_property"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'sheet'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorksheetResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_post_update_worksheet_property\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param value 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_worksheets_post_update_worksheet_zoom(name, sheet_name, value, opts = {})
      data, _status_code, _headers = cells_worksheets_post_update_worksheet_zoom_with_http_info(name, sheet_name, value, opts)
      return data
    end

    # 
    # 
    # @param name 
    # @param sheet_name 
    # @param value 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_worksheets_post_update_worksheet_zoom_with_http_info(name, sheet_name, value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_post_update_worksheet_zoom ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_post_update_worksheet_zoom"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_post_update_worksheet_zoom"
      end
      # verify the required parameter 'value' is set
      if @api_client.config.client_side_validation && value.nil?
        fail ArgumentError, "Missing the required parameter 'value' when calling CellsApi.cells_worksheets_post_update_worksheet_zoom"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/zoom".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'value'] = value
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_post_update_worksheet_zoom\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update worksheet's cell comment.
    # 
    # @param name The document name.
    # @param sheet_name The worksheet name.
    # @param cell_name The cell name
    # @param [Hash] opts the optional parameters
    # @option opts [Comment] :comment Comment object
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_worksheets_post_worksheet_comment(name, sheet_name, cell_name, opts = {})
      data, _status_code, _headers = cells_worksheets_post_worksheet_comment_with_http_info(name, sheet_name, cell_name, opts)
      return data
    end

    # Update worksheet&#39;s cell comment.
    # 
    # @param name The document name.
    # @param sheet_name The worksheet name.
    # @param cell_name The cell name
    # @param [Hash] opts the optional parameters
    # @option opts [Comment] :comment Comment object
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_worksheets_post_worksheet_comment_with_http_info(name, sheet_name, cell_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_post_worksheet_comment ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_post_worksheet_comment"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_post_worksheet_comment"
      end
      # verify the required parameter 'cell_name' is set
      if @api_client.config.client_side_validation && cell_name.nil?
        fail ArgumentError, "Missing the required parameter 'cell_name' when calling CellsApi.cells_worksheets_post_worksheet_comment"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/comments/{cellName}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'cellName' + '}', cell_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'comment'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_post_worksheet_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Sort worksheet range.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param cell_area The range to sort.
    # @param [Hash] opts the optional parameters
    # @option opts [DataSorter] :data_sorter with sorting settings.
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_worksheets_post_worksheet_range_sort(name, sheet_name, cell_area, opts = {})
      data, _status_code, _headers = cells_worksheets_post_worksheet_range_sort_with_http_info(name, sheet_name, cell_area, opts)
      return data
    end

    # Sort worksheet range.
    # 
    # @param name The workbook name.
    # @param sheet_name The worksheet name.
    # @param cell_area The range to sort.
    # @param [Hash] opts the optional parameters
    # @option opts [DataSorter] :data_sorter with sorting settings.
    # @option opts [String] :folder The workbook folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_worksheets_post_worksheet_range_sort_with_http_info(name, sheet_name, cell_area, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_post_worksheet_range_sort ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_post_worksheet_range_sort"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_post_worksheet_range_sort"
      end
      # verify the required parameter 'cell_area' is set
      if @api_client.config.client_side_validation && cell_area.nil?
        fail ArgumentError, "Missing the required parameter 'cell_area' when calling CellsApi.cells_worksheets_post_worksheet_range_sort"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/sort".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'cellArea'] = cell_area
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'data_sorter'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_post_worksheet_range_sort\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search text.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param text Text to search.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [TextItemsResponse]
    def cells_worksheets_post_worksheet_text_search(name, sheet_name, text, opts = {})
      data, _status_code, _headers = cells_worksheets_post_worksheet_text_search_with_http_info(name, sheet_name, text, opts)
      return data
    end

    # Search text.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param text Text to search.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(TextItemsResponse, Fixnum, Hash)>] TextItemsResponse data, response status code and response headers
    def cells_worksheets_post_worksheet_text_search_with_http_info(name, sheet_name, text, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_post_worksheet_text_search ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_post_worksheet_text_search"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_post_worksheet_text_search"
      end
      # verify the required parameter 'text' is set
      if @api_client.config.client_side_validation && text.nil?
        fail ArgumentError, "Missing the required parameter 'text' when calling CellsApi.cells_worksheets_post_worksheet_text_search"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/findText".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'text'] = text
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextItemsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_post_worksheet_text_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Replace text.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param old_value The old text to replace.
    # @param new_value The new text to replace by.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [WorksheetReplaceResponse]
    def cells_worksheets_post_worsheet_text_replace(name, sheet_name, old_value, new_value, opts = {})
      data, _status_code, _headers = cells_worksheets_post_worsheet_text_replace_with_http_info(name, sheet_name, old_value, new_value, opts)
      return data
    end

    # Replace text.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param old_value The old text to replace.
    # @param new_value The new text to replace by.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(WorksheetReplaceResponse, Fixnum, Hash)>] WorksheetReplaceResponse data, response status code and response headers
    def cells_worksheets_post_worsheet_text_replace_with_http_info(name, sheet_name, old_value, new_value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_post_worsheet_text_replace ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_post_worsheet_text_replace"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_post_worsheet_text_replace"
      end
      # verify the required parameter 'old_value' is set
      if @api_client.config.client_side_validation && old_value.nil?
        fail ArgumentError, "Missing the required parameter 'old_value' when calling CellsApi.cells_worksheets_post_worsheet_text_replace"
      end
      # verify the required parameter 'new_value' is set
      if @api_client.config.client_side_validation && new_value.nil?
        fail ArgumentError, "Missing the required parameter 'new_value' when calling CellsApi.cells_worksheets_post_worsheet_text_replace"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/replaceText".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'oldValue'] = old_value
      query_params[:'newValue'] = new_value
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorksheetReplaceResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_post_worsheet_text_replace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add new worksheet.
    # 
    # @param name Document name.
    # @param sheet_name The new sheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :position The new sheet position.
    # @option opts [String] :sheettype The new sheet type.
    # @option opts [String] :folder Document folder.
    # @option opts [String] :storage_name storage name.
    # @return [WorksheetsResponse]
    def cells_worksheets_put_add_new_worksheet(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_worksheets_put_add_new_worksheet_with_http_info(name, sheet_name, opts)
      return data
    end

    # Add new worksheet.
    # 
    # @param name Document name.
    # @param sheet_name The new sheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :position The new sheet position.
    # @option opts [String] :sheettype The new sheet type.
    # @option opts [String] :folder Document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(WorksheetsResponse, Fixnum, Hash)>] WorksheetsResponse data, response status code and response headers
    def cells_worksheets_put_add_new_worksheet_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_put_add_new_worksheet ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_put_add_new_worksheet"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_put_add_new_worksheet"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'position'] = opts[:'position'] if !opts[:'position'].nil?
      query_params[:'sheettype'] = opts[:'sheettype'] if !opts[:'sheettype'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorksheetsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_put_add_new_worksheet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change worksheet visibility.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param is_visible New worksheet visibility value.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [WorksheetResponse]
    def cells_worksheets_put_change_visibility_worksheet(name, sheet_name, is_visible, opts = {})
      data, _status_code, _headers = cells_worksheets_put_change_visibility_worksheet_with_http_info(name, sheet_name, is_visible, opts)
      return data
    end

    # Change worksheet visibility.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param is_visible New worksheet visibility value.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(WorksheetResponse, Fixnum, Hash)>] WorksheetResponse data, response status code and response headers
    def cells_worksheets_put_change_visibility_worksheet_with_http_info(name, sheet_name, is_visible, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_put_change_visibility_worksheet ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_put_change_visibility_worksheet"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_put_change_visibility_worksheet"
      end
      # verify the required parameter 'is_visible' is set
      if @api_client.config.client_side_validation && is_visible.nil?
        fail ArgumentError, "Missing the required parameter 'is_visible' when calling CellsApi.cells_worksheets_put_change_visibility_worksheet"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/visible".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'isVisible'] = is_visible
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorksheetResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_put_change_visibility_worksheet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Protect worksheet.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [ProtectSheetParameter] :protect_parameter with protection settings.
    # @option opts [String] :folder Document folder.
    # @option opts [String] :storage_name storage name.
    # @return [WorksheetResponse]
    def cells_worksheets_put_protect_worksheet(name, sheet_name, opts = {})
      data, _status_code, _headers = cells_worksheets_put_protect_worksheet_with_http_info(name, sheet_name, opts)
      return data
    end

    # Protect worksheet.
    # 
    # @param name Document name.
    # @param sheet_name The worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [ProtectSheetParameter] :protect_parameter with protection settings.
    # @option opts [String] :folder Document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(WorksheetResponse, Fixnum, Hash)>] WorksheetResponse data, response status code and response headers
    def cells_worksheets_put_protect_worksheet_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_put_protect_worksheet ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_put_protect_worksheet"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_put_protect_worksheet"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/protection".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'protect_parameter'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorksheetResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_put_protect_worksheet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set worksheet background image.
    # 
    # @param name 
    # @param sheet_name 
    # @param png 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_worksheets_put_worksheet_background(name, sheet_name, png, opts = {})
      data, _status_code, _headers = cells_worksheets_put_worksheet_background_with_http_info(name, sheet_name, png, opts)
      return data
    end

    # Set worksheet background image.
    # 
    # @param name 
    # @param sheet_name 
    # @param png 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_worksheets_put_worksheet_background_with_http_info(name, sheet_name, png, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_put_worksheet_background ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_put_worksheet_background"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_put_worksheet_background"
      end
      # verify the required parameter 'png' is set
      if @api_client.config.client_side_validation && png.nil?
        fail ArgumentError, "Missing the required parameter 'png' when calling CellsApi.cells_worksheets_put_worksheet_background"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/background".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(png)
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_put_worksheet_background\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add worksheet's cell comment.
    # 
    # @param name The document name.
    # @param sheet_name The worksheet name.
    # @param cell_name The cell name
    # @param [Hash] opts the optional parameters
    # @option opts [Comment] :comment Comment object
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [CommentResponse]
    def cells_worksheets_put_worksheet_comment(name, sheet_name, cell_name, opts = {})
      data, _status_code, _headers = cells_worksheets_put_worksheet_comment_with_http_info(name, sheet_name, cell_name, opts)
      return data
    end

    # Add worksheet&#39;s cell comment.
    # 
    # @param name The document name.
    # @param sheet_name The worksheet name.
    # @param cell_name The cell name
    # @param [Hash] opts the optional parameters
    # @option opts [Comment] :comment Comment object
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CommentResponse, Fixnum, Hash)>] CommentResponse data, response status code and response headers
    def cells_worksheets_put_worksheet_comment_with_http_info(name, sheet_name, cell_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_put_worksheet_comment ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_put_worksheet_comment"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_put_worksheet_comment"
      end
      # verify the required parameter 'cell_name' is set
      if @api_client.config.client_side_validation && cell_name.nil?
        fail ArgumentError, "Missing the required parameter 'cell_name' when calling CellsApi.cells_worksheets_put_worksheet_comment"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/comments/{cellName}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'cellName' + '}', cell_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'comment'])
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CommentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_put_worksheet_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set freeze panes
    # 
    # @param name 
    # @param sheet_name 
    # @param row 
    # @param column 
    # @param freezed_rows 
    # @param freezed_columns 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [CellsCloudResponse]
    def cells_worksheets_put_worksheet_freeze_panes(name, sheet_name, row, column, freezed_rows, freezed_columns, opts = {})
      data, _status_code, _headers = cells_worksheets_put_worksheet_freeze_panes_with_http_info(name, sheet_name, row, column, freezed_rows, freezed_columns, opts)
      return data
    end

    # Set freeze panes
    # 
    # @param name 
    # @param sheet_name 
    # @param row 
    # @param column 
    # @param freezed_rows 
    # @param freezed_columns 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder 
    # @option opts [String] :storage_name storage name.
    # @return [Array<(CellsCloudResponse, Fixnum, Hash)>] CellsCloudResponse data, response status code and response headers
    def cells_worksheets_put_worksheet_freeze_panes_with_http_info(name, sheet_name, row, column, freezed_rows, freezed_columns, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.cells_worksheets_put_worksheet_freeze_panes ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.cells_worksheets_put_worksheet_freeze_panes"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.cells_worksheets_put_worksheet_freeze_panes"
      end
      # verify the required parameter 'row' is set
      if @api_client.config.client_side_validation && row.nil?
        fail ArgumentError, "Missing the required parameter 'row' when calling CellsApi.cells_worksheets_put_worksheet_freeze_panes"
      end
      # verify the required parameter 'column' is set
      if @api_client.config.client_side_validation && column.nil?
        fail ArgumentError, "Missing the required parameter 'column' when calling CellsApi.cells_worksheets_put_worksheet_freeze_panes"
      end
      # verify the required parameter 'freezed_rows' is set
      if @api_client.config.client_side_validation && freezed_rows.nil?
        fail ArgumentError, "Missing the required parameter 'freezed_rows' when calling CellsApi.cells_worksheets_put_worksheet_freeze_panes"
      end
      # verify the required parameter 'freezed_columns' is set
      if @api_client.config.client_side_validation && freezed_columns.nil?
        fail ArgumentError, "Missing the required parameter 'freezed_columns' when calling CellsApi.cells_worksheets_put_worksheet_freeze_panes"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/freezepanes".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'row'] = row
      query_params[:'column'] = column
      query_params[:'freezedRows'] = freezed_rows
      query_params[:'freezedColumns'] = freezed_columns
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#cells_worksheets_put_worksheet_freeze_panes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Copy file
    # 
    # @param src_path Source file path e.g. &#39;/folder/file.ext&#39;
    # @param dest_path Destination file path
    # @param [Hash] opts the optional parameters
    # @option opts [String] :src_storage_name Source storage name
    # @option opts [String] :dest_storage_name Destination storage name
    # @option opts [String] :version_id File version ID to copy
    # @return [nil]
    def copy_file(src_path, dest_path, opts = {})
      copy_file_with_http_info(src_path, dest_path, opts)
      return nil
    end

    # Copy file
    # 
    # @param src_path Source file path e.g. &#39;/folder/file.ext&#39;
    # @param dest_path Destination file path
    # @param [Hash] opts the optional parameters
    # @option opts [String] :src_storage_name Source storage name
    # @option opts [String] :dest_storage_name Destination storage name
    # @option opts [String] :version_id File version ID to copy
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def copy_file_with_http_info(src_path, dest_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.copy_file ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling CellsApi.copy_file"
      end
      # verify the required parameter 'dest_path' is set
      if @api_client.config.client_side_validation && dest_path.nil?
        fail ArgumentError, "Missing the required parameter 'dest_path' when calling CellsApi.copy_file"
      end
      # resource path
      local_var_path = "/cells/storage/file/copy/{srcPath}".sub('{' + 'srcPath' + '}', src_path.to_s)

      # query parameters
      query_params = {}
      query_params[:'destPath'] = dest_path
      query_params[:'srcStorageName'] = opts[:'src_storage_name'] if !opts[:'src_storage_name'].nil?
      query_params[:'destStorageName'] = opts[:'dest_storage_name'] if !opts[:'dest_storage_name'].nil?
      query_params[:'versionId'] = opts[:'version_id'] if !opts[:'version_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#copy_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Copy folder
    # 
    # @param src_path Source folder path e.g. &#39;/src&#39;
    # @param dest_path Destination folder path e.g. &#39;/dst&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :src_storage_name Source storage name
    # @option opts [String] :dest_storage_name Destination storage name
    # @return [nil]
    def copy_folder(src_path, dest_path, opts = {})
      copy_folder_with_http_info(src_path, dest_path, opts)
      return nil
    end

    # Copy folder
    # 
    # @param src_path Source folder path e.g. &#39;/src&#39;
    # @param dest_path Destination folder path e.g. &#39;/dst&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :src_storage_name Source storage name
    # @option opts [String] :dest_storage_name Destination storage name
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def copy_folder_with_http_info(src_path, dest_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.copy_folder ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling CellsApi.copy_folder"
      end
      # verify the required parameter 'dest_path' is set
      if @api_client.config.client_side_validation && dest_path.nil?
        fail ArgumentError, "Missing the required parameter 'dest_path' when calling CellsApi.copy_folder"
      end
      # resource path
      local_var_path = "/cells/storage/folder/copy/{srcPath}".sub('{' + 'srcPath' + '}', src_path.to_s)

      # query parameters
      query_params = {}
      query_params[:'destPath'] = dest_path
      query_params[:'srcStorageName'] = opts[:'src_storage_name'] if !opts[:'src_storage_name'].nil?
      query_params[:'destStorageName'] = opts[:'dest_storage_name'] if !opts[:'dest_storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#copy_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create the folder
    # 
    # @param path Folder path to create e.g. &#39;folder_1/folder_2/&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @return [nil]
    def create_folder(path, opts = {})
      create_folder_with_http_info(path, opts)
      return nil
    end

    # Create the folder
    # 
    # @param path Folder path to create e.g. &#39;folder_1/folder_2/&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_folder_with_http_info(path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.create_folder ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling CellsApi.create_folder"
      end
      # resource path
      local_var_path = "/cells/storage/folder/{path}".sub('{' + 'path' + '}', path.to_s)

      # query parameters
      query_params = {}
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#create_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete file
    # 
    # @param path File path e.g. &#39;/folder/file.ext&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @option opts [String] :version_id File version ID to delete
    # @return [nil]
    def delete_file(path, opts = {})
      delete_file_with_http_info(path, opts)
      return nil
    end

    # Delete file
    # 
    # @param path File path e.g. &#39;/folder/file.ext&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @option opts [String] :version_id File version ID to delete
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_file_with_http_info(path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.delete_file ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling CellsApi.delete_file"
      end
      # resource path
      local_var_path = "/cells/storage/file/{path}".sub('{' + 'path' + '}', path.to_s)

      # query parameters
      query_params = {}
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?
      query_params[:'versionId'] = opts[:'version_id'] if !opts[:'version_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#delete_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete folder
    # 
    # @param path Folder path e.g. &#39;/folder&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @option opts [BOOLEAN] :recursive Enable to delete folders, subfolders and files (default to false)
    # @return [nil]
    def delete_folder(path, opts = {})
      delete_folder_with_http_info(path, opts)
      return nil
    end

    # Delete folder
    # 
    # @param path Folder path e.g. &#39;/folder&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @option opts [BOOLEAN] :recursive Enable to delete folders, subfolders and files
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_folder_with_http_info(path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.delete_folder ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling CellsApi.delete_folder"
      end
      # resource path
      local_var_path = "/cells/storage/folder/{path}".sub('{' + 'path' + '}', path.to_s)

      # query parameters
      query_params = {}
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?
      query_params[:'recursive'] = opts[:'recursive'] if !opts[:'recursive'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#delete_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download file
    # 
    # @param path File path e.g. &#39;/folder/file.ext&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @option opts [String] :version_id File version ID to download
    # @return [File]
    def download_file(path, opts = {})
      data, _status_code, _headers = download_file_with_http_info(path, opts)
      return data
    end

    # Download file
    # 
    # @param path File path e.g. &#39;/folder/file.ext&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @option opts [String] :version_id File version ID to download
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def download_file_with_http_info(path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.download_file ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling CellsApi.download_file"
      end
      # resource path
      local_var_path = "/cells/storage/file/{path}".sub('{' + 'path' + '}', path.to_s)

      # query parameters
      query_params = {}
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?
      query_params[:'versionId'] = opts[:'version_id'] if !opts[:'version_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#download_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get disc usage
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @return [DiscUsage]
    def get_disc_usage(opts = {})
      data, _status_code, _headers = get_disc_usage_with_http_info(opts)
      return data
    end

    # Get disc usage
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @return [Array<(DiscUsage, Fixnum, Hash)>] DiscUsage data, response status code and response headers
    def get_disc_usage_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.get_disc_usage ..."
      end
      @api_client.request_token_if_needed
      # resource path
      local_var_path = "/cells/storage/disc"

      # query parameters
      query_params = {}
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DiscUsage')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#get_disc_usage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get file versions
    # 
    # @param path File path e.g. &#39;/file.ext&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @return [FileVersions]
    def get_file_versions(path, opts = {})
      data, _status_code, _headers = get_file_versions_with_http_info(path, opts)
      return data
    end

    # Get file versions
    # 
    # @param path File path e.g. &#39;/file.ext&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @return [Array<(FileVersions, Fixnum, Hash)>] FileVersions data, response status code and response headers
    def get_file_versions_with_http_info(path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.get_file_versions ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling CellsApi.get_file_versions"
      end
      # resource path
      local_var_path = "/cells/storage/version/{path}".sub('{' + 'path' + '}', path.to_s)

      # query parameters
      query_params = {}
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FileVersions')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#get_file_versions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all files and folders within a folder
    # 
    # @param path Folder path e.g. &#39;/folder&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @return [FilesList]
    def get_files_list(path, opts = {})
      data, _status_code, _headers = get_files_list_with_http_info(path, opts)
      return data
    end

    # Get all files and folders within a folder
    # 
    # @param path Folder path e.g. &#39;/folder&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @return [Array<(FilesList, Fixnum, Hash)>] FilesList data, response status code and response headers
    def get_files_list_with_http_info(path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.get_files_list ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling CellsApi.get_files_list"
      end
      # resource path
      local_var_path = "/cells/storage/folder/{path}".sub('{' + 'path' + '}', path.to_s)

      # query parameters
      query_params = {}
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FilesList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#get_files_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Move file
    # 
    # @param src_path Source file path e.g. &#39;/src.ext&#39;
    # @param dest_path Destination file path e.g. &#39;/dest.ext&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :src_storage_name Source storage name
    # @option opts [String] :dest_storage_name Destination storage name
    # @option opts [String] :version_id File version ID to move
    # @return [nil]
    def move_file(src_path, dest_path, opts = {})
      move_file_with_http_info(src_path, dest_path, opts)
      return nil
    end

    # Move file
    # 
    # @param src_path Source file path e.g. &#39;/src.ext&#39;
    # @param dest_path Destination file path e.g. &#39;/dest.ext&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :src_storage_name Source storage name
    # @option opts [String] :dest_storage_name Destination storage name
    # @option opts [String] :version_id File version ID to move
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def move_file_with_http_info(src_path, dest_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.move_file ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling CellsApi.move_file"
      end
      # verify the required parameter 'dest_path' is set
      if @api_client.config.client_side_validation && dest_path.nil?
        fail ArgumentError, "Missing the required parameter 'dest_path' when calling CellsApi.move_file"
      end
      # resource path
      local_var_path = "/cells/storage/file/move/{srcPath}".sub('{' + 'srcPath' + '}', src_path.to_s)

      # query parameters
      query_params = {}
      query_params[:'destPath'] = dest_path
      query_params[:'srcStorageName'] = opts[:'src_storage_name'] if !opts[:'src_storage_name'].nil?
      query_params[:'destStorageName'] = opts[:'dest_storage_name'] if !opts[:'dest_storage_name'].nil?
      query_params[:'versionId'] = opts[:'version_id'] if !opts[:'version_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#move_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Move folder
    # 
    # @param src_path Folder path to move e.g. &#39;/folder&#39;
    # @param dest_path Destination folder path to move to e.g &#39;/dst&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :src_storage_name Source storage name
    # @option opts [String] :dest_storage_name Destination storage name
    # @return [nil]
    def move_folder(src_path, dest_path, opts = {})
      move_folder_with_http_info(src_path, dest_path, opts)
      return nil
    end

    # Move folder
    # 
    # @param src_path Folder path to move e.g. &#39;/folder&#39;
    # @param dest_path Destination folder path to move to e.g &#39;/dst&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :src_storage_name Source storage name
    # @option opts [String] :dest_storage_name Destination storage name
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def move_folder_with_http_info(src_path, dest_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.move_folder ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling CellsApi.move_folder"
      end
      # verify the required parameter 'dest_path' is set
      if @api_client.config.client_side_validation && dest_path.nil?
        fail ArgumentError, "Missing the required parameter 'dest_path' when calling CellsApi.move_folder"
      end
      # resource path
      local_var_path = "/cells/storage/folder/move/{srcPath}".sub('{' + 'srcPath' + '}', src_path.to_s)

      # query parameters
      query_params = {}
      query_params[:'destPath'] = dest_path
      query_params[:'srcStorageName'] = opts[:'src_storage_name'] if !opts[:'src_storage_name'].nil?
      query_params[:'destStorageName'] = opts[:'dest_storage_name'] if !opts[:'dest_storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#move_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Access token
    # 
    # @param grant_type Grant Type
    # @param client_id App SID
    # @param client_secret App Key
    # @param [Hash] opts the optional parameters
    # @return [AccessTokenResponse]
    def o_auth_post(grant_type, client_id, client_secret, opts = {})
      data, _status_code, _headers = o_auth_post_with_http_info(grant_type, client_id, client_secret, opts)
      return data
    end

    # Get Access token
    # 
    # @param grant_type Grant Type
    # @param client_id App SID
    # @param client_secret App Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccessTokenResponse, Fixnum, Hash)>] AccessTokenResponse data, response status code and response headers
    def o_auth_post_with_http_info(grant_type, client_id, client_secret, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.o_auth_post ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'grant_type' is set
      if @api_client.config.client_side_validation && grant_type.nil?
        fail ArgumentError, "Missing the required parameter 'grant_type' when calling CellsApi.o_auth_post"
      end
      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling CellsApi.o_auth_post"
      end
      # verify the required parameter 'client_secret' is set
      if @api_client.config.client_side_validation && client_secret.nil?
        fail ArgumentError, "Missing the required parameter 'client_secret' when calling CellsApi.o_auth_post"
      end
      # resource path
      local_var_path = "/connect/token"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}
      form_params["grant_type"] = grant_type
      form_params["client_id"] = client_id
      form_params["client_secret"] = client_secret

      # http body (model)
      post_body = nil
      post_body = nil
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AccessTokenResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#o_auth_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check if file or folder exists
    # 
    # @param path File or folder path e.g. &#39;/file.ext&#39; or &#39;/folder&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @option opts [String] :version_id File version ID
    # @return [ObjectExist]
    def object_exists(path, opts = {})
      data, _status_code, _headers = object_exists_with_http_info(path, opts)
      return data
    end

    # Check if file or folder exists
    # 
    # @param path File or folder path e.g. &#39;/file.ext&#39; or &#39;/folder&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @option opts [String] :version_id File version ID
    # @return [Array<(ObjectExist, Fixnum, Hash)>] ObjectExist data, response status code and response headers
    def object_exists_with_http_info(path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.object_exists ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling CellsApi.object_exists"
      end
      # resource path
      local_var_path = "/cells/storage/exist/{path}".sub('{' + 'path' + '}', path.to_s)

      # query parameters
      query_params = {}
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?
      query_params[:'versionId'] = opts[:'version_id'] if !opts[:'version_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ObjectExist')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#object_exists\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param batch_convert_request 
    # @param [Hash] opts the optional parameters
    # @return [File]
    def post_batch_convert(batch_convert_request, opts = {})
      data, _status_code, _headers = post_batch_convert_with_http_info(batch_convert_request, opts)
      return data
    end

    # 
    # 
    # @param batch_convert_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def post_batch_convert_with_http_info(batch_convert_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.post_batch_convert ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'batch_convert_request' is set
      if @api_client.config.client_side_validation && batch_convert_request.nil?
        fail ArgumentError, "Missing the required parameter 'batch_convert_request' when calling CellsApi.post_batch_convert"
      end
      # resource path
      local_var_path = "/cells/batch/convert"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(batch_convert_request)
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#post_batch_convert\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check if storage exists
    # 
    # @param storage_name Storage name
    # @param [Hash] opts the optional parameters
    # @return [StorageExist]
    def storage_exists(storage_name, opts = {})
      data, _status_code, _headers = storage_exists_with_http_info(storage_name, opts)
      return data
    end

    # Check if storage exists
    # 
    # @param storage_name Storage name
    # @param [Hash] opts the optional parameters
    # @return [Array<(StorageExist, Fixnum, Hash)>] StorageExist data, response status code and response headers
    def storage_exists_with_http_info(storage_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.storage_exists ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'storage_name' is set
      if @api_client.config.client_side_validation && storage_name.nil?
        fail ArgumentError, "Missing the required parameter 'storage_name' when calling CellsApi.storage_exists"
      end
      # resource path
      local_var_path = "/cells/storage/{storageName}/exist".sub('{' + 'storageName' + '}', storage_name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'StorageExist')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#storage_exists\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload file
    # 
    # @param path Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.             
    # @param file File to upload
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @return [FilesUploadResult]
    def upload_file(path, file, opts = {})
      data, _status_code, _headers = upload_file_with_http_info(path, file, opts)
      return data
    end

    # Upload file
    # 
    # @param path Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.             
    # @param file File to upload
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage_name Storage name
    # @return [Array<(FilesUploadResult, Fixnum, Hash)>] FilesUploadResult data, response status code and response headers
    def upload_file_with_http_info(path, file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsApi.upload_file ..."
      end
      @api_client.request_token_if_needed
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling CellsApi.upload_file"
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling CellsApi.upload_file"
      end
      # resource path
      local_var_path = "/cells/storage/file/{path}".sub('{' + 'path' + '}', path.to_s)

      # query parameters
      query_params = {}
      query_params[:'storageName'] = opts[:'storage_name'] if !opts[:'storage_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream'])
      post_body =file
      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FilesUploadResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsApi#upload_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
