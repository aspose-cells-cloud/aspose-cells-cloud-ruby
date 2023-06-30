=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="OperateObjectPositionrb.cs">
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

  class OperateObjectPosition
        #            
        attr_accessor :workbook
        #            
        attr_accessor :sheet_name
        #            
        attr_accessor :chart_index
        #            
        attr_accessor :shape_index
        #            
        attr_accessor :cell_name
        #            
        attr_accessor :list_object_index

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'workbook' => :'Workbook',
        :'sheet_name' => :'SheetName',
        :'chart_index' => :'ChartIndex',
        :'shape_index' => :'ShapeIndex',
        :'cell_name' => :'CellName',
        :'list_object_index' => :'ListObjectIndex'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'workbook' => :'FileSource',
        :'sheet_name' => :'String',
        :'chart_index' => :'Integer',
        :'shape_index' => :'Integer',
        :'cell_name' => :'String',
        :'list_object_index' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Workbook')
          self.workbook = attributes[:'Workbook']
      end
      if attributes.has_key?(:'SheetName')
          self.sheet_name = attributes[:'SheetName']
      end
      if attributes.has_key?(:'ChartIndex')
          self.chart_index = attributes[:'ChartIndex']
      end
      if attributes.has_key?(:'ShapeIndex')
          self.shape_index = attributes[:'ShapeIndex']
      end
      if attributes.has_key?(:'CellName')
          self.cell_name = attributes[:'CellName']
      end
      if attributes.has_key?(:'ListObjectIndex')
          self.list_object_index = attributes[:'ListObjectIndex']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @workbook.nil?
          invalid_properties.push("invalid value for 'workbook', workbook cannot be nil.")
      end
      if @sheet_name.nil?
          invalid_properties.push("invalid value for 'sheet_name', sheet_name cannot be nil.")
      end
      if @chart_index.nil?
          invalid_properties.push("invalid value for 'chart_index', chart_index cannot be nil.")
      end
      if @shape_index.nil?
          invalid_properties.push("invalid value for 'shape_index', shape_index cannot be nil.")
      end
      if @cell_name.nil?
          invalid_properties.push("invalid value for 'cell_name', cell_name cannot be nil.")
      end
      if @list_object_index.nil?
          invalid_properties.push("invalid value for 'list_object_index', list_object_index cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @workbook.nil?
      return false if @sheet_name.nil?
      return false if @chart_index.nil?
      return false if @shape_index.nil?
      return false if @cell_name.nil?
      return false if @list_object_index.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          workbook == o.workbook &&
          sheet_name == o.sheet_name &&
          chart_index == o.chart_index &&
          shape_index == o.shape_index &&
          cell_name == o.cell_name &&
          list_object_index == o.list_object_index 
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
      [ workbook , sheet_name , chart_index , shape_index , cell_name , list_object_index ].hash
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
