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

  class Line
    attr_accessor :style

    attr_accessor :is_auto

    attr_accessor :begin_arrow_length

    attr_accessor :weight

    attr_accessor :gradient_fill

    attr_accessor :color

    attr_accessor :compound_type

    attr_accessor :weight_pt

    attr_accessor :is_visible

    attr_accessor :join_type

    attr_accessor :end_arrow_length

    attr_accessor :is_automatic_color

    attr_accessor :dash_type

    attr_accessor :begin_type

    attr_accessor :cap_type

    attr_accessor :end_type

    attr_accessor :begin_arrow_width

    attr_accessor :end_arrow_width

    attr_accessor :transparency


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'style' => :'Style',
        :'is_auto' => :'IsAuto',
        :'begin_arrow_length' => :'BeginArrowLength',
        :'weight' => :'Weight',
        :'gradient_fill' => :'GradientFill',
        :'color' => :'Color',
        :'compound_type' => :'CompoundType',
        :'weight_pt' => :'WeightPt',
        :'is_visible' => :'IsVisible',
        :'join_type' => :'JoinType',
        :'end_arrow_length' => :'EndArrowLength',
        :'is_automatic_color' => :'IsAutomaticColor',
        :'dash_type' => :'DashType',
        :'begin_type' => :'BeginType',
        :'cap_type' => :'CapType',
        :'end_type' => :'EndType',
        :'begin_arrow_width' => :'BeginArrowWidth',
        :'end_arrow_width' => :'EndArrowWidth',
        :'transparency' => :'Transparency'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'style' => :'String',
        :'is_auto' => :'BOOLEAN',
        :'begin_arrow_length' => :'String',
        :'weight' => :'String',
        :'gradient_fill' => :'GradientFill',
        :'color' => :'Color',
        :'compound_type' => :'String',
        :'weight_pt' => :'Float',
        :'is_visible' => :'BOOLEAN',
        :'join_type' => :'String',
        :'end_arrow_length' => :'String',
        :'is_automatic_color' => :'BOOLEAN',
        :'dash_type' => :'String',
        :'begin_type' => :'String',
        :'cap_type' => :'String',
        :'end_type' => :'String',
        :'begin_arrow_width' => :'String',
        :'end_arrow_width' => :'String',
        :'transparency' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Style')
        self.style = attributes[:'Style']
      end

      if attributes.has_key?(:'IsAuto')
        self.is_auto = attributes[:'IsAuto']
      end

      if attributes.has_key?(:'BeginArrowLength')
        self.begin_arrow_length = attributes[:'BeginArrowLength']
      end

      if attributes.has_key?(:'Weight')
        self.weight = attributes[:'Weight']
      end

      if attributes.has_key?(:'GradientFill')
        self.gradient_fill = attributes[:'GradientFill']
      end

      if attributes.has_key?(:'Color')
        self.color = attributes[:'Color']
      end

      if attributes.has_key?(:'CompoundType')
        self.compound_type = attributes[:'CompoundType']
      end

      if attributes.has_key?(:'WeightPt')
        self.weight_pt = attributes[:'WeightPt']
      end

      if attributes.has_key?(:'IsVisible')
        self.is_visible = attributes[:'IsVisible']
      end

      if attributes.has_key?(:'JoinType')
        self.join_type = attributes[:'JoinType']
      end

      if attributes.has_key?(:'EndArrowLength')
        self.end_arrow_length = attributes[:'EndArrowLength']
      end

      if attributes.has_key?(:'IsAutomaticColor')
        self.is_automatic_color = attributes[:'IsAutomaticColor']
      end

      if attributes.has_key?(:'DashType')
        self.dash_type = attributes[:'DashType']
      end

      if attributes.has_key?(:'BeginType')
        self.begin_type = attributes[:'BeginType']
      end

      if attributes.has_key?(:'CapType')
        self.cap_type = attributes[:'CapType']
      end

      if attributes.has_key?(:'EndType')
        self.end_type = attributes[:'EndType']
      end

      if attributes.has_key?(:'BeginArrowWidth')
        self.begin_arrow_width = attributes[:'BeginArrowWidth']
      end

      if attributes.has_key?(:'EndArrowWidth')
        self.end_arrow_width = attributes[:'EndArrowWidth']
      end

      if attributes.has_key?(:'Transparency')
        self.transparency = attributes[:'Transparency']
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
          style == o.style &&
          is_auto == o.is_auto &&
          begin_arrow_length == o.begin_arrow_length &&
          weight == o.weight &&
          gradient_fill == o.gradient_fill &&
          color == o.color &&
          compound_type == o.compound_type &&
          weight_pt == o.weight_pt &&
          is_visible == o.is_visible &&
          join_type == o.join_type &&
          end_arrow_length == o.end_arrow_length &&
          is_automatic_color == o.is_automatic_color &&
          dash_type == o.dash_type &&
          begin_type == o.begin_type &&
          cap_type == o.cap_type &&
          end_type == o.end_type &&
          begin_arrow_width == o.begin_arrow_width &&
          end_arrow_width == o.end_arrow_width &&
          transparency == o.transparency
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [style, is_auto, begin_arrow_length, weight, gradient_fill, color, compound_type, weight_pt, is_visible, join_type, end_arrow_length, is_automatic_color, dash_type, begin_type, cap_type, end_type, begin_arrow_width, end_arrow_width, transparency].hash
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
