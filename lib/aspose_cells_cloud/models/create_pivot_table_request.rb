=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="CreatePivotTableRequestrb.cs">
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

  class CreatePivotTableRequest
        #Pivot table name            
        attr_accessor :name
        #The data for the new PivotTable cache.            
        attr_accessor :source_data
        #The cell in the upper-left corner of the PivotTable report's destination range.            
        attr_accessor :dest_cell_name
        #Indicates whether using same data source when another existing pivot table has used this data source.If the property is true, it will save memory.            
        attr_accessor :use_same_source
        #Represents row fields in a PivotTable report.            
        attr_accessor :pivot_field_rows
        #Represents column fields in a PivotTable report.            
        attr_accessor :pivot_field_columns
        #Represents data fields in a PivotTable report.            
        attr_accessor :pivot_field_data

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'Name',
        :'source_data' => :'SourceData',
        :'dest_cell_name' => :'DestCellName',
        :'use_same_source' => :'UseSameSource',
        :'pivot_field_rows' => :'PivotFieldRows',
        :'pivot_field_columns' => :'PivotFieldColumns',
        :'pivot_field_data' => :'PivotFieldData'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'source_data' => :'String',
        :'dest_cell_name' => :'String',
        :'use_same_source' => :'BOOLEAN',
        :'pivot_field_rows' => :'Array<Integer>',
        :'pivot_field_columns' => :'Array<Integer>',
        :'pivot_field_data' => :'Array<Integer>'
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
      if attributes.has_key?(:'SourceData')
          self.source_data = attributes[:'SourceData']
      end
      if attributes.has_key?(:'DestCellName')
          self.dest_cell_name = attributes[:'DestCellName']
      end
      if attributes.has_key?(:'UseSameSource')
          self.use_same_source = attributes[:'UseSameSource']
      end
      if attributes.has_key?(:'PivotFieldRows')
          self.pivot_field_rows = attributes[:'PivotFieldRows']
      end
      if attributes.has_key?(:'PivotFieldColumns')
          self.pivot_field_columns = attributes[:'PivotFieldColumns']
      end
      if attributes.has_key?(:'PivotFieldData')
          self.pivot_field_data = attributes[:'PivotFieldData']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
          invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end
      if @source_data.nil?
          invalid_properties.push("invalid value for 'source_data', source_data cannot be nil.")
      end
      if @dest_cell_name.nil?
          invalid_properties.push("invalid value for 'dest_cell_name', dest_cell_name cannot be nil.")
      end
      if @use_same_source.nil?
          invalid_properties.push("invalid value for 'use_same_source', use_same_source cannot be nil.")
      end
      if @pivot_field_rows.nil?
          invalid_properties.push("invalid value for 'pivot_field_rows', pivot_field_rows cannot be nil.")
      end
      if @pivot_field_columns.nil?
          invalid_properties.push("invalid value for 'pivot_field_columns', pivot_field_columns cannot be nil.")
      end
      if @pivot_field_data.nil?
          invalid_properties.push("invalid value for 'pivot_field_data', pivot_field_data cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @source_data.nil?
      return false if @dest_cell_name.nil?
      return false if @use_same_source.nil?
      return false if @pivot_field_rows.nil?
      return false if @pivot_field_columns.nil?
      return false if @pivot_field_data.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          source_data == o.source_data &&
          dest_cell_name == o.dest_cell_name &&
          use_same_source == o.use_same_source &&
          pivot_field_rows == o.pivot_field_rows &&
          pivot_field_columns == o.pivot_field_columns &&
          pivot_field_data == o.pivot_field_data 
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
      [ name , source_data , dest_cell_name , use_same_source , pivot_field_rows , pivot_field_columns , pivot_field_data ].hash
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
