=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Rowrb.cs">
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

  class Row
        #Gets the group level of the row.            
        attr_accessor :group_level
        #Gets and sets the row height in unit of Points.            
        attr_accessor :height
        #Gets the index of this row.            
        attr_accessor :index
        #Indicates whether the row contains any data            
        attr_accessor :is_blank
        #Indicates that row height and default font height matches.            
        attr_accessor :is_height_matched
        #Indicates whether the row is hidden.            
        attr_accessor :is_hidden
        #Represents the style of this row.            
        attr_accessor :style
        #            
        attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'group_level' => :'GroupLevel',
        :'height' => :'Height',
        :'index' => :'Index',
        :'is_blank' => :'IsBlank',
        :'is_height_matched' => :'IsHeightMatched',
        :'is_hidden' => :'IsHidden',
        :'style' => :'Style',
        :'link' => :'link'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'group_level' => :'Integer',
        :'height' => :'Float',
        :'index' => :'Integer',
        :'is_blank' => :'BOOLEAN',
        :'is_height_matched' => :'BOOLEAN',
        :'is_hidden' => :'BOOLEAN',
        :'style' => :'LinkElement',
        :'link' => :'Link'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'GroupLevel')
          self.group_level = attributes[:'GroupLevel']
      end
      if attributes.has_key?(:'Height')
          self.height = attributes[:'Height']
      end
      if attributes.has_key?(:'Index')
          self.index = attributes[:'Index']
      end
      if attributes.has_key?(:'IsBlank')
          self.is_blank = attributes[:'IsBlank']
      end
      if attributes.has_key?(:'IsHeightMatched')
          self.is_height_matched = attributes[:'IsHeightMatched']
      end
      if attributes.has_key?(:'IsHidden')
          self.is_hidden = attributes[:'IsHidden']
      end
      if attributes.has_key?(:'Style')
          self.style = attributes[:'Style']
      end
      if attributes.has_key?(:'link')
          self.link = attributes[:'link']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @group_level.nil?
          invalid_properties.push("invalid value for 'group_level', group_level cannot be nil.")
      end
      if @height.nil?
          invalid_properties.push("invalid value for 'height', height cannot be nil.")
      end
      if @index.nil?
          invalid_properties.push("invalid value for 'index', index cannot be nil.")
      end
      if @is_blank.nil?
          invalid_properties.push("invalid value for 'is_blank', is_blank cannot be nil.")
      end
      if @is_height_matched.nil?
          invalid_properties.push("invalid value for 'is_height_matched', is_height_matched cannot be nil.")
      end
      if @is_hidden.nil?
          invalid_properties.push("invalid value for 'is_hidden', is_hidden cannot be nil.")
      end
      if @style.nil?
          invalid_properties.push("invalid value for 'style', style cannot be nil.")
      end
      if @link.nil?
          invalid_properties.push("invalid value for 'link', link cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @group_level.nil?
      return false if @height.nil?
      return false if @index.nil?
      return false if @is_blank.nil?
      return false if @is_height_matched.nil?
      return false if @is_hidden.nil?
      return false if @style.nil?
      return false if @link.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          group_level == o.group_level &&
          height == o.height &&
          index == o.index &&
          is_blank == o.is_blank &&
          is_height_matched == o.is_height_matched &&
          is_hidden == o.is_hidden &&
          style == o.style &&
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
      [ group_level , height , index , is_blank , is_height_matched , is_hidden , style , link ].hash
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
