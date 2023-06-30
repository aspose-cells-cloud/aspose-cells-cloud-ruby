=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PdfSecurityOptionsrb.cs">
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

  class PdfSecurityOptions
        #            
        attr_accessor :annotations_permission
        #            
        attr_accessor :assemble_document_permission
        #            
        attr_accessor :extract_content_permission
        #            
        attr_accessor :extract_content_permission_obsolete
        #            
        attr_accessor :fill_forms_permission
        #            
        attr_accessor :full_quality_print_permission
        #            
        attr_accessor :modify_document_permission
        #            
        attr_accessor :owner_password
        #            
        attr_accessor :print_permission
        #            
        attr_accessor :user_password

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'annotations_permission' => :'AnnotationsPermission',
        :'assemble_document_permission' => :'AssembleDocumentPermission',
        :'extract_content_permission' => :'ExtractContentPermission',
        :'extract_content_permission_obsolete' => :'ExtractContentPermissionObsolete',
        :'fill_forms_permission' => :'FillFormsPermission',
        :'full_quality_print_permission' => :'FullQualityPrintPermission',
        :'modify_document_permission' => :'ModifyDocumentPermission',
        :'owner_password' => :'OwnerPassword',
        :'print_permission' => :'PrintPermission',
        :'user_password' => :'UserPassword'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'annotations_permission' => :'BOOLEAN',
        :'assemble_document_permission' => :'BOOLEAN',
        :'extract_content_permission' => :'BOOLEAN',
        :'extract_content_permission_obsolete' => :'BOOLEAN',
        :'fill_forms_permission' => :'BOOLEAN',
        :'full_quality_print_permission' => :'BOOLEAN',
        :'modify_document_permission' => :'BOOLEAN',
        :'owner_password' => :'String',
        :'print_permission' => :'BOOLEAN',
        :'user_password' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'AnnotationsPermission')
          self.annotations_permission = attributes[:'AnnotationsPermission']
      end
      if attributes.has_key?(:'AssembleDocumentPermission')
          self.assemble_document_permission = attributes[:'AssembleDocumentPermission']
      end
      if attributes.has_key?(:'ExtractContentPermission')
          self.extract_content_permission = attributes[:'ExtractContentPermission']
      end
      if attributes.has_key?(:'ExtractContentPermissionObsolete')
          self.extract_content_permission_obsolete = attributes[:'ExtractContentPermissionObsolete']
      end
      if attributes.has_key?(:'FillFormsPermission')
          self.fill_forms_permission = attributes[:'FillFormsPermission']
      end
      if attributes.has_key?(:'FullQualityPrintPermission')
          self.full_quality_print_permission = attributes[:'FullQualityPrintPermission']
      end
      if attributes.has_key?(:'ModifyDocumentPermission')
          self.modify_document_permission = attributes[:'ModifyDocumentPermission']
      end
      if attributes.has_key?(:'OwnerPassword')
          self.owner_password = attributes[:'OwnerPassword']
      end
      if attributes.has_key?(:'PrintPermission')
          self.print_permission = attributes[:'PrintPermission']
      end
      if attributes.has_key?(:'UserPassword')
          self.user_password = attributes[:'UserPassword']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @annotations_permission.nil?
          invalid_properties.push("invalid value for 'annotations_permission', annotations_permission cannot be nil.")
      end
      if @assemble_document_permission.nil?
          invalid_properties.push("invalid value for 'assemble_document_permission', assemble_document_permission cannot be nil.")
      end
      if @extract_content_permission.nil?
          invalid_properties.push("invalid value for 'extract_content_permission', extract_content_permission cannot be nil.")
      end
      if @extract_content_permission_obsolete.nil?
          invalid_properties.push("invalid value for 'extract_content_permission_obsolete', extract_content_permission_obsolete cannot be nil.")
      end
      if @fill_forms_permission.nil?
          invalid_properties.push("invalid value for 'fill_forms_permission', fill_forms_permission cannot be nil.")
      end
      if @full_quality_print_permission.nil?
          invalid_properties.push("invalid value for 'full_quality_print_permission', full_quality_print_permission cannot be nil.")
      end
      if @modify_document_permission.nil?
          invalid_properties.push("invalid value for 'modify_document_permission', modify_document_permission cannot be nil.")
      end
      if @owner_password.nil?
          invalid_properties.push("invalid value for 'owner_password', owner_password cannot be nil.")
      end
      if @print_permission.nil?
          invalid_properties.push("invalid value for 'print_permission', print_permission cannot be nil.")
      end
      if @user_password.nil?
          invalid_properties.push("invalid value for 'user_password', user_password cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @annotations_permission.nil?
      return false if @assemble_document_permission.nil?
      return false if @extract_content_permission.nil?
      return false if @extract_content_permission_obsolete.nil?
      return false if @fill_forms_permission.nil?
      return false if @full_quality_print_permission.nil?
      return false if @modify_document_permission.nil?
      return false if @owner_password.nil?
      return false if @print_permission.nil?
      return false if @user_password.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          annotations_permission == o.annotations_permission &&
          assemble_document_permission == o.assemble_document_permission &&
          extract_content_permission == o.extract_content_permission &&
          extract_content_permission_obsolete == o.extract_content_permission_obsolete &&
          fill_forms_permission == o.fill_forms_permission &&
          full_quality_print_permission == o.full_quality_print_permission &&
          modify_document_permission == o.modify_document_permission &&
          owner_password == o.owner_password &&
          print_permission == o.print_permission &&
          user_password == o.user_password 
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
      [ annotations_permission , assemble_document_permission , extract_content_permission , extract_content_permission_obsolete , fill_forms_permission , full_quality_print_permission , modify_document_permission , owner_password , print_permission , user_password ].hash
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
