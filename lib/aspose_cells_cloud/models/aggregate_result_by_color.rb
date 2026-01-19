=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="AggregateResultByColorrb.cs">
   Copyright (c) 2026 Aspose.Cells Cloud
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

  class AggregateResultByColor
        #            
        attr_accessor :aggregate_operation
        #            
        attr_accessor :color_name
        #            
        attr_accessor :count
        #            
        attr_accessor :sum
        #            
        attr_accessor :max_value
        #            
        attr_accessor :min_value
        #            
        attr_accessor :average_value

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'aggregate_operation' => :'AggregateOperation',
        :'color_name' => :'ColorName',
        :'count' => :'Count',
        :'sum' => :'Sum',
        :'max_value' => :'MaxValue',
        :'min_value' => :'MinValue',
        :'average_value' => :'AverageValue'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'aggregate_operation' => :'String',
        :'color_name' => :'String',
        :'count' => :'Integer',
        :'sum' => :'Float',
        :'max_value' => :'Float',
        :'min_value' => :'Float',
        :'average_value' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'AggregateOperation')
          self.aggregate_operation = attributes[:'AggregateOperation']
      end
      if attributes.has_key?(:'ColorName')
          self.color_name = attributes[:'ColorName']
      end
      if attributes.has_key?(:'Count')
          self.count = attributes[:'Count']
      end
      if attributes.has_key?(:'Sum')
          self.sum = attributes[:'Sum']
      end
      if attributes.has_key?(:'MaxValue')
          self.max_value = attributes[:'MaxValue']
      end
      if attributes.has_key?(:'MinValue')
          self.min_value = attributes[:'MinValue']
      end
      if attributes.has_key?(:'AverageValue')
          self.average_value = attributes[:'AverageValue']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @aggregate_operation.nil?
          invalid_properties.push("invalid value for 'aggregate_operation', aggregate_operation cannot be nil.")
      end
      if @color_name.nil?
          invalid_properties.push("invalid value for 'color_name', color_name cannot be nil.")
      end
      if @count.nil?
          invalid_properties.push("invalid value for 'count', count cannot be nil.")
      end
      if @sum.nil?
          invalid_properties.push("invalid value for 'sum', sum cannot be nil.")
      end
      if @max_value.nil?
          invalid_properties.push("invalid value for 'max_value', max_value cannot be nil.")
      end
      if @min_value.nil?
          invalid_properties.push("invalid value for 'min_value', min_value cannot be nil.")
      end
      if @average_value.nil?
          invalid_properties.push("invalid value for 'average_value', average_value cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @aggregate_operation.nil?
      return false if @color_name.nil?
      return false if @count.nil?
      return false if @sum.nil?
      return false if @max_value.nil?
      return false if @min_value.nil?
      return false if @average_value.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          aggregate_operation == o.aggregate_operation &&
          color_name == o.color_name &&
          count == o.count &&
          sum == o.sum &&
          max_value == o.max_value &&
          min_value == o.min_value &&
          average_value == o.average_value 
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
      [ aggregate_operation , color_name , count , sum , max_value , min_value , average_value ].hash
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
