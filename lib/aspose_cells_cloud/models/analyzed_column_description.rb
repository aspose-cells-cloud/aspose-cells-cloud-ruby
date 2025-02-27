=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="AnalyzedColumnDescriptionrb.cs">
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

  class AnalyzedColumnDescription
        #Column index.            
        attr_accessor :index
        #The true position index value of the column.            
        attr_accessor :column_index
        #This class has a public property "Title" of type string with a default value of an empty string.            
        attr_accessor :title
        #When the repetition rate is high, can it be viewed as a group display?            
        attr_accessor :repetition_rate
        #The column type is identified, and the attributes of the column are determined after data analysis.            
        attr_accessor :column_data_data_type
        #            
        attr_accessor :number_category_type
        #            
        attr_accessor :text_category_type
        #            
        attr_accessor :style_number
        #Column data exception description.            
        attr_accessor :column_data_exception_description

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'index' => :'Index',
        :'column_index' => :'ColumnIndex',
        :'title' => :'Title',
        :'repetition_rate' => :'RepetitionRate',
        :'column_data_data_type' => :'ColumnDataDataType',
        :'number_category_type' => :'NumberCategoryType',
        :'text_category_type' => :'TextCategoryType',
        :'style_number' => :'StyleNumber',
        :'column_data_exception_description' => :'columnDataExceptionDescription'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'index' => :'Integer',
        :'column_index' => :'Integer',
        :'title' => :'String',
        :'repetition_rate' => :'Float',
        :'column_data_data_type' => :'String',
        :'number_category_type' => :'String',
        :'text_category_type' => :'String',
        :'style_number' => :'Integer',
        :'column_data_exception_description' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Index')
          self.index = attributes[:'Index']
      end
      if attributes.has_key?(:'ColumnIndex')
          self.column_index = attributes[:'ColumnIndex']
      end
      if attributes.has_key?(:'Title')
          self.title = attributes[:'Title']
      end
      if attributes.has_key?(:'RepetitionRate')
          self.repetition_rate = attributes[:'RepetitionRate']
      end
      if attributes.has_key?(:'ColumnDataDataType')
          self.column_data_data_type = attributes[:'ColumnDataDataType']
      end
      if attributes.has_key?(:'NumberCategoryType')
          self.number_category_type = attributes[:'NumberCategoryType']
      end
      if attributes.has_key?(:'TextCategoryType')
          self.text_category_type = attributes[:'TextCategoryType']
      end
      if attributes.has_key?(:'StyleNumber')
          self.style_number = attributes[:'StyleNumber']
      end
      if attributes.has_key?(:'columnDataExceptionDescription')
          self.column_data_exception_description = attributes[:'columnDataExceptionDescription']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @index.nil?
          invalid_properties.push("invalid value for 'index', index cannot be nil.")
      end
      if @column_index.nil?
          invalid_properties.push("invalid value for 'column_index', column_index cannot be nil.")
      end
      if @title.nil?
          invalid_properties.push("invalid value for 'title', title cannot be nil.")
      end
      if @repetition_rate.nil?
          invalid_properties.push("invalid value for 'repetition_rate', repetition_rate cannot be nil.")
      end
      if @column_data_data_type.nil?
          invalid_properties.push("invalid value for 'column_data_data_type', column_data_data_type cannot be nil.")
      end
      if @number_category_type.nil?
          invalid_properties.push("invalid value for 'number_category_type', number_category_type cannot be nil.")
      end
      if @text_category_type.nil?
          invalid_properties.push("invalid value for 'text_category_type', text_category_type cannot be nil.")
      end
      if @style_number.nil?
          invalid_properties.push("invalid value for 'style_number', style_number cannot be nil.")
      end
      if @column_data_exception_description.nil?
          invalid_properties.push("invalid value for 'column_data_exception_description', column_data_exception_description cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @index.nil?
      return false if @column_index.nil?
      return false if @title.nil?
      return false if @repetition_rate.nil?
      return false if @column_data_data_type.nil?
      return false if @number_category_type.nil?
      return false if @text_category_type.nil?
      return false if @style_number.nil?
      return false if @column_data_exception_description.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          index == o.index &&
          column_index == o.column_index &&
          title == o.title &&
          repetition_rate == o.repetition_rate &&
          column_data_data_type == o.column_data_data_type &&
          number_category_type == o.number_category_type &&
          text_category_type == o.text_category_type &&
          style_number == o.style_number &&
          column_data_exception_description == o.column_data_exception_description 
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
      [ index , column_index , title , repetition_rate , column_data_data_type , number_category_type , text_category_type , style_number , column_data_exception_description ].hash
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
