=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="SplitTextOptionsrb.cs">
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

  class SplitTextOptions
        #The property "Name" is a publicly accessible and overridable property of type string in the class.            
        attr_accessor :name
        #            
        attr_accessor :data_source
        #            
        attr_accessor :file_info
        #            
        attr_accessor :worksheet
        #            
        attr_accessor :range
        #            
        attr_accessor :split_delimiters_type
        #            
        attr_accessor :custom_delimiter
        #            
        attr_accessor :keep_delimiters_in_resulting_cells
        #            
        attr_accessor :keep_delimiters_position
        #            
        attr_accessor :how_to_split

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'Name',
        :'data_source' => :'DataSource',
        :'file_info' => :'FileInfo',
        :'worksheet' => :'Worksheet',
        :'range' => :'Range',
        :'split_delimiters_type' => :'SplitDelimitersType',
        :'custom_delimiter' => :'CustomDelimiter',
        :'keep_delimiters_in_resulting_cells' => :'KeepDelimitersInResultingCells',
        :'keep_delimiters_position' => :'KeepDelimitersPosition',
        :'how_to_split' => :'HowToSplit'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'data_source' => :'DataSource',
        :'file_info' => :'FileInfo',
        :'worksheet' => :'String',
        :'range' => :'String',
        :'split_delimiters_type' => :'String',
        :'custom_delimiter' => :'String',
        :'keep_delimiters_in_resulting_cells' => :'BOOLEAN',
        :'keep_delimiters_position' => :'String',
        :'how_to_split' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Name')
          self.name = attributes[:'Name']
      end
      if attributes.has_key?(:'DataSource')
          self.data_source = attributes[:'DataSource']
      end
      if attributes.has_key?(:'FileInfo')
          self.file_info = attributes[:'FileInfo']
      end
      if attributes.has_key?(:'Worksheet')
          self.worksheet = attributes[:'Worksheet']
      end
      if attributes.has_key?(:'Range')
          self.range = attributes[:'Range']
      end
      if attributes.has_key?(:'SplitDelimitersType')
          self.split_delimiters_type = attributes[:'SplitDelimitersType']
      end
      if attributes.has_key?(:'CustomDelimiter')
          self.custom_delimiter = attributes[:'CustomDelimiter']
      end
      if attributes.has_key?(:'KeepDelimitersInResultingCells')
          self.keep_delimiters_in_resulting_cells = attributes[:'KeepDelimitersInResultingCells']
      end
      if attributes.has_key?(:'KeepDelimitersPosition')
          self.keep_delimiters_position = attributes[:'KeepDelimitersPosition']
      end
      if attributes.has_key?(:'HowToSplit')
          self.how_to_split = attributes[:'HowToSplit']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
          invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end
      if @data_source.nil?
          invalid_properties.push("invalid value for 'data_source', data_source cannot be nil.")
      end
      if @file_info.nil?
          invalid_properties.push("invalid value for 'file_info', file_info cannot be nil.")
      end
      if @worksheet.nil?
          invalid_properties.push("invalid value for 'worksheet', worksheet cannot be nil.")
      end
      if @range.nil?
          invalid_properties.push("invalid value for 'range', range cannot be nil.")
      end
      if @split_delimiters_type.nil?
          invalid_properties.push("invalid value for 'split_delimiters_type', split_delimiters_type cannot be nil.")
      end
      if @custom_delimiter.nil?
          invalid_properties.push("invalid value for 'custom_delimiter', custom_delimiter cannot be nil.")
      end
      if @keep_delimiters_in_resulting_cells.nil?
          invalid_properties.push("invalid value for 'keep_delimiters_in_resulting_cells', keep_delimiters_in_resulting_cells cannot be nil.")
      end
      if @keep_delimiters_position.nil?
          invalid_properties.push("invalid value for 'keep_delimiters_position', keep_delimiters_position cannot be nil.")
      end
      if @how_to_split.nil?
          invalid_properties.push("invalid value for 'how_to_split', how_to_split cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @data_source.nil?
      return false if @file_info.nil?
      return false if @worksheet.nil?
      return false if @range.nil?
      return false if @split_delimiters_type.nil?
      return false if @custom_delimiter.nil?
      return false if @keep_delimiters_in_resulting_cells.nil?
      return false if @keep_delimiters_position.nil?
      return false if @how_to_split.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          data_source == o.data_source &&
          file_info == o.file_info &&
          worksheet == o.worksheet &&
          range == o.range &&
          split_delimiters_type == o.split_delimiters_type &&
          custom_delimiter == o.custom_delimiter &&
          keep_delimiters_in_resulting_cells == o.keep_delimiters_in_resulting_cells &&
          keep_delimiters_position == o.keep_delimiters_position &&
          how_to_split == o.how_to_split 
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
      [ name , data_source , file_info , worksheet , range , split_delimiters_type , custom_delimiter , keep_delimiters_in_resulting_cells , keep_delimiters_position , how_to_split ].hash
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
