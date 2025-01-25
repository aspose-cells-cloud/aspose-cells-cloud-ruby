=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="SqlScriptSaveOptionsrb.cs">
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


require 'date'

module AsposeCellsCloud

  class SqlScriptSaveOptions
        #Check if the table name exists before creating            
        attr_accessor :check_if_table_exists
        #Gets and sets the map of column type for different database.            
        attr_accessor :column_type_map
        #Check all data to find columns' data type.            
        attr_accessor :check_all_data_for_column_type
        #Insert blank line between each data.            
        attr_accessor :add_blank_line_between_rows
        #Gets and sets character separator of sql script.            
        attr_accessor :separator
        #Gets and sets the operator type of sql.            
        attr_accessor :operator_type
        #Represents which column is primary key of the data table.            
        attr_accessor :primary_key
        #Indicates whether exporting sql of creating table.            
        attr_accessor :create_table
        #Gets and sets the name of id column.            
        attr_accessor :id_name
        #Gets and sets the start id.            
        attr_accessor :start_id
        #Gets and sets the table name.            
        attr_accessor :table_name
        #Indicates whether exporting all data as string value.            
        attr_accessor :export_as_string
        #Gets or sets the exporting range.            
        attr_accessor :export_area
        #Indicates whether the range contains header row.            
        attr_accessor :has_header_row
        #            
        attr_accessor :save_format
        #            
        attr_accessor :cached_file_folder
        #            
        attr_accessor :clear_data
        #            
        attr_accessor :create_directory
        #            
        attr_accessor :enable_http_compression
        #            
        attr_accessor :refresh_chart_cache
        #            
        attr_accessor :sort_names
        #            
        attr_accessor :validate_merged_areas

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'check_if_table_exists' => :'CheckIfTableExists',
        :'column_type_map' => :'ColumnTypeMap',
        :'check_all_data_for_column_type' => :'CheckAllDataForColumnType',
        :'add_blank_line_between_rows' => :'AddBlankLineBetweenRows',
        :'separator' => :'Separator',
        :'operator_type' => :'OperatorType',
        :'primary_key' => :'PrimaryKey',
        :'create_table' => :'CreateTable',
        :'id_name' => :'IdName',
        :'start_id' => :'StartId',
        :'table_name' => :'TableName',
        :'export_as_string' => :'ExportAsString',
        :'export_area' => :'ExportArea',
        :'has_header_row' => :'HasHeaderRow',
        :'save_format' => :'SaveFormat',
        :'cached_file_folder' => :'CachedFileFolder',
        :'clear_data' => :'ClearData',
        :'create_directory' => :'CreateDirectory',
        :'enable_http_compression' => :'EnableHTTPCompression',
        :'refresh_chart_cache' => :'RefreshChartCache',
        :'sort_names' => :'SortNames',
        :'validate_merged_areas' => :'ValidateMergedAreas'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'check_if_table_exists' => :'BOOLEAN',
        :'column_type_map' => :'String',
        :'check_all_data_for_column_type' => :'BOOLEAN',
        :'add_blank_line_between_rows' => :'BOOLEAN',
        :'separator' => :'String',
        :'operator_type' => :'String',
        :'primary_key' => :'Integer',
        :'create_table' => :'BOOLEAN',
        :'id_name' => :'String',
        :'start_id' => :'Integer',
        :'table_name' => :'String',
        :'export_as_string' => :'BOOLEAN',
        :'export_area' => :'CellArea',
        :'has_header_row' => :'BOOLEAN',
        :'save_format' => :'String',
        :'cached_file_folder' => :'String',
        :'clear_data' => :'BOOLEAN',
        :'create_directory' => :'BOOLEAN',
        :'enable_http_compression' => :'BOOLEAN',
        :'refresh_chart_cache' => :'BOOLEAN',
        :'sort_names' => :'BOOLEAN',
        :'validate_merged_areas' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'CheckIfTableExists')
          self.check_if_table_exists = attributes[:'CheckIfTableExists']
      end
      if attributes.has_key?(:'ColumnTypeMap')
          self.column_type_map = attributes[:'ColumnTypeMap']
      end
      if attributes.has_key?(:'CheckAllDataForColumnType')
          self.check_all_data_for_column_type = attributes[:'CheckAllDataForColumnType']
      end
      if attributes.has_key?(:'AddBlankLineBetweenRows')
          self.add_blank_line_between_rows = attributes[:'AddBlankLineBetweenRows']
      end
      if attributes.has_key?(:'Separator')
          self.separator = attributes[:'Separator']
      end
      if attributes.has_key?(:'OperatorType')
          self.operator_type = attributes[:'OperatorType']
      end
      if attributes.has_key?(:'PrimaryKey')
          self.primary_key = attributes[:'PrimaryKey']
      end
      if attributes.has_key?(:'CreateTable')
          self.create_table = attributes[:'CreateTable']
      end
      if attributes.has_key?(:'IdName')
          self.id_name = attributes[:'IdName']
      end
      if attributes.has_key?(:'StartId')
          self.start_id = attributes[:'StartId']
      end
      if attributes.has_key?(:'TableName')
          self.table_name = attributes[:'TableName']
      end
      if attributes.has_key?(:'ExportAsString')
          self.export_as_string = attributes[:'ExportAsString']
      end
      if attributes.has_key?(:'ExportArea')
          self.export_area = attributes[:'ExportArea']
      end
      if attributes.has_key?(:'HasHeaderRow')
          self.has_header_row = attributes[:'HasHeaderRow']
      end
      if attributes.has_key?(:'SaveFormat')
          self.save_format = attributes[:'SaveFormat']
      end
      if attributes.has_key?(:'CachedFileFolder')
          self.cached_file_folder = attributes[:'CachedFileFolder']
      end
      if attributes.has_key?(:'ClearData')
          self.clear_data = attributes[:'ClearData']
      end
      if attributes.has_key?(:'CreateDirectory')
          self.create_directory = attributes[:'CreateDirectory']
      end
      if attributes.has_key?(:'EnableHTTPCompression')
          self.enable_http_compression = attributes[:'EnableHTTPCompression']
      end
      if attributes.has_key?(:'RefreshChartCache')
          self.refresh_chart_cache = attributes[:'RefreshChartCache']
      end
      if attributes.has_key?(:'SortNames')
          self.sort_names = attributes[:'SortNames']
      end
      if attributes.has_key?(:'ValidateMergedAreas')
          self.validate_merged_areas = attributes[:'ValidateMergedAreas']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @check_if_table_exists.nil?
          invalid_properties.push("invalid value for 'check_if_table_exists', check_if_table_exists cannot be nil.")
      end
      if @column_type_map.nil?
          invalid_properties.push("invalid value for 'column_type_map', column_type_map cannot be nil.")
      end
      if @check_all_data_for_column_type.nil?
          invalid_properties.push("invalid value for 'check_all_data_for_column_type', check_all_data_for_column_type cannot be nil.")
      end
      if @add_blank_line_between_rows.nil?
          invalid_properties.push("invalid value for 'add_blank_line_between_rows', add_blank_line_between_rows cannot be nil.")
      end
      if @separator.nil?
          invalid_properties.push("invalid value for 'separator', separator cannot be nil.")
      end
      if @operator_type.nil?
          invalid_properties.push("invalid value for 'operator_type', operator_type cannot be nil.")
      end
      if @primary_key.nil?
          invalid_properties.push("invalid value for 'primary_key', primary_key cannot be nil.")
      end
      if @create_table.nil?
          invalid_properties.push("invalid value for 'create_table', create_table cannot be nil.")
      end
      if @id_name.nil?
          invalid_properties.push("invalid value for 'id_name', id_name cannot be nil.")
      end
      if @start_id.nil?
          invalid_properties.push("invalid value for 'start_id', start_id cannot be nil.")
      end
      if @table_name.nil?
          invalid_properties.push("invalid value for 'table_name', table_name cannot be nil.")
      end
      if @export_as_string.nil?
          invalid_properties.push("invalid value for 'export_as_string', export_as_string cannot be nil.")
      end
      if @export_area.nil?
          invalid_properties.push("invalid value for 'export_area', export_area cannot be nil.")
      end
      if @has_header_row.nil?
          invalid_properties.push("invalid value for 'has_header_row', has_header_row cannot be nil.")
      end
      if @save_format.nil?
          invalid_properties.push("invalid value for 'save_format', save_format cannot be nil.")
      end
      if @cached_file_folder.nil?
          invalid_properties.push("invalid value for 'cached_file_folder', cached_file_folder cannot be nil.")
      end
      if @clear_data.nil?
          invalid_properties.push("invalid value for 'clear_data', clear_data cannot be nil.")
      end
      if @create_directory.nil?
          invalid_properties.push("invalid value for 'create_directory', create_directory cannot be nil.")
      end
      if @enable_http_compression.nil?
          invalid_properties.push("invalid value for 'enable_http_compression', enable_http_compression cannot be nil.")
      end
      if @refresh_chart_cache.nil?
          invalid_properties.push("invalid value for 'refresh_chart_cache', refresh_chart_cache cannot be nil.")
      end
      if @sort_names.nil?
          invalid_properties.push("invalid value for 'sort_names', sort_names cannot be nil.")
      end
      if @validate_merged_areas.nil?
          invalid_properties.push("invalid value for 'validate_merged_areas', validate_merged_areas cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @check_if_table_exists.nil?
      return false if @column_type_map.nil?
      return false if @check_all_data_for_column_type.nil?
      return false if @add_blank_line_between_rows.nil?
      return false if @separator.nil?
      return false if @operator_type.nil?
      return false if @primary_key.nil?
      return false if @create_table.nil?
      return false if @id_name.nil?
      return false if @start_id.nil?
      return false if @table_name.nil?
      return false if @export_as_string.nil?
      return false if @export_area.nil?
      return false if @has_header_row.nil?
      return false if @save_format.nil?
      return false if @cached_file_folder.nil?
      return false if @clear_data.nil?
      return false if @create_directory.nil?
      return false if @enable_http_compression.nil?
      return false if @refresh_chart_cache.nil?
      return false if @sort_names.nil?
      return false if @validate_merged_areas.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          check_if_table_exists == o.check_if_table_exists &&
          column_type_map == o.column_type_map &&
          check_all_data_for_column_type == o.check_all_data_for_column_type &&
          add_blank_line_between_rows == o.add_blank_line_between_rows &&
          separator == o.separator &&
          operator_type == o.operator_type &&
          primary_key == o.primary_key &&
          create_table == o.create_table &&
          id_name == o.id_name &&
          start_id == o.start_id &&
          table_name == o.table_name &&
          export_as_string == o.export_as_string &&
          export_area == o.export_area &&
          has_header_row == o.has_header_row &&
          save_format == o.save_format &&
          cached_file_folder == o.cached_file_folder &&
          clear_data == o.clear_data &&
          create_directory == o.create_directory &&
          enable_http_compression == o.enable_http_compression &&
          refresh_chart_cache == o.refresh_chart_cache &&
          sort_names == o.sort_names &&
          validate_merged_areas == o.validate_merged_areas 
          std_dev == o.std_dev
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [ check_if_table_exists , column_type_map , check_all_data_for_column_type , add_blank_line_between_rows , separator , operator_type , primary_key , create_table , id_name , start_id , table_name , export_as_string , export_area , has_header_row , save_format , cached_file_folder , clear_data , create_directory , enable_http_compression , refresh_chart_cache , sort_names , validate_merged_areas ].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = AsposeCellsCloud.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
