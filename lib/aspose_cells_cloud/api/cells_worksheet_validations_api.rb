=begin
#Web API Swagger specification

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require "uri"

module AsposeCellsCloud
  class CellsWorksheetValidationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete worksheet validation by index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param validation_index The validation index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage storage name.
    # @return [ValidationResponse]
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
    # @option opts [String] :storage storage name.
    # @return [Array<(ValidationResponse, Fixnum, Hash)>] ValidationResponse data, response status code and response headers
    def cells_worksheet_validations_delete_worksheet_validation_with_http_info(name, sheet_name, validation_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsWorksheetValidationsApi.cells_worksheet_validations_delete_worksheet_validation ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsWorksheetValidationsApi.cells_worksheet_validations_delete_worksheet_validation"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsWorksheetValidationsApi.cells_worksheet_validations_delete_worksheet_validation"
      end
      # verify the required parameter 'validation_index' is set
      if @api_client.config.client_side_validation && validation_index.nil?
        fail ArgumentError, "Missing the required parameter 'validation_index' when calling CellsWorksheetValidationsApi.cells_worksheet_validations_delete_worksheet_validation"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/validations/{validationIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'validationIndex' + '}', validation_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ValidationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsWorksheetValidationsApi#cells_worksheet_validations_delete_worksheet_validation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
    # @option opts [String] :storage storage name.
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
    # @option opts [String] :storage storage name.
    # @return [Array<(ValidationResponse, Fixnum, Hash)>] ValidationResponse data, response status code and response headers
    def cells_worksheet_validations_get_worksheet_validation_with_http_info(name, sheet_name, validation_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsWorksheetValidationsApi.cells_worksheet_validations_get_worksheet_validation ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsWorksheetValidationsApi.cells_worksheet_validations_get_worksheet_validation"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsWorksheetValidationsApi.cells_worksheet_validations_get_worksheet_validation"
      end
      # verify the required parameter 'validation_index' is set
      if @api_client.config.client_side_validation && validation_index.nil?
        fail ArgumentError, "Missing the required parameter 'validation_index' when calling CellsWorksheetValidationsApi.cells_worksheet_validations_get_worksheet_validation"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/validations/{validationIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'validationIndex' + '}', validation_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ValidationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsWorksheetValidationsApi#cells_worksheet_validations_get_worksheet_validation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get worksheet validations.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Document folder.
    # @option opts [String] :storage storage name.
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
    # @option opts [String] :storage storage name.
    # @return [Array<(ValidationsResponse, Fixnum, Hash)>] ValidationsResponse data, response status code and response headers
    def cells_worksheet_validations_get_worksheet_validations_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsWorksheetValidationsApi.cells_worksheet_validations_get_worksheet_validations ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsWorksheetValidationsApi.cells_worksheet_validations_get_worksheet_validations"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsWorksheetValidationsApi.cells_worksheet_validations_get_worksheet_validations"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/validations".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ValidationsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsWorksheetValidationsApi#cells_worksheet_validations_get_worksheet_validations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
    # @option opts [String] :storage storage name.
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
    # @option opts [String] :storage storage name.
    # @return [Array<(ValidationResponse, Fixnum, Hash)>] ValidationResponse data, response status code and response headers
    def cells_worksheet_validations_post_worksheet_validation_with_http_info(name, sheet_name, validation_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsWorksheetValidationsApi.cells_worksheet_validations_post_worksheet_validation ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsWorksheetValidationsApi.cells_worksheet_validations_post_worksheet_validation"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsWorksheetValidationsApi.cells_worksheet_validations_post_worksheet_validation"
      end
      # verify the required parameter 'validation_index' is set
      if @api_client.config.client_side_validation && validation_index.nil?
        fail ArgumentError, "Missing the required parameter 'validation_index' when calling CellsWorksheetValidationsApi.cells_worksheet_validations_post_worksheet_validation"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/validations/{validationIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s).sub('{' + 'validationIndex' + '}', validation_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ValidationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsWorksheetValidationsApi#cells_worksheet_validations_post_worksheet_validation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add worksheet validation at index.
    # 
    # @param name Document name.
    # @param sheet_name Worksheet name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :range Specified cells area
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage storage name.
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
    # @option opts [String] :folder Document&#39;s folder.
    # @option opts [String] :storage storage name.
    # @return [Array<(ValidationResponse, Fixnum, Hash)>] ValidationResponse data, response status code and response headers
    def cells_worksheet_validations_put_worksheet_validation_with_http_info(name, sheet_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CellsWorksheetValidationsApi.cells_worksheet_validations_put_worksheet_validation ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CellsWorksheetValidationsApi.cells_worksheet_validations_put_worksheet_validation"
      end
      # verify the required parameter 'sheet_name' is set
      if @api_client.config.client_side_validation && sheet_name.nil?
        fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsWorksheetValidationsApi.cells_worksheet_validations_put_worksheet_validation"
      end
      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/validations".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'range'] = opts[:'range'] if !opts[:'range'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ValidationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CellsWorksheetValidationsApi#cells_worksheet_validations_put_worksheet_validation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
