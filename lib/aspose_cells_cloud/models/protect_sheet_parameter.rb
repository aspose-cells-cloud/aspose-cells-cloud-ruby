=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="ProtectSheetParameterrb.cs">
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

  class ProtectSheetParameter
        #Property Summary: Defines a public string property for the ProtectionType.            
        attr_accessor :protection_type
        #            
        attr_accessor :password
        #            
        attr_accessor :allow_edit_area
        #            
        attr_accessor :allow_deleting_column
        #            
        attr_accessor :allow_deleting_row
        #            
        attr_accessor :allow_filtering
        #            
        attr_accessor :allow_formatting_cell
        #            
        attr_accessor :allow_formatting_column
        #            
        attr_accessor :allow_formatting_row
        #            
        attr_accessor :allow_inserting_column
        #            
        attr_accessor :allow_inserting_hyperlink
        #            
        attr_accessor :allow_inserting_row
        #            
        attr_accessor :allow_selecting_locked_cell
        #            
        attr_accessor :allow_selecting_unlocked_cell
        #            
        attr_accessor :allow_sorting
        #            
        attr_accessor :allow_using_pivot_table

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'protection_type' => :'ProtectionType',
        :'password' => :'Password',
        :'allow_edit_area' => :'AllowEditArea',
        :'allow_deleting_column' => :'AllowDeletingColumn',
        :'allow_deleting_row' => :'AllowDeletingRow',
        :'allow_filtering' => :'AllowFiltering',
        :'allow_formatting_cell' => :'AllowFormattingCell',
        :'allow_formatting_column' => :'AllowFormattingColumn',
        :'allow_formatting_row' => :'AllowFormattingRow',
        :'allow_inserting_column' => :'AllowInsertingColumn',
        :'allow_inserting_hyperlink' => :'AllowInsertingHyperlink',
        :'allow_inserting_row' => :'AllowInsertingRow',
        :'allow_selecting_locked_cell' => :'AllowSelectingLockedCell',
        :'allow_selecting_unlocked_cell' => :'AllowSelectingUnlockedCell',
        :'allow_sorting' => :'AllowSorting',
        :'allow_using_pivot_table' => :'AllowUsingPivotTable'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'protection_type' => :'String',
        :'password' => :'String',
        :'allow_edit_area' => :'Array<String>',
        :'allow_deleting_column' => :'String',
        :'allow_deleting_row' => :'String',
        :'allow_filtering' => :'String',
        :'allow_formatting_cell' => :'String',
        :'allow_formatting_column' => :'String',
        :'allow_formatting_row' => :'String',
        :'allow_inserting_column' => :'String',
        :'allow_inserting_hyperlink' => :'String',
        :'allow_inserting_row' => :'String',
        :'allow_selecting_locked_cell' => :'String',
        :'allow_selecting_unlocked_cell' => :'String',
        :'allow_sorting' => :'String',
        :'allow_using_pivot_table' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'ProtectionType')
          self.protection_type = attributes[:'ProtectionType']
      end
      if attributes.has_key?(:'Password')
          self.password = attributes[:'Password']
      end
      if attributes.has_key?(:'AllowEditArea')
          self.allow_edit_area = attributes[:'AllowEditArea']
      end
      if attributes.has_key?(:'AllowDeletingColumn')
          self.allow_deleting_column = attributes[:'AllowDeletingColumn']
      end
      if attributes.has_key?(:'AllowDeletingRow')
          self.allow_deleting_row = attributes[:'AllowDeletingRow']
      end
      if attributes.has_key?(:'AllowFiltering')
          self.allow_filtering = attributes[:'AllowFiltering']
      end
      if attributes.has_key?(:'AllowFormattingCell')
          self.allow_formatting_cell = attributes[:'AllowFormattingCell']
      end
      if attributes.has_key?(:'AllowFormattingColumn')
          self.allow_formatting_column = attributes[:'AllowFormattingColumn']
      end
      if attributes.has_key?(:'AllowFormattingRow')
          self.allow_formatting_row = attributes[:'AllowFormattingRow']
      end
      if attributes.has_key?(:'AllowInsertingColumn')
          self.allow_inserting_column = attributes[:'AllowInsertingColumn']
      end
      if attributes.has_key?(:'AllowInsertingHyperlink')
          self.allow_inserting_hyperlink = attributes[:'AllowInsertingHyperlink']
      end
      if attributes.has_key?(:'AllowInsertingRow')
          self.allow_inserting_row = attributes[:'AllowInsertingRow']
      end
      if attributes.has_key?(:'AllowSelectingLockedCell')
          self.allow_selecting_locked_cell = attributes[:'AllowSelectingLockedCell']
      end
      if attributes.has_key?(:'AllowSelectingUnlockedCell')
          self.allow_selecting_unlocked_cell = attributes[:'AllowSelectingUnlockedCell']
      end
      if attributes.has_key?(:'AllowSorting')
          self.allow_sorting = attributes[:'AllowSorting']
      end
      if attributes.has_key?(:'AllowUsingPivotTable')
          self.allow_using_pivot_table = attributes[:'AllowUsingPivotTable']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @protection_type.nil?
          invalid_properties.push("invalid value for 'protection_type', protection_type cannot be nil.")
      end
      if @password.nil?
          invalid_properties.push("invalid value for 'password', password cannot be nil.")
      end
      if @allow_edit_area.nil?
          invalid_properties.push("invalid value for 'allow_edit_area', allow_edit_area cannot be nil.")
      end
      if @allow_deleting_column.nil?
          invalid_properties.push("invalid value for 'allow_deleting_column', allow_deleting_column cannot be nil.")
      end
      if @allow_deleting_row.nil?
          invalid_properties.push("invalid value for 'allow_deleting_row', allow_deleting_row cannot be nil.")
      end
      if @allow_filtering.nil?
          invalid_properties.push("invalid value for 'allow_filtering', allow_filtering cannot be nil.")
      end
      if @allow_formatting_cell.nil?
          invalid_properties.push("invalid value for 'allow_formatting_cell', allow_formatting_cell cannot be nil.")
      end
      if @allow_formatting_column.nil?
          invalid_properties.push("invalid value for 'allow_formatting_column', allow_formatting_column cannot be nil.")
      end
      if @allow_formatting_row.nil?
          invalid_properties.push("invalid value for 'allow_formatting_row', allow_formatting_row cannot be nil.")
      end
      if @allow_inserting_column.nil?
          invalid_properties.push("invalid value for 'allow_inserting_column', allow_inserting_column cannot be nil.")
      end
      if @allow_inserting_hyperlink.nil?
          invalid_properties.push("invalid value for 'allow_inserting_hyperlink', allow_inserting_hyperlink cannot be nil.")
      end
      if @allow_inserting_row.nil?
          invalid_properties.push("invalid value for 'allow_inserting_row', allow_inserting_row cannot be nil.")
      end
      if @allow_selecting_locked_cell.nil?
          invalid_properties.push("invalid value for 'allow_selecting_locked_cell', allow_selecting_locked_cell cannot be nil.")
      end
      if @allow_selecting_unlocked_cell.nil?
          invalid_properties.push("invalid value for 'allow_selecting_unlocked_cell', allow_selecting_unlocked_cell cannot be nil.")
      end
      if @allow_sorting.nil?
          invalid_properties.push("invalid value for 'allow_sorting', allow_sorting cannot be nil.")
      end
      if @allow_using_pivot_table.nil?
          invalid_properties.push("invalid value for 'allow_using_pivot_table', allow_using_pivot_table cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @protection_type.nil?
      return false if @password.nil?
      return false if @allow_edit_area.nil?
      return false if @allow_deleting_column.nil?
      return false if @allow_deleting_row.nil?
      return false if @allow_filtering.nil?
      return false if @allow_formatting_cell.nil?
      return false if @allow_formatting_column.nil?
      return false if @allow_formatting_row.nil?
      return false if @allow_inserting_column.nil?
      return false if @allow_inserting_hyperlink.nil?
      return false if @allow_inserting_row.nil?
      return false if @allow_selecting_locked_cell.nil?
      return false if @allow_selecting_unlocked_cell.nil?
      return false if @allow_sorting.nil?
      return false if @allow_using_pivot_table.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          protection_type == o.protection_type &&
          password == o.password &&
          allow_edit_area == o.allow_edit_area &&
          allow_deleting_column == o.allow_deleting_column &&
          allow_deleting_row == o.allow_deleting_row &&
          allow_filtering == o.allow_filtering &&
          allow_formatting_cell == o.allow_formatting_cell &&
          allow_formatting_column == o.allow_formatting_column &&
          allow_formatting_row == o.allow_formatting_row &&
          allow_inserting_column == o.allow_inserting_column &&
          allow_inserting_hyperlink == o.allow_inserting_hyperlink &&
          allow_inserting_row == o.allow_inserting_row &&
          allow_selecting_locked_cell == o.allow_selecting_locked_cell &&
          allow_selecting_unlocked_cell == o.allow_selecting_unlocked_cell &&
          allow_sorting == o.allow_sorting &&
          allow_using_pivot_table == o.allow_using_pivot_table 
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
      [ protection_type , password , allow_edit_area , allow_deleting_column , allow_deleting_row , allow_filtering , allow_formatting_cell , allow_formatting_column , allow_formatting_row , allow_inserting_column , allow_inserting_hyperlink , allow_inserting_row , allow_selecting_locked_cell , allow_selecting_unlocked_cell , allow_sorting , allow_using_pivot_table ].hash
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
