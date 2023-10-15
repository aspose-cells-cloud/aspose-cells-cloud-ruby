=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="DataSorterrb.cs">
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

  class DataSorter
        #Gets and sets whether case sensitive when comparing string.             
        attr_accessor :case_sensitive
        #Represents whether the range has headers.             
        attr_accessor :has_headers
        #Gets the key list of data sorter.                        
        attr_accessor :key_list
        #True means that sorting orientation is from left to right.            False means that sorting orientation is from top to bottom.            The default value is false.             
        attr_accessor :sort_left_to_right
        #Indicates whether sorting anything that looks like a number.             
        attr_accessor :sort_as_number
        #Gets the key list of data sorter.             
        attr_accessor :keys

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'case_sensitive' => :'CaseSensitive',
        :'has_headers' => :'HasHeaders',
        :'key_list' => :'KeyList',
        :'sort_left_to_right' => :'SortLeftToRight',
        :'sort_as_number' => :'SortAsNumber',
        :'keys' => :'Keys'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'case_sensitive' => :'BOOLEAN',
        :'has_headers' => :'BOOLEAN',
        :'key_list' => :'Array<SortKey>',
        :'sort_left_to_right' => :'BOOLEAN',
        :'sort_as_number' => :'BOOLEAN',
        :'keys' => :'Array<DataSorterKey>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'CaseSensitive')
          self.case_sensitive = attributes[:'CaseSensitive']
      end
      if attributes.has_key?(:'HasHeaders')
          self.has_headers = attributes[:'HasHeaders']
      end
      if attributes.has_key?(:'KeyList')
          self.key_list = attributes[:'KeyList']
      end
      if attributes.has_key?(:'SortLeftToRight')
          self.sort_left_to_right = attributes[:'SortLeftToRight']
      end
      if attributes.has_key?(:'SortAsNumber')
          self.sort_as_number = attributes[:'SortAsNumber']
      end
      if attributes.has_key?(:'Keys')
          self.keys = attributes[:'Keys']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @case_sensitive.nil?
          invalid_properties.push("invalid value for 'case_sensitive', case_sensitive cannot be nil.")
      end
      if @has_headers.nil?
          invalid_properties.push("invalid value for 'has_headers', has_headers cannot be nil.")
      end
      if @key_list.nil?
          invalid_properties.push("invalid value for 'key_list', key_list cannot be nil.")
      end
      if @sort_left_to_right.nil?
          invalid_properties.push("invalid value for 'sort_left_to_right', sort_left_to_right cannot be nil.")
      end
      if @sort_as_number.nil?
          invalid_properties.push("invalid value for 'sort_as_number', sort_as_number cannot be nil.")
      end
      if @keys.nil?
          invalid_properties.push("invalid value for 'keys', keys cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @case_sensitive.nil?
      return false if @has_headers.nil?
      return false if @key_list.nil?
      return false if @sort_left_to_right.nil?
      return false if @sort_as_number.nil?
      return false if @keys.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          case_sensitive == o.case_sensitive &&
          has_headers == o.has_headers &&
          key_list == o.key_list &&
          sort_left_to_right == o.sort_left_to_right &&
          sort_as_number == o.sort_as_number &&
          keys == o.keys 
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
      [ case_sensitive , has_headers , key_list , sort_left_to_right , sort_as_number , keys ].hash
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
