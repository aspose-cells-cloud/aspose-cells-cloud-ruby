=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="RenderingWatermarkrb.cs">
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

  class RenderingWatermark
        #            
        attr_accessor :rotation
        #            
        attr_accessor :scale_to_page_percent
        #            
        attr_accessor :opacity
        #            
        attr_accessor :is_background
        #            
        attr_accessor :text
        #            
        attr_accessor :font
        #            
        attr_accessor :image
        #            
        attr_accessor :h_alignment
        #            
        attr_accessor :v_alignment
        #            
        attr_accessor :offset_x
        #            
        attr_accessor :offset_y

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'rotation' => :'Rotation',
        :'scale_to_page_percent' => :'ScaleToPagePercent',
        :'opacity' => :'Opacity',
        :'is_background' => :'IsBackground',
        :'text' => :'Text',
        :'font' => :'Font',
        :'image' => :'Image',
        :'h_alignment' => :'HAlignment',
        :'v_alignment' => :'VAlignment',
        :'offset_x' => :'OffsetX',
        :'offset_y' => :'OffsetY'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'rotation' => :'Float',
        :'scale_to_page_percent' => :'Integer',
        :'opacity' => :'Float',
        :'is_background' => :'BOOLEAN',
        :'text' => :'String',
        :'font' => :'RenderingFont',
        :'image' => :'Array<Integer>',
        :'h_alignment' => :'String',
        :'v_alignment' => :'String',
        :'offset_x' => :'Float',
        :'offset_y' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Rotation')
          self.rotation = attributes[:'Rotation']
      end
      if attributes.has_key?(:'ScaleToPagePercent')
          self.scale_to_page_percent = attributes[:'ScaleToPagePercent']
      end
      if attributes.has_key?(:'Opacity')
          self.opacity = attributes[:'Opacity']
      end
      if attributes.has_key?(:'IsBackground')
          self.is_background = attributes[:'IsBackground']
      end
      if attributes.has_key?(:'Text')
          self.text = attributes[:'Text']
      end
      if attributes.has_key?(:'Font')
          self.font = attributes[:'Font']
      end
      if attributes.has_key?(:'Image')
          self.image = attributes[:'Image']
      end
      if attributes.has_key?(:'HAlignment')
          self.h_alignment = attributes[:'HAlignment']
      end
      if attributes.has_key?(:'VAlignment')
          self.v_alignment = attributes[:'VAlignment']
      end
      if attributes.has_key?(:'OffsetX')
          self.offset_x = attributes[:'OffsetX']
      end
      if attributes.has_key?(:'OffsetY')
          self.offset_y = attributes[:'OffsetY']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @rotation.nil?
          invalid_properties.push("invalid value for 'rotation', rotation cannot be nil.")
      end
      if @scale_to_page_percent.nil?
          invalid_properties.push("invalid value for 'scale_to_page_percent', scale_to_page_percent cannot be nil.")
      end
      if @opacity.nil?
          invalid_properties.push("invalid value for 'opacity', opacity cannot be nil.")
      end
      if @is_background.nil?
          invalid_properties.push("invalid value for 'is_background', is_background cannot be nil.")
      end
      if @text.nil?
          invalid_properties.push("invalid value for 'text', text cannot be nil.")
      end
      if @font.nil?
          invalid_properties.push("invalid value for 'font', font cannot be nil.")
      end
      if @image.nil?
          invalid_properties.push("invalid value for 'image', image cannot be nil.")
      end
      if @h_alignment.nil?
          invalid_properties.push("invalid value for 'h_alignment', h_alignment cannot be nil.")
      end
      if @v_alignment.nil?
          invalid_properties.push("invalid value for 'v_alignment', v_alignment cannot be nil.")
      end
      if @offset_x.nil?
          invalid_properties.push("invalid value for 'offset_x', offset_x cannot be nil.")
      end
      if @offset_y.nil?
          invalid_properties.push("invalid value for 'offset_y', offset_y cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @rotation.nil?
      return false if @scale_to_page_percent.nil?
      return false if @opacity.nil?
      return false if @is_background.nil?
      return false if @text.nil?
      return false if @font.nil?
      return false if @image.nil?
      return false if @h_alignment.nil?
      return false if @v_alignment.nil?
      return false if @offset_x.nil?
      return false if @offset_y.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          rotation == o.rotation &&
          scale_to_page_percent == o.scale_to_page_percent &&
          opacity == o.opacity &&
          is_background == o.is_background &&
          text == o.text &&
          font == o.font &&
          image == o.image &&
          h_alignment == o.h_alignment &&
          v_alignment == o.v_alignment &&
          offset_x == o.offset_x &&
          offset_y == o.offset_y 
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
      [ rotation , scale_to_page_percent , opacity , is_background , text , font , image , h_alignment , v_alignment , offset_x , offset_y ].hash
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
