=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="CellsColorrb.cs">
   Copyright (c) 2023 Aspose.Cells Cloud
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

  class CellsColor
        #Gets and sets the RGB color.             
        attr_accessor :color
        #Gets and sets the color index in the color palette. Only applies of indexed color.             
        attr_accessor :color_index
        #Gets and set the color which should apply to cell or shape.             
        attr_accessor :is_shape_color
        #Set the tint of the shape color            
        attr_accessor :tint
        #Gets and sets the color from a 32-bit ARGB value.             
        attr_accessor :argb
        #Gets the theme color. Only applies for theme color type.             
        attr_accessor :theme_color
        #The color type.             
        attr_accessor :type
        #Gets and sets transparency as a value from 0.0 (opaque) through 1.0 (clear).             
        attr_accessor :transparency

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'color' => :'Color',
        :'color_index' => :'ColorIndex',
        :'is_shape_color' => :'IsShapeColor',
        :'tint' => :'tint',
        :'argb' => :'Argb',
        :'theme_color' => :'ThemeColor',
        :'type' => :'Type',
        :'transparency' => :'Transparency'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'color' => :'Color',
        :'color_index' => :'Integer',
        :'is_shape_color' => :'BOOLEAN',
        :'tint' => :'Float',
        :'argb' => :'Integer',
        :'theme_color' => :'ThemeColor',
        :'type' => :'String',
        :'transparency' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Color')
          self.color = attributes[:'Color']
      end
      if attributes.has_key?(:'ColorIndex')
          self.color_index = attributes[:'ColorIndex']
      end
      if attributes.has_key?(:'IsShapeColor')
          self.is_shape_color = attributes[:'IsShapeColor']
      end
      if attributes.has_key?(:'tint')
          self.tint = attributes[:'tint']
      end
      if attributes.has_key?(:'Argb')
          self.argb = attributes[:'Argb']
      end
      if attributes.has_key?(:'ThemeColor')
          self.theme_color = attributes[:'ThemeColor']
      end
      if attributes.has_key?(:'Type')
          self.type = attributes[:'Type']
      end
      if attributes.has_key?(:'Transparency')
          self.transparency = attributes[:'Transparency']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @color.nil?
          invalid_properties.push("invalid value for 'color', color cannot be nil.")
      end
      if @color_index.nil?
          invalid_properties.push("invalid value for 'color_index', color_index cannot be nil.")
      end
      if @is_shape_color.nil?
          invalid_properties.push("invalid value for 'is_shape_color', is_shape_color cannot be nil.")
      end
      if @tint.nil?
          invalid_properties.push("invalid value for 'tint', tint cannot be nil.")
      end
      if @argb.nil?
          invalid_properties.push("invalid value for 'argb', argb cannot be nil.")
      end
      if @theme_color.nil?
          invalid_properties.push("invalid value for 'theme_color', theme_color cannot be nil.")
      end
      if @type.nil?
          invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end
      if @transparency.nil?
          invalid_properties.push("invalid value for 'transparency', transparency cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @color.nil?
      return false if @color_index.nil?
      return false if @is_shape_color.nil?
      return false if @tint.nil?
      return false if @argb.nil?
      return false if @theme_color.nil?
      return false if @type.nil?
      return false if @transparency.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          color == o.color &&
          color_index == o.color_index &&
          is_shape_color == o.is_shape_color &&
          tint == o.tint &&
          argb == o.argb &&
          theme_color == o.theme_color &&
          type == o.type &&
          transparency == o.transparency 
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
      [ color , color_index , is_shape_color , tint , argb , theme_color , type , transparency ].hash
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
