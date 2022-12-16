=begin
--------------------------------------------------------------------------------------------------------------------
Copyright (c) 2022 Aspose.Cells Cloud
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
--------------------------------------------------------------------------------------------------------------------

=end

require 'date'

module AsposeCellsCloud

  class Axis
    attr_accessor :area

    #  
    attr_accessor :axis_between_categories

    # 
    attr_accessor :axis_line

    #  
    attr_accessor :base_unit_scale

    #  
    attr_accessor :category_type

    #  
    attr_accessor :cross_at

    #  
    attr_accessor :cross_type

    #  
    attr_accessor :display_unit

    #  
    attr_accessor :has_multi_level_labels

    #  
    attr_accessor :is_automatic_max_value

    #  
    attr_accessor :is_automatic_minor_unit

    #  
    attr_accessor :is_automatic_min_value

    #  
    attr_accessor :is_display_unit_label_shown

    #  
    attr_accessor :is_automatic_major_unit

    #  
    attr_accessor :is_logarithmic

    #  
    attr_accessor :is_plot_order_reversed

    #  
    attr_accessor :is_visible

    #  
    attr_accessor :log_base

    # 
    attr_accessor :major_grid_lines

    #  
    attr_accessor :major_tick_mark

    #  
    attr_accessor :major_unit

    #  
    attr_accessor :major_unit_scale

    #  
    attr_accessor :max_value

    # 
    attr_accessor :minor_grid_lines

    #  
    attr_accessor :minor_tick_mark

    #  
    attr_accessor :minor_unit

    #  
    attr_accessor :minor_unit_scale

    #  
    attr_accessor :min_value

    #  
    attr_accessor :tick_label_position

    # 
    attr_accessor :tick_labels

    attr_accessor :tick_label_spacing

    attr_accessor :tick_mark_spacing

    # 
    attr_accessor :title


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'area' => :'Area',
        :'axis_between_categories' => :'AxisBetweenCategories',
        :'axis_line' => :'AxisLine',
        :'base_unit_scale' => :'BaseUnitScale',
        :'category_type' => :'CategoryType',
        :'cross_at' => :'CrossAt',
        :'cross_type' => :'CrossType',
        :'display_unit' => :'DisplayUnit',
        :'has_multi_level_labels' => :'HasMultiLevelLabels',
        :'is_automatic_max_value' => :'IsAutomaticMaxValue',
        :'is_automatic_minor_unit' => :'IsAutomaticMinorUnit',
        :'is_automatic_min_value' => :'IsAutomaticMinValue',
        :'is_display_unit_label_shown' => :'IsDisplayUnitLabelShown',
        :'is_automatic_major_unit' => :'IsAutomaticMajorUnit',
        :'is_logarithmic' => :'IsLogarithmic',
        :'is_plot_order_reversed' => :'IsPlotOrderReversed',
        :'is_visible' => :'IsVisible',
        :'log_base' => :'LogBase',
        :'major_grid_lines' => :'MajorGridLines',
        :'major_tick_mark' => :'MajorTickMark',
        :'major_unit' => :'MajorUnit',
        :'major_unit_scale' => :'MajorUnitScale',
        :'max_value' => :'MaxValue',
        :'minor_grid_lines' => :'MinorGridLines',
        :'minor_tick_mark' => :'MinorTickMark',
        :'minor_unit' => :'MinorUnit',
        :'minor_unit_scale' => :'MinorUnitScale',
        :'min_value' => :'MinValue',
        :'tick_label_position' => :'TickLabelPosition',
        :'tick_labels' => :'TickLabels',
        :'tick_label_spacing' => :'TickLabelSpacing',
        :'tick_mark_spacing' => :'TickMarkSpacing',
        :'title' => :'Title'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'area' => :'Area',
        :'axis_between_categories' => :'BOOLEAN',
        :'axis_line' => :'Area',
        :'base_unit_scale' => :'String',
        :'category_type' => :'String',
        :'cross_at' => :'Float',
        :'cross_type' => :'String',
        :'display_unit' => :'String',
        :'has_multi_level_labels' => :'BOOLEAN',
        :'is_automatic_max_value' => :'BOOLEAN',
        :'is_automatic_minor_unit' => :'BOOLEAN',
        :'is_automatic_min_value' => :'BOOLEAN',
        :'is_display_unit_label_shown' => :'BOOLEAN',
        :'is_automatic_major_unit' => :'BOOLEAN',
        :'is_logarithmic' => :'BOOLEAN',
        :'is_plot_order_reversed' => :'BOOLEAN',
        :'is_visible' => :'BOOLEAN',
        :'log_base' => :'Float',
        :'major_grid_lines' => :'Line',
        :'major_tick_mark' => :'String',
        :'major_unit' => :'Float',
        :'major_unit_scale' => :'String',
        :'max_value' => :'Float',
        :'minor_grid_lines' => :'Line',
        :'minor_tick_mark' => :'String',
        :'minor_unit' => :'Float',
        :'minor_unit_scale' => :'String',
        :'min_value' => :'Float',
        :'tick_label_position' => :'String',
        :'tick_labels' => :'TickLabels',
        :'tick_label_spacing' => :'Integer',
        :'tick_mark_spacing' => :'Integer',
        :'title' => :'Title'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Area')
        self.area = attributes[:'Area']
      end

      if attributes.has_key?(:'AxisBetweenCategories')
        self.axis_between_categories = attributes[:'AxisBetweenCategories']
      end

      if attributes.has_key?(:'AxisLine')
        self.axis_line = attributes[:'AxisLine']
      end

      if attributes.has_key?(:'BaseUnitScale')
        self.base_unit_scale = attributes[:'BaseUnitScale']
      end

      if attributes.has_key?(:'CategoryType')
        self.category_type = attributes[:'CategoryType']
      end

      if attributes.has_key?(:'CrossAt')
        self.cross_at = attributes[:'CrossAt']
      end

      if attributes.has_key?(:'CrossType')
        self.cross_type = attributes[:'CrossType']
      end

      if attributes.has_key?(:'DisplayUnit')
        self.display_unit = attributes[:'DisplayUnit']
      end

      if attributes.has_key?(:'HasMultiLevelLabels')
        self.has_multi_level_labels = attributes[:'HasMultiLevelLabels']
      end

      if attributes.has_key?(:'IsAutomaticMaxValue')
        self.is_automatic_max_value = attributes[:'IsAutomaticMaxValue']
      end

      if attributes.has_key?(:'IsAutomaticMinorUnit')
        self.is_automatic_minor_unit = attributes[:'IsAutomaticMinorUnit']
      end

      if attributes.has_key?(:'IsAutomaticMinValue')
        self.is_automatic_min_value = attributes[:'IsAutomaticMinValue']
      end

      if attributes.has_key?(:'IsDisplayUnitLabelShown')
        self.is_display_unit_label_shown = attributes[:'IsDisplayUnitLabelShown']
      end

      if attributes.has_key?(:'IsAutomaticMajorUnit')
        self.is_automatic_major_unit = attributes[:'IsAutomaticMajorUnit']
      end

      if attributes.has_key?(:'IsLogarithmic')
        self.is_logarithmic = attributes[:'IsLogarithmic']
      end

      if attributes.has_key?(:'IsPlotOrderReversed')
        self.is_plot_order_reversed = attributes[:'IsPlotOrderReversed']
      end

      if attributes.has_key?(:'IsVisible')
        self.is_visible = attributes[:'IsVisible']
      end

      if attributes.has_key?(:'LogBase')
        self.log_base = attributes[:'LogBase']
      end

      if attributes.has_key?(:'MajorGridLines')
        self.major_grid_lines = attributes[:'MajorGridLines']
      end

      if attributes.has_key?(:'MajorTickMark')
        self.major_tick_mark = attributes[:'MajorTickMark']
      end

      if attributes.has_key?(:'MajorUnit')
        self.major_unit = attributes[:'MajorUnit']
      end

      if attributes.has_key?(:'MajorUnitScale')
        self.major_unit_scale = attributes[:'MajorUnitScale']
      end

      if attributes.has_key?(:'MaxValue')
        self.max_value = attributes[:'MaxValue']
      end

      if attributes.has_key?(:'MinorGridLines')
        self.minor_grid_lines = attributes[:'MinorGridLines']
      end

      if attributes.has_key?(:'MinorTickMark')
        self.minor_tick_mark = attributes[:'MinorTickMark']
      end

      if attributes.has_key?(:'MinorUnit')
        self.minor_unit = attributes[:'MinorUnit']
      end

      if attributes.has_key?(:'MinorUnitScale')
        self.minor_unit_scale = attributes[:'MinorUnitScale']
      end

      if attributes.has_key?(:'MinValue')
        self.min_value = attributes[:'MinValue']
      end

      if attributes.has_key?(:'TickLabelPosition')
        self.tick_label_position = attributes[:'TickLabelPosition']
      end

      if attributes.has_key?(:'TickLabels')
        self.tick_labels = attributes[:'TickLabels']
      end

      if attributes.has_key?(:'TickLabelSpacing')
        self.tick_label_spacing = attributes[:'TickLabelSpacing']
      end

      if attributes.has_key?(:'TickMarkSpacing')
        self.tick_mark_spacing = attributes[:'TickMarkSpacing']
      end

      if attributes.has_key?(:'Title')
        self.title = attributes[:'Title']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          area == o.area &&
          axis_between_categories == o.axis_between_categories &&
          axis_line == o.axis_line &&
          base_unit_scale == o.base_unit_scale &&
          category_type == o.category_type &&
          cross_at == o.cross_at &&
          cross_type == o.cross_type &&
          display_unit == o.display_unit &&
          has_multi_level_labels == o.has_multi_level_labels &&
          is_automatic_max_value == o.is_automatic_max_value &&
          is_automatic_minor_unit == o.is_automatic_minor_unit &&
          is_automatic_min_value == o.is_automatic_min_value &&
          is_display_unit_label_shown == o.is_display_unit_label_shown &&
          is_automatic_major_unit == o.is_automatic_major_unit &&
          is_logarithmic == o.is_logarithmic &&
          is_plot_order_reversed == o.is_plot_order_reversed &&
          is_visible == o.is_visible &&
          log_base == o.log_base &&
          major_grid_lines == o.major_grid_lines &&
          major_tick_mark == o.major_tick_mark &&
          major_unit == o.major_unit &&
          major_unit_scale == o.major_unit_scale &&
          max_value == o.max_value &&
          minor_grid_lines == o.minor_grid_lines &&
          minor_tick_mark == o.minor_tick_mark &&
          minor_unit == o.minor_unit &&
          minor_unit_scale == o.minor_unit_scale &&
          min_value == o.min_value &&
          tick_label_position == o.tick_label_position &&
          tick_labels == o.tick_labels &&
          tick_label_spacing == o.tick_label_spacing &&
          tick_mark_spacing == o.tick_mark_spacing &&
          title == o.title
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [area, axis_between_categories, axis_line, base_unit_scale, category_type, cross_at, cross_type, display_unit, has_multi_level_labels, is_automatic_max_value, is_automatic_minor_unit, is_automatic_min_value, is_display_unit_label_shown, is_automatic_major_unit, is_logarithmic, is_plot_order_reversed, is_visible, log_base, major_grid_lines, major_tick_mark, major_unit, major_unit_scale, max_value, minor_grid_lines, minor_tick_mark, minor_unit, minor_unit_scale, min_value, tick_label_position, tick_labels, tick_label_spacing, tick_mark_spacing, title].hash
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
