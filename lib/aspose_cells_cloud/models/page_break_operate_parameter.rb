=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PageBreakOperateParameterrb.cs">
   Copyright (c) 2024 Aspose.Cells Cloud
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

  class PageBreakOperateParameter
        #            
        attr_accessor :page_break_type
        #            
        attr_accessor :index
        #            
        attr_accessor :row
        #            
        attr_accessor :column
        #            
        attr_accessor :start_index
        #            
        attr_accessor :end_index
        #            
        attr_accessor :operate_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'page_break_type' => :'PageBreakType',
        :'index' => :'Index',
        :'row' => :'Row',
        :'column' => :'Column',
        :'start_index' => :'StartIndex',
        :'end_index' => :'EndIndex',
        :'operate_type' => :'OperateType'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'page_break_type' => :'String',
        :'index' => :'Integer',
        :'row' => :'Integer',
        :'column' => :'Integer',
        :'start_index' => :'Integer',
        :'end_index' => :'Integer',
        :'operate_type' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'PageBreakType')
          self.page_break_type = attributes[:'PageBreakType']
      end
      if attributes.has_key?(:'Index')
          self.index = attributes[:'Index']
      end
      if attributes.has_key?(:'Row')
          self.row = attributes[:'Row']
      end
      if attributes.has_key?(:'Column')
          self.column = attributes[:'Column']
      end
      if attributes.has_key?(:'StartIndex')
          self.start_index = attributes[:'StartIndex']
      end
      if attributes.has_key?(:'EndIndex')
          self.end_index = attributes[:'EndIndex']
      end
      if attributes.has_key?(:'OperateType')
          self.operate_type = attributes[:'OperateType']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @page_break_type.nil?
          invalid_properties.push("invalid value for 'page_break_type', page_break_type cannot be nil.")
      end
      if @index.nil?
          invalid_properties.push("invalid value for 'index', index cannot be nil.")
      end
      if @row.nil?
          invalid_properties.push("invalid value for 'row', row cannot be nil.")
      end
      if @column.nil?
          invalid_properties.push("invalid value for 'column', column cannot be nil.")
      end
      if @start_index.nil?
          invalid_properties.push("invalid value for 'start_index', start_index cannot be nil.")
      end
      if @end_index.nil?
          invalid_properties.push("invalid value for 'end_index', end_index cannot be nil.")
      end
      if @operate_type.nil?
          invalid_properties.push("invalid value for 'operate_type', operate_type cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @page_break_type.nil?
      return false if @index.nil?
      return false if @row.nil?
      return false if @column.nil?
      return false if @start_index.nil?
      return false if @end_index.nil?
      return false if @operate_type.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          page_break_type == o.page_break_type &&
          index == o.index &&
          row == o.row &&
          column == o.column &&
          start_index == o.start_index &&
          end_index == o.end_index &&
          operate_type == o.operate_type 
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
      [ page_break_type , index , row , column , start_index , end_index , operate_type ].hash
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
