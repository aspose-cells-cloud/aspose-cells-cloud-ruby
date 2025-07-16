=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="TrimContentOptionsrb.cs">
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

  class TrimContentOptions
        #Represents data source.  There are three types of data, they are CloudFileSystem, RequestFiles, HttpUri.            
        attr_accessor :data_source
        #Represents file information. Include of filename, filesize, and file content(base64String).            
        attr_accessor :file_info
        #Trim Content            
        attr_accessor :trim_content
        #If the trim leading value is true, the trim content before and after cell values will be deleted.            
        attr_accessor :trim_leading
        #If the trim trailing value is true, the trim content before and after cell values will be deleted.            
        attr_accessor :trim_trailing
        #When the trim space between word to 1 parameter is true, it enables the removal of extra spaces between words within a cell, ensuring that only a single space is maintained between words.            
        attr_accessor :trim_space_between_word_to1
        #            
        attr_accessor :trim_non_breaking_spaces
        #When this parameter is enabled (set to True), it deletes extra line breaks within the selected range, ensuring that only necessary line breaks are retained.            
        attr_accessor :remove_extra_line_breaks
        #When this parameter is enabled (set to True), it removes all line breaks within the selected range, resulting in a continuous block of text without any line breaks.            
        attr_accessor :remove_all_line_breaks
        #Specifies the range of cells within the worksheet where the spreadsheet operations will be performed. This parameter allows users to define the exact area to be processed, ensuring that operations are applied only to the designated cells.            
        attr_accessor :scope_options

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'data_source' => :'DataSource',
        :'file_info' => :'FileInfo',
        :'trim_content' => :'TrimContent',
        :'trim_leading' => :'TrimLeading',
        :'trim_trailing' => :'TrimTrailing',
        :'trim_space_between_word_to1' => :'TrimSpaceBetweenWordTo1',
        :'trim_non_breaking_spaces' => :'TrimNonBreakingSpaces',
        :'remove_extra_line_breaks' => :'RemoveExtraLineBreaks',
        :'remove_all_line_breaks' => :'RemoveAllLineBreaks',
        :'scope_options' => :'ScopeOptions'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'data_source' => :'DataSource',
        :'file_info' => :'FileInfo',
        :'trim_content' => :'String',
        :'trim_leading' => :'BOOLEAN',
        :'trim_trailing' => :'BOOLEAN',
        :'trim_space_between_word_to1' => :'BOOLEAN',
        :'trim_non_breaking_spaces' => :'BOOLEAN',
        :'remove_extra_line_breaks' => :'BOOLEAN',
        :'remove_all_line_breaks' => :'BOOLEAN',
        :'scope_options' => :'ScopeOptions'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'DataSource')
          self.data_source = attributes[:'DataSource']
      end
      if attributes.has_key?(:'FileInfo')
          self.file_info = attributes[:'FileInfo']
      end
      if attributes.has_key?(:'TrimContent')
          self.trim_content = attributes[:'TrimContent']
      end
      if attributes.has_key?(:'TrimLeading')
          self.trim_leading = attributes[:'TrimLeading']
      end
      if attributes.has_key?(:'TrimTrailing')
          self.trim_trailing = attributes[:'TrimTrailing']
      end
      if attributes.has_key?(:'TrimSpaceBetweenWordTo1')
          self.trim_space_between_word_to1 = attributes[:'TrimSpaceBetweenWordTo1']
      end
      if attributes.has_key?(:'TrimNonBreakingSpaces')
          self.trim_non_breaking_spaces = attributes[:'TrimNonBreakingSpaces']
      end
      if attributes.has_key?(:'RemoveExtraLineBreaks')
          self.remove_extra_line_breaks = attributes[:'RemoveExtraLineBreaks']
      end
      if attributes.has_key?(:'RemoveAllLineBreaks')
          self.remove_all_line_breaks = attributes[:'RemoveAllLineBreaks']
      end
      if attributes.has_key?(:'ScopeOptions')
          self.scope_options = attributes[:'ScopeOptions']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @data_source.nil?
          invalid_properties.push("invalid value for 'data_source', data_source cannot be nil.")
      end
      if @file_info.nil?
          invalid_properties.push("invalid value for 'file_info', file_info cannot be nil.")
      end
      if @trim_content.nil?
          invalid_properties.push("invalid value for 'trim_content', trim_content cannot be nil.")
      end
      if @trim_leading.nil?
          invalid_properties.push("invalid value for 'trim_leading', trim_leading cannot be nil.")
      end
      if @trim_trailing.nil?
          invalid_properties.push("invalid value for 'trim_trailing', trim_trailing cannot be nil.")
      end
      if @trim_space_between_word_to1.nil?
          invalid_properties.push("invalid value for 'trim_space_between_word_to1', trim_space_between_word_to1 cannot be nil.")
      end
      if @trim_non_breaking_spaces.nil?
          invalid_properties.push("invalid value for 'trim_non_breaking_spaces', trim_non_breaking_spaces cannot be nil.")
      end
      if @remove_extra_line_breaks.nil?
          invalid_properties.push("invalid value for 'remove_extra_line_breaks', remove_extra_line_breaks cannot be nil.")
      end
      if @remove_all_line_breaks.nil?
          invalid_properties.push("invalid value for 'remove_all_line_breaks', remove_all_line_breaks cannot be nil.")
      end
      if @scope_options.nil?
          invalid_properties.push("invalid value for 'scope_options', scope_options cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @data_source.nil?
      return false if @file_info.nil?
      return false if @trim_content.nil?
      return false if @trim_leading.nil?
      return false if @trim_trailing.nil?
      return false if @trim_space_between_word_to1.nil?
      return false if @trim_non_breaking_spaces.nil?
      return false if @remove_extra_line_breaks.nil?
      return false if @remove_all_line_breaks.nil?
      return false if @scope_options.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          data_source == o.data_source &&
          file_info == o.file_info &&
          trim_content == o.trim_content &&
          trim_leading == o.trim_leading &&
          trim_trailing == o.trim_trailing &&
          trim_space_between_word_to1 == o.trim_space_between_word_to1 &&
          trim_non_breaking_spaces == o.trim_non_breaking_spaces &&
          remove_extra_line_breaks == o.remove_extra_line_breaks &&
          remove_all_line_breaks == o.remove_all_line_breaks &&
          scope_options == o.scope_options 
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
      [ data_source , file_info , trim_content , trim_leading , trim_trailing , trim_space_between_word_to1 , trim_non_breaking_spaces , remove_extra_line_breaks , remove_all_line_breaks , scope_options ].hash
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
