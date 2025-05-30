=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Validationrb.cs">
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

  class Validation
        #Represents the validation alert style.            
        attr_accessor :alert_style
        #Represents a collection of Aspose.Cells.CellArea which contains the data                validation settings.            
        attr_accessor :area_list
        #Represents the data validation error message.            
        attr_accessor :error_message
        #Represents the title of the data-validation error dialog box.            
        attr_accessor :error_title
        #Represents the value or expression associated with the data validation.            
        attr_accessor :formula1
        #Represents the value or expression associated with the data validation.            
        attr_accessor :formula2
        #Indicates whether blank values are permitted by the range data validation.            
        attr_accessor :ignore_blank
        #Indicates whether data validation displays a drop-down list that contains acceptable values.            
        attr_accessor :in_cell_drop_down
        #Represents the data validation input message.            
        attr_accessor :input_message
        #Represents the title of the data-validation input dialog box.            
        attr_accessor :input_title
        #Represents the operator for the data validation.            
        attr_accessor :operator
        #Indicates whether the data validation error message will be displayed whenever the user enters invalid data.            
        attr_accessor :show_error
        #Indicates whether the data validation input message will be displayed whenever the user selects a cell in the data validation range.            
        attr_accessor :show_input
        #Represents the data validation type.            
        attr_accessor :type
        #Represents the first value associated with the data validation.            
        attr_accessor :value1
        #Represents the second value associated with the data validation.            
        attr_accessor :value2
        #            
        attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'alert_style' => :'AlertStyle',
        :'area_list' => :'AreaList',
        :'error_message' => :'ErrorMessage',
        :'error_title' => :'ErrorTitle',
        :'formula1' => :'Formula1',
        :'formula2' => :'Formula2',
        :'ignore_blank' => :'IgnoreBlank',
        :'in_cell_drop_down' => :'InCellDropDown',
        :'input_message' => :'InputMessage',
        :'input_title' => :'InputTitle',
        :'operator' => :'Operator',
        :'show_error' => :'ShowError',
        :'show_input' => :'ShowInput',
        :'type' => :'Type',
        :'value1' => :'Value1',
        :'value2' => :'Value2',
        :'link' => :'link'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'alert_style' => :'String',
        :'area_list' => :'Array<CellArea>',
        :'error_message' => :'String',
        :'error_title' => :'String',
        :'formula1' => :'String',
        :'formula2' => :'String',
        :'ignore_blank' => :'BOOLEAN',
        :'in_cell_drop_down' => :'BOOLEAN',
        :'input_message' => :'String',
        :'input_title' => :'String',
        :'operator' => :'String',
        :'show_error' => :'BOOLEAN',
        :'show_input' => :'BOOLEAN',
        :'type' => :'String',
        :'value1' => :'String',
        :'value2' => :'String',
        :'link' => :'Link'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'AlertStyle')
          self.alert_style = attributes[:'AlertStyle']
      end
      if attributes.has_key?(:'AreaList')
          self.area_list = attributes[:'AreaList']
      end
      if attributes.has_key?(:'ErrorMessage')
          self.error_message = attributes[:'ErrorMessage']
      end
      if attributes.has_key?(:'ErrorTitle')
          self.error_title = attributes[:'ErrorTitle']
      end
      if attributes.has_key?(:'Formula1')
          self.formula1 = attributes[:'Formula1']
      end
      if attributes.has_key?(:'Formula2')
          self.formula2 = attributes[:'Formula2']
      end
      if attributes.has_key?(:'IgnoreBlank')
          self.ignore_blank = attributes[:'IgnoreBlank']
      end
      if attributes.has_key?(:'InCellDropDown')
          self.in_cell_drop_down = attributes[:'InCellDropDown']
      end
      if attributes.has_key?(:'InputMessage')
          self.input_message = attributes[:'InputMessage']
      end
      if attributes.has_key?(:'InputTitle')
          self.input_title = attributes[:'InputTitle']
      end
      if attributes.has_key?(:'Operator')
          self.operator = attributes[:'Operator']
      end
      if attributes.has_key?(:'ShowError')
          self.show_error = attributes[:'ShowError']
      end
      if attributes.has_key?(:'ShowInput')
          self.show_input = attributes[:'ShowInput']
      end
      if attributes.has_key?(:'Type')
          self.type = attributes[:'Type']
      end
      if attributes.has_key?(:'Value1')
          self.value1 = attributes[:'Value1']
      end
      if attributes.has_key?(:'Value2')
          self.value2 = attributes[:'Value2']
      end
      if attributes.has_key?(:'link')
          self.link = attributes[:'link']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @alert_style.nil?
          invalid_properties.push("invalid value for 'alert_style', alert_style cannot be nil.")
      end
      if @area_list.nil?
          invalid_properties.push("invalid value for 'area_list', area_list cannot be nil.")
      end
      if @error_message.nil?
          invalid_properties.push("invalid value for 'error_message', error_message cannot be nil.")
      end
      if @error_title.nil?
          invalid_properties.push("invalid value for 'error_title', error_title cannot be nil.")
      end
      if @formula1.nil?
          invalid_properties.push("invalid value for 'formula1', formula1 cannot be nil.")
      end
      if @formula2.nil?
          invalid_properties.push("invalid value for 'formula2', formula2 cannot be nil.")
      end
      if @ignore_blank.nil?
          invalid_properties.push("invalid value for 'ignore_blank', ignore_blank cannot be nil.")
      end
      if @in_cell_drop_down.nil?
          invalid_properties.push("invalid value for 'in_cell_drop_down', in_cell_drop_down cannot be nil.")
      end
      if @input_message.nil?
          invalid_properties.push("invalid value for 'input_message', input_message cannot be nil.")
      end
      if @input_title.nil?
          invalid_properties.push("invalid value for 'input_title', input_title cannot be nil.")
      end
      if @operator.nil?
          invalid_properties.push("invalid value for 'operator', operator cannot be nil.")
      end
      if @show_error.nil?
          invalid_properties.push("invalid value for 'show_error', show_error cannot be nil.")
      end
      if @show_input.nil?
          invalid_properties.push("invalid value for 'show_input', show_input cannot be nil.")
      end
      if @type.nil?
          invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end
      if @value1.nil?
          invalid_properties.push("invalid value for 'value1', value1 cannot be nil.")
      end
      if @value2.nil?
          invalid_properties.push("invalid value for 'value2', value2 cannot be nil.")
      end
      if @link.nil?
          invalid_properties.push("invalid value for 'link', link cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @alert_style.nil?
      return false if @area_list.nil?
      return false if @error_message.nil?
      return false if @error_title.nil?
      return false if @formula1.nil?
      return false if @formula2.nil?
      return false if @ignore_blank.nil?
      return false if @in_cell_drop_down.nil?
      return false if @input_message.nil?
      return false if @input_title.nil?
      return false if @operator.nil?
      return false if @show_error.nil?
      return false if @show_input.nil?
      return false if @type.nil?
      return false if @value1.nil?
      return false if @value2.nil?
      return false if @link.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          alert_style == o.alert_style &&
          area_list == o.area_list &&
          error_message == o.error_message &&
          error_title == o.error_title &&
          formula1 == o.formula1 &&
          formula2 == o.formula2 &&
          ignore_blank == o.ignore_blank &&
          in_cell_drop_down == o.in_cell_drop_down &&
          input_message == o.input_message &&
          input_title == o.input_title &&
          operator == o.operator &&
          show_error == o.show_error &&
          show_input == o.show_input &&
          type == o.type &&
          value1 == o.value1 &&
          value2 == o.value2 &&
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
      [ alert_style , area_list , error_message , error_title , formula1 , formula2 , ignore_blank , in_cell_drop_down , input_message , input_title , operator , show_error , show_input , type , value1 , value2 , link ].hash
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
