=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="IconSetrb.cs">
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

  class IconSet
        #Get the from the collection             
        attr_accessor :cf_icons
        #Get the CFValueObjects instance.             
        attr_accessor :cfvos
        #Indicates whether the icon set is custom.            Default value is false.             
        attr_accessor :is_custom
        #Get or set the flag indicating whether to reverses the default order of the icons in this icon set.            Default value is false.             
        attr_accessor :reverse
        #Get or set the flag indicating whether to show the values of the cells on which this icon set is applied.            Default value is true.             
        attr_accessor :show_value
        #Get or Set the icon set type to display.  Setting the type will auto check   if the current Cfvos's count is accord with the new type. If not accord,   old Cfvos will be cleaned and default Cfvos will be added.                        
        attr_accessor :icon_set_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cf_icons' => :'CfIcons',
        :'cfvos' => :'Cfvos',
        :'is_custom' => :'IsCustom',
        :'reverse' => :'Reverse',
        :'show_value' => :'ShowValue',
        :'icon_set_type' => :'IconSetType'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'cf_icons' => :'Array<ConditionalFormattingIcon>',
        :'cfvos' => :'Array<ConditionalFormattingValue>',
        :'is_custom' => :'BOOLEAN',
        :'reverse' => :'BOOLEAN',
        :'show_value' => :'BOOLEAN',
        :'icon_set_type' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'CfIcons')
          self.cf_icons = attributes[:'CfIcons']
      end
      if attributes.has_key?(:'Cfvos')
          self.cfvos = attributes[:'Cfvos']
      end
      if attributes.has_key?(:'IsCustom')
          self.is_custom = attributes[:'IsCustom']
      end
      if attributes.has_key?(:'Reverse')
          self.reverse = attributes[:'Reverse']
      end
      if attributes.has_key?(:'ShowValue')
          self.show_value = attributes[:'ShowValue']
      end
      if attributes.has_key?(:'IconSetType')
          self.icon_set_type = attributes[:'IconSetType']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @cf_icons.nil?
          invalid_properties.push("invalid value for 'cf_icons', cf_icons cannot be nil.")
      end
      if @cfvos.nil?
          invalid_properties.push("invalid value for 'cfvos', cfvos cannot be nil.")
      end
      if @is_custom.nil?
          invalid_properties.push("invalid value for 'is_custom', is_custom cannot be nil.")
      end
      if @reverse.nil?
          invalid_properties.push("invalid value for 'reverse', reverse cannot be nil.")
      end
      if @show_value.nil?
          invalid_properties.push("invalid value for 'show_value', show_value cannot be nil.")
      end
      if @icon_set_type.nil?
          invalid_properties.push("invalid value for 'icon_set_type', icon_set_type cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @cf_icons.nil?
      return false if @cfvos.nil?
      return false if @is_custom.nil?
      return false if @reverse.nil?
      return false if @show_value.nil?
      return false if @icon_set_type.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cf_icons == o.cf_icons &&
          cfvos == o.cfvos &&
          is_custom == o.is_custom &&
          reverse == o.reverse &&
          show_value == o.show_value &&
          icon_set_type == o.icon_set_type 
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
      [ cf_icons , cfvos , is_custom , reverse , show_value , icon_set_type ].hash
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
