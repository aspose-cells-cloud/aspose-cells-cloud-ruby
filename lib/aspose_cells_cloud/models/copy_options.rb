=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="CopyOptionsrb.cs">
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

  class CopyOptions
        #Indicates whether copying column width in unit of characters.             
        attr_accessor :column_character_width
        #If the formula is not valid for the dest destination, only copy values.             
        attr_accessor :copy_invalid_formulas_as_values
        #Indicates whether copying the names.             
        attr_accessor :copy_names
        #Indicates whether extend ranges when copying the range to adjacent range.             
        attr_accessor :extend_to_adjacent_range
        #When copying the range in the same file and the chart refers to the source sheet,            False means the copied chart's data source will not be changed.            True means the copied chart's data source refers to the destination sheet.             
        attr_accessor :refer_to_destination_sheet
        #In ms excel, when copying formulas which refer to other worksheets while copying a worksheet to another one,            the copied formulas should refer to source workbook.            However, for some situations user may need the copied formulas refer to worksheets with the same name            in the same workbook, such as when those worksheets have been copied before this copy operation,            then this property should be kept as true.             
        attr_accessor :refer_to_sheet_with_same_name
        #            
        attr_accessor :copy_theme

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'column_character_width' => :'ColumnCharacterWidth',
        :'copy_invalid_formulas_as_values' => :'CopyInvalidFormulasAsValues',
        :'copy_names' => :'CopyNames',
        :'extend_to_adjacent_range' => :'ExtendToAdjacentRange',
        :'refer_to_destination_sheet' => :'ReferToDestinationSheet',
        :'refer_to_sheet_with_same_name' => :'ReferToSheetWithSameName',
        :'copy_theme' => :'CopyTheme'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'column_character_width' => :'BOOLEAN',
        :'copy_invalid_formulas_as_values' => :'BOOLEAN',
        :'copy_names' => :'BOOLEAN',
        :'extend_to_adjacent_range' => :'BOOLEAN',
        :'refer_to_destination_sheet' => :'BOOLEAN',
        :'refer_to_sheet_with_same_name' => :'BOOLEAN',
        :'copy_theme' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'ColumnCharacterWidth')
          self.column_character_width = attributes[:'ColumnCharacterWidth']
      end
      if attributes.has_key?(:'CopyInvalidFormulasAsValues')
          self.copy_invalid_formulas_as_values = attributes[:'CopyInvalidFormulasAsValues']
      end
      if attributes.has_key?(:'CopyNames')
          self.copy_names = attributes[:'CopyNames']
      end
      if attributes.has_key?(:'ExtendToAdjacentRange')
          self.extend_to_adjacent_range = attributes[:'ExtendToAdjacentRange']
      end
      if attributes.has_key?(:'ReferToDestinationSheet')
          self.refer_to_destination_sheet = attributes[:'ReferToDestinationSheet']
      end
      if attributes.has_key?(:'ReferToSheetWithSameName')
          self.refer_to_sheet_with_same_name = attributes[:'ReferToSheetWithSameName']
      end
      if attributes.has_key?(:'CopyTheme')
          self.copy_theme = attributes[:'CopyTheme']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @column_character_width.nil?
          invalid_properties.push("invalid value for 'column_character_width', column_character_width cannot be nil.")
      end
      if @copy_invalid_formulas_as_values.nil?
          invalid_properties.push("invalid value for 'copy_invalid_formulas_as_values', copy_invalid_formulas_as_values cannot be nil.")
      end
      if @copy_names.nil?
          invalid_properties.push("invalid value for 'copy_names', copy_names cannot be nil.")
      end
      if @extend_to_adjacent_range.nil?
          invalid_properties.push("invalid value for 'extend_to_adjacent_range', extend_to_adjacent_range cannot be nil.")
      end
      if @refer_to_destination_sheet.nil?
          invalid_properties.push("invalid value for 'refer_to_destination_sheet', refer_to_destination_sheet cannot be nil.")
      end
      if @refer_to_sheet_with_same_name.nil?
          invalid_properties.push("invalid value for 'refer_to_sheet_with_same_name', refer_to_sheet_with_same_name cannot be nil.")
      end
      if @copy_theme.nil?
          invalid_properties.push("invalid value for 'copy_theme', copy_theme cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @column_character_width.nil?
      return false if @copy_invalid_formulas_as_values.nil?
      return false if @copy_names.nil?
      return false if @extend_to_adjacent_range.nil?
      return false if @refer_to_destination_sheet.nil?
      return false if @refer_to_sheet_with_same_name.nil?
      return false if @copy_theme.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          column_character_width == o.column_character_width &&
          copy_invalid_formulas_as_values == o.copy_invalid_formulas_as_values &&
          copy_names == o.copy_names &&
          extend_to_adjacent_range == o.extend_to_adjacent_range &&
          refer_to_destination_sheet == o.refer_to_destination_sheet &&
          refer_to_sheet_with_same_name == o.refer_to_sheet_with_same_name &&
          copy_theme == o.copy_theme 
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
      [ column_character_width , copy_invalid_formulas_as_values , copy_names , extend_to_adjacent_range , refer_to_destination_sheet , refer_to_sheet_with_same_name , copy_theme ].hash
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
