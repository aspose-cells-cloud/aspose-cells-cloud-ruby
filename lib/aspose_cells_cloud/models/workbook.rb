=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Workbookrb.cs">
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

  class Workbook
        #Gets and sets the current file name.             
        attr_accessor :file_name
        #            
        attr_accessor :links
        #Gets the  collection in the spreadsheet.             
        attr_accessor :worksheets
        #Gets or sets the default  object of the workbook.             
        attr_accessor :default_style
        #            
        attr_accessor :document_properties
        #            
        attr_accessor :names
        #Represents the workbook settings.             
        attr_accessor :settings
        #            
        attr_accessor :is_write_protected
        #            
        attr_accessor :is_protected
        #            
        attr_accessor :is_encryption
        #            
        attr_accessor :password

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'file_name' => :'FileName',
        :'links' => :'Links',
        :'worksheets' => :'Worksheets',
        :'default_style' => :'DefaultStyle',
        :'document_properties' => :'DocumentProperties',
        :'names' => :'Names',
        :'settings' => :'Settings',
        :'is_write_protected' => :'IsWriteProtected',
        :'is_protected' => :'IsProtected',
        :'is_encryption' => :'IsEncryption',
        :'password' => :'Password'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'file_name' => :'String',
        :'links' => :'Array<Link>',
        :'worksheets' => :'LinkElement',
        :'default_style' => :'LinkElement',
        :'document_properties' => :'LinkElement',
        :'names' => :'LinkElement',
        :'settings' => :'LinkElement',
        :'is_write_protected' => :'String',
        :'is_protected' => :'String',
        :'is_encryption' => :'String',
        :'password' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'FileName')
          self.file_name = attributes[:'FileName']
      end
      if attributes.has_key?(:'Links')
          self.links = attributes[:'Links']
      end
      if attributes.has_key?(:'Worksheets')
          self.worksheets = attributes[:'Worksheets']
      end
      if attributes.has_key?(:'DefaultStyle')
          self.default_style = attributes[:'DefaultStyle']
      end
      if attributes.has_key?(:'DocumentProperties')
          self.document_properties = attributes[:'DocumentProperties']
      end
      if attributes.has_key?(:'Names')
          self.names = attributes[:'Names']
      end
      if attributes.has_key?(:'Settings')
          self.settings = attributes[:'Settings']
      end
      if attributes.has_key?(:'IsWriteProtected')
          self.is_write_protected = attributes[:'IsWriteProtected']
      end
      if attributes.has_key?(:'IsProtected')
          self.is_protected = attributes[:'IsProtected']
      end
      if attributes.has_key?(:'IsEncryption')
          self.is_encryption = attributes[:'IsEncryption']
      end
      if attributes.has_key?(:'Password')
          self.password = attributes[:'Password']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @file_name.nil?
          invalid_properties.push("invalid value for 'file_name', file_name cannot be nil.")
      end
      if @links.nil?
          invalid_properties.push("invalid value for 'links', links cannot be nil.")
      end
      if @worksheets.nil?
          invalid_properties.push("invalid value for 'worksheets', worksheets cannot be nil.")
      end
      if @default_style.nil?
          invalid_properties.push("invalid value for 'default_style', default_style cannot be nil.")
      end
      if @document_properties.nil?
          invalid_properties.push("invalid value for 'document_properties', document_properties cannot be nil.")
      end
      if @names.nil?
          invalid_properties.push("invalid value for 'names', names cannot be nil.")
      end
      if @settings.nil?
          invalid_properties.push("invalid value for 'settings', settings cannot be nil.")
      end
      if @is_write_protected.nil?
          invalid_properties.push("invalid value for 'is_write_protected', is_write_protected cannot be nil.")
      end
      if @is_protected.nil?
          invalid_properties.push("invalid value for 'is_protected', is_protected cannot be nil.")
      end
      if @is_encryption.nil?
          invalid_properties.push("invalid value for 'is_encryption', is_encryption cannot be nil.")
      end
      if @password.nil?
          invalid_properties.push("invalid value for 'password', password cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @file_name.nil?
      return false if @links.nil?
      return false if @worksheets.nil?
      return false if @default_style.nil?
      return false if @document_properties.nil?
      return false if @names.nil?
      return false if @settings.nil?
      return false if @is_write_protected.nil?
      return false if @is_protected.nil?
      return false if @is_encryption.nil?
      return false if @password.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          file_name == o.file_name &&
          links == o.links &&
          worksheets == o.worksheets &&
          default_style == o.default_style &&
          document_properties == o.document_properties &&
          names == o.names &&
          settings == o.settings &&
          is_write_protected == o.is_write_protected &&
          is_protected == o.is_protected &&
          is_encryption == o.is_encryption &&
          password == o.password 
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
      [ file_name , links , worksheets , default_style , document_properties , names , settings , is_write_protected , is_protected , is_encryption , password ].hash
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
