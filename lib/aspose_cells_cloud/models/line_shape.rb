=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="LineShaperb.cs">
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

  class LineShape
        #            
        attr_accessor :begin_arrowhead_length
        #            
        attr_accessor :begin_arrowhead_style
        #            
        attr_accessor :begin_arrowhead_width
        #            
        attr_accessor :end_arrowhead_length
        #            
        attr_accessor :end_arrowhead_style
        #            
        attr_accessor :end_arrowhead_width
        #            
        attr_accessor :name
        #            
        attr_accessor :mso_drawing_type
        #            
        attr_accessor :auto_shape_type
        #            
        attr_accessor :placement
        #            
        attr_accessor :upper_left_row
        #            
        attr_accessor :top
        #            
        attr_accessor :upper_left_column
        #            
        attr_accessor :left
        #            
        attr_accessor :lower_right_row
        #            
        attr_accessor :bottom
        #            
        attr_accessor :lower_right_column
        #            
        attr_accessor :right
        #            
        attr_accessor :width
        #            
        attr_accessor :height
        #            
        attr_accessor :x
        #            
        attr_accessor :y
        #            
        attr_accessor :rotation_angle
        #            
        attr_accessor :html_text
        #            
        attr_accessor :text
        #            
        attr_accessor :alternative_text
        #            
        attr_accessor :text_horizontal_alignment
        #            
        attr_accessor :text_horizontal_overflow
        #            
        attr_accessor :text_orientation_type
        #            
        attr_accessor :text_vertical_alignment
        #            
        attr_accessor :text_vertical_overflow
        #            
        attr_accessor :is_group
        #            
        attr_accessor :is_hidden
        #            
        attr_accessor :is_lock_aspect_ratio
        #            
        attr_accessor :is_locked
        #            
        attr_accessor :is_printable
        #            
        attr_accessor :is_text_wrapped
        #            
        attr_accessor :is_word_art
        #            
        attr_accessor :linked_cell
        #            
        attr_accessor :z_order_position
        #            
        attr_accessor :font
        #            
        attr_accessor :hyperlink
        #            
        attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'begin_arrowhead_length' => :'BeginArrowheadLength',
        :'begin_arrowhead_style' => :'BeginArrowheadStyle',
        :'begin_arrowhead_width' => :'BeginArrowheadWidth',
        :'end_arrowhead_length' => :'EndArrowheadLength',
        :'end_arrowhead_style' => :'EndArrowheadStyle',
        :'end_arrowhead_width' => :'EndArrowheadWidth',
        :'name' => :'Name',
        :'mso_drawing_type' => :'MsoDrawingType',
        :'auto_shape_type' => :'AutoShapeType',
        :'placement' => :'Placement',
        :'upper_left_row' => :'UpperLeftRow',
        :'top' => :'Top',
        :'upper_left_column' => :'UpperLeftColumn',
        :'left' => :'Left',
        :'lower_right_row' => :'LowerRightRow',
        :'bottom' => :'Bottom',
        :'lower_right_column' => :'LowerRightColumn',
        :'right' => :'Right',
        :'width' => :'Width',
        :'height' => :'Height',
        :'x' => :'X',
        :'y' => :'Y',
        :'rotation_angle' => :'RotationAngle',
        :'html_text' => :'HtmlText',
        :'text' => :'Text',
        :'alternative_text' => :'AlternativeText',
        :'text_horizontal_alignment' => :'TextHorizontalAlignment',
        :'text_horizontal_overflow' => :'TextHorizontalOverflow',
        :'text_orientation_type' => :'TextOrientationType',
        :'text_vertical_alignment' => :'TextVerticalAlignment',
        :'text_vertical_overflow' => :'TextVerticalOverflow',
        :'is_group' => :'IsGroup',
        :'is_hidden' => :'IsHidden',
        :'is_lock_aspect_ratio' => :'IsLockAspectRatio',
        :'is_locked' => :'IsLocked',
        :'is_printable' => :'IsPrintable',
        :'is_text_wrapped' => :'IsTextWrapped',
        :'is_word_art' => :'IsWordArt',
        :'linked_cell' => :'LinkedCell',
        :'z_order_position' => :'ZOrderPosition',
        :'font' => :'Font',
        :'hyperlink' => :'Hyperlink',
        :'link' => :'link'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'begin_arrowhead_length' => :'String',
        :'begin_arrowhead_style' => :'String',
        :'begin_arrowhead_width' => :'String',
        :'end_arrowhead_length' => :'String',
        :'end_arrowhead_style' => :'String',
        :'end_arrowhead_width' => :'String',
        :'name' => :'String',
        :'mso_drawing_type' => :'String',
        :'auto_shape_type' => :'String',
        :'placement' => :'String',
        :'upper_left_row' => :'Integer',
        :'top' => :'Integer',
        :'upper_left_column' => :'Integer',
        :'left' => :'Integer',
        :'lower_right_row' => :'Integer',
        :'bottom' => :'Integer',
        :'lower_right_column' => :'Integer',
        :'right' => :'Integer',
        :'width' => :'Integer',
        :'height' => :'Integer',
        :'x' => :'Integer',
        :'y' => :'Integer',
        :'rotation_angle' => :'Float',
        :'html_text' => :'String',
        :'text' => :'String',
        :'alternative_text' => :'String',
        :'text_horizontal_alignment' => :'String',
        :'text_horizontal_overflow' => :'String',
        :'text_orientation_type' => :'String',
        :'text_vertical_alignment' => :'String',
        :'text_vertical_overflow' => :'String',
        :'is_group' => :'BOOLEAN',
        :'is_hidden' => :'BOOLEAN',
        :'is_lock_aspect_ratio' => :'BOOLEAN',
        :'is_locked' => :'BOOLEAN',
        :'is_printable' => :'BOOLEAN',
        :'is_text_wrapped' => :'BOOLEAN',
        :'is_word_art' => :'BOOLEAN',
        :'linked_cell' => :'String',
        :'z_order_position' => :'Integer',
        :'font' => :'Font',
        :'hyperlink' => :'String',
        :'link' => :'Link'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'BeginArrowheadLength')
          self.begin_arrowhead_length = attributes[:'BeginArrowheadLength']
      end
      if attributes.has_key?(:'BeginArrowheadStyle')
          self.begin_arrowhead_style = attributes[:'BeginArrowheadStyle']
      end
      if attributes.has_key?(:'BeginArrowheadWidth')
          self.begin_arrowhead_width = attributes[:'BeginArrowheadWidth']
      end
      if attributes.has_key?(:'EndArrowheadLength')
          self.end_arrowhead_length = attributes[:'EndArrowheadLength']
      end
      if attributes.has_key?(:'EndArrowheadStyle')
          self.end_arrowhead_style = attributes[:'EndArrowheadStyle']
      end
      if attributes.has_key?(:'EndArrowheadWidth')
          self.end_arrowhead_width = attributes[:'EndArrowheadWidth']
      end
      if attributes.has_key?(:'Name')
          self.name = attributes[:'Name']
      end
      if attributes.has_key?(:'MsoDrawingType')
          self.mso_drawing_type = attributes[:'MsoDrawingType']
      end
      if attributes.has_key?(:'AutoShapeType')
          self.auto_shape_type = attributes[:'AutoShapeType']
      end
      if attributes.has_key?(:'Placement')
          self.placement = attributes[:'Placement']
      end
      if attributes.has_key?(:'UpperLeftRow')
          self.upper_left_row = attributes[:'UpperLeftRow']
      end
      if attributes.has_key?(:'Top')
          self.top = attributes[:'Top']
      end
      if attributes.has_key?(:'UpperLeftColumn')
          self.upper_left_column = attributes[:'UpperLeftColumn']
      end
      if attributes.has_key?(:'Left')
          self.left = attributes[:'Left']
      end
      if attributes.has_key?(:'LowerRightRow')
          self.lower_right_row = attributes[:'LowerRightRow']
      end
      if attributes.has_key?(:'Bottom')
          self.bottom = attributes[:'Bottom']
      end
      if attributes.has_key?(:'LowerRightColumn')
          self.lower_right_column = attributes[:'LowerRightColumn']
      end
      if attributes.has_key?(:'Right')
          self.right = attributes[:'Right']
      end
      if attributes.has_key?(:'Width')
          self.width = attributes[:'Width']
      end
      if attributes.has_key?(:'Height')
          self.height = attributes[:'Height']
      end
      if attributes.has_key?(:'X')
          self.x = attributes[:'X']
      end
      if attributes.has_key?(:'Y')
          self.y = attributes[:'Y']
      end
      if attributes.has_key?(:'RotationAngle')
          self.rotation_angle = attributes[:'RotationAngle']
      end
      if attributes.has_key?(:'HtmlText')
          self.html_text = attributes[:'HtmlText']
      end
      if attributes.has_key?(:'Text')
          self.text = attributes[:'Text']
      end
      if attributes.has_key?(:'AlternativeText')
          self.alternative_text = attributes[:'AlternativeText']
      end
      if attributes.has_key?(:'TextHorizontalAlignment')
          self.text_horizontal_alignment = attributes[:'TextHorizontalAlignment']
      end
      if attributes.has_key?(:'TextHorizontalOverflow')
          self.text_horizontal_overflow = attributes[:'TextHorizontalOverflow']
      end
      if attributes.has_key?(:'TextOrientationType')
          self.text_orientation_type = attributes[:'TextOrientationType']
      end
      if attributes.has_key?(:'TextVerticalAlignment')
          self.text_vertical_alignment = attributes[:'TextVerticalAlignment']
      end
      if attributes.has_key?(:'TextVerticalOverflow')
          self.text_vertical_overflow = attributes[:'TextVerticalOverflow']
      end
      if attributes.has_key?(:'IsGroup')
          self.is_group = attributes[:'IsGroup']
      end
      if attributes.has_key?(:'IsHidden')
          self.is_hidden = attributes[:'IsHidden']
      end
      if attributes.has_key?(:'IsLockAspectRatio')
          self.is_lock_aspect_ratio = attributes[:'IsLockAspectRatio']
      end
      if attributes.has_key?(:'IsLocked')
          self.is_locked = attributes[:'IsLocked']
      end
      if attributes.has_key?(:'IsPrintable')
          self.is_printable = attributes[:'IsPrintable']
      end
      if attributes.has_key?(:'IsTextWrapped')
          self.is_text_wrapped = attributes[:'IsTextWrapped']
      end
      if attributes.has_key?(:'IsWordArt')
          self.is_word_art = attributes[:'IsWordArt']
      end
      if attributes.has_key?(:'LinkedCell')
          self.linked_cell = attributes[:'LinkedCell']
      end
      if attributes.has_key?(:'ZOrderPosition')
          self.z_order_position = attributes[:'ZOrderPosition']
      end
      if attributes.has_key?(:'Font')
          self.font = attributes[:'Font']
      end
      if attributes.has_key?(:'Hyperlink')
          self.hyperlink = attributes[:'Hyperlink']
      end
      if attributes.has_key?(:'link')
          self.link = attributes[:'link']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @begin_arrowhead_length.nil?
          invalid_properties.push("invalid value for 'begin_arrowhead_length', begin_arrowhead_length cannot be nil.")
      end
      if @begin_arrowhead_style.nil?
          invalid_properties.push("invalid value for 'begin_arrowhead_style', begin_arrowhead_style cannot be nil.")
      end
      if @begin_arrowhead_width.nil?
          invalid_properties.push("invalid value for 'begin_arrowhead_width', begin_arrowhead_width cannot be nil.")
      end
      if @end_arrowhead_length.nil?
          invalid_properties.push("invalid value for 'end_arrowhead_length', end_arrowhead_length cannot be nil.")
      end
      if @end_arrowhead_style.nil?
          invalid_properties.push("invalid value for 'end_arrowhead_style', end_arrowhead_style cannot be nil.")
      end
      if @end_arrowhead_width.nil?
          invalid_properties.push("invalid value for 'end_arrowhead_width', end_arrowhead_width cannot be nil.")
      end
      if @name.nil?
          invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end
      if @mso_drawing_type.nil?
          invalid_properties.push("invalid value for 'mso_drawing_type', mso_drawing_type cannot be nil.")
      end
      if @auto_shape_type.nil?
          invalid_properties.push("invalid value for 'auto_shape_type', auto_shape_type cannot be nil.")
      end
      if @placement.nil?
          invalid_properties.push("invalid value for 'placement', placement cannot be nil.")
      end
      if @upper_left_row.nil?
          invalid_properties.push("invalid value for 'upper_left_row', upper_left_row cannot be nil.")
      end
      if @top.nil?
          invalid_properties.push("invalid value for 'top', top cannot be nil.")
      end
      if @upper_left_column.nil?
          invalid_properties.push("invalid value for 'upper_left_column', upper_left_column cannot be nil.")
      end
      if @left.nil?
          invalid_properties.push("invalid value for 'left', left cannot be nil.")
      end
      if @lower_right_row.nil?
          invalid_properties.push("invalid value for 'lower_right_row', lower_right_row cannot be nil.")
      end
      if @bottom.nil?
          invalid_properties.push("invalid value for 'bottom', bottom cannot be nil.")
      end
      if @lower_right_column.nil?
          invalid_properties.push("invalid value for 'lower_right_column', lower_right_column cannot be nil.")
      end
      if @right.nil?
          invalid_properties.push("invalid value for 'right', right cannot be nil.")
      end
      if @width.nil?
          invalid_properties.push("invalid value for 'width', width cannot be nil.")
      end
      if @height.nil?
          invalid_properties.push("invalid value for 'height', height cannot be nil.")
      end
      if @x.nil?
          invalid_properties.push("invalid value for 'x', x cannot be nil.")
      end
      if @y.nil?
          invalid_properties.push("invalid value for 'y', y cannot be nil.")
      end
      if @rotation_angle.nil?
          invalid_properties.push("invalid value for 'rotation_angle', rotation_angle cannot be nil.")
      end
      if @html_text.nil?
          invalid_properties.push("invalid value for 'html_text', html_text cannot be nil.")
      end
      if @text.nil?
          invalid_properties.push("invalid value for 'text', text cannot be nil.")
      end
      if @alternative_text.nil?
          invalid_properties.push("invalid value for 'alternative_text', alternative_text cannot be nil.")
      end
      if @text_horizontal_alignment.nil?
          invalid_properties.push("invalid value for 'text_horizontal_alignment', text_horizontal_alignment cannot be nil.")
      end
      if @text_horizontal_overflow.nil?
          invalid_properties.push("invalid value for 'text_horizontal_overflow', text_horizontal_overflow cannot be nil.")
      end
      if @text_orientation_type.nil?
          invalid_properties.push("invalid value for 'text_orientation_type', text_orientation_type cannot be nil.")
      end
      if @text_vertical_alignment.nil?
          invalid_properties.push("invalid value for 'text_vertical_alignment', text_vertical_alignment cannot be nil.")
      end
      if @text_vertical_overflow.nil?
          invalid_properties.push("invalid value for 'text_vertical_overflow', text_vertical_overflow cannot be nil.")
      end
      if @is_group.nil?
          invalid_properties.push("invalid value for 'is_group', is_group cannot be nil.")
      end
      if @is_hidden.nil?
          invalid_properties.push("invalid value for 'is_hidden', is_hidden cannot be nil.")
      end
      if @is_lock_aspect_ratio.nil?
          invalid_properties.push("invalid value for 'is_lock_aspect_ratio', is_lock_aspect_ratio cannot be nil.")
      end
      if @is_locked.nil?
          invalid_properties.push("invalid value for 'is_locked', is_locked cannot be nil.")
      end
      if @is_printable.nil?
          invalid_properties.push("invalid value for 'is_printable', is_printable cannot be nil.")
      end
      if @is_text_wrapped.nil?
          invalid_properties.push("invalid value for 'is_text_wrapped', is_text_wrapped cannot be nil.")
      end
      if @is_word_art.nil?
          invalid_properties.push("invalid value for 'is_word_art', is_word_art cannot be nil.")
      end
      if @linked_cell.nil?
          invalid_properties.push("invalid value for 'linked_cell', linked_cell cannot be nil.")
      end
      if @z_order_position.nil?
          invalid_properties.push("invalid value for 'z_order_position', z_order_position cannot be nil.")
      end
      if @font.nil?
          invalid_properties.push("invalid value for 'font', font cannot be nil.")
      end
      if @hyperlink.nil?
          invalid_properties.push("invalid value for 'hyperlink', hyperlink cannot be nil.")
      end
      if @link.nil?
          invalid_properties.push("invalid value for 'link', link cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @begin_arrowhead_length.nil?
      return false if @begin_arrowhead_style.nil?
      return false if @begin_arrowhead_width.nil?
      return false if @end_arrowhead_length.nil?
      return false if @end_arrowhead_style.nil?
      return false if @end_arrowhead_width.nil?
      return false if @name.nil?
      return false if @mso_drawing_type.nil?
      return false if @auto_shape_type.nil?
      return false if @placement.nil?
      return false if @upper_left_row.nil?
      return false if @top.nil?
      return false if @upper_left_column.nil?
      return false if @left.nil?
      return false if @lower_right_row.nil?
      return false if @bottom.nil?
      return false if @lower_right_column.nil?
      return false if @right.nil?
      return false if @width.nil?
      return false if @height.nil?
      return false if @x.nil?
      return false if @y.nil?
      return false if @rotation_angle.nil?
      return false if @html_text.nil?
      return false if @text.nil?
      return false if @alternative_text.nil?
      return false if @text_horizontal_alignment.nil?
      return false if @text_horizontal_overflow.nil?
      return false if @text_orientation_type.nil?
      return false if @text_vertical_alignment.nil?
      return false if @text_vertical_overflow.nil?
      return false if @is_group.nil?
      return false if @is_hidden.nil?
      return false if @is_lock_aspect_ratio.nil?
      return false if @is_locked.nil?
      return false if @is_printable.nil?
      return false if @is_text_wrapped.nil?
      return false if @is_word_art.nil?
      return false if @linked_cell.nil?
      return false if @z_order_position.nil?
      return false if @font.nil?
      return false if @hyperlink.nil?
      return false if @link.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          begin_arrowhead_length == o.begin_arrowhead_length &&
          begin_arrowhead_style == o.begin_arrowhead_style &&
          begin_arrowhead_width == o.begin_arrowhead_width &&
          end_arrowhead_length == o.end_arrowhead_length &&
          end_arrowhead_style == o.end_arrowhead_style &&
          end_arrowhead_width == o.end_arrowhead_width &&
          name == o.name &&
          mso_drawing_type == o.mso_drawing_type &&
          auto_shape_type == o.auto_shape_type &&
          placement == o.placement &&
          upper_left_row == o.upper_left_row &&
          top == o.top &&
          upper_left_column == o.upper_left_column &&
          left == o.left &&
          lower_right_row == o.lower_right_row &&
          bottom == o.bottom &&
          lower_right_column == o.lower_right_column &&
          right == o.right &&
          width == o.width &&
          height == o.height &&
          x == o.x &&
          y == o.y &&
          rotation_angle == o.rotation_angle &&
          html_text == o.html_text &&
          text == o.text &&
          alternative_text == o.alternative_text &&
          text_horizontal_alignment == o.text_horizontal_alignment &&
          text_horizontal_overflow == o.text_horizontal_overflow &&
          text_orientation_type == o.text_orientation_type &&
          text_vertical_alignment == o.text_vertical_alignment &&
          text_vertical_overflow == o.text_vertical_overflow &&
          is_group == o.is_group &&
          is_hidden == o.is_hidden &&
          is_lock_aspect_ratio == o.is_lock_aspect_ratio &&
          is_locked == o.is_locked &&
          is_printable == o.is_printable &&
          is_text_wrapped == o.is_text_wrapped &&
          is_word_art == o.is_word_art &&
          linked_cell == o.linked_cell &&
          z_order_position == o.z_order_position &&
          font == o.font &&
          hyperlink == o.hyperlink &&
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
      [ begin_arrowhead_length , begin_arrowhead_style , begin_arrowhead_width , end_arrowhead_length , end_arrowhead_style , end_arrowhead_width , name , mso_drawing_type , auto_shape_type , placement , upper_left_row , top , upper_left_column , left , lower_right_row , bottom , lower_right_column , right , width , height , x , y , rotation_angle , html_text , text , alternative_text , text_horizontal_alignment , text_horizontal_overflow , text_orientation_type , text_vertical_alignment , text_vertical_overflow , is_group , is_hidden , is_lock_aspect_ratio , is_locked , is_printable , is_text_wrapped , is_word_art , linked_cell , z_order_position , font , hyperlink , link ].hash
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
