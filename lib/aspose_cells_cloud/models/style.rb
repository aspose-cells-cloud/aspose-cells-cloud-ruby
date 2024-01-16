=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Stylerb.cs">
   Copyright (c) 2024 Aspose.Cells Cloud
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

  class Style
        #Gets a  object.             
        attr_accessor :font
        #Gets or sets the name of the style.             
        attr_accessor :name
        #Gets and sets the culture-dependent pattern string for number format.            If no number format has been set for this object, null will be returned.            If number format is builtin, the pattern string corresponding to the builtin number will be returned.             
        attr_accessor :culture_custom
        #Represents the custom number format string of this style object.            If the custom number format is not set(For example, the number format is builtin), "" will be returned.             
        attr_accessor :custom
        #Gets or sets a style's background color.             
        attr_accessor :background_color
        #Gets or sets a style's foreground color.             
        attr_accessor :foreground_color
        #Represents if the formula will be hidden when the worksheet is protected.             
        attr_accessor :is_formula_hidden
        #Indicates whether the number format is a date format.             
        attr_accessor :is_date_time
        #Gets or sets a value indicating whether the text within a cell is wrapped.             
        attr_accessor :is_text_wrapped
        #Indicates whether the cell shading is a gradient pattern.             
        attr_accessor :is_gradient
        #Gets or sets a value indicating whether a cell can be modified or not.             
        attr_accessor :is_locked
        #Indicates whether the number format is a percent format.             
        attr_accessor :is_percent
        #Represents if text automatically shrinks to fit in the available column width.             
        attr_accessor :shrink_to_fit
        #Represents the indent level for the cell or range. Can only be an integer from 0 to 250.             
        attr_accessor :indent_level
        #Gets or sets the display format of numbers and dates. The formatting patterns are different for different regions.             
        attr_accessor :number
        #Represents text rotation angle.             
        attr_accessor :rotation_angle
        #Gets or sets the cell background pattern type.             
        attr_accessor :pattern
        #Represents text reading order.             
        attr_accessor :text_direction
        #Gets or sets the vertical alignment type of the text in a cell.             
        attr_accessor :vertical_alignment
        #Gets or sets the horizontal alignment type of the text in a cell.             
        attr_accessor :horizontal_alignment
        #            
        attr_accessor :border_collection
        #Gets and sets the background theme color.             
        attr_accessor :background_theme_color
        #Gets and sets the foreground theme color.             
        attr_accessor :foreground_theme_color

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'font' => :'Font',
        :'name' => :'Name',
        :'culture_custom' => :'CultureCustom',
        :'custom' => :'Custom',
        :'background_color' => :'BackgroundColor',
        :'foreground_color' => :'ForegroundColor',
        :'is_formula_hidden' => :'IsFormulaHidden',
        :'is_date_time' => :'IsDateTime',
        :'is_text_wrapped' => :'IsTextWrapped',
        :'is_gradient' => :'IsGradient',
        :'is_locked' => :'IsLocked',
        :'is_percent' => :'IsPercent',
        :'shrink_to_fit' => :'ShrinkToFit',
        :'indent_level' => :'IndentLevel',
        :'number' => :'Number',
        :'rotation_angle' => :'RotationAngle',
        :'pattern' => :'Pattern',
        :'text_direction' => :'TextDirection',
        :'vertical_alignment' => :'VerticalAlignment',
        :'horizontal_alignment' => :'HorizontalAlignment',
        :'border_collection' => :'BorderCollection',
        :'background_theme_color' => :'BackgroundThemeColor',
        :'foreground_theme_color' => :'ForegroundThemeColor'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'font' => :'Font',
        :'name' => :'String',
        :'culture_custom' => :'String',
        :'custom' => :'String',
        :'background_color' => :'Color',
        :'foreground_color' => :'Color',
        :'is_formula_hidden' => :'BOOLEAN',
        :'is_date_time' => :'BOOLEAN',
        :'is_text_wrapped' => :'BOOLEAN',
        :'is_gradient' => :'BOOLEAN',
        :'is_locked' => :'BOOLEAN',
        :'is_percent' => :'BOOLEAN',
        :'shrink_to_fit' => :'BOOLEAN',
        :'indent_level' => :'Integer',
        :'number' => :'Integer',
        :'rotation_angle' => :'Integer',
        :'pattern' => :'String',
        :'text_direction' => :'String',
        :'vertical_alignment' => :'String',
        :'horizontal_alignment' => :'String',
        :'border_collection' => :'Array<Border>',
        :'background_theme_color' => :'ThemeColor',
        :'foreground_theme_color' => :'ThemeColor'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Font')
          self.font = attributes[:'Font']
      end
      if attributes.has_key?(:'Name')
          self.name = attributes[:'Name']
      end
      if attributes.has_key?(:'CultureCustom')
          self.culture_custom = attributes[:'CultureCustom']
      end
      if attributes.has_key?(:'Custom')
          self.custom = attributes[:'Custom']
      end
      if attributes.has_key?(:'BackgroundColor')
          self.background_color = attributes[:'BackgroundColor']
      end
      if attributes.has_key?(:'ForegroundColor')
          self.foreground_color = attributes[:'ForegroundColor']
      end
      if attributes.has_key?(:'IsFormulaHidden')
          self.is_formula_hidden = attributes[:'IsFormulaHidden']
      end
      if attributes.has_key?(:'IsDateTime')
          self.is_date_time = attributes[:'IsDateTime']
      end
      if attributes.has_key?(:'IsTextWrapped')
          self.is_text_wrapped = attributes[:'IsTextWrapped']
      end
      if attributes.has_key?(:'IsGradient')
          self.is_gradient = attributes[:'IsGradient']
      end
      if attributes.has_key?(:'IsLocked')
          self.is_locked = attributes[:'IsLocked']
      end
      if attributes.has_key?(:'IsPercent')
          self.is_percent = attributes[:'IsPercent']
      end
      if attributes.has_key?(:'ShrinkToFit')
          self.shrink_to_fit = attributes[:'ShrinkToFit']
      end
      if attributes.has_key?(:'IndentLevel')
          self.indent_level = attributes[:'IndentLevel']
      end
      if attributes.has_key?(:'Number')
          self.number = attributes[:'Number']
      end
      if attributes.has_key?(:'RotationAngle')
          self.rotation_angle = attributes[:'RotationAngle']
      end
      if attributes.has_key?(:'Pattern')
          self.pattern = attributes[:'Pattern']
      end
      if attributes.has_key?(:'TextDirection')
          self.text_direction = attributes[:'TextDirection']
      end
      if attributes.has_key?(:'VerticalAlignment')
          self.vertical_alignment = attributes[:'VerticalAlignment']
      end
      if attributes.has_key?(:'HorizontalAlignment')
          self.horizontal_alignment = attributes[:'HorizontalAlignment']
      end
      if attributes.has_key?(:'BorderCollection')
          self.border_collection = attributes[:'BorderCollection']
      end
      if attributes.has_key?(:'BackgroundThemeColor')
          self.background_theme_color = attributes[:'BackgroundThemeColor']
      end
      if attributes.has_key?(:'ForegroundThemeColor')
          self.foreground_theme_color = attributes[:'ForegroundThemeColor']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @font.nil?
          invalid_properties.push("invalid value for 'font', font cannot be nil.")
      end
      if @name.nil?
          invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end
      if @culture_custom.nil?
          invalid_properties.push("invalid value for 'culture_custom', culture_custom cannot be nil.")
      end
      if @custom.nil?
          invalid_properties.push("invalid value for 'custom', custom cannot be nil.")
      end
      if @background_color.nil?
          invalid_properties.push("invalid value for 'background_color', background_color cannot be nil.")
      end
      if @foreground_color.nil?
          invalid_properties.push("invalid value for 'foreground_color', foreground_color cannot be nil.")
      end
      if @is_formula_hidden.nil?
          invalid_properties.push("invalid value for 'is_formula_hidden', is_formula_hidden cannot be nil.")
      end
      if @is_date_time.nil?
          invalid_properties.push("invalid value for 'is_date_time', is_date_time cannot be nil.")
      end
      if @is_text_wrapped.nil?
          invalid_properties.push("invalid value for 'is_text_wrapped', is_text_wrapped cannot be nil.")
      end
      if @is_gradient.nil?
          invalid_properties.push("invalid value for 'is_gradient', is_gradient cannot be nil.")
      end
      if @is_locked.nil?
          invalid_properties.push("invalid value for 'is_locked', is_locked cannot be nil.")
      end
      if @is_percent.nil?
          invalid_properties.push("invalid value for 'is_percent', is_percent cannot be nil.")
      end
      if @shrink_to_fit.nil?
          invalid_properties.push("invalid value for 'shrink_to_fit', shrink_to_fit cannot be nil.")
      end
      if @indent_level.nil?
          invalid_properties.push("invalid value for 'indent_level', indent_level cannot be nil.")
      end
      if @number.nil?
          invalid_properties.push("invalid value for 'number', number cannot be nil.")
      end
      if @rotation_angle.nil?
          invalid_properties.push("invalid value for 'rotation_angle', rotation_angle cannot be nil.")
      end
      if @pattern.nil?
          invalid_properties.push("invalid value for 'pattern', pattern cannot be nil.")
      end
      if @text_direction.nil?
          invalid_properties.push("invalid value for 'text_direction', text_direction cannot be nil.")
      end
      if @vertical_alignment.nil?
          invalid_properties.push("invalid value for 'vertical_alignment', vertical_alignment cannot be nil.")
      end
      if @horizontal_alignment.nil?
          invalid_properties.push("invalid value for 'horizontal_alignment', horizontal_alignment cannot be nil.")
      end
      if @border_collection.nil?
          invalid_properties.push("invalid value for 'border_collection', border_collection cannot be nil.")
      end
      if @background_theme_color.nil?
          invalid_properties.push("invalid value for 'background_theme_color', background_theme_color cannot be nil.")
      end
      if @foreground_theme_color.nil?
          invalid_properties.push("invalid value for 'foreground_theme_color', foreground_theme_color cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @font.nil?
      return false if @name.nil?
      return false if @culture_custom.nil?
      return false if @custom.nil?
      return false if @background_color.nil?
      return false if @foreground_color.nil?
      return false if @is_formula_hidden.nil?
      return false if @is_date_time.nil?
      return false if @is_text_wrapped.nil?
      return false if @is_gradient.nil?
      return false if @is_locked.nil?
      return false if @is_percent.nil?
      return false if @shrink_to_fit.nil?
      return false if @indent_level.nil?
      return false if @number.nil?
      return false if @rotation_angle.nil?
      return false if @pattern.nil?
      return false if @text_direction.nil?
      return false if @vertical_alignment.nil?
      return false if @horizontal_alignment.nil?
      return false if @border_collection.nil?
      return false if @background_theme_color.nil?
      return false if @foreground_theme_color.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          font == o.font &&
          name == o.name &&
          culture_custom == o.culture_custom &&
          custom == o.custom &&
          background_color == o.background_color &&
          foreground_color == o.foreground_color &&
          is_formula_hidden == o.is_formula_hidden &&
          is_date_time == o.is_date_time &&
          is_text_wrapped == o.is_text_wrapped &&
          is_gradient == o.is_gradient &&
          is_locked == o.is_locked &&
          is_percent == o.is_percent &&
          shrink_to_fit == o.shrink_to_fit &&
          indent_level == o.indent_level &&
          number == o.number &&
          rotation_angle == o.rotation_angle &&
          pattern == o.pattern &&
          text_direction == o.text_direction &&
          vertical_alignment == o.vertical_alignment &&
          horizontal_alignment == o.horizontal_alignment &&
          border_collection == o.border_collection &&
          background_theme_color == o.background_theme_color &&
          foreground_theme_color == o.foreground_theme_color 
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
      [ font , name , culture_custom , custom , background_color , foreground_color , is_formula_hidden , is_date_time , is_text_wrapped , is_gradient , is_locked , is_percent , shrink_to_fit , indent_level , number , rotation_angle , pattern , text_direction , vertical_alignment , horizontal_alignment , border_collection , background_theme_color , foreground_theme_color ].hash
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
