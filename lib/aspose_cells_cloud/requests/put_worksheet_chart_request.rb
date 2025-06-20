=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PutWorksheetChart_request.rb.cs">
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
  class PutWorksheetChartRequest

    attr_accessor :name  
    attr_accessor :sheet_name  
    attr_accessor :chart_type  
    attr_accessor :upper_left_row  
    attr_accessor :upper_left_column  
    attr_accessor :lower_right_row  
    attr_accessor :lower_right_column  
    attr_accessor :area  
    attr_accessor :is_vertical  
    attr_accessor :category_data  
    attr_accessor :is_auto_get_serial_name  
    attr_accessor :title  
    attr_accessor :folder  
    attr_accessor :data_labels  
    attr_accessor :data_labels_position  
    attr_accessor :pivot_table_sheet  
    attr_accessor :pivot_table_name  
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

      if attributes.has_key?(:'chartType')
          self.chart_type = attributes[:'chartType']
      end

      if attributes.has_key?(:'upperLeftRow')
          self.upper_left_row = attributes[:'upperLeftRow']
      end

      if attributes.has_key?(:'upperLeftColumn')
          self.upper_left_column = attributes[:'upperLeftColumn']
      end

      if attributes.has_key?(:'lowerRightRow')
          self.lower_right_row = attributes[:'lowerRightRow']
      end

      if attributes.has_key?(:'lowerRightColumn')
          self.lower_right_column = attributes[:'lowerRightColumn']
      end

      if attributes.has_key?(:'area')
          self.area = attributes[:'area']
      end

      if attributes.has_key?(:'isVertical')
          self.is_vertical = attributes[:'isVertical']
      end

      if attributes.has_key?(:'categoryData')
          self.category_data = attributes[:'categoryData']
      end

      if attributes.has_key?(:'isAutoGetSerialName')
          self.is_auto_get_serial_name = attributes[:'isAutoGetSerialName']
      end

      if attributes.has_key?(:'title')
          self.title = attributes[:'title']
      end

      if attributes.has_key?(:'folder')
          self.folder = attributes[:'folder']
      end

      if attributes.has_key?(:'dataLabels')
          self.data_labels = attributes[:'dataLabels']
      end

      if attributes.has_key?(:'dataLabelsPosition')
          self.data_labels_position = attributes[:'dataLabelsPosition']
      end

      if attributes.has_key?(:'pivotTableSheet')
          self.pivot_table_sheet = attributes[:'pivotTableSheet']
      end

      if attributes.has_key?(:'pivotTableName')
          self.pivot_table_name = attributes[:'pivotTableName']
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
        :'chart_type' => :'chartType',
        :'upper_left_row' => :'upperLeftRow',
        :'upper_left_column' => :'upperLeftColumn',
        :'lower_right_row' => :'lowerRightRow',
        :'lower_right_column' => :'lowerRightColumn',
        :'area' => :'area',
        :'is_vertical' => :'isVertical',
        :'category_data' => :'categoryData',
        :'is_auto_get_serial_name' => :'isAutoGetSerialName',
        :'title' => :'title',
        :'folder' => :'folder',
        :'data_labels' => :'dataLabels',
        :'data_labels_position' => :'dataLabelsPosition',
        :'pivot_table_sheet' => :'pivotTableSheet',
        :'pivot_table_name' => :'pivotTableName',
        :'storage_name' => :'storageName'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'sheet_name' => :'String',
        :'chart_type' => :'String',
        :'upper_left_row' => :'Integer',
        :'upper_left_column' => :'Integer',
        :'lower_right_row' => :'Integer',
        :'lower_right_column' => :'Integer',
        :'area' => :'String',
        :'is_vertical' => :'BOOLEAN',
        :'category_data' => :'String',
        :'is_auto_get_serial_name' => :'BOOLEAN',
        :'title' => :'String',
        :'folder' => :'String',
        :'data_labels' => :'BOOLEAN',
        :'data_labels_position' => :'String',
        :'pivot_table_sheet' => :'String',
        :'pivot_table_name' => :'String',
        :'storage_name' => :'String'
      }
    end

    def create_http_request(api_client,opts = {})
      if api_client.config.debugging
        api_client.config.logger.debug "Calling API: CellsApi.put_worksheet_chart ..."
      end
      api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if api_client.config.client_side_validation && name.nil?
          fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.put_worksheet_chart "
      end 
      # verify the required parameter 'sheet_name' is set
      if api_client.config.client_side_validation && sheet_name.nil?
          fail ArgumentError, "Missing the required parameter 'sheet_name' when calling CellsApi.put_worksheet_chart "
      end 
      # verify the required parameter 'chart_type' is set
      if api_client.config.client_side_validation && chart_type.nil?
          fail ArgumentError, "Missing the required parameter 'chart_type' when calling CellsApi.put_worksheet_chart "
      end 

      # resource path
      local_var_path = "v3.0/cells/{name}/worksheets/{sheetName}/charts".sub('{' + 'name' + '}', name.to_s).sub('{' + 'sheetName' + '}', sheet_name.to_s)
      # query parameters
      query_params = {}
      query_params[:'chartType'] = self.chart_type if !self.chart_type.nil? 
      query_params[:'upperLeftRow'] = self.upper_left_row if !self.upper_left_row.nil? 
      query_params[:'upperLeftColumn'] = self.upper_left_column if !self.upper_left_column.nil? 
      query_params[:'lowerRightRow'] = self.lower_right_row if !self.lower_right_row.nil? 
      query_params[:'lowerRightColumn'] = self.lower_right_column if !self.lower_right_column.nil? 
      query_params[:'area'] = self.area if !self.area.nil? 
      query_params[:'isVertical'] = self.is_vertical if !self.is_vertical.nil? 
      query_params[:'categoryData'] = self.category_data if !self.category_data.nil? 
      query_params[:'isAutoGetSerialName'] = self.is_auto_get_serial_name if !self.is_auto_get_serial_name.nil? 
      query_params[:'title'] = self.title if !self.title.nil? 
      query_params[:'folder'] = self.folder if !self.folder.nil? 
      query_params[:'dataLabels'] = self.data_labels if !self.data_labels.nil? 
      query_params[:'dataLabelsPosition'] = self.data_labels_position if !self.data_labels_position.nil? 
      query_params[:'pivotTableSheet'] = self.pivot_table_sheet if !self.pivot_table_sheet.nil? 
      query_params[:'pivotTableName'] = self.pivot_table_name if !self.pivot_table_name.nil? 
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
        api_client.config.logger.debug "API called: Specification.Name>Api.put_worksheet_chart\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end