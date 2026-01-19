=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="WorksheetDataStatisticsrb.cs">
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

  class WorksheetDataStatistics
        #Represents worksheet name.            
        attr_accessor :name
        #Represents chart number.            
        attr_accessor :charts_count
        #Represents list object number.            
        attr_accessor :tables_count
        #Represents pivot table number.            
        attr_accessor :pivot_tables_count
        #Represents shape number.            
        attr_accessor :shapes_count
        #Represents shape number.            
        attr_accessor :hyperlinks_count
        #Represents hyperlink number.            
        attr_accessor :query_tables_count
        #Represents query table number.            
        attr_accessor :cells_count
        #Represents cell number.            
        attr_accessor :cells_count_in_table
        #Represents formula number.            
        attr_accessor :cells_count_is_formula

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'Name',
        :'charts_count' => :'ChartsCount',
        :'tables_count' => :'TablesCount',
        :'pivot_tables_count' => :'PivotTablesCount',
        :'shapes_count' => :'ShapesCount',
        :'hyperlinks_count' => :'HyperlinksCount',
        :'query_tables_count' => :'QueryTablesCount',
        :'cells_count' => :'CellsCount',
        :'cells_count_in_table' => :'CellsCountInTable',
        :'cells_count_is_formula' => :'CellsCountIsFormula'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'charts_count' => :'Integer',
        :'tables_count' => :'Integer',
        :'pivot_tables_count' => :'Integer',
        :'shapes_count' => :'Integer',
        :'hyperlinks_count' => :'Integer',
        :'query_tables_count' => :'Integer',
        :'cells_count' => :'Integer',
        :'cells_count_in_table' => :'Integer',
        :'cells_count_is_formula' => :'Integer'
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
      if attributes.has_key?(:'ChartsCount')
          self.charts_count = attributes[:'ChartsCount']
      end
      if attributes.has_key?(:'TablesCount')
          self.tables_count = attributes[:'TablesCount']
      end
      if attributes.has_key?(:'PivotTablesCount')
          self.pivot_tables_count = attributes[:'PivotTablesCount']
      end
      if attributes.has_key?(:'ShapesCount')
          self.shapes_count = attributes[:'ShapesCount']
      end
      if attributes.has_key?(:'HyperlinksCount')
          self.hyperlinks_count = attributes[:'HyperlinksCount']
      end
      if attributes.has_key?(:'QueryTablesCount')
          self.query_tables_count = attributes[:'QueryTablesCount']
      end
      if attributes.has_key?(:'CellsCount')
          self.cells_count = attributes[:'CellsCount']
      end
      if attributes.has_key?(:'CellsCountInTable')
          self.cells_count_in_table = attributes[:'CellsCountInTable']
      end
      if attributes.has_key?(:'CellsCountIsFormula')
          self.cells_count_is_formula = attributes[:'CellsCountIsFormula']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
          invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end
      if @charts_count.nil?
          invalid_properties.push("invalid value for 'charts_count', charts_count cannot be nil.")
      end
      if @tables_count.nil?
          invalid_properties.push("invalid value for 'tables_count', tables_count cannot be nil.")
      end
      if @pivot_tables_count.nil?
          invalid_properties.push("invalid value for 'pivot_tables_count', pivot_tables_count cannot be nil.")
      end
      if @shapes_count.nil?
          invalid_properties.push("invalid value for 'shapes_count', shapes_count cannot be nil.")
      end
      if @hyperlinks_count.nil?
          invalid_properties.push("invalid value for 'hyperlinks_count', hyperlinks_count cannot be nil.")
      end
      if @query_tables_count.nil?
          invalid_properties.push("invalid value for 'query_tables_count', query_tables_count cannot be nil.")
      end
      if @cells_count.nil?
          invalid_properties.push("invalid value for 'cells_count', cells_count cannot be nil.")
      end
      if @cells_count_in_table.nil?
          invalid_properties.push("invalid value for 'cells_count_in_table', cells_count_in_table cannot be nil.")
      end
      if @cells_count_is_formula.nil?
          invalid_properties.push("invalid value for 'cells_count_is_formula', cells_count_is_formula cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @charts_count.nil?
      return false if @tables_count.nil?
      return false if @pivot_tables_count.nil?
      return false if @shapes_count.nil?
      return false if @hyperlinks_count.nil?
      return false if @query_tables_count.nil?
      return false if @cells_count.nil?
      return false if @cells_count_in_table.nil?
      return false if @cells_count_is_formula.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          charts_count == o.charts_count &&
          tables_count == o.tables_count &&
          pivot_tables_count == o.pivot_tables_count &&
          shapes_count == o.shapes_count &&
          hyperlinks_count == o.hyperlinks_count &&
          query_tables_count == o.query_tables_count &&
          cells_count == o.cells_count &&
          cells_count_in_table == o.cells_count_in_table &&
          cells_count_is_formula == o.cells_count_is_formula 
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
      [ name , charts_count , tables_count , pivot_tables_count , shapes_count , hyperlinks_count , query_tables_count , cells_count , cells_count_in_table , cells_count_is_formula ].hash
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
