=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Import2DimensionIntArrayOptionrb.cs">
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

  class Import2DimensionIntArrayOption
        #This property allows getting and setting the value of the first row in a class.            
        attr_accessor :first_row
        #            
        attr_accessor :first_column
        #            
        attr_accessor :data
        #            
        attr_accessor :destination_worksheet
        #            
        attr_accessor :is_insert
        #            
        attr_accessor :import_data_type
        #            
        attr_accessor :data_source
        #            
        attr_accessor :source

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'first_row' => :'FirstRow',
        :'first_column' => :'FirstColumn',
        :'data' => :'Data',
        :'destination_worksheet' => :'DestinationWorksheet',
        :'is_insert' => :'IsInsert',
        :'import_data_type' => :'ImportDataType',
        :'data_source' => :'DataSource',
        :'source' => :'Source'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'first_row' => :'Integer',
        :'first_column' => :'Integer',
        :'data' => :'Array<Integer>',
        :'destination_worksheet' => :'String',
        :'is_insert' => :'BOOLEAN',
        :'import_data_type' => :'String',
        :'data_source' => :'DataSource',
        :'source' => :'FileSource'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'FirstRow')
          self.first_row = attributes[:'FirstRow']
      end
      if attributes.has_key?(:'FirstColumn')
          self.first_column = attributes[:'FirstColumn']
      end
      if attributes.has_key?(:'Data')
          self.data = attributes[:'Data']
      end
      if attributes.has_key?(:'DestinationWorksheet')
          self.destination_worksheet = attributes[:'DestinationWorksheet']
      end
      if attributes.has_key?(:'IsInsert')
          self.is_insert = attributes[:'IsInsert']
      end
      if attributes.has_key?(:'ImportDataType')
          self.import_data_type = attributes[:'ImportDataType']
      end
      if attributes.has_key?(:'DataSource')
          self.data_source = attributes[:'DataSource']
      end
      if attributes.has_key?(:'Source')
          self.source = attributes[:'Source']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @first_row.nil?
          invalid_properties.push("invalid value for 'first_row', first_row cannot be nil.")
      end
      if @first_column.nil?
          invalid_properties.push("invalid value for 'first_column', first_column cannot be nil.")
      end
      if @data.nil?
          invalid_properties.push("invalid value for 'data', data cannot be nil.")
      end
      if @destination_worksheet.nil?
          invalid_properties.push("invalid value for 'destination_worksheet', destination_worksheet cannot be nil.")
      end
      if @is_insert.nil?
          invalid_properties.push("invalid value for 'is_insert', is_insert cannot be nil.")
      end
      if @import_data_type.nil?
          invalid_properties.push("invalid value for 'import_data_type', import_data_type cannot be nil.")
      end
      if @data_source.nil?
          invalid_properties.push("invalid value for 'data_source', data_source cannot be nil.")
      end
      if @source.nil?
          invalid_properties.push("invalid value for 'source', source cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @first_row.nil?
      return false if @first_column.nil?
      return false if @data.nil?
      return false if @destination_worksheet.nil?
      return false if @is_insert.nil?
      return false if @import_data_type.nil?
      return false if @data_source.nil?
      return false if @source.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          first_row == o.first_row &&
          first_column == o.first_column &&
          data == o.data &&
          destination_worksheet == o.destination_worksheet &&
          is_insert == o.is_insert &&
          import_data_type == o.import_data_type &&
          data_source == o.data_source &&
          source == o.source 
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
      [ first_row , first_column , data , destination_worksheet , is_insert , import_data_type , data_source , source ].hash
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
