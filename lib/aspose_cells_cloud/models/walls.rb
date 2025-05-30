=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Wallsrb.cs">
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

  class Walls
        #Gets the x coordinate of the left-bottom corner of Wall center in units of 1/4000 of chart's width after calls Chart.Calculate() method.            
        attr_accessor :center_x
        #Gets the y coordinate of the left-bottom corner of Wall center in units of 1/4000 of chart's height after calls Chart.Calculate() method.            
        attr_accessor :center_y
        #Gets the depth front to back in units of 1/4000 of chart's width after calls Chart.Calculate() method.            
        attr_accessor :depth
        #Gets the height of top to bottom in units of 1/4000 of chart's height after calls Chart.Calculate() method.            
        attr_accessor :height
        #Gets the width of left to right in units of 1/4000 of chart's width after calls Chart.Calculate() method.            
        attr_accessor :width
        #            
        attr_accessor :border
        #            
        attr_accessor :background_color
        #            
        attr_accessor :fill_format
        #            
        attr_accessor :foreground_color
        #            
        attr_accessor :format
        #            
        attr_accessor :invert_if_negative
        #            
        attr_accessor :transparency

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'center_x' => :'CenterX',
        :'center_y' => :'CenterY',
        :'depth' => :'Depth',
        :'height' => :'Height',
        :'width' => :'Width',
        :'border' => :'Border',
        :'background_color' => :'BackgroundColor',
        :'fill_format' => :'FillFormat',
        :'foreground_color' => :'ForegroundColor',
        :'format' => :'Format',
        :'invert_if_negative' => :'InvertIfNegative',
        :'transparency' => :'Transparency'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'center_x' => :'Integer',
        :'center_y' => :'Integer',
        :'depth' => :'Integer',
        :'height' => :'Integer',
        :'width' => :'Integer',
        :'border' => :'Line',
        :'background_color' => :'Color',
        :'fill_format' => :'FillFormat',
        :'foreground_color' => :'Color',
        :'format' => :'String',
        :'invert_if_negative' => :'BOOLEAN',
        :'transparency' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'CenterX')
          self.center_x = attributes[:'CenterX']
      end
      if attributes.has_key?(:'CenterY')
          self.center_y = attributes[:'CenterY']
      end
      if attributes.has_key?(:'Depth')
          self.depth = attributes[:'Depth']
      end
      if attributes.has_key?(:'Height')
          self.height = attributes[:'Height']
      end
      if attributes.has_key?(:'Width')
          self.width = attributes[:'Width']
      end
      if attributes.has_key?(:'Border')
          self.border = attributes[:'Border']
      end
      if attributes.has_key?(:'BackgroundColor')
          self.background_color = attributes[:'BackgroundColor']
      end
      if attributes.has_key?(:'FillFormat')
          self.fill_format = attributes[:'FillFormat']
      end
      if attributes.has_key?(:'ForegroundColor')
          self.foreground_color = attributes[:'ForegroundColor']
      end
      if attributes.has_key?(:'Format')
          self.format = attributes[:'Format']
      end
      if attributes.has_key?(:'InvertIfNegative')
          self.invert_if_negative = attributes[:'InvertIfNegative']
      end
      if attributes.has_key?(:'Transparency')
          self.transparency = attributes[:'Transparency']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @center_x.nil?
          invalid_properties.push("invalid value for 'center_x', center_x cannot be nil.")
      end
      if @center_y.nil?
          invalid_properties.push("invalid value for 'center_y', center_y cannot be nil.")
      end
      if @depth.nil?
          invalid_properties.push("invalid value for 'depth', depth cannot be nil.")
      end
      if @height.nil?
          invalid_properties.push("invalid value for 'height', height cannot be nil.")
      end
      if @width.nil?
          invalid_properties.push("invalid value for 'width', width cannot be nil.")
      end
      if @border.nil?
          invalid_properties.push("invalid value for 'border', border cannot be nil.")
      end
      if @background_color.nil?
          invalid_properties.push("invalid value for 'background_color', background_color cannot be nil.")
      end
      if @fill_format.nil?
          invalid_properties.push("invalid value for 'fill_format', fill_format cannot be nil.")
      end
      if @foreground_color.nil?
          invalid_properties.push("invalid value for 'foreground_color', foreground_color cannot be nil.")
      end
      if @format.nil?
          invalid_properties.push("invalid value for 'format', format cannot be nil.")
      end
      if @invert_if_negative.nil?
          invalid_properties.push("invalid value for 'invert_if_negative', invert_if_negative cannot be nil.")
      end
      if @transparency.nil?
          invalid_properties.push("invalid value for 'transparency', transparency cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @center_x.nil?
      return false if @center_y.nil?
      return false if @depth.nil?
      return false if @height.nil?
      return false if @width.nil?
      return false if @border.nil?
      return false if @background_color.nil?
      return false if @fill_format.nil?
      return false if @foreground_color.nil?
      return false if @format.nil?
      return false if @invert_if_negative.nil?
      return false if @transparency.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          center_x == o.center_x &&
          center_y == o.center_y &&
          depth == o.depth &&
          height == o.height &&
          width == o.width &&
          border == o.border &&
          background_color == o.background_color &&
          fill_format == o.fill_format &&
          foreground_color == o.foreground_color &&
          format == o.format &&
          invert_if_negative == o.invert_if_negative &&
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
      [ center_x , center_y , depth , height , width , border , background_color , fill_format , foreground_color , format , invert_if_negative , transparency ].hash
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
