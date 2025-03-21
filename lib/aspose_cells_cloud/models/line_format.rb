=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="LineFormatrb.cs">
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

  class LineFormat
        #Gets and sets the begin arrow length type of the line.            
        attr_accessor :begin_arrowhead_length
        #Gets and sets the begin arrow type of the line.            
        attr_accessor :begin_arrowhead_style
        #Gets and sets the begin arrow width type of the line.            
        attr_accessor :begin_arrowhead_width
        #Specifies the ending caps.            
        attr_accessor :cap_type
        #Specifies the line compound type.            
        attr_accessor :compound_type
        #Specifies the line dash type.            
        attr_accessor :dash_style
        #Gets and sets the end arrow length type of the line.            
        attr_accessor :end_arrowhead_length
        #Gets and sets the end arrow type of the line.            
        attr_accessor :end_arrowhead_style
        #Gets and sets the end arrow width type of the line.            
        attr_accessor :end_arrowhead_width
        #Specifies the line join type.            
        attr_accessor :join_type
        #Gets or sets the weight of the line in unit of points.            
        attr_accessor :weight
        #            
        attr_accessor :type
        #            
        attr_accessor :solid_fill
        #            
        attr_accessor :pattern_fill
        #            
        attr_accessor :texture_fill
        #            
        attr_accessor :gradient_fill
        #            
        attr_accessor :image_data

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'begin_arrowhead_length' => :'BeginArrowheadLength',
        :'begin_arrowhead_style' => :'BeginArrowheadStyle',
        :'begin_arrowhead_width' => :'BeginArrowheadWidth',
        :'cap_type' => :'CapType',
        :'compound_type' => :'CompoundType',
        :'dash_style' => :'DashStyle',
        :'end_arrowhead_length' => :'EndArrowheadLength',
        :'end_arrowhead_style' => :'EndArrowheadStyle',
        :'end_arrowhead_width' => :'EndArrowheadWidth',
        :'join_type' => :'JoinType',
        :'weight' => :'Weight',
        :'type' => :'Type',
        :'solid_fill' => :'SolidFill',
        :'pattern_fill' => :'PatternFill',
        :'texture_fill' => :'TextureFill',
        :'gradient_fill' => :'GradientFill',
        :'image_data' => :'ImageData'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'begin_arrowhead_length' => :'String',
        :'begin_arrowhead_style' => :'String',
        :'begin_arrowhead_width' => :'String',
        :'cap_type' => :'String',
        :'compound_type' => :'String',
        :'dash_style' => :'String',
        :'end_arrowhead_length' => :'String',
        :'end_arrowhead_style' => :'String',
        :'end_arrowhead_width' => :'String',
        :'join_type' => :'String',
        :'weight' => :'Float',
        :'type' => :'String',
        :'solid_fill' => :'SolidFill',
        :'pattern_fill' => :'PatternFill',
        :'texture_fill' => :'TextureFill',
        :'gradient_fill' => :'GradientFill',
        :'image_data' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'BeginArrowheadLength')
          self.begin_arrowhead_length = attributes[:'BeginArrowheadLength']
      end
      if attributes.has_key?(:'BeginArrowheadStyle')
          self.begin_arrowhead_style = attributes[:'BeginArrowheadStyle']
      end
      if attributes.has_key?(:'BeginArrowheadWidth')
          self.begin_arrowhead_width = attributes[:'BeginArrowheadWidth']
      end
      if attributes.has_key?(:'CapType')
          self.cap_type = attributes[:'CapType']
      end
      if attributes.has_key?(:'CompoundType')
          self.compound_type = attributes[:'CompoundType']
      end
      if attributes.has_key?(:'DashStyle')
          self.dash_style = attributes[:'DashStyle']
      end
      if attributes.has_key?(:'EndArrowheadLength')
          self.end_arrowhead_length = attributes[:'EndArrowheadLength']
      end
      if attributes.has_key?(:'EndArrowheadStyle')
          self.end_arrowhead_style = attributes[:'EndArrowheadStyle']
      end
      if attributes.has_key?(:'EndArrowheadWidth')
          self.end_arrowhead_width = attributes[:'EndArrowheadWidth']
      end
      if attributes.has_key?(:'JoinType')
          self.join_type = attributes[:'JoinType']
      end
      if attributes.has_key?(:'Weight')
          self.weight = attributes[:'Weight']
      end
      if attributes.has_key?(:'Type')
          self.type = attributes[:'Type']
      end
      if attributes.has_key?(:'SolidFill')
          self.solid_fill = attributes[:'SolidFill']
      end
      if attributes.has_key?(:'PatternFill')
          self.pattern_fill = attributes[:'PatternFill']
      end
      if attributes.has_key?(:'TextureFill')
          self.texture_fill = attributes[:'TextureFill']
      end
      if attributes.has_key?(:'GradientFill')
          self.gradient_fill = attributes[:'GradientFill']
      end
      if attributes.has_key?(:'ImageData')
          self.image_data = attributes[:'ImageData']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @begin_arrowhead_length.nil?
          invalid_properties.push("invalid value for 'begin_arrowhead_length', begin_arrowhead_length cannot be nil.")
      end
      if @begin_arrowhead_style.nil?
          invalid_properties.push("invalid value for 'begin_arrowhead_style', begin_arrowhead_style cannot be nil.")
      end
      if @begin_arrowhead_width.nil?
          invalid_properties.push("invalid value for 'begin_arrowhead_width', begin_arrowhead_width cannot be nil.")
      end
      if @cap_type.nil?
          invalid_properties.push("invalid value for 'cap_type', cap_type cannot be nil.")
      end
      if @compound_type.nil?
          invalid_properties.push("invalid value for 'compound_type', compound_type cannot be nil.")
      end
      if @dash_style.nil?
          invalid_properties.push("invalid value for 'dash_style', dash_style cannot be nil.")
      end
      if @end_arrowhead_length.nil?
          invalid_properties.push("invalid value for 'end_arrowhead_length', end_arrowhead_length cannot be nil.")
      end
      if @end_arrowhead_style.nil?
          invalid_properties.push("invalid value for 'end_arrowhead_style', end_arrowhead_style cannot be nil.")
      end
      if @end_arrowhead_width.nil?
          invalid_properties.push("invalid value for 'end_arrowhead_width', end_arrowhead_width cannot be nil.")
      end
      if @join_type.nil?
          invalid_properties.push("invalid value for 'join_type', join_type cannot be nil.")
      end
      if @weight.nil?
          invalid_properties.push("invalid value for 'weight', weight cannot be nil.")
      end
      if @type.nil?
          invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end
      if @solid_fill.nil?
          invalid_properties.push("invalid value for 'solid_fill', solid_fill cannot be nil.")
      end
      if @pattern_fill.nil?
          invalid_properties.push("invalid value for 'pattern_fill', pattern_fill cannot be nil.")
      end
      if @texture_fill.nil?
          invalid_properties.push("invalid value for 'texture_fill', texture_fill cannot be nil.")
      end
      if @gradient_fill.nil?
          invalid_properties.push("invalid value for 'gradient_fill', gradient_fill cannot be nil.")
      end
      if @image_data.nil?
          invalid_properties.push("invalid value for 'image_data', image_data cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @begin_arrowhead_length.nil?
      return false if @begin_arrowhead_style.nil?
      return false if @begin_arrowhead_width.nil?
      return false if @cap_type.nil?
      return false if @compound_type.nil?
      return false if @dash_style.nil?
      return false if @end_arrowhead_length.nil?
      return false if @end_arrowhead_style.nil?
      return false if @end_arrowhead_width.nil?
      return false if @join_type.nil?
      return false if @weight.nil?
      return false if @type.nil?
      return false if @solid_fill.nil?
      return false if @pattern_fill.nil?
      return false if @texture_fill.nil?
      return false if @gradient_fill.nil?
      return false if @image_data.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          begin_arrowhead_length == o.begin_arrowhead_length &&
          begin_arrowhead_style == o.begin_arrowhead_style &&
          begin_arrowhead_width == o.begin_arrowhead_width &&
          cap_type == o.cap_type &&
          compound_type == o.compound_type &&
          dash_style == o.dash_style &&
          end_arrowhead_length == o.end_arrowhead_length &&
          end_arrowhead_style == o.end_arrowhead_style &&
          end_arrowhead_width == o.end_arrowhead_width &&
          join_type == o.join_type &&
          weight == o.weight &&
          type == o.type &&
          solid_fill == o.solid_fill &&
          pattern_fill == o.pattern_fill &&
          texture_fill == o.texture_fill &&
          gradient_fill == o.gradient_fill &&
          image_data == o.image_data 
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
      [ begin_arrowhead_length , begin_arrowhead_style , begin_arrowhead_width , cap_type , compound_type , dash_style , end_arrowhead_length , end_arrowhead_style , end_arrowhead_width , join_type , weight , type , solid_fill , pattern_fill , texture_fill , gradient_fill , image_data ].hash
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
