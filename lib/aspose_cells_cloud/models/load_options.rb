=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="LoadOptionsrb.cs">
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

  class LoadOptions
        #This class has a public property named "ConvertNumericData" of type string that can be read from and written to.            
        attr_accessor :convert_numeric_data
        #Gets and sets the interrupt monitor.            
        attr_accessor :interrupt_monitor
        #Gets or sets the user interface language of the Workbook version based on CountryCode that has saved the file.            
        attr_accessor :language_code
        #            
        attr_accessor :load_data_options
        #Gets the load format.            
        attr_accessor :load_format
        #            
        attr_accessor :only_load_document_properties
        #Indicates whether parsing the formula when reading the file.            
        attr_accessor :parsing_formula_on_open
        #Gets and set the password of the workbook.            
        attr_accessor :password
        #Gets or sets the system regional settings based on CountryCode at the time the file was loaded.            
        attr_accessor :region
        #Sets the default standard font name            
        attr_accessor :standard_font
        #Sets the default standard font size.            
        attr_accessor :standard_font_size

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'convert_numeric_data' => :'ConvertNumericData',
        :'interrupt_monitor' => :'InterruptMonitor',
        :'language_code' => :'LanguageCode',
        :'load_data_options' => :'LoadDataOptions',
        :'load_format' => :'LoadFormat',
        :'only_load_document_properties' => :'OnlyLoadDocumentProperties',
        :'parsing_formula_on_open' => :'ParsingFormulaOnOpen',
        :'password' => :'Password',
        :'region' => :'Region',
        :'standard_font' => :'StandardFont',
        :'standard_font_size' => :'StandardFontSize'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'convert_numeric_data' => :'String',
        :'interrupt_monitor' => :'String',
        :'language_code' => :'String',
        :'load_data_options' => :'String',
        :'load_format' => :'String',
        :'only_load_document_properties' => :'String',
        :'parsing_formula_on_open' => :'String',
        :'password' => :'String',
        :'region' => :'String',
        :'standard_font' => :'String',
        :'standard_font_size' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'ConvertNumericData')
          self.convert_numeric_data = attributes[:'ConvertNumericData']
      end
      if attributes.has_key?(:'InterruptMonitor')
          self.interrupt_monitor = attributes[:'InterruptMonitor']
      end
      if attributes.has_key?(:'LanguageCode')
          self.language_code = attributes[:'LanguageCode']
      end
      if attributes.has_key?(:'LoadDataOptions')
          self.load_data_options = attributes[:'LoadDataOptions']
      end
      if attributes.has_key?(:'LoadFormat')
          self.load_format = attributes[:'LoadFormat']
      end
      if attributes.has_key?(:'OnlyLoadDocumentProperties')
          self.only_load_document_properties = attributes[:'OnlyLoadDocumentProperties']
      end
      if attributes.has_key?(:'ParsingFormulaOnOpen')
          self.parsing_formula_on_open = attributes[:'ParsingFormulaOnOpen']
      end
      if attributes.has_key?(:'Password')
          self.password = attributes[:'Password']
      end
      if attributes.has_key?(:'Region')
          self.region = attributes[:'Region']
      end
      if attributes.has_key?(:'StandardFont')
          self.standard_font = attributes[:'StandardFont']
      end
      if attributes.has_key?(:'StandardFontSize')
          self.standard_font_size = attributes[:'StandardFontSize']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @convert_numeric_data.nil?
          invalid_properties.push("invalid value for 'convert_numeric_data', convert_numeric_data cannot be nil.")
      end
      if @interrupt_monitor.nil?
          invalid_properties.push("invalid value for 'interrupt_monitor', interrupt_monitor cannot be nil.")
      end
      if @language_code.nil?
          invalid_properties.push("invalid value for 'language_code', language_code cannot be nil.")
      end
      if @load_data_options.nil?
          invalid_properties.push("invalid value for 'load_data_options', load_data_options cannot be nil.")
      end
      if @load_format.nil?
          invalid_properties.push("invalid value for 'load_format', load_format cannot be nil.")
      end
      if @only_load_document_properties.nil?
          invalid_properties.push("invalid value for 'only_load_document_properties', only_load_document_properties cannot be nil.")
      end
      if @parsing_formula_on_open.nil?
          invalid_properties.push("invalid value for 'parsing_formula_on_open', parsing_formula_on_open cannot be nil.")
      end
      if @password.nil?
          invalid_properties.push("invalid value for 'password', password cannot be nil.")
      end
      if @region.nil?
          invalid_properties.push("invalid value for 'region', region cannot be nil.")
      end
      if @standard_font.nil?
          invalid_properties.push("invalid value for 'standard_font', standard_font cannot be nil.")
      end
      if @standard_font_size.nil?
          invalid_properties.push("invalid value for 'standard_font_size', standard_font_size cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @convert_numeric_data.nil?
      return false if @interrupt_monitor.nil?
      return false if @language_code.nil?
      return false if @load_data_options.nil?
      return false if @load_format.nil?
      return false if @only_load_document_properties.nil?
      return false if @parsing_formula_on_open.nil?
      return false if @password.nil?
      return false if @region.nil?
      return false if @standard_font.nil?
      return false if @standard_font_size.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          convert_numeric_data == o.convert_numeric_data &&
          interrupt_monitor == o.interrupt_monitor &&
          language_code == o.language_code &&
          load_data_options == o.load_data_options &&
          load_format == o.load_format &&
          only_load_document_properties == o.only_load_document_properties &&
          parsing_formula_on_open == o.parsing_formula_on_open &&
          password == o.password &&
          region == o.region &&
          standard_font == o.standard_font &&
          standard_font_size == o.standard_font_size 
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
      [ convert_numeric_data , interrupt_monitor , language_code , load_data_options , load_format , only_load_document_properties , parsing_formula_on_open , password , region , standard_font , standard_font_size ].hash
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
