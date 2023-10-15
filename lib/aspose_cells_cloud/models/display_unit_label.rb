=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="DisplayUnitLabelrb.cs">
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

  class DisplayUnitLabel
        #            
        attr_accessor :linked_source
        #            
        attr_accessor :rotation_angle
        #Gets or sets the text of display unit label.            
        attr_accessor :text
        #            
        attr_accessor :text_direction
        #            
        attr_accessor :text_horizontal_alignment
        #            
        attr_accessor :text_vertical_alignment
        #            
        attr_accessor :area
        #            
        attr_accessor :auto_scale_font
        #            
        attr_accessor :background_mode
        #            
        attr_accessor :border
        #            
        attr_accessor :font
        #            
        attr_accessor :is_automatic_size
        #            
        attr_accessor :is_inner_mode
        #            
        attr_accessor :shadow
        #            
        attr_accessor :shape_properties
        #            
        attr_accessor :width
        #            
        attr_accessor :height
        #            
        attr_accessor :x
        #            
        attr_accessor :y

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'linked_source' => :'LinkedSource',
        :'rotation_angle' => :'RotationAngle',
        :'text' => :'Text',
        :'text_direction' => :'TextDirection',
        :'text_horizontal_alignment' => :'TextHorizontalAlignment',
        :'text_vertical_alignment' => :'TextVerticalAlignment',
        :'area' => :'Area',
        :'auto_scale_font' => :'AutoScaleFont',
        :'background_mode' => :'BackgroundMode',
        :'border' => :'Border',
        :'font' => :'Font',
        :'is_automatic_size' => :'IsAutomaticSize',
        :'is_inner_mode' => :'IsInnerMode',
        :'shadow' => :'Shadow',
        :'shape_properties' => :'ShapeProperties',
        :'width' => :'Width',
        :'height' => :'Height',
        :'x' => :'X',
        :'y' => :'Y'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'linked_source' => :'String',
        :'rotation_angle' => :'Integer',
        :'text' => :'String',
        :'text_direction' => :'String',
        :'text_horizontal_alignment' => :'String',
        :'text_vertical_alignment' => :'String',
        :'area' => :'Area',
        :'auto_scale_font' => :'BOOLEAN',
        :'background_mode' => :'String',
        :'border' => :'Line',
        :'font' => :'Font',
        :'is_automatic_size' => :'BOOLEAN',
        :'is_inner_mode' => :'BOOLEAN',
        :'shadow' => :'BOOLEAN',
        :'shape_properties' => :'Array<LinkElement>',
        :'width' => :'Integer',
        :'height' => :'Integer',
        :'x' => :'Integer',
        :'y' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'LinkedSource')
          self.linked_source = attributes[:'LinkedSource']
      end
      if attributes.has_key?(:'RotationAngle')
          self.rotation_angle = attributes[:'RotationAngle']
      end
      if attributes.has_key?(:'Text')
          self.text = attributes[:'Text']
      end
      if attributes.has_key?(:'TextDirection')
          self.text_direction = attributes[:'TextDirection']
      end
      if attributes.has_key?(:'TextHorizontalAlignment')
          self.text_horizontal_alignment = attributes[:'TextHorizontalAlignment']
      end
      if attributes.has_key?(:'TextVerticalAlignment')
          self.text_vertical_alignment = attributes[:'TextVerticalAlignment']
      end
      if attributes.has_key?(:'Area')
          self.area = attributes[:'Area']
      end
      if attributes.has_key?(:'AutoScaleFont')
          self.auto_scale_font = attributes[:'AutoScaleFont']
      end
      if attributes.has_key?(:'BackgroundMode')
          self.background_mode = attributes[:'BackgroundMode']
      end
      if attributes.has_key?(:'Border')
          self.border = attributes[:'Border']
      end
      if attributes.has_key?(:'Font')
          self.font = attributes[:'Font']
      end
      if attributes.has_key?(:'IsAutomaticSize')
          self.is_automatic_size = attributes[:'IsAutomaticSize']
      end
      if attributes.has_key?(:'IsInnerMode')
          self.is_inner_mode = attributes[:'IsInnerMode']
      end
      if attributes.has_key?(:'Shadow')
          self.shadow = attributes[:'Shadow']
      end
      if attributes.has_key?(:'ShapeProperties')
          self.shape_properties = attributes[:'ShapeProperties']
      end
      if attributes.has_key?(:'Width')
          self.width = attributes[:'Width']
      end
      if attributes.has_key?(:'Height')
          self.height = attributes[:'Height']
      end
      if attributes.has_key?(:'X')
          self.x = attributes[:'X']
      end
      if attributes.has_key?(:'Y')
          self.y = attributes[:'Y']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @linked_source.nil?
          invalid_properties.push("invalid value for 'linked_source', linked_source cannot be nil.")
      end
      if @rotation_angle.nil?
          invalid_properties.push("invalid value for 'rotation_angle', rotation_angle cannot be nil.")
      end
      if @text.nil?
          invalid_properties.push("invalid value for 'text', text cannot be nil.")
      end
      if @text_direction.nil?
          invalid_properties.push("invalid value for 'text_direction', text_direction cannot be nil.")
      end
      if @text_horizontal_alignment.nil?
          invalid_properties.push("invalid value for 'text_horizontal_alignment', text_horizontal_alignment cannot be nil.")
      end
      if @text_vertical_alignment.nil?
          invalid_properties.push("invalid value for 'text_vertical_alignment', text_vertical_alignment cannot be nil.")
      end
      if @area.nil?
          invalid_properties.push("invalid value for 'area', area cannot be nil.")
      end
      if @auto_scale_font.nil?
          invalid_properties.push("invalid value for 'auto_scale_font', auto_scale_font cannot be nil.")
      end
      if @background_mode.nil?
          invalid_properties.push("invalid value for 'background_mode', background_mode cannot be nil.")
      end
      if @border.nil?
          invalid_properties.push("invalid value for 'border', border cannot be nil.")
      end
      if @font.nil?
          invalid_properties.push("invalid value for 'font', font cannot be nil.")
      end
      if @is_automatic_size.nil?
          invalid_properties.push("invalid value for 'is_automatic_size', is_automatic_size cannot be nil.")
      end
      if @is_inner_mode.nil?
          invalid_properties.push("invalid value for 'is_inner_mode', is_inner_mode cannot be nil.")
      end
      if @shadow.nil?
          invalid_properties.push("invalid value for 'shadow', shadow cannot be nil.")
      end
      if @shape_properties.nil?
          invalid_properties.push("invalid value for 'shape_properties', shape_properties cannot be nil.")
      end
      if @width.nil?
          invalid_properties.push("invalid value for 'width', width cannot be nil.")
      end
      if @height.nil?
          invalid_properties.push("invalid value for 'height', height cannot be nil.")
      end
      if @x.nil?
          invalid_properties.push("invalid value for 'x', x cannot be nil.")
      end
      if @y.nil?
          invalid_properties.push("invalid value for 'y', y cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @linked_source.nil?
      return false if @rotation_angle.nil?
      return false if @text.nil?
      return false if @text_direction.nil?
      return false if @text_horizontal_alignment.nil?
      return false if @text_vertical_alignment.nil?
      return false if @area.nil?
      return false if @auto_scale_font.nil?
      return false if @background_mode.nil?
      return false if @border.nil?
      return false if @font.nil?
      return false if @is_automatic_size.nil?
      return false if @is_inner_mode.nil?
      return false if @shadow.nil?
      return false if @shape_properties.nil?
      return false if @width.nil?
      return false if @height.nil?
      return false if @x.nil?
      return false if @y.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          linked_source == o.linked_source &&
          rotation_angle == o.rotation_angle &&
          text == o.text &&
          text_direction == o.text_direction &&
          text_horizontal_alignment == o.text_horizontal_alignment &&
          text_vertical_alignment == o.text_vertical_alignment &&
          area == o.area &&
          auto_scale_font == o.auto_scale_font &&
          background_mode == o.background_mode &&
          border == o.border &&
          font == o.font &&
          is_automatic_size == o.is_automatic_size &&
          is_inner_mode == o.is_inner_mode &&
          shadow == o.shadow &&
          shape_properties == o.shape_properties &&
          width == o.width &&
          height == o.height &&
          x == o.x &&
          y == o.y 
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
      [ linked_source , rotation_angle , text , text_direction , text_horizontal_alignment , text_vertical_alignment , area , auto_scale_font , background_mode , border , font , is_automatic_size , is_inner_mode , shadow , shape_properties , width , height , x , y ].hash
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
