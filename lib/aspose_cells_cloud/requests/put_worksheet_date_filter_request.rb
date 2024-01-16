=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PutWorksheetDateFilter_request.rb.cs">
   Copyright (c) 2024 Aspose.Cells Cloud
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
  class PutWorksheetDateFilterRequest

    attr_accessor :name  
    attr_accessor :sheet_name  
    attr_accessor :range  
    attr_accessor :field_index  
    attr_accessor :date_time_grouping_type  
    attr_accessor :year  
    attr_accessor :month  
    attr_accessor :day  
    attr_accessor :hour  
    attr_accessor :minute  
    attr_accessor :second  
    attr_accessor :match_blanks  
    attr_accessor :refresh  
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
      if attributes.has_key?(:'fieldIndex')
          self.field_index = attributes[:'fieldIndex']
      end
      if attributes.has_key?(:'dateTimeGroupingType')
          self.date_time_grouping_type = attributes[:'dateTimeGroupingType']
      end
      if attributes.has_key?(:'year')
          self.year = attributes[:'year']
      end
      if attributes.has_key?(:'month')
          self.month = attributes[:'month']
      end
      if attributes.has_key?(:'day')
          self.day = attributes[:'day']
      end
      if attributes.has_key?(:'hour')
          self.hour = attributes[:'hour']
      end
      if attributes.has_key?(:'minute')
          self.minute = attributes[:'minute']
      end
      if attributes.has_key?(:'second')
          self.second = attributes[:'second']
      end
      if attributes.has_key?(:'matchBlanks')
          self.match_blanks = attributes[:'matchBlanks']
      end
      if attributes.has_key?(:'refresh')
          self.refresh = attributes[:'refresh']
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
        :'field_index' => :'fieldIndex',
        :'date_time_grouping_type' => :'dateTimeGroupingType',
        :'year' => :'year',
        :'month' => :'month',
        :'day' => :'day',
        :'hour' => :'hour',
        :'minute' => :'minute',
        :'second' => :'second',
        :'match_blanks' => :'matchBlanks',
        :'refresh' => :'refresh',
        :'folder' => :'folder',
        :'storage_name' => :'storageName'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'sheet_name' => :'String',
        :'range' => :'String',
        :'field_index' => :'Integer',
        :'date_time_grouping_type' => :'String',
        :'year' => :'Integer',
        :'month' => :'Integer',
        :'day' => :'Integer',
        :'hour' => :'Integer',
        :'minute' => :'Integer',
        :'second' => :'Integer',
        :'match_blanks' => :'BOOLEAN',
        :'refresh' => :'BOOLEAN',
        :'folder' => :'String',
        :'storage_name' => :'String'
      }
    end

    def create_http_request(api_client,opts = {})
      if api_client.config.debugging
        api_client.config.logger.debug "Calling API: CellsApi.put_worksheet_date_filter ..."
      end
      api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if api_client.config.client_side_validation && name.nil?
          fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.put_worksheet_date_filter "
      end 
      # verify the required parameter 'sheet_name' is set
      if api_client.config.client_side_validation && sheet_name.nil?
          fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.put_worksheet_date_filter "
      end 
      # verify the required parameter 'range' is set
      if api_client.config.client_side_validation && range.nil?
          fail ArgumentError, "Missing the required parameter 'range' when calling CellsApi.put_worksheet_date_filter "
      end 
      # verify the required parameter 'field_index' is set
      if api_client.config.client_side_validation && field_index.nil?
          fail ArgumentError, "Missing the required parameter 'field_index' when calling CellsApi.put_worksheet_date_filter "
      end 
      # verify the required parameter 'date_time_grouping_type' is set
      if api_client.config.client_side_validation && date_time_grouping_type.nil?
          fail ArgumentError, "Missing the required parameter 'date_time_grouping_type' when calling CellsApi.put_worksheet_date_filter "
      end 

      # resource path
      local_var_path = "/cells/{name}/worksheets/{sheetName}/autoFilter/dateFilter".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)
      # query parameters
      query_params = {}
      query_params[:'range'] = self.range if !self.range.nil? 
      query_params[:'fieldIndex'] = self.field_index if !self.field_index.nil? 
      query_params[:'dateTimeGroupingType'] = self.date_time_grouping_type if !self.date_time_grouping_type.nil? 
      query_params[:'year'] = self.year if !self.year.nil? 
      query_params[:'month'] = self.month if !self.month.nil? 
      query_params[:'day'] = self.day if !self.day.nil? 
      query_params[:'hour'] = self.hour if !self.hour.nil? 
      query_params[:'minute'] = self.minute if !self.minute.nil? 
      query_params[:'second'] = self.second if !self.second.nil? 
      query_params[:'matchBlanks'] = self.match_blanks if !self.match_blanks.nil? 
      query_params[:'refresh'] = self.refresh if !self.refresh.nil? 
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
         

      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if api_client.config.debugging
        api_client.config.logger.debug "API called: Specification.Name>Api.put_worksheet_date_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end