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

require 'date'

module AsposeCellsCloud
  # Describe the DataBar conditional formatting rule. This conditional formatting    rule displays a gradated data bar in the range of cells.
  class DataBar
    # Gets or sets the direction the databar is displayed.
    attr_accessor :direction

    # Get or set this DataBar's max value object.  Cannot set null or CFValueObject    with type FormatConditionValueType.Min to it.             
    attr_accessor :max_cfvo

    # Get or set this DataBar's Color.             
    attr_accessor :color

    # Represents the min length of data bar .             
    attr_accessor :min_length

    # Gets or sets how a data bar is filled with color.
    attr_accessor :bar_fill_type

    # Get or set this DataBar's min value object.  Cannot set null or CFValueObject   with type FormatConditionValueType.Max to it.             
    attr_accessor :min_cfvo

    # Gets or sets the position of the axis of the data bars specified by a conditional    formatting rule.
    attr_accessor :axis_position

    # Gets the NegativeBarFormat object associated with a data bar conditional     formatting rule.
    attr_accessor :negative_bar_format

    # Gets an object that specifies the border of a data bar.
    attr_accessor :bar_border

    # Gets the color of the axis for cells with conditional formatting as data bars.
    attr_accessor :axis_color

    # Represents the max length of data bar .
    attr_accessor :max_length

    # Get or set the flag indicating whether to show the values of the cells on   which this data bar is applied.  Default value is true.             
    attr_accessor :show_value


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'direction' => :'Direction',
        :'max_cfvo' => :'MaxCfvo',
        :'color' => :'Color',
        :'min_length' => :'MinLength',
        :'bar_fill_type' => :'BarFillType',
        :'min_cfvo' => :'MinCfvo',
        :'axis_position' => :'AxisPosition',
        :'negative_bar_format' => :'NegativeBarFormat',
        :'bar_border' => :'BarBorder',
        :'axis_color' => :'AxisColor',
        :'max_length' => :'MaxLength',
        :'show_value' => :'ShowValue'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'direction' => :'String',
        :'max_cfvo' => :'ConditionalFormattingValue',
        :'color' => :'Color',
        :'min_length' => :'Integer',
        :'bar_fill_type' => :'String',
        :'min_cfvo' => :'ConditionalFormattingValue',
        :'axis_position' => :'String',
        :'negative_bar_format' => :'NegativeBarFormat',
        :'bar_border' => :'DataBarBorder',
        :'axis_color' => :'Color',
        :'max_length' => :'Integer',
        :'show_value' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Direction')
        self.direction = attributes[:'Direction']
      end

      if attributes.has_key?(:'MaxCfvo')
        self.max_cfvo = attributes[:'MaxCfvo']
      end

      if attributes.has_key?(:'Color')
        self.color = attributes[:'Color']
      end

      if attributes.has_key?(:'MinLength')
        self.min_length = attributes[:'MinLength']
      end

      if attributes.has_key?(:'BarFillType')
        self.bar_fill_type = attributes[:'BarFillType']
      end

      if attributes.has_key?(:'MinCfvo')
        self.min_cfvo = attributes[:'MinCfvo']
      end

      if attributes.has_key?(:'AxisPosition')
        self.axis_position = attributes[:'AxisPosition']
      end

      if attributes.has_key?(:'NegativeBarFormat')
        self.negative_bar_format = attributes[:'NegativeBarFormat']
      end

      if attributes.has_key?(:'BarBorder')
        self.bar_border = attributes[:'BarBorder']
      end

      if attributes.has_key?(:'AxisColor')
        self.axis_color = attributes[:'AxisColor']
      end

      if attributes.has_key?(:'MaxLength')
        self.max_length = attributes[:'MaxLength']
      end

      if attributes.has_key?(:'ShowValue')
        self.show_value = attributes[:'ShowValue']
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
          direction == o.direction &&
          max_cfvo == o.max_cfvo &&
          color == o.color &&
          min_length == o.min_length &&
          bar_fill_type == o.bar_fill_type &&
          min_cfvo == o.min_cfvo &&
          axis_position == o.axis_position &&
          negative_bar_format == o.negative_bar_format &&
          bar_border == o.bar_border &&
          axis_color == o.axis_color &&
          max_length == o.max_length &&
          show_value == o.show_value
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [direction, max_cfvo, color, min_length, bar_fill_type, min_cfvo, axis_position, negative_bar_format, bar_border, axis_color, max_length, show_value].hash
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
