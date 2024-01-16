=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Commentrb.cs">
   Copyright (c) 2024 Aspose.Cells Cloud
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

  class Comment
        #            
        attr_accessor :cell_name
        #Gets and sets Name of the original comment author            
        attr_accessor :author
        #Gets and sets the html string which contains data and some formats in this comment.            
        attr_accessor :html_note
        #Represents the content of comment.            
        attr_accessor :note
        #Indicates if size of comment is adjusted automatically according to its content.            
        attr_accessor :auto_size
        #Represents if the comment is visible or not.            
        attr_accessor :is_visible
        #Represents the width of the comment, in unit of pixels.            
        attr_accessor :width
        #Represents the Height of the comment, in unit of pixels.            
        attr_accessor :height
        #Gets and sets the text horizontal alignment type of the comment.            
        attr_accessor :text_horizontal_alignment
        #Gets and sets the text orientation type of the comment.            
        attr_accessor :text_orientation_type
        #Gets and sets the text vertical alignment type of the comment.            
        attr_accessor :text_vertical_alignment
        #            
        attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cell_name' => :'CellName',
        :'author' => :'Author',
        :'html_note' => :'HtmlNote',
        :'note' => :'Note',
        :'auto_size' => :'AutoSize',
        :'is_visible' => :'IsVisible',
        :'width' => :'Width',
        :'height' => :'Height',
        :'text_horizontal_alignment' => :'TextHorizontalAlignment',
        :'text_orientation_type' => :'TextOrientationType',
        :'text_vertical_alignment' => :'TextVerticalAlignment',
        :'link' => :'link'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'cell_name' => :'String',
        :'author' => :'String',
        :'html_note' => :'String',
        :'note' => :'String',
        :'auto_size' => :'BOOLEAN',
        :'is_visible' => :'BOOLEAN',
        :'width' => :'Integer',
        :'height' => :'Integer',
        :'text_horizontal_alignment' => :'String',
        :'text_orientation_type' => :'String',
        :'text_vertical_alignment' => :'String',
        :'link' => :'Link'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'CellName')
          self.cell_name = attributes[:'CellName']
      end
      if attributes.has_key?(:'Author')
          self.author = attributes[:'Author']
      end
      if attributes.has_key?(:'HtmlNote')
          self.html_note = attributes[:'HtmlNote']
      end
      if attributes.has_key?(:'Note')
          self.note = attributes[:'Note']
      end
      if attributes.has_key?(:'AutoSize')
          self.auto_size = attributes[:'AutoSize']
      end
      if attributes.has_key?(:'IsVisible')
          self.is_visible = attributes[:'IsVisible']
      end
      if attributes.has_key?(:'Width')
          self.width = attributes[:'Width']
      end
      if attributes.has_key?(:'Height')
          self.height = attributes[:'Height']
      end
      if attributes.has_key?(:'TextHorizontalAlignment')
          self.text_horizontal_alignment = attributes[:'TextHorizontalAlignment']
      end
      if attributes.has_key?(:'TextOrientationType')
          self.text_orientation_type = attributes[:'TextOrientationType']
      end
      if attributes.has_key?(:'TextVerticalAlignment')
          self.text_vertical_alignment = attributes[:'TextVerticalAlignment']
      end
      if attributes.has_key?(:'link')
          self.link = attributes[:'link']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @cell_name.nil?
          invalid_properties.push("invalid value for 'cell_name', cell_name cannot be nil.")
      end
      if @author.nil?
          invalid_properties.push("invalid value for 'author', author cannot be nil.")
      end
      if @html_note.nil?
          invalid_properties.push("invalid value for 'html_note', html_note cannot be nil.")
      end
      if @note.nil?
          invalid_properties.push("invalid value for 'note', note cannot be nil.")
      end
      if @auto_size.nil?
          invalid_properties.push("invalid value for 'auto_size', auto_size cannot be nil.")
      end
      if @is_visible.nil?
          invalid_properties.push("invalid value for 'is_visible', is_visible cannot be nil.")
      end
      if @width.nil?
          invalid_properties.push("invalid value for 'width', width cannot be nil.")
      end
      if @height.nil?
          invalid_properties.push("invalid value for 'height', height cannot be nil.")
      end
      if @text_horizontal_alignment.nil?
          invalid_properties.push("invalid value for 'text_horizontal_alignment', text_horizontal_alignment cannot be nil.")
      end
      if @text_orientation_type.nil?
          invalid_properties.push("invalid value for 'text_orientation_type', text_orientation_type cannot be nil.")
      end
      if @text_vertical_alignment.nil?
          invalid_properties.push("invalid value for 'text_vertical_alignment', text_vertical_alignment cannot be nil.")
      end
      if @link.nil?
          invalid_properties.push("invalid value for 'link', link cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @cell_name.nil?
      return false if @author.nil?
      return false if @html_note.nil?
      return false if @note.nil?
      return false if @auto_size.nil?
      return false if @is_visible.nil?
      return false if @width.nil?
      return false if @height.nil?
      return false if @text_horizontal_alignment.nil?
      return false if @text_orientation_type.nil?
      return false if @text_vertical_alignment.nil?
      return false if @link.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cell_name == o.cell_name &&
          author == o.author &&
          html_note == o.html_note &&
          note == o.note &&
          auto_size == o.auto_size &&
          is_visible == o.is_visible &&
          width == o.width &&
          height == o.height &&
          text_horizontal_alignment == o.text_horizontal_alignment &&
          text_orientation_type == o.text_orientation_type &&
          text_vertical_alignment == o.text_vertical_alignment &&
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
      [ cell_name , author , html_note , note , auto_size , is_visible , width , height , text_horizontal_alignment , text_orientation_type , text_vertical_alignment , link ].hash
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
