=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="ErrorBarrb.cs">
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

  class ErrorBar
        #            
        attr_accessor :link
        #            
        attr_accessor :amount
        #            
        attr_accessor :display_type
        #            
        attr_accessor :minus_value
        #            
        attr_accessor :plus_value
        #            
        attr_accessor :show_marker_t_top
        #            
        attr_accessor :type
        #            
        attr_accessor :begin_arrow_length
        #            
        attr_accessor :begin_arrow_width
        #            
        attr_accessor :begin_type
        #            
        attr_accessor :cap_type
        #            
        attr_accessor :color
        #            
        attr_accessor :compound_type
        #            
        attr_accessor :dash_type
        #            
        attr_accessor :end_arrow_length
        #            
        attr_accessor :end_arrow_width
        #            
        attr_accessor :end_type
        #            
        attr_accessor :gradient_fill
        #            
        attr_accessor :is_auto
        #            
        attr_accessor :is_automatic_color
        #            
        attr_accessor :is_visible
        #            
        attr_accessor :join_type
        #            
        attr_accessor :style
        #            
        attr_accessor :transparency
        #            
        attr_accessor :weight
        #            
        attr_accessor :weight_pt

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'link' => :'Link',
        :'amount' => :'Amount',
        :'display_type' => :'DisplayType',
        :'minus_value' => :'MinusValue',
        :'plus_value' => :'PlusValue',
        :'show_marker_t_top' => :'ShowMarkerTTop',
        :'type' => :'Type',
        :'begin_arrow_length' => :'BeginArrowLength',
        :'begin_arrow_width' => :'BeginArrowWidth',
        :'begin_type' => :'BeginType',
        :'cap_type' => :'CapType',
        :'color' => :'Color',
        :'compound_type' => :'CompoundType',
        :'dash_type' => :'DashType',
        :'end_arrow_length' => :'EndArrowLength',
        :'end_arrow_width' => :'EndArrowWidth',
        :'end_type' => :'EndType',
        :'gradient_fill' => :'GradientFill',
        :'is_auto' => :'IsAuto',
        :'is_automatic_color' => :'IsAutomaticColor',
        :'is_visible' => :'IsVisible',
        :'join_type' => :'JoinType',
        :'style' => :'Style',
        :'transparency' => :'Transparency',
        :'weight' => :'Weight',
        :'weight_pt' => :'WeightPt'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'link' => :'Link',
        :'amount' => :'Float',
        :'display_type' => :'String',
        :'minus_value' => :'String',
        :'plus_value' => :'String',
        :'show_marker_t_top' => :'BOOLEAN',
        :'type' => :'String',
        :'begin_arrow_length' => :'String',
        :'begin_arrow_width' => :'String',
        :'begin_type' => :'String',
        :'cap_type' => :'String',
        :'color' => :'Color',
        :'compound_type' => :'String',
        :'dash_type' => :'String',
        :'end_arrow_length' => :'String',
        :'end_arrow_width' => :'String',
        :'end_type' => :'String',
        :'gradient_fill' => :'GradientFill',
        :'is_auto' => :'BOOLEAN',
        :'is_automatic_color' => :'BOOLEAN',
        :'is_visible' => :'BOOLEAN',
        :'join_type' => :'String',
        :'style' => :'String',
        :'transparency' => :'Float',
        :'weight' => :'String',
        :'weight_pt' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Link')
          self.link = attributes[:'Link']
      end
      if attributes.has_key?(:'Amount')
          self.amount = attributes[:'Amount']
      end
      if attributes.has_key?(:'DisplayType')
          self.display_type = attributes[:'DisplayType']
      end
      if attributes.has_key?(:'MinusValue')
          self.minus_value = attributes[:'MinusValue']
      end
      if attributes.has_key?(:'PlusValue')
          self.plus_value = attributes[:'PlusValue']
      end
      if attributes.has_key?(:'ShowMarkerTTop')
          self.show_marker_t_top = attributes[:'ShowMarkerTTop']
      end
      if attributes.has_key?(:'Type')
          self.type = attributes[:'Type']
      end
      if attributes.has_key?(:'BeginArrowLength')
          self.begin_arrow_length = attributes[:'BeginArrowLength']
      end
      if attributes.has_key?(:'BeginArrowWidth')
          self.begin_arrow_width = attributes[:'BeginArrowWidth']
      end
      if attributes.has_key?(:'BeginType')
          self.begin_type = attributes[:'BeginType']
      end
      if attributes.has_key?(:'CapType')
          self.cap_type = attributes[:'CapType']
      end
      if attributes.has_key?(:'Color')
          self.color = attributes[:'Color']
      end
      if attributes.has_key?(:'CompoundType')
          self.compound_type = attributes[:'CompoundType']
      end
      if attributes.has_key?(:'DashType')
          self.dash_type = attributes[:'DashType']
      end
      if attributes.has_key?(:'EndArrowLength')
          self.end_arrow_length = attributes[:'EndArrowLength']
      end
      if attributes.has_key?(:'EndArrowWidth')
          self.end_arrow_width = attributes[:'EndArrowWidth']
      end
      if attributes.has_key?(:'EndType')
          self.end_type = attributes[:'EndType']
      end
      if attributes.has_key?(:'GradientFill')
          self.gradient_fill = attributes[:'GradientFill']
      end
      if attributes.has_key?(:'IsAuto')
          self.is_auto = attributes[:'IsAuto']
      end
      if attributes.has_key?(:'IsAutomaticColor')
          self.is_automatic_color = attributes[:'IsAutomaticColor']
      end
      if attributes.has_key?(:'IsVisible')
          self.is_visible = attributes[:'IsVisible']
      end
      if attributes.has_key?(:'JoinType')
          self.join_type = attributes[:'JoinType']
      end
      if attributes.has_key?(:'Style')
          self.style = attributes[:'Style']
      end
      if attributes.has_key?(:'Transparency')
          self.transparency = attributes[:'Transparency']
      end
      if attributes.has_key?(:'Weight')
          self.weight = attributes[:'Weight']
      end
      if attributes.has_key?(:'WeightPt')
          self.weight_pt = attributes[:'WeightPt']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @link.nil?
          invalid_properties.push("invalid value for 'link', link cannot be nil.")
      end
      if @amount.nil?
          invalid_properties.push("invalid value for 'amount', amount cannot be nil.")
      end
      if @display_type.nil?
          invalid_properties.push("invalid value for 'display_type', display_type cannot be nil.")
      end
      if @minus_value.nil?
          invalid_properties.push("invalid value for 'minus_value', minus_value cannot be nil.")
      end
      if @plus_value.nil?
          invalid_properties.push("invalid value for 'plus_value', plus_value cannot be nil.")
      end
      if @show_marker_t_top.nil?
          invalid_properties.push("invalid value for 'show_marker_t_top', show_marker_t_top cannot be nil.")
      end
      if @type.nil?
          invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end
      if @begin_arrow_length.nil?
          invalid_properties.push("invalid value for 'begin_arrow_length', begin_arrow_length cannot be nil.")
      end
      if @begin_arrow_width.nil?
          invalid_properties.push("invalid value for 'begin_arrow_width', begin_arrow_width cannot be nil.")
      end
      if @begin_type.nil?
          invalid_properties.push("invalid value for 'begin_type', begin_type cannot be nil.")
      end
      if @cap_type.nil?
          invalid_properties.push("invalid value for 'cap_type', cap_type cannot be nil.")
      end
      if @color.nil?
          invalid_properties.push("invalid value for 'color', color cannot be nil.")
      end
      if @compound_type.nil?
          invalid_properties.push("invalid value for 'compound_type', compound_type cannot be nil.")
      end
      if @dash_type.nil?
          invalid_properties.push("invalid value for 'dash_type', dash_type cannot be nil.")
      end
      if @end_arrow_length.nil?
          invalid_properties.push("invalid value for 'end_arrow_length', end_arrow_length cannot be nil.")
      end
      if @end_arrow_width.nil?
          invalid_properties.push("invalid value for 'end_arrow_width', end_arrow_width cannot be nil.")
      end
      if @end_type.nil?
          invalid_properties.push("invalid value for 'end_type', end_type cannot be nil.")
      end
      if @gradient_fill.nil?
          invalid_properties.push("invalid value for 'gradient_fill', gradient_fill cannot be nil.")
      end
      if @is_auto.nil?
          invalid_properties.push("invalid value for 'is_auto', is_auto cannot be nil.")
      end
      if @is_automatic_color.nil?
          invalid_properties.push("invalid value for 'is_automatic_color', is_automatic_color cannot be nil.")
      end
      if @is_visible.nil?
          invalid_properties.push("invalid value for 'is_visible', is_visible cannot be nil.")
      end
      if @join_type.nil?
          invalid_properties.push("invalid value for 'join_type', join_type cannot be nil.")
      end
      if @style.nil?
          invalid_properties.push("invalid value for 'style', style cannot be nil.")
      end
      if @transparency.nil?
          invalid_properties.push("invalid value for 'transparency', transparency cannot be nil.")
      end
      if @weight.nil?
          invalid_properties.push("invalid value for 'weight', weight cannot be nil.")
      end
      if @weight_pt.nil?
          invalid_properties.push("invalid value for 'weight_pt', weight_pt cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @link.nil?
      return false if @amount.nil?
      return false if @display_type.nil?
      return false if @minus_value.nil?
      return false if @plus_value.nil?
      return false if @show_marker_t_top.nil?
      return false if @type.nil?
      return false if @begin_arrow_length.nil?
      return false if @begin_arrow_width.nil?
      return false if @begin_type.nil?
      return false if @cap_type.nil?
      return false if @color.nil?
      return false if @compound_type.nil?
      return false if @dash_type.nil?
      return false if @end_arrow_length.nil?
      return false if @end_arrow_width.nil?
      return false if @end_type.nil?
      return false if @gradient_fill.nil?
      return false if @is_auto.nil?
      return false if @is_automatic_color.nil?
      return false if @is_visible.nil?
      return false if @join_type.nil?
      return false if @style.nil?
      return false if @transparency.nil?
      return false if @weight.nil?
      return false if @weight_pt.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          link == o.link &&
          amount == o.amount &&
          display_type == o.display_type &&
          minus_value == o.minus_value &&
          plus_value == o.plus_value &&
          show_marker_t_top == o.show_marker_t_top &&
          type == o.type &&
          begin_arrow_length == o.begin_arrow_length &&
          begin_arrow_width == o.begin_arrow_width &&
          begin_type == o.begin_type &&
          cap_type == o.cap_type &&
          color == o.color &&
          compound_type == o.compound_type &&
          dash_type == o.dash_type &&
          end_arrow_length == o.end_arrow_length &&
          end_arrow_width == o.end_arrow_width &&
          end_type == o.end_type &&
          gradient_fill == o.gradient_fill &&
          is_auto == o.is_auto &&
          is_automatic_color == o.is_automatic_color &&
          is_visible == o.is_visible &&
          join_type == o.join_type &&
          style == o.style &&
          transparency == o.transparency &&
          weight == o.weight &&
          weight_pt == o.weight_pt 
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
      [ link , amount , display_type , minus_value , plus_value , show_marker_t_top , type , begin_arrow_length , begin_arrow_width , begin_type , cap_type , color , compound_type , dash_type , end_arrow_length , end_arrow_width , end_type , gradient_fill , is_auto , is_automatic_color , is_visible , join_type , style , transparency , weight , weight_pt ].hash
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
