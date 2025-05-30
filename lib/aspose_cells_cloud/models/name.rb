=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Namerb.cs">
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

  class Name
        #Gets and sets the comment of the name.                        Only applies for Excel 2007.            
        attr_accessor :comment
        #Property Summary: WorksheetIndex is an optional integer property marked with the XmlElement attribute "worksheetindex".            
        attr_accessor :worksheet_index
        #Indicates whether this name is referred by other formulas.            
        attr_accessor :is_referred
        #Indicates whether the name is visible.            
        attr_accessor :is_visible
        #Gets or sets a R1C1 reference of the .            
        attr_accessor :r1_c1_refers_to
        #Returns or sets the formula that the name is defined to refer to, beginning with an equal sign.            
        attr_accessor :refers_to
        #Gets the name text of the object.            
        attr_accessor :text
        #            
        attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'comment' => :'Comment',
        :'worksheet_index' => :'WorksheetIndex',
        :'is_referred' => :'IsReferred',
        :'is_visible' => :'IsVisible',
        :'r1_c1_refers_to' => :'R1C1RefersTo',
        :'refers_to' => :'RefersTo',
        :'text' => :'Text',
        :'link' => :'link'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'comment' => :'String',
        :'worksheet_index' => :'Integer',
        :'is_referred' => :'BOOLEAN',
        :'is_visible' => :'BOOLEAN',
        :'r1_c1_refers_to' => :'String',
        :'refers_to' => :'String',
        :'text' => :'String',
        :'link' => :'Link'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Comment')
          self.comment = attributes[:'Comment']
      end
      if attributes.has_key?(:'WorksheetIndex')
          self.worksheet_index = attributes[:'WorksheetIndex']
      end
      if attributes.has_key?(:'IsReferred')
          self.is_referred = attributes[:'IsReferred']
      end
      if attributes.has_key?(:'IsVisible')
          self.is_visible = attributes[:'IsVisible']
      end
      if attributes.has_key?(:'R1C1RefersTo')
          self.r1_c1_refers_to = attributes[:'R1C1RefersTo']
      end
      if attributes.has_key?(:'RefersTo')
          self.refers_to = attributes[:'RefersTo']
      end
      if attributes.has_key?(:'Text')
          self.text = attributes[:'Text']
      end
      if attributes.has_key?(:'link')
          self.link = attributes[:'link']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @comment.nil?
          invalid_properties.push("invalid value for 'comment', comment cannot be nil.")
      end
      if @worksheet_index.nil?
          invalid_properties.push("invalid value for 'worksheet_index', worksheet_index cannot be nil.")
      end
      if @is_referred.nil?
          invalid_properties.push("invalid value for 'is_referred', is_referred cannot be nil.")
      end
      if @is_visible.nil?
          invalid_properties.push("invalid value for 'is_visible', is_visible cannot be nil.")
      end
      if @r1_c1_refers_to.nil?
          invalid_properties.push("invalid value for 'r1_c1_refers_to', r1_c1_refers_to cannot be nil.")
      end
      if @refers_to.nil?
          invalid_properties.push("invalid value for 'refers_to', refers_to cannot be nil.")
      end
      if @text.nil?
          invalid_properties.push("invalid value for 'text', text cannot be nil.")
      end
      if @link.nil?
          invalid_properties.push("invalid value for 'link', link cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @comment.nil?
      return false if @worksheet_index.nil?
      return false if @is_referred.nil?
      return false if @is_visible.nil?
      return false if @r1_c1_refers_to.nil?
      return false if @refers_to.nil?
      return false if @text.nil?
      return false if @link.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          comment == o.comment &&
          worksheet_index == o.worksheet_index &&
          is_referred == o.is_referred &&
          is_visible == o.is_visible &&
          r1_c1_refers_to == o.r1_c1_refers_to &&
          refers_to == o.refers_to &&
          text == o.text &&
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
      [ comment , worksheet_index , is_referred , is_visible , r1_c1_refers_to , refers_to , text , link ].hash
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
