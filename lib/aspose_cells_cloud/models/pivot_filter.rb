=begin
--------------------------------------------------------------------------------------------------------------------
Copyright (c) 2021 Aspose.Cells Cloud
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
  # Represents a PivotFilter in PivotFilter Collection.
  class PivotFilter
    # Gets the Evaluation Order of the pivot filter.
    attr_accessor :evaluation_order

    # Gets the name of the pivot filter.
    attr_accessor :name

    # Gets the autofilter type of the pivot filter.
    attr_accessor :filter_type

    # Gets the autofilter of the pivot filter.
    attr_accessor :auto_filter

    # Gets the field index of the pivot filter.
    attr_accessor :field_index

    # Gets the measure field index of the pivot filter.             
    attr_accessor :measure_fld_index

    # Gets the string value1 of the label pivot filter.             
    attr_accessor :value1

    # Gets the member property field index of the pivot filter.             
    attr_accessor :member_property_field_index

    # Gets the string value2 of the label pivot filter.             
    attr_accessor :value2


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'evaluation_order' => :'EvaluationOrder',
        :'name' => :'Name',
        :'filter_type' => :'FilterType',
        :'auto_filter' => :'AutoFilter',
        :'field_index' => :'FieldIndex',
        :'measure_fld_index' => :'MeasureFldIndex',
        :'value1' => :'Value1',
        :'member_property_field_index' => :'MemberPropertyFieldIndex',
        :'value2' => :'Value2'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'evaluation_order' => :'Integer',
        :'name' => :'String',
        :'filter_type' => :'String',
        :'auto_filter' => :'AutoFilter',
        :'field_index' => :'Integer',
        :'measure_fld_index' => :'Integer',
        :'value1' => :'String',
        :'member_property_field_index' => :'Integer',
        :'value2' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'EvaluationOrder')
        self.evaluation_order = attributes[:'EvaluationOrder']
      end

      if attributes.has_key?(:'Name')
        self.name = attributes[:'Name']
      end

      if attributes.has_key?(:'FilterType')
        self.filter_type = attributes[:'FilterType']
      end

      if attributes.has_key?(:'AutoFilter')
        self.auto_filter = attributes[:'AutoFilter']
      end

      if attributes.has_key?(:'FieldIndex')
        self.field_index = attributes[:'FieldIndex']
      end

      if attributes.has_key?(:'MeasureFldIndex')
        self.measure_fld_index = attributes[:'MeasureFldIndex']
      end

      if attributes.has_key?(:'Value1')
        self.value1 = attributes[:'Value1']
      end

      if attributes.has_key?(:'MemberPropertyFieldIndex')
        self.member_property_field_index = attributes[:'MemberPropertyFieldIndex']
      end

      if attributes.has_key?(:'Value2')
        self.value2 = attributes[:'Value2']
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
          evaluation_order == o.evaluation_order &&
          name == o.name &&
          filter_type == o.filter_type &&
          auto_filter == o.auto_filter &&
          field_index == o.field_index &&
          measure_fld_index == o.measure_fld_index &&
          value1 == o.value1 &&
          member_property_field_index == o.member_property_field_index &&
          value2 == o.value2
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [evaluation_order, name, filter_type, auto_filter, field_index, measure_fld_index, value1, member_property_field_index, value2].hash
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
