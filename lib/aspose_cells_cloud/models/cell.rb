=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Cellrb.cs">
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

  class Cell
        #Gets the name of the cell.            
        attr_accessor :name
        #Gets row number (zero based) of the cell.            
        attr_accessor :row
        #Gets column number (zero based) of the cell.            
        attr_accessor :column
        #Gets the value contained in this cell.            
        attr_accessor :value
        #Represents cell value type.            
        attr_accessor :type
        #Gets or sets a formula of the .            
        attr_accessor :formula
        #Represents if the specified cell contains formula.            
        attr_accessor :is_formula
        #Checks if a cell is part of a merged range or not.            
        attr_accessor :is_merged
        #Indicates the cell's formula is and array formula                         and it is the first cell of the array.            
        attr_accessor :is_array_header
        #Indicates whether the cell formula is an array formula.            
        attr_accessor :is_in_array
        #Checks if the value of this cell is an error.            
        attr_accessor :is_error_value
        #Indicates whether this cell is part of table formula.            
        attr_accessor :is_in_table
        #Indicates if the cell's style is set. If return false, it means this cell has a default cell format.            
        attr_accessor :is_style_set
        #Gets and sets the html string which contains data and some formats in this cell.            
        attr_accessor :html_string
        #This class property represents a style element with the specified XML element name.            
        attr_accessor :style
        #Gets the parent worksheet.            
        attr_accessor :worksheet
        #            
        attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'Name',
        :'row' => :'Row',
        :'column' => :'Column',
        :'value' => :'Value',
        :'type' => :'Type',
        :'formula' => :'Formula',
        :'is_formula' => :'IsFormula',
        :'is_merged' => :'IsMerged',
        :'is_array_header' => :'IsArrayHeader',
        :'is_in_array' => :'IsInArray',
        :'is_error_value' => :'IsErrorValue',
        :'is_in_table' => :'IsInTable',
        :'is_style_set' => :'IsStyleSet',
        :'html_string' => :'HtmlString',
        :'style' => :'Style',
        :'worksheet' => :'Worksheet',
        :'link' => :'link'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'row' => :'Integer',
        :'column' => :'Integer',
        :'value' => :'String',
        :'type' => :'String',
        :'formula' => :'String',
        :'is_formula' => :'BOOLEAN',
        :'is_merged' => :'BOOLEAN',
        :'is_array_header' => :'BOOLEAN',
        :'is_in_array' => :'BOOLEAN',
        :'is_error_value' => :'BOOLEAN',
        :'is_in_table' => :'BOOLEAN',
        :'is_style_set' => :'BOOLEAN',
        :'html_string' => :'String',
        :'style' => :'LinkElement',
        :'worksheet' => :'String',
        :'link' => :'Link'
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
      if attributes.has_key?(:'Row')
          self.row = attributes[:'Row']
      end
      if attributes.has_key?(:'Column')
          self.column = attributes[:'Column']
      end
      if attributes.has_key?(:'Value')
          self.value = attributes[:'Value']
      end
      if attributes.has_key?(:'Type')
          self.type = attributes[:'Type']
      end
      if attributes.has_key?(:'Formula')
          self.formula = attributes[:'Formula']
      end
      if attributes.has_key?(:'IsFormula')
          self.is_formula = attributes[:'IsFormula']
      end
      if attributes.has_key?(:'IsMerged')
          self.is_merged = attributes[:'IsMerged']
      end
      if attributes.has_key?(:'IsArrayHeader')
          self.is_array_header = attributes[:'IsArrayHeader']
      end
      if attributes.has_key?(:'IsInArray')
          self.is_in_array = attributes[:'IsInArray']
      end
      if attributes.has_key?(:'IsErrorValue')
          self.is_error_value = attributes[:'IsErrorValue']
      end
      if attributes.has_key?(:'IsInTable')
          self.is_in_table = attributes[:'IsInTable']
      end
      if attributes.has_key?(:'IsStyleSet')
          self.is_style_set = attributes[:'IsStyleSet']
      end
      if attributes.has_key?(:'HtmlString')
          self.html_string = attributes[:'HtmlString']
      end
      if attributes.has_key?(:'Style')
          self.style = attributes[:'Style']
      end
      if attributes.has_key?(:'Worksheet')
          self.worksheet = attributes[:'Worksheet']
      end
      if attributes.has_key?(:'link')
          self.link = attributes[:'link']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
          invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end
      if @row.nil?
          invalid_properties.push("invalid value for 'row', row cannot be nil.")
      end
      if @column.nil?
          invalid_properties.push("invalid value for 'column', column cannot be nil.")
      end
      if @value.nil?
          invalid_properties.push("invalid value for 'value', value cannot be nil.")
      end
      if @type.nil?
          invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end
      if @formula.nil?
          invalid_properties.push("invalid value for 'formula', formula cannot be nil.")
      end
      if @is_formula.nil?
          invalid_properties.push("invalid value for 'is_formula', is_formula cannot be nil.")
      end
      if @is_merged.nil?
          invalid_properties.push("invalid value for 'is_merged', is_merged cannot be nil.")
      end
      if @is_array_header.nil?
          invalid_properties.push("invalid value for 'is_array_header', is_array_header cannot be nil.")
      end
      if @is_in_array.nil?
          invalid_properties.push("invalid value for 'is_in_array', is_in_array cannot be nil.")
      end
      if @is_error_value.nil?
          invalid_properties.push("invalid value for 'is_error_value', is_error_value cannot be nil.")
      end
      if @is_in_table.nil?
          invalid_properties.push("invalid value for 'is_in_table', is_in_table cannot be nil.")
      end
      if @is_style_set.nil?
          invalid_properties.push("invalid value for 'is_style_set', is_style_set cannot be nil.")
      end
      if @html_string.nil?
          invalid_properties.push("invalid value for 'html_string', html_string cannot be nil.")
      end
      if @style.nil?
          invalid_properties.push("invalid value for 'style', style cannot be nil.")
      end
      if @worksheet.nil?
          invalid_properties.push("invalid value for 'worksheet', worksheet cannot be nil.")
      end
      if @link.nil?
          invalid_properties.push("invalid value for 'link', link cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @row.nil?
      return false if @column.nil?
      return false if @value.nil?
      return false if @type.nil?
      return false if @formula.nil?
      return false if @is_formula.nil?
      return false if @is_merged.nil?
      return false if @is_array_header.nil?
      return false if @is_in_array.nil?
      return false if @is_error_value.nil?
      return false if @is_in_table.nil?
      return false if @is_style_set.nil?
      return false if @html_string.nil?
      return false if @style.nil?
      return false if @worksheet.nil?
      return false if @link.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          row == o.row &&
          column == o.column &&
          value == o.value &&
          type == o.type &&
          formula == o.formula &&
          is_formula == o.is_formula &&
          is_merged == o.is_merged &&
          is_array_header == o.is_array_header &&
          is_in_array == o.is_in_array &&
          is_error_value == o.is_error_value &&
          is_in_table == o.is_in_table &&
          is_style_set == o.is_style_set &&
          html_string == o.html_string &&
          style == o.style &&
          worksheet == o.worksheet &&
          link == o.link 
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
      [ name , row , column , value , type , formula , is_formula , is_merged , is_array_header , is_in_array , is_error_value , is_in_table , is_style_set , html_string , style , worksheet , link ].hash
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
