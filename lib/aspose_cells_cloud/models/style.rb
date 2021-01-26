=begin
--------------------------------------------------------------------------------------------------------------------
Copyright (c) 2021 Aspose.Cells Cloud
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

  class Style
    attr_accessor :link

    attr_accessor :pattern

    attr_accessor :text_direction

    attr_accessor :custom

    attr_accessor :shrink_to_fit

    attr_accessor :is_date_time

    attr_accessor :culture_custom

    attr_accessor :rotation_angle

    attr_accessor :indent_level

    attr_accessor :is_percent

    attr_accessor :foreground_color

    attr_accessor :name

    attr_accessor :foreground_theme_color

    attr_accessor :border_collection

    attr_accessor :is_locked

    attr_accessor :vertical_alignment

    attr_accessor :background_color

    attr_accessor :background_theme_color

    attr_accessor :is_formula_hidden

    attr_accessor :is_gradient

    attr_accessor :number

    attr_accessor :horizontal_alignment

    attr_accessor :is_text_wrapped

    attr_accessor :font


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'link' => :'link',
        :'pattern' => :'Pattern',
        :'text_direction' => :'TextDirection',
        :'custom' => :'Custom',
        :'shrink_to_fit' => :'ShrinkToFit',
        :'is_date_time' => :'IsDateTime',
        :'culture_custom' => :'CultureCustom',
        :'rotation_angle' => :'RotationAngle',
        :'indent_level' => :'IndentLevel',
        :'is_percent' => :'IsPercent',
        :'foreground_color' => :'ForegroundColor',
        :'name' => :'Name',
        :'foreground_theme_color' => :'ForegroundThemeColor',
        :'border_collection' => :'BorderCollection',
        :'is_locked' => :'IsLocked',
        :'vertical_alignment' => :'VerticalAlignment',
        :'background_color' => :'BackgroundColor',
        :'background_theme_color' => :'BackgroundThemeColor',
        :'is_formula_hidden' => :'IsFormulaHidden',
        :'is_gradient' => :'IsGradient',
        :'number' => :'Number',
        :'horizontal_alignment' => :'HorizontalAlignment',
        :'is_text_wrapped' => :'IsTextWrapped',
        :'font' => :'Font'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'link' => :'Link',
        :'pattern' => :'String',
        :'text_direction' => :'String',
        :'custom' => :'String',
        :'shrink_to_fit' => :'BOOLEAN',
        :'is_date_time' => :'BOOLEAN',
        :'culture_custom' => :'String',
        :'rotation_angle' => :'Integer',
        :'indent_level' => :'Integer',
        :'is_percent' => :'BOOLEAN',
        :'foreground_color' => :'Color',
        :'name' => :'String',
        :'foreground_theme_color' => :'ThemeColor',
        :'border_collection' => :'Array<Border>',
        :'is_locked' => :'BOOLEAN',
        :'vertical_alignment' => :'String',
        :'background_color' => :'Color',
        :'background_theme_color' => :'ThemeColor',
        :'is_formula_hidden' => :'BOOLEAN',
        :'is_gradient' => :'BOOLEAN',
        :'number' => :'Integer',
        :'horizontal_alignment' => :'String',
        :'is_text_wrapped' => :'BOOLEAN',
        :'font' => :'Font'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'link')
        self.link = attributes[:'link']
      end

      if attributes.has_key?(:'Pattern')
        self.pattern = attributes[:'Pattern']
      end

      if attributes.has_key?(:'TextDirection')
        self.text_direction = attributes[:'TextDirection']
      end

      if attributes.has_key?(:'Custom')
        self.custom = attributes[:'Custom']
      end

      if attributes.has_key?(:'ShrinkToFit')
        self.shrink_to_fit = attributes[:'ShrinkToFit']
      end

      if attributes.has_key?(:'IsDateTime')
        self.is_date_time = attributes[:'IsDateTime']
      end

      if attributes.has_key?(:'CultureCustom')
        self.culture_custom = attributes[:'CultureCustom']
      end

      if attributes.has_key?(:'RotationAngle')
        self.rotation_angle = attributes[:'RotationAngle']
      end

      if attributes.has_key?(:'IndentLevel')
        self.indent_level = attributes[:'IndentLevel']
      end

      if attributes.has_key?(:'IsPercent')
        self.is_percent = attributes[:'IsPercent']
      end

      if attributes.has_key?(:'ForegroundColor')
        self.foreground_color = attributes[:'ForegroundColor']
      end

      if attributes.has_key?(:'Name')
        self.name = attributes[:'Name']
      end

      if attributes.has_key?(:'ForegroundThemeColor')
        self.foreground_theme_color = attributes[:'ForegroundThemeColor']
      end

      if attributes.has_key?(:'BorderCollection')
        if (value = attributes[:'BorderCollection']).is_a?(Array)
          self.border_collection = value
        end
      end

      if attributes.has_key?(:'IsLocked')
        self.is_locked = attributes[:'IsLocked']
      end

      if attributes.has_key?(:'VerticalAlignment')
        self.vertical_alignment = attributes[:'VerticalAlignment']
      end

      if attributes.has_key?(:'BackgroundColor')
        self.background_color = attributes[:'BackgroundColor']
      end

      if attributes.has_key?(:'BackgroundThemeColor')
        self.background_theme_color = attributes[:'BackgroundThemeColor']
      end

      if attributes.has_key?(:'IsFormulaHidden')
        self.is_formula_hidden = attributes[:'IsFormulaHidden']
      end

      if attributes.has_key?(:'IsGradient')
        self.is_gradient = attributes[:'IsGradient']
      end

      if attributes.has_key?(:'Number')
        self.number = attributes[:'Number']
      end

      if attributes.has_key?(:'HorizontalAlignment')
        self.horizontal_alignment = attributes[:'HorizontalAlignment']
      end

      if attributes.has_key?(:'IsTextWrapped')
        self.is_text_wrapped = attributes[:'IsTextWrapped']
      end

      if attributes.has_key?(:'Font')
        self.font = attributes[:'Font']
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
          link == o.link &&
          pattern == o.pattern &&
          text_direction == o.text_direction &&
          custom == o.custom &&
          shrink_to_fit == o.shrink_to_fit &&
          is_date_time == o.is_date_time &&
          culture_custom == o.culture_custom &&
          rotation_angle == o.rotation_angle &&
          indent_level == o.indent_level &&
          is_percent == o.is_percent &&
          foreground_color == o.foreground_color &&
          name == o.name &&
          foreground_theme_color == o.foreground_theme_color &&
          border_collection == o.border_collection &&
          is_locked == o.is_locked &&
          vertical_alignment == o.vertical_alignment &&
          background_color == o.background_color &&
          background_theme_color == o.background_theme_color &&
          is_formula_hidden == o.is_formula_hidden &&
          is_gradient == o.is_gradient &&
          number == o.number &&
          horizontal_alignment == o.horizontal_alignment &&
          is_text_wrapped == o.is_text_wrapped &&
          font == o.font
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [link, pattern, text_direction, custom, shrink_to_fit, is_date_time, culture_custom, rotation_angle, indent_level, is_percent, foreground_color, name, foreground_theme_color, border_collection, is_locked, vertical_alignment, background_color, background_theme_color, is_formula_hidden, is_gradient, number, horizontal_alignment, is_text_wrapped, font].hash
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
