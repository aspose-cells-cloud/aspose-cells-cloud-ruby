=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="DataLabelsrb.cs">
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

  class DataLabels
        #Indicates the text is auto generated.            
        attr_accessor :is_auto_text
        #            
        attr_accessor :is_deleted
        #            
        attr_accessor :linked_source
        #Gets and sets the built-in number format.            
        attr_accessor :number
        #Represents the format string for the DataLabels object.            
        attr_accessor :number_format
        #True if the number format is linked to the cells                         (so that the number format changes in the labels when it changes in the cells).            
        attr_accessor :number_format_linked
        #Represents the position of the data label.            
        attr_accessor :position
        #            
        attr_accessor :rotation_angle
        #Gets or sets the separator type used for the data labels on a chart.            
        attr_accessor :separator
        #Represents a specified chart's data label percentage value display behavior. True displays the percentage value. False to hide.            
        attr_accessor :show_bubble_size
        #Represents a specified chart's data label category name display behavior.True to display the category name for the data labels on a chart. False to hide.            
        attr_accessor :show_category_name
        #Represents a specified chart's data label legend key display behavior.                        True if the data label legend key is visible.            
        attr_accessor :show_legend_key
        #Represents a specified chart's data label percentage value display behavior. True displays the percentage value. False to hide.            
        attr_accessor :show_percentage
        #Returns or sets a Boolean to indicate the series name display behavior for the data labels on a chart.                        True to show the series name. False to hide.            
        attr_accessor :show_series_name
        #Represents a specified chart's data label values display behavior. True displays the values. False to hide.            
        attr_accessor :show_value
        #Gets or sets the text of data label.            
        attr_accessor :text
        #            
        attr_accessor :text_direction
        #            
        attr_accessor :text_horizontal_alignment
        #            
        attr_accessor :text_vertical_alignment
        #            
        attr_accessor :area
        #            
        attr_accessor :auto_scale_font
        #            
        attr_accessor :background_mode
        #            
        attr_accessor :border
        #            
        attr_accessor :font
        #            
        attr_accessor :is_automatic_size
        #            
        attr_accessor :is_inner_mode
        #            
        attr_accessor :shadow
        #            
        attr_accessor :shape_properties
        #            
        attr_accessor :width
        #            
        attr_accessor :height
        #            
        attr_accessor :x
        #            
        attr_accessor :y

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'is_auto_text' => :'IsAutoText',
        :'is_deleted' => :'IsDeleted',
        :'linked_source' => :'LinkedSource',
        :'number' => :'Number',
        :'number_format' => :'NumberFormat',
        :'number_format_linked' => :'NumberFormatLinked',
        :'position' => :'Position',
        :'rotation_angle' => :'RotationAngle',
        :'separator' => :'Separator',
        :'show_bubble_size' => :'ShowBubbleSize',
        :'show_category_name' => :'ShowCategoryName',
        :'show_legend_key' => :'ShowLegendKey',
        :'show_percentage' => :'ShowPercentage',
        :'show_series_name' => :'ShowSeriesName',
        :'show_value' => :'ShowValue',
        :'text' => :'Text',
        :'text_direction' => :'TextDirection',
        :'text_horizontal_alignment' => :'TextHorizontalAlignment',
        :'text_vertical_alignment' => :'TextVerticalAlignment',
        :'area' => :'Area',
        :'auto_scale_font' => :'AutoScaleFont',
        :'background_mode' => :'BackgroundMode',
        :'border' => :'Border',
        :'font' => :'Font',
        :'is_automatic_size' => :'IsAutomaticSize',
        :'is_inner_mode' => :'IsInnerMode',
        :'shadow' => :'Shadow',
        :'shape_properties' => :'ShapeProperties',
        :'width' => :'Width',
        :'height' => :'Height',
        :'x' => :'X',
        :'y' => :'Y'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'is_auto_text' => :'BOOLEAN',
        :'is_deleted' => :'BOOLEAN',
        :'linked_source' => :'String',
        :'number' => :'Integer',
        :'number_format' => :'String',
        :'number_format_linked' => :'BOOLEAN',
        :'position' => :'String',
        :'rotation_angle' => :'Integer',
        :'separator' => :'String',
        :'show_bubble_size' => :'BOOLEAN',
        :'show_category_name' => :'BOOLEAN',
        :'show_legend_key' => :'BOOLEAN',
        :'show_percentage' => :'BOOLEAN',
        :'show_series_name' => :'BOOLEAN',
        :'show_value' => :'BOOLEAN',
        :'text' => :'String',
        :'text_direction' => :'String',
        :'text_horizontal_alignment' => :'String',
        :'text_vertical_alignment' => :'String',
        :'area' => :'Area',
        :'auto_scale_font' => :'BOOLEAN',
        :'background_mode' => :'String',
        :'border' => :'Line',
        :'font' => :'Font',
        :'is_automatic_size' => :'BOOLEAN',
        :'is_inner_mode' => :'BOOLEAN',
        :'shadow' => :'BOOLEAN',
        :'shape_properties' => :'Array<LinkElement>',
        :'width' => :'Integer',
        :'height' => :'Integer',
        :'x' => :'Integer',
        :'y' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'IsAutoText')
          self.is_auto_text = attributes[:'IsAutoText']
      end
      if attributes.has_key?(:'IsDeleted')
          self.is_deleted = attributes[:'IsDeleted']
      end
      if attributes.has_key?(:'LinkedSource')
          self.linked_source = attributes[:'LinkedSource']
      end
      if attributes.has_key?(:'Number')
          self.number = attributes[:'Number']
      end
      if attributes.has_key?(:'NumberFormat')
          self.number_format = attributes[:'NumberFormat']
      end
      if attributes.has_key?(:'NumberFormatLinked')
          self.number_format_linked = attributes[:'NumberFormatLinked']
      end
      if attributes.has_key?(:'Position')
          self.position = attributes[:'Position']
      end
      if attributes.has_key?(:'RotationAngle')
          self.rotation_angle = attributes[:'RotationAngle']
      end
      if attributes.has_key?(:'Separator')
          self.separator = attributes[:'Separator']
      end
      if attributes.has_key?(:'ShowBubbleSize')
          self.show_bubble_size = attributes[:'ShowBubbleSize']
      end
      if attributes.has_key?(:'ShowCategoryName')
          self.show_category_name = attributes[:'ShowCategoryName']
      end
      if attributes.has_key?(:'ShowLegendKey')
          self.show_legend_key = attributes[:'ShowLegendKey']
      end
      if attributes.has_key?(:'ShowPercentage')
          self.show_percentage = attributes[:'ShowPercentage']
      end
      if attributes.has_key?(:'ShowSeriesName')
          self.show_series_name = attributes[:'ShowSeriesName']
      end
      if attributes.has_key?(:'ShowValue')
          self.show_value = attributes[:'ShowValue']
      end
      if attributes.has_key?(:'Text')
          self.text = attributes[:'Text']
      end
      if attributes.has_key?(:'TextDirection')
          self.text_direction = attributes[:'TextDirection']
      end
      if attributes.has_key?(:'TextHorizontalAlignment')
          self.text_horizontal_alignment = attributes[:'TextHorizontalAlignment']
      end
      if attributes.has_key?(:'TextVerticalAlignment')
          self.text_vertical_alignment = attributes[:'TextVerticalAlignment']
      end
      if attributes.has_key?(:'Area')
          self.area = attributes[:'Area']
      end
      if attributes.has_key?(:'AutoScaleFont')
          self.auto_scale_font = attributes[:'AutoScaleFont']
      end
      if attributes.has_key?(:'BackgroundMode')
          self.background_mode = attributes[:'BackgroundMode']
      end
      if attributes.has_key?(:'Border')
          self.border = attributes[:'Border']
      end
      if attributes.has_key?(:'Font')
          self.font = attributes[:'Font']
      end
      if attributes.has_key?(:'IsAutomaticSize')
          self.is_automatic_size = attributes[:'IsAutomaticSize']
      end
      if attributes.has_key?(:'IsInnerMode')
          self.is_inner_mode = attributes[:'IsInnerMode']
      end
      if attributes.has_key?(:'Shadow')
          self.shadow = attributes[:'Shadow']
      end
      if attributes.has_key?(:'ShapeProperties')
          self.shape_properties = attributes[:'ShapeProperties']
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

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @is_auto_text.nil?
          invalid_properties.push("invalid value for 'is_auto_text', is_auto_text cannot be nil.")
      end
      if @is_deleted.nil?
          invalid_properties.push("invalid value for 'is_deleted', is_deleted cannot be nil.")
      end
      if @linked_source.nil?
          invalid_properties.push("invalid value for 'linked_source', linked_source cannot be nil.")
      end
      if @number.nil?
          invalid_properties.push("invalid value for 'number', number cannot be nil.")
      end
      if @number_format.nil?
          invalid_properties.push("invalid value for 'number_format', number_format cannot be nil.")
      end
      if @number_format_linked.nil?
          invalid_properties.push("invalid value for 'number_format_linked', number_format_linked cannot be nil.")
      end
      if @position.nil?
          invalid_properties.push("invalid value for 'position', position cannot be nil.")
      end
      if @rotation_angle.nil?
          invalid_properties.push("invalid value for 'rotation_angle', rotation_angle cannot be nil.")
      end
      if @separator.nil?
          invalid_properties.push("invalid value for 'separator', separator cannot be nil.")
      end
      if @show_bubble_size.nil?
          invalid_properties.push("invalid value for 'show_bubble_size', show_bubble_size cannot be nil.")
      end
      if @show_category_name.nil?
          invalid_properties.push("invalid value for 'show_category_name', show_category_name cannot be nil.")
      end
      if @show_legend_key.nil?
          invalid_properties.push("invalid value for 'show_legend_key', show_legend_key cannot be nil.")
      end
      if @show_percentage.nil?
          invalid_properties.push("invalid value for 'show_percentage', show_percentage cannot be nil.")
      end
      if @show_series_name.nil?
          invalid_properties.push("invalid value for 'show_series_name', show_series_name cannot be nil.")
      end
      if @show_value.nil?
          invalid_properties.push("invalid value for 'show_value', show_value cannot be nil.")
      end
      if @text.nil?
          invalid_properties.push("invalid value for 'text', text cannot be nil.")
      end
      if @text_direction.nil?
          invalid_properties.push("invalid value for 'text_direction', text_direction cannot be nil.")
      end
      if @text_horizontal_alignment.nil?
          invalid_properties.push("invalid value for 'text_horizontal_alignment', text_horizontal_alignment cannot be nil.")
      end
      if @text_vertical_alignment.nil?
          invalid_properties.push("invalid value for 'text_vertical_alignment', text_vertical_alignment cannot be nil.")
      end
      if @area.nil?
          invalid_properties.push("invalid value for 'area', area cannot be nil.")
      end
      if @auto_scale_font.nil?
          invalid_properties.push("invalid value for 'auto_scale_font', auto_scale_font cannot be nil.")
      end
      if @background_mode.nil?
          invalid_properties.push("invalid value for 'background_mode', background_mode cannot be nil.")
      end
      if @border.nil?
          invalid_properties.push("invalid value for 'border', border cannot be nil.")
      end
      if @font.nil?
          invalid_properties.push("invalid value for 'font', font cannot be nil.")
      end
      if @is_automatic_size.nil?
          invalid_properties.push("invalid value for 'is_automatic_size', is_automatic_size cannot be nil.")
      end
      if @is_inner_mode.nil?
          invalid_properties.push("invalid value for 'is_inner_mode', is_inner_mode cannot be nil.")
      end
      if @shadow.nil?
          invalid_properties.push("invalid value for 'shadow', shadow cannot be nil.")
      end
      if @shape_properties.nil?
          invalid_properties.push("invalid value for 'shape_properties', shape_properties cannot be nil.")
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

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @is_auto_text.nil?
      return false if @is_deleted.nil?
      return false if @linked_source.nil?
      return false if @number.nil?
      return false if @number_format.nil?
      return false if @number_format_linked.nil?
      return false if @position.nil?
      return false if @rotation_angle.nil?
      return false if @separator.nil?
      return false if @show_bubble_size.nil?
      return false if @show_category_name.nil?
      return false if @show_legend_key.nil?
      return false if @show_percentage.nil?
      return false if @show_series_name.nil?
      return false if @show_value.nil?
      return false if @text.nil?
      return false if @text_direction.nil?
      return false if @text_horizontal_alignment.nil?
      return false if @text_vertical_alignment.nil?
      return false if @area.nil?
      return false if @auto_scale_font.nil?
      return false if @background_mode.nil?
      return false if @border.nil?
      return false if @font.nil?
      return false if @is_automatic_size.nil?
      return false if @is_inner_mode.nil?
      return false if @shadow.nil?
      return false if @shape_properties.nil?
      return false if @width.nil?
      return false if @height.nil?
      return false if @x.nil?
      return false if @y.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          is_auto_text == o.is_auto_text &&
          is_deleted == o.is_deleted &&
          linked_source == o.linked_source &&
          number == o.number &&
          number_format == o.number_format &&
          number_format_linked == o.number_format_linked &&
          position == o.position &&
          rotation_angle == o.rotation_angle &&
          separator == o.separator &&
          show_bubble_size == o.show_bubble_size &&
          show_category_name == o.show_category_name &&
          show_legend_key == o.show_legend_key &&
          show_percentage == o.show_percentage &&
          show_series_name == o.show_series_name &&
          show_value == o.show_value &&
          text == o.text &&
          text_direction == o.text_direction &&
          text_horizontal_alignment == o.text_horizontal_alignment &&
          text_vertical_alignment == o.text_vertical_alignment &&
          area == o.area &&
          auto_scale_font == o.auto_scale_font &&
          background_mode == o.background_mode &&
          border == o.border &&
          font == o.font &&
          is_automatic_size == o.is_automatic_size &&
          is_inner_mode == o.is_inner_mode &&
          shadow == o.shadow &&
          shape_properties == o.shape_properties &&
          width == o.width &&
          height == o.height &&
          x == o.x &&
          y == o.y 
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
      [ is_auto_text , is_deleted , linked_source , number , number_format , number_format_linked , position , rotation_angle , separator , show_bubble_size , show_category_name , show_legend_key , show_percentage , show_series_name , show_value , text , text_direction , text_horizontal_alignment , text_vertical_alignment , area , auto_scale_font , background_mode , border , font , is_automatic_size , is_inner_mode , shadow , shape_properties , width , height , x , y ].hash
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
