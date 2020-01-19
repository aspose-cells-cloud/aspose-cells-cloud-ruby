=begin
--------------------------------------------------------------------------------------------------------------------
Copyright (c) 2020 Aspose.Cells Cloud
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

require 'date'

module AsposeCellsCloud

  class ChartOperateParameter
    attr_accessor :operate_type

    attr_accessor :string

    attr_accessor :area

    attr_accessor :category_data

    attr_accessor :upper_left_row

    attr_accessor :lower_right_column

    attr_accessor :lower_right_row

    attr_accessor :is_auto_get_serial_name

    attr_accessor :chart_type

    attr_accessor :is_vertical


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'operate_type' => :'OperateType',
        :'string' => :'string',
        :'area' => :'Area',
        :'category_data' => :'CategoryData',
        :'upper_left_row' => :'UpperLeftRow',
        :'lower_right_column' => :'LowerRightColumn',
        :'lower_right_row' => :'LowerRightRow',
        :'is_auto_get_serial_name' => :'IsAutoGetSerialName',
        :'chart_type' => :'ChartType',
        :'is_vertical' => :'IsVertical'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'operate_type' => :'String',
        :'string' => :'String',
        :'area' => :'String',
        :'category_data' => :'String',
        :'upper_left_row' => :'Integer',
        :'lower_right_column' => :'Integer',
        :'lower_right_row' => :'Integer',
        :'is_auto_get_serial_name' => :'BOOLEAN',
        :'chart_type' => :'String',
        :'is_vertical' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'OperateType')
        self.operate_type = attributes[:'OperateType']
      end

      if attributes.has_key?(:'string')
        self.string = attributes[:'string']
      end

      if attributes.has_key?(:'Area')
        self.area = attributes[:'Area']
      end

      if attributes.has_key?(:'CategoryData')
        self.category_data = attributes[:'CategoryData']
      end

      if attributes.has_key?(:'UpperLeftRow')
        self.upper_left_row = attributes[:'UpperLeftRow']
      end

      if attributes.has_key?(:'LowerRightColumn')
        self.lower_right_column = attributes[:'LowerRightColumn']
      end

      if attributes.has_key?(:'LowerRightRow')
        self.lower_right_row = attributes[:'LowerRightRow']
      end

      if attributes.has_key?(:'IsAutoGetSerialName')
        self.is_auto_get_serial_name = attributes[:'IsAutoGetSerialName']
      end

      if attributes.has_key?(:'ChartType')
        self.chart_type = attributes[:'ChartType']
      end

      if attributes.has_key?(:'IsVertical')
        self.is_vertical = attributes[:'IsVertical']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          operate_type == o.operate_type &&
          string == o.string &&
          area == o.area &&
          category_data == o.category_data &&
          upper_left_row == o.upper_left_row &&
          lower_right_column == o.lower_right_column &&
          lower_right_row == o.lower_right_row &&
          is_auto_get_serial_name == o.is_auto_get_serial_name &&
          chart_type == o.chart_type &&
          is_vertical == o.is_vertical
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [operate_type, string, area, category_data, upper_left_row, lower_right_column, lower_right_row, is_auto_get_serial_name, chart_type, is_vertical].hash
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
