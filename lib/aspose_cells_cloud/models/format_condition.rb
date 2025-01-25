=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="FormatConditionrb.cs">
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

  class FormatCondition
        #The priority of this conditional formatting rule. This value is used to determine which                        format should be evaluated and rendered. Lower numeric values are higher priority than                        higher numeric values, where '1' is the highest priority.            
        attr_accessor :priority
        #Gets and sets whether the conditional format Type.            
        attr_accessor :type
        #True, no rules with lower priority may be applied over this rule, when this rule evaluates to true.                        Only applies for Excel 2007;            
        attr_accessor :stop_if_true
        #Get the conditional formatting's "AboveAverage" instance.                        The default instance's rule highlights cells that are                         above the average for all values in the range.                        Valid only for type = AboveAverage.            
        attr_accessor :above_average
        #Get the conditional formatting's "ColorScale" instance.                        The default instance is a "green-yellow-red" 3ColorScale .                        Valid only for type = ColorScale.            
        attr_accessor :color_scale
        #Get the conditional formatting's "DataBar" instance.                        The default instance's color is blue.                        Valid only for type is DataBar.            
        attr_accessor :data_bar
        #Gets and sets the value or expression associated with conditional formatting.            
        attr_accessor :formula1
        #Gets and sets the value or expression associated with conditional formatting.            
        attr_accessor :formula2
        #Get the conditional formatting's "IconSet" instance.                        The default instance's IconSetType is TrafficLights31.                        Valid only for type = IconSet.            
        attr_accessor :icon_set
        #Gets and sets the conditional format operator type.            
        attr_accessor :operator
        #Gets or setts style of conditional formatted cell ranges.            
        attr_accessor :style
        #The text value in a "text contains" conditional formatting rule.                         Valid only for type = containsText, notContainsText, beginsWith and endsWith.                        The default value is null.            
        attr_accessor :text
        #The applicable time period in a "date occurring…" conditional formatting rule.                         Valid only for type = timePeriod.                        The default value is TimePeriodType.Today.            
        attr_accessor :time_period
        #Get the conditional formatting's "Top10" instance.                        The default instance's rule highlights cells whose                        values fall in the top 10 bracket.                        Valid only for type is Top10.            
        attr_accessor :top10
        #            
        attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'priority' => :'Priority',
        :'type' => :'Type',
        :'stop_if_true' => :'StopIfTrue',
        :'above_average' => :'AboveAverage',
        :'color_scale' => :'ColorScale',
        :'data_bar' => :'DataBar',
        :'formula1' => :'Formula1',
        :'formula2' => :'Formula2',
        :'icon_set' => :'IconSet',
        :'operator' => :'Operator',
        :'style' => :'Style',
        :'text' => :'Text',
        :'time_period' => :'TimePeriod',
        :'top10' => :'Top10',
        :'link' => :'link'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'priority' => :'Integer',
        :'type' => :'String',
        :'stop_if_true' => :'BOOLEAN',
        :'above_average' => :'AboveAverage',
        :'color_scale' => :'ColorScale',
        :'data_bar' => :'DataBar',
        :'formula1' => :'String',
        :'formula2' => :'String',
        :'icon_set' => :'IconSet',
        :'operator' => :'String',
        :'style' => :'Style',
        :'text' => :'String',
        :'time_period' => :'String',
        :'top10' => :'Top10',
        :'link' => :'Link'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Priority')
          self.priority = attributes[:'Priority']
      end
      if attributes.has_key?(:'Type')
          self.type = attributes[:'Type']
      end
      if attributes.has_key?(:'StopIfTrue')
          self.stop_if_true = attributes[:'StopIfTrue']
      end
      if attributes.has_key?(:'AboveAverage')
          self.above_average = attributes[:'AboveAverage']
      end
      if attributes.has_key?(:'ColorScale')
          self.color_scale = attributes[:'ColorScale']
      end
      if attributes.has_key?(:'DataBar')
          self.data_bar = attributes[:'DataBar']
      end
      if attributes.has_key?(:'Formula1')
          self.formula1 = attributes[:'Formula1']
      end
      if attributes.has_key?(:'Formula2')
          self.formula2 = attributes[:'Formula2']
      end
      if attributes.has_key?(:'IconSet')
          self.icon_set = attributes[:'IconSet']
      end
      if attributes.has_key?(:'Operator')
          self.operator = attributes[:'Operator']
      end
      if attributes.has_key?(:'Style')
          self.style = attributes[:'Style']
      end
      if attributes.has_key?(:'Text')
          self.text = attributes[:'Text']
      end
      if attributes.has_key?(:'TimePeriod')
          self.time_period = attributes[:'TimePeriod']
      end
      if attributes.has_key?(:'Top10')
          self.top10 = attributes[:'Top10']
      end
      if attributes.has_key?(:'link')
          self.link = attributes[:'link']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @priority.nil?
          invalid_properties.push("invalid value for 'priority', priority cannot be nil.")
      end
      if @type.nil?
          invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end
      if @stop_if_true.nil?
          invalid_properties.push("invalid value for 'stop_if_true', stop_if_true cannot be nil.")
      end
      if @above_average.nil?
          invalid_properties.push("invalid value for 'above_average', above_average cannot be nil.")
      end
      if @color_scale.nil?
          invalid_properties.push("invalid value for 'color_scale', color_scale cannot be nil.")
      end
      if @data_bar.nil?
          invalid_properties.push("invalid value for 'data_bar', data_bar cannot be nil.")
      end
      if @formula1.nil?
          invalid_properties.push("invalid value for 'formula1', formula1 cannot be nil.")
      end
      if @formula2.nil?
          invalid_properties.push("invalid value for 'formula2', formula2 cannot be nil.")
      end
      if @icon_set.nil?
          invalid_properties.push("invalid value for 'icon_set', icon_set cannot be nil.")
      end
      if @operator.nil?
          invalid_properties.push("invalid value for 'operator', operator cannot be nil.")
      end
      if @style.nil?
          invalid_properties.push("invalid value for 'style', style cannot be nil.")
      end
      if @text.nil?
          invalid_properties.push("invalid value for 'text', text cannot be nil.")
      end
      if @time_period.nil?
          invalid_properties.push("invalid value for 'time_period', time_period cannot be nil.")
      end
      if @top10.nil?
          invalid_properties.push("invalid value for 'top10', top10 cannot be nil.")
      end
      if @link.nil?
          invalid_properties.push("invalid value for 'link', link cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @priority.nil?
      return false if @type.nil?
      return false if @stop_if_true.nil?
      return false if @above_average.nil?
      return false if @color_scale.nil?
      return false if @data_bar.nil?
      return false if @formula1.nil?
      return false if @formula2.nil?
      return false if @icon_set.nil?
      return false if @operator.nil?
      return false if @style.nil?
      return false if @text.nil?
      return false if @time_period.nil?
      return false if @top10.nil?
      return false if @link.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          priority == o.priority &&
          type == o.type &&
          stop_if_true == o.stop_if_true &&
          above_average == o.above_average &&
          color_scale == o.color_scale &&
          data_bar == o.data_bar &&
          formula1 == o.formula1 &&
          formula2 == o.formula2 &&
          icon_set == o.icon_set &&
          operator == o.operator &&
          style == o.style &&
          text == o.text &&
          time_period == o.time_period &&
          top10 == o.top10 &&
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
      [ priority , type , stop_if_true , above_average , color_scale , data_bar , formula1 , formula2 , icon_set , operator , style , text , time_period , top10 , link ].hash
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
