=begin
--------------------------------------------------------------------------------------------------------------------
Copyright (c) 2019 Aspose.Cells Cloud
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

  class Font
    attr_accessor :is_italic

    attr_accessor :name

    attr_accessor :double_size

    attr_accessor :color

    attr_accessor :is_bold

    attr_accessor :is_subscript

    attr_accessor :is_superscript

    attr_accessor :is_strikeout

    attr_accessor :underline

    attr_accessor :size


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'is_italic' => :'IsItalic',
        :'name' => :'Name',
        :'double_size' => :'DoubleSize',
        :'color' => :'Color',
        :'is_bold' => :'IsBold',
        :'is_subscript' => :'IsSubscript',
        :'is_superscript' => :'IsSuperscript',
        :'is_strikeout' => :'IsStrikeout',
        :'underline' => :'Underline',
        :'size' => :'Size'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'is_italic' => :'BOOLEAN',
        :'name' => :'String',
        :'double_size' => :'Float',
        :'color' => :'Color',
        :'is_bold' => :'BOOLEAN',
        :'is_subscript' => :'BOOLEAN',
        :'is_superscript' => :'BOOLEAN',
        :'is_strikeout' => :'BOOLEAN',
        :'underline' => :'String',
        :'size' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'IsItalic')
        self.is_italic = attributes[:'IsItalic']
      end

      if attributes.has_key?(:'Name')
        self.name = attributes[:'Name']
      end

      if attributes.has_key?(:'DoubleSize')
        self.double_size = attributes[:'DoubleSize']
      end

      if attributes.has_key?(:'Color')
        self.color = attributes[:'Color']
      end

      if attributes.has_key?(:'IsBold')
        self.is_bold = attributes[:'IsBold']
      end

      if attributes.has_key?(:'IsSubscript')
        self.is_subscript = attributes[:'IsSubscript']
      end

      if attributes.has_key?(:'IsSuperscript')
        self.is_superscript = attributes[:'IsSuperscript']
      end

      if attributes.has_key?(:'IsStrikeout')
        self.is_strikeout = attributes[:'IsStrikeout']
      end

      if attributes.has_key?(:'Underline')
        self.underline = attributes[:'Underline']
      end

      if attributes.has_key?(:'Size')
        self.size = attributes[:'Size']
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
          is_italic == o.is_italic &&
          name == o.name &&
          double_size == o.double_size &&
          color == o.color &&
          is_bold == o.is_bold &&
          is_subscript == o.is_subscript &&
          is_superscript == o.is_superscript &&
          is_strikeout == o.is_strikeout &&
          underline == o.underline &&
          size == o.size
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [is_italic, name, double_size, color, is_bold, is_subscript, is_superscript, is_strikeout, underline, size].hash
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
