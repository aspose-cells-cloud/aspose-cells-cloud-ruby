=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="TickLabelsrb.cs">
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

  class TickLabels
        #True if the text in the object changes font size when the object size changes. The default value is True.            
        attr_accessor :auto_scale_font
        #Gets and sets the display mode of the background            
        attr_accessor :background_mode
        #Returns a  object that represents the font of the specified TickLabels object.            
        attr_accessor :font
        #Represents the format number for the TickLabels object.            
        attr_accessor :number
        #Represents the format string for the TickLabels object.            
        attr_accessor :number_format
        #True if the number format is linked to the cells                         (so that the number format changes in the labels when it changes in the cells).            
        attr_accessor :number_format_linked
        #Gets and sets the distance of labels from the axis.            
        attr_accessor :offset
        #Represents text rotation angle in clockwise.            
        attr_accessor :rotation_angle
        #Represents text reading order.            
        attr_accessor :text_direction
        #Represents text reading order.            
        attr_accessor :reading_order
        #Gets and sets the direction of text.            
        attr_accessor :direction_type
        #            
        attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'auto_scale_font' => :'AutoScaleFont',
        :'background_mode' => :'BackgroundMode',
        :'font' => :'Font',
        :'number' => :'Number',
        :'number_format' => :'NumberFormat',
        :'number_format_linked' => :'NumberFormatLinked',
        :'offset' => :'Offset',
        :'rotation_angle' => :'RotationAngle',
        :'text_direction' => :'TextDirection',
        :'reading_order' => :'ReadingOrder',
        :'direction_type' => :'DirectionType',
        :'link' => :'link'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'auto_scale_font' => :'BOOLEAN',
        :'background_mode' => :'String',
        :'font' => :'Font',
        :'number' => :'Integer',
        :'number_format' => :'String',
        :'number_format_linked' => :'BOOLEAN',
        :'offset' => :'Integer',
        :'rotation_angle' => :'Integer',
        :'text_direction' => :'String',
        :'reading_order' => :'String',
        :'direction_type' => :'String',
        :'link' => :'Link'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'AutoScaleFont')
          self.auto_scale_font = attributes[:'AutoScaleFont']
      end
      if attributes.has_key?(:'BackgroundMode')
          self.background_mode = attributes[:'BackgroundMode']
      end
      if attributes.has_key?(:'Font')
          self.font = attributes[:'Font']
      end
      if attributes.has_key?(:'Number')
          self.number = attributes[:'Number']
      end
      if attributes.has_key?(:'NumberFormat')
          self.number_format = attributes[:'NumberFormat']
      end
      if attributes.has_key?(:'NumberFormatLinked')
          self.number_format_linked = attributes[:'NumberFormatLinked']
      end
      if attributes.has_key?(:'Offset')
          self.offset = attributes[:'Offset']
      end
      if attributes.has_key?(:'RotationAngle')
          self.rotation_angle = attributes[:'RotationAngle']
      end
      if attributes.has_key?(:'TextDirection')
          self.text_direction = attributes[:'TextDirection']
      end
      if attributes.has_key?(:'ReadingOrder')
          self.reading_order = attributes[:'ReadingOrder']
      end
      if attributes.has_key?(:'DirectionType')
          self.direction_type = attributes[:'DirectionType']
      end
      if attributes.has_key?(:'link')
          self.link = attributes[:'link']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @auto_scale_font.nil?
          invalid_properties.push("invalid value for 'auto_scale_font', auto_scale_font cannot be nil.")
      end
      if @background_mode.nil?
          invalid_properties.push("invalid value for 'background_mode', background_mode cannot be nil.")
      end
      if @font.nil?
          invalid_properties.push("invalid value for 'font', font cannot be nil.")
      end
      if @number.nil?
          invalid_properties.push("invalid value for 'number', number cannot be nil.")
      end
      if @number_format.nil?
          invalid_properties.push("invalid value for 'number_format', number_format cannot be nil.")
      end
      if @number_format_linked.nil?
          invalid_properties.push("invalid value for 'number_format_linked', number_format_linked cannot be nil.")
      end
      if @offset.nil?
          invalid_properties.push("invalid value for 'offset', offset cannot be nil.")
      end
      if @rotation_angle.nil?
          invalid_properties.push("invalid value for 'rotation_angle', rotation_angle cannot be nil.")
      end
      if @text_direction.nil?
          invalid_properties.push("invalid value for 'text_direction', text_direction cannot be nil.")
      end
      if @reading_order.nil?
          invalid_properties.push("invalid value for 'reading_order', reading_order cannot be nil.")
      end
      if @direction_type.nil?
          invalid_properties.push("invalid value for 'direction_type', direction_type cannot be nil.")
      end
      if @link.nil?
          invalid_properties.push("invalid value for 'link', link cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @auto_scale_font.nil?
      return false if @background_mode.nil?
      return false if @font.nil?
      return false if @number.nil?
      return false if @number_format.nil?
      return false if @number_format_linked.nil?
      return false if @offset.nil?
      return false if @rotation_angle.nil?
      return false if @text_direction.nil?
      return false if @reading_order.nil?
      return false if @direction_type.nil?
      return false if @link.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          auto_scale_font == o.auto_scale_font &&
          background_mode == o.background_mode &&
          font == o.font &&
          number == o.number &&
          number_format == o.number_format &&
          number_format_linked == o.number_format_linked &&
          offset == o.offset &&
          rotation_angle == o.rotation_angle &&
          text_direction == o.text_direction &&
          reading_order == o.reading_order &&
          direction_type == o.direction_type &&
          link == o.link 
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
      [ auto_scale_font , background_mode , font , number , number_format , number_format_linked , offset , rotation_angle , text_direction , reading_order , direction_type , link ].hash
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
