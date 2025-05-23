=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="MergeTableOptionsrb.cs">
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

  class MergeTableOptions
        #            
        attr_accessor :main_table
        #            
        attr_accessor :secondary_table
        #            
        attr_accessor :data_merge_type
        #            
        attr_accessor :overwrite_main_table
        #            
        attr_accessor :sync_data_to_target_workbook
        #            
        attr_accessor :merged_data_to_position

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'main_table' => :'MainTable',
        :'secondary_table' => :'SecondaryTable',
        :'data_merge_type' => :'DataMergeType',
        :'overwrite_main_table' => :'OverwriteMainTable',
        :'sync_data_to_target_workbook' => :'SyncDataToTargetWorkbook',
        :'merged_data_to_position' => :'MergedDataToPosition'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'main_table' => :'CombinationSourceData',
        :'secondary_table' => :'CombinationSourceData',
        :'data_merge_type' => :'String',
        :'overwrite_main_table' => :'BOOLEAN',
        :'sync_data_to_target_workbook' => :'BOOLEAN',
        :'merged_data_to_position' => :'DataOutputLocation'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'MainTable')
          self.main_table = attributes[:'MainTable']
      end
      if attributes.has_key?(:'SecondaryTable')
          self.secondary_table = attributes[:'SecondaryTable']
      end
      if attributes.has_key?(:'DataMergeType')
          self.data_merge_type = attributes[:'DataMergeType']
      end
      if attributes.has_key?(:'OverwriteMainTable')
          self.overwrite_main_table = attributes[:'OverwriteMainTable']
      end
      if attributes.has_key?(:'SyncDataToTargetWorkbook')
          self.sync_data_to_target_workbook = attributes[:'SyncDataToTargetWorkbook']
      end
      if attributes.has_key?(:'MergedDataToPosition')
          self.merged_data_to_position = attributes[:'MergedDataToPosition']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @main_table.nil?
          invalid_properties.push("invalid value for 'main_table', main_table cannot be nil.")
      end
      if @secondary_table.nil?
          invalid_properties.push("invalid value for 'secondary_table', secondary_table cannot be nil.")
      end
      if @data_merge_type.nil?
          invalid_properties.push("invalid value for 'data_merge_type', data_merge_type cannot be nil.")
      end
      if @overwrite_main_table.nil?
          invalid_properties.push("invalid value for 'overwrite_main_table', overwrite_main_table cannot be nil.")
      end
      if @sync_data_to_target_workbook.nil?
          invalid_properties.push("invalid value for 'sync_data_to_target_workbook', sync_data_to_target_workbook cannot be nil.")
      end
      if @merged_data_to_position.nil?
          invalid_properties.push("invalid value for 'merged_data_to_position', merged_data_to_position cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @main_table.nil?
      return false if @secondary_table.nil?
      return false if @data_merge_type.nil?
      return false if @overwrite_main_table.nil?
      return false if @sync_data_to_target_workbook.nil?
      return false if @merged_data_to_position.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          main_table == o.main_table &&
          secondary_table == o.secondary_table &&
          data_merge_type == o.data_merge_type &&
          overwrite_main_table == o.overwrite_main_table &&
          sync_data_to_target_workbook == o.sync_data_to_target_workbook &&
          merged_data_to_position == o.merged_data_to_position 
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
      [ main_table , secondary_table , data_merge_type , overwrite_main_table , sync_data_to_target_workbook , merged_data_to_position ].hash
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
