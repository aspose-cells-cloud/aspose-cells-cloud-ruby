=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="AnalyzedTableDescriptionrb.cs">
   Copyright (c) 2026 Aspose.Cells Cloud
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

  class AnalyzedTableDescription
        #Represents table name.            
        attr_accessor :name
        #Represents worksheet name which is where the table is located.            
        attr_accessor :sheet_name
        #Represents analyzed description about table columns.            
        attr_accessor :columns
        #Represents date columns list.            
        attr_accessor :date_columns
        #Represents number columns list.            
        attr_accessor :number_columns
        #Represents string columns list.            
        attr_accessor :text_columns
        #Represents exception columns list.            
        attr_accessor :exception_columns
        #Represents there is a table header in the table.            
        attr_accessor :has_table_header_row
        #Represents there is a total row in the table.            
        attr_accessor :has_table_total_row
        #Represents the column index as the start data column.            
        attr_accessor :start_data_column_index
        #Represents the column index as the end data column.            
        attr_accessor :end_data_column_index
        #Represents the row index as the start data row.            
        attr_accessor :start_data_row_index
        #Represents the row index as the end data row.            
        attr_accessor :end_data_row_index
        #Represents table thumbnail. Base64String            
        attr_accessor :thumbnail
        #Represents a collection of charts, which is a collection of charts created based on data analysis of a table.            
        attr_accessor :discover_charts
        #Represents a collection of pivot tables, which is a collection of pivot tables created based on data analysis of a table.            
        attr_accessor :discover_pivot_tables

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'Name',
        :'sheet_name' => :'SheetName',
        :'columns' => :'Columns',
        :'date_columns' => :'DateColumns',
        :'number_columns' => :'NumberColumns',
        :'text_columns' => :'TextColumns',
        :'exception_columns' => :'ExceptionColumns',
        :'has_table_header_row' => :'HasTableHeaderRow',
        :'has_table_total_row' => :'HasTableTotalRow',
        :'start_data_column_index' => :'StartDataColumnIndex',
        :'end_data_column_index' => :'EndDataColumnIndex',
        :'start_data_row_index' => :'StartDataRowIndex',
        :'end_data_row_index' => :'EndDataRowIndex',
        :'thumbnail' => :'Thumbnail',
        :'discover_charts' => :'DiscoverCharts',
        :'discover_pivot_tables' => :'DiscoverPivotTables'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'sheet_name' => :'String',
        :'columns' => :'Array<AnalyzedColumnDescription>',
        :'date_columns' => :'Array<Integer>',
        :'number_columns' => :'Array<Integer>',
        :'text_columns' => :'Array<Integer>',
        :'exception_columns' => :'Array<Integer>',
        :'has_table_header_row' => :'BOOLEAN',
        :'has_table_total_row' => :'BOOLEAN',
        :'start_data_column_index' => :'Integer',
        :'end_data_column_index' => :'Integer',
        :'start_data_row_index' => :'Integer',
        :'end_data_row_index' => :'Integer',
        :'thumbnail' => :'String',
        :'discover_charts' => :'Array<DiscoverChart>',
        :'discover_pivot_tables' => :'Array<DiscoverPivotTable>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Name')
          self.name = attributes[:'Name']
      end
      if attributes.has_key?(:'SheetName')
          self.sheet_name = attributes[:'SheetName']
      end
      if attributes.has_key?(:'Columns')
          self.columns = attributes[:'Columns']
      end
      if attributes.has_key?(:'DateColumns')
          self.date_columns = attributes[:'DateColumns']
      end
      if attributes.has_key?(:'NumberColumns')
          self.number_columns = attributes[:'NumberColumns']
      end
      if attributes.has_key?(:'TextColumns')
          self.text_columns = attributes[:'TextColumns']
      end
      if attributes.has_key?(:'ExceptionColumns')
          self.exception_columns = attributes[:'ExceptionColumns']
      end
      if attributes.has_key?(:'HasTableHeaderRow')
          self.has_table_header_row = attributes[:'HasTableHeaderRow']
      end
      if attributes.has_key?(:'HasTableTotalRow')
          self.has_table_total_row = attributes[:'HasTableTotalRow']
      end
      if attributes.has_key?(:'StartDataColumnIndex')
          self.start_data_column_index = attributes[:'StartDataColumnIndex']
      end
      if attributes.has_key?(:'EndDataColumnIndex')
          self.end_data_column_index = attributes[:'EndDataColumnIndex']
      end
      if attributes.has_key?(:'StartDataRowIndex')
          self.start_data_row_index = attributes[:'StartDataRowIndex']
      end
      if attributes.has_key?(:'EndDataRowIndex')
          self.end_data_row_index = attributes[:'EndDataRowIndex']
      end
      if attributes.has_key?(:'Thumbnail')
          self.thumbnail = attributes[:'Thumbnail']
      end
      if attributes.has_key?(:'DiscoverCharts')
          self.discover_charts = attributes[:'DiscoverCharts']
      end
      if attributes.has_key?(:'DiscoverPivotTables')
          self.discover_pivot_tables = attributes[:'DiscoverPivotTables']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
          invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end
      if @sheet_name.nil?
          invalid_properties.push("invalid value for 'sheet_name', sheet_name cannot be nil.")
      end
      if @columns.nil?
          invalid_properties.push("invalid value for 'columns', columns cannot be nil.")
      end
      if @date_columns.nil?
          invalid_properties.push("invalid value for 'date_columns', date_columns cannot be nil.")
      end
      if @number_columns.nil?
          invalid_properties.push("invalid value for 'number_columns', number_columns cannot be nil.")
      end
      if @text_columns.nil?
          invalid_properties.push("invalid value for 'text_columns', text_columns cannot be nil.")
      end
      if @exception_columns.nil?
          invalid_properties.push("invalid value for 'exception_columns', exception_columns cannot be nil.")
      end
      if @has_table_header_row.nil?
          invalid_properties.push("invalid value for 'has_table_header_row', has_table_header_row cannot be nil.")
      end
      if @has_table_total_row.nil?
          invalid_properties.push("invalid value for 'has_table_total_row', has_table_total_row cannot be nil.")
      end
      if @start_data_column_index.nil?
          invalid_properties.push("invalid value for 'start_data_column_index', start_data_column_index cannot be nil.")
      end
      if @end_data_column_index.nil?
          invalid_properties.push("invalid value for 'end_data_column_index', end_data_column_index cannot be nil.")
      end
      if @start_data_row_index.nil?
          invalid_properties.push("invalid value for 'start_data_row_index', start_data_row_index cannot be nil.")
      end
      if @end_data_row_index.nil?
          invalid_properties.push("invalid value for 'end_data_row_index', end_data_row_index cannot be nil.")
      end
      if @thumbnail.nil?
          invalid_properties.push("invalid value for 'thumbnail', thumbnail cannot be nil.")
      end
      if @discover_charts.nil?
          invalid_properties.push("invalid value for 'discover_charts', discover_charts cannot be nil.")
      end
      if @discover_pivot_tables.nil?
          invalid_properties.push("invalid value for 'discover_pivot_tables', discover_pivot_tables cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @sheet_name.nil?
      return false if @columns.nil?
      return false if @date_columns.nil?
      return false if @number_columns.nil?
      return false if @text_columns.nil?
      return false if @exception_columns.nil?
      return false if @has_table_header_row.nil?
      return false if @has_table_total_row.nil?
      return false if @start_data_column_index.nil?
      return false if @end_data_column_index.nil?
      return false if @start_data_row_index.nil?
      return false if @end_data_row_index.nil?
      return false if @thumbnail.nil?
      return false if @discover_charts.nil?
      return false if @discover_pivot_tables.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          sheet_name == o.sheet_name &&
          columns == o.columns &&
          date_columns == o.date_columns &&
          number_columns == o.number_columns &&
          text_columns == o.text_columns &&
          exception_columns == o.exception_columns &&
          has_table_header_row == o.has_table_header_row &&
          has_table_total_row == o.has_table_total_row &&
          start_data_column_index == o.start_data_column_index &&
          end_data_column_index == o.end_data_column_index &&
          start_data_row_index == o.start_data_row_index &&
          end_data_row_index == o.end_data_row_index &&
          thumbnail == o.thumbnail &&
          discover_charts == o.discover_charts &&
          discover_pivot_tables == o.discover_pivot_tables 
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
      [ name , sheet_name , columns , date_columns , number_columns , text_columns , exception_columns , has_table_header_row , has_table_total_row , start_data_column_index , end_data_column_index , start_data_row_index , end_data_row_index , thumbnail , discover_charts , discover_pivot_tables ].hash
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
