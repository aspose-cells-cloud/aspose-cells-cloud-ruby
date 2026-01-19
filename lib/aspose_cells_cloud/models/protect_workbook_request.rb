=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="ProtectWorkbookRequestrb.cs">
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

  class ProtectWorkbookRequest
        #Indicates aways open read-only.            
        attr_accessor :aways_open_read_only
        #Indicates encrypt with password.            
        attr_accessor :encrypt_with_password
        #Represents the various types of protection options available for a worksheet.                        
        attr_accessor :protect_current_sheet
        #Represents the various types of protection options available for all worksheets.                        
        attr_accessor :protect_all_sheets
        #Indicates protect workbook structure. All, Contents, Objects, Scenarios, Structure, Windows, and None.            
        attr_accessor :protect_workbook_structure
        #Indicates signature in file.            
        attr_accessor :digital_signature
        #Indicates mark as final.            
        attr_accessor :mark_as_final

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'aways_open_read_only' => :'AwaysOpenReadOnly',
        :'encrypt_with_password' => :'EncryptWithPassword',
        :'protect_current_sheet' => :'ProtectCurrentSheet',
        :'protect_all_sheets' => :'ProtectAllSheets',
        :'protect_workbook_structure' => :'ProtectWorkbookStructure',
        :'digital_signature' => :'DigitalSignature',
        :'mark_as_final' => :'MarkAsFinal'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'aways_open_read_only' => :'BOOLEAN',
        :'encrypt_with_password' => :'String',
        :'protect_current_sheet' => :'Protection',
        :'protect_all_sheets' => :'Protection',
        :'protect_workbook_structure' => :'String',
        :'digital_signature' => :'DigitalSignature',
        :'mark_as_final' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'AwaysOpenReadOnly')
          self.aways_open_read_only = attributes[:'AwaysOpenReadOnly']
      end
      if attributes.has_key?(:'EncryptWithPassword')
          self.encrypt_with_password = attributes[:'EncryptWithPassword']
      end
      if attributes.has_key?(:'ProtectCurrentSheet')
          self.protect_current_sheet = attributes[:'ProtectCurrentSheet']
      end
      if attributes.has_key?(:'ProtectAllSheets')
          self.protect_all_sheets = attributes[:'ProtectAllSheets']
      end
      if attributes.has_key?(:'ProtectWorkbookStructure')
          self.protect_workbook_structure = attributes[:'ProtectWorkbookStructure']
      end
      if attributes.has_key?(:'DigitalSignature')
          self.digital_signature = attributes[:'DigitalSignature']
      end
      if attributes.has_key?(:'MarkAsFinal')
          self.mark_as_final = attributes[:'MarkAsFinal']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @aways_open_read_only.nil?
          invalid_properties.push("invalid value for 'aways_open_read_only', aways_open_read_only cannot be nil.")
      end
      if @encrypt_with_password.nil?
          invalid_properties.push("invalid value for 'encrypt_with_password', encrypt_with_password cannot be nil.")
      end
      if @protect_current_sheet.nil?
          invalid_properties.push("invalid value for 'protect_current_sheet', protect_current_sheet cannot be nil.")
      end
      if @protect_all_sheets.nil?
          invalid_properties.push("invalid value for 'protect_all_sheets', protect_all_sheets cannot be nil.")
      end
      if @protect_workbook_structure.nil?
          invalid_properties.push("invalid value for 'protect_workbook_structure', protect_workbook_structure cannot be nil.")
      end
      if @digital_signature.nil?
          invalid_properties.push("invalid value for 'digital_signature', digital_signature cannot be nil.")
      end
      if @mark_as_final.nil?
          invalid_properties.push("invalid value for 'mark_as_final', mark_as_final cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @aways_open_read_only.nil?
      return false if @encrypt_with_password.nil?
      return false if @protect_current_sheet.nil?
      return false if @protect_all_sheets.nil?
      return false if @protect_workbook_structure.nil?
      return false if @digital_signature.nil?
      return false if @mark_as_final.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          aways_open_read_only == o.aways_open_read_only &&
          encrypt_with_password == o.encrypt_with_password &&
          protect_current_sheet == o.protect_current_sheet &&
          protect_all_sheets == o.protect_all_sheets &&
          protect_workbook_structure == o.protect_workbook_structure &&
          digital_signature == o.digital_signature &&
          mark_as_final == o.mark_as_final 
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
      [ aways_open_read_only , encrypt_with_password , protect_current_sheet , protect_all_sheets , protect_workbook_structure , digital_signature , mark_as_final ].hash
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
