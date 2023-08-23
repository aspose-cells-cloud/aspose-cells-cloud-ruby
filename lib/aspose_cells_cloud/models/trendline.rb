=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Trendlinerb.cs">
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

  class Trendline
        #            
        attr_accessor :link
        #            
        attr_accessor :backward
        #            
        attr_accessor :data_labels
        #            
        attr_accessor :display_equation
        #            
        attr_accessor :display_r_squared
        #            
        attr_accessor :forward
        #            
        attr_accessor :intercept
        #            
        attr_accessor :is_name_auto
        #            
        attr_accessor :legend_entry
        #            
        attr_accessor :name
        #            
        attr_accessor :order
        #            
        attr_accessor :period
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
        :'link' => :'link',
        :'backward' => :'Backward',
        :'data_labels' => :'DataLabels',
        :'display_equation' => :'DisplayEquation',
        :'display_r_squared' => :'DisplayRSquared',
        :'forward' => :'Forward',
        :'intercept' => :'Intercept',
        :'is_name_auto' => :'IsNameAuto',
        :'legend_entry' => :'LegendEntry',
        :'name' => :'Name',
        :'order' => :'Order',
        :'period' => :'Period',
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
        :'backward' => :'Float',
        :'data_labels' => :'LinkElement',
        :'display_equation' => :'BOOLEAN',
        :'display_r_squared' => :'BOOLEAN',
        :'forward' => :'Float',
        :'intercept' => :'Float',
        :'is_name_auto' => :'BOOLEAN',
        :'legend_entry' => :'LinkElement',
        :'name' => :'String',
        :'order' => :'Integer',
        :'period' => :'Integer',
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

      if attributes.has_key?(:'link')
          self.link = attributes[:'link']
      end
      if attributes.has_key?(:'Backward')
          self.backward = attributes[:'Backward']
      end
      if attributes.has_key?(:'DataLabels')
          self.data_labels = attributes[:'DataLabels']
      end
      if attributes.has_key?(:'DisplayEquation')
          self.display_equation = attributes[:'DisplayEquation']
      end
      if attributes.has_key?(:'DisplayRSquared')
          self.display_r_squared = attributes[:'DisplayRSquared']
      end
      if attributes.has_key?(:'Forward')
          self.forward = attributes[:'Forward']
      end
      if attributes.has_key?(:'Intercept')
          self.intercept = attributes[:'Intercept']
      end
      if attributes.has_key?(:'IsNameAuto')
          self.is_name_auto = attributes[:'IsNameAuto']
      end
      if attributes.has_key?(:'LegendEntry')
          self.legend_entry = attributes[:'LegendEntry']
      end
      if attributes.has_key?(:'Name')
          self.name = attributes[:'Name']
      end
      if attributes.has_key?(:'Order')
          self.order = attributes[:'Order']
      end
      if attributes.has_key?(:'Period')
          self.period = attributes[:'Period']
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
      if @backward.nil?
          invalid_properties.push("invalid value for 'backward', backward cannot be nil.")
      end
      if @data_labels.nil?
          invalid_properties.push("invalid value for 'data_labels', data_labels cannot be nil.")
      end
      if @display_equation.nil?
          invalid_properties.push("invalid value for 'display_equation', display_equation cannot be nil.")
      end
      if @display_r_squared.nil?
          invalid_properties.push("invalid value for 'display_r_squared', display_r_squared cannot be nil.")
      end
      if @forward.nil?
          invalid_properties.push("invalid value for 'forward', forward cannot be nil.")
      end
      if @intercept.nil?
          invalid_properties.push("invalid value for 'intercept', intercept cannot be nil.")
      end
      if @is_name_auto.nil?
          invalid_properties.push("invalid value for 'is_name_auto', is_name_auto cannot be nil.")
      end
      if @legend_entry.nil?
          invalid_properties.push("invalid value for 'legend_entry', legend_entry cannot be nil.")
      end
      if @name.nil?
          invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end
      if @order.nil?
          invalid_properties.push("invalid value for 'order', order cannot be nil.")
      end
      if @period.nil?
          invalid_properties.push("invalid value for 'period', period cannot be nil.")
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
      return false if @backward.nil?
      return false if @data_labels.nil?
      return false if @display_equation.nil?
      return false if @display_r_squared.nil?
      return false if @forward.nil?
      return false if @intercept.nil?
      return false if @is_name_auto.nil?
      return false if @legend_entry.nil?
      return false if @name.nil?
      return false if @order.nil?
      return false if @period.nil?
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
          backward == o.backward &&
          data_labels == o.data_labels &&
          display_equation == o.display_equation &&
          display_r_squared == o.display_r_squared &&
          forward == o.forward &&
          intercept == o.intercept &&
          is_name_auto == o.is_name_auto &&
          legend_entry == o.legend_entry &&
          name == o.name &&
          order == o.order &&
          period == o.period &&
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
      [ link , backward , data_labels , display_equation , display_r_squared , forward , intercept , is_name_auto , legend_entry , name , order , period , type , begin_arrow_length , begin_arrow_width , begin_type , cap_type , color , compound_type , dash_type , end_arrow_length , end_arrow_width , end_type , gradient_fill , is_auto , is_automatic_color , is_visible , join_type , style , transparency , weight , weight_pt ].hash
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