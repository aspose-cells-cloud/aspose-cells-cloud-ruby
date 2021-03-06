=begin
--------------------------------------------------------------------------------------------------------------------
Copyright (c) 2021 Aspose.Cells Cloud
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

  class Worksheet
    # Gets the index of sheet in the worksheets collection.             
    attr_accessor :index

    attr_accessor :pictures

    attr_accessor :charts

    attr_accessor :comments

    attr_accessor :hyperlinks

    # Represents if the worksheet is visible.             
    attr_accessor :is_visible

    # Gets and sets the view type.
    attr_accessor :view_type

    # Represents worksheet type
    attr_accessor :type

    # Gets or sets a value indicating whether the gridelines are visible.Default     is true.
    attr_accessor :is_gridlines_visible

    # Gets or sets a value indicating whether the worksheet will display row and column headers.Default is true.             
    attr_accessor :is_row_column_headers_visible

    # Indications the specified worksheet is shown in normal view or page break preview.
    attr_accessor :is_page_break_preview

    # True if zero values are displayed.
    attr_accessor :display_zeros

    # Flag indicating whether the Transition Formula Evaluation (Lotus compatibility) option is enabled.             
    attr_accessor :transition_evaluation

    # Indicates if the specified worksheet is displayed from right to left instead    of from left to right.  Default is false.             
    attr_accessor :display_right_to_left

    # Represents first visible column index.
    attr_accessor :first_visible_column

    attr_accessor :ole_objects

    # Indicates whether show outline.             
    attr_accessor :is_outline_shown

    # Gets or sets the name of the worksheet.             
    attr_accessor :name

    attr_accessor :auto_shapes

    attr_accessor :cells

    attr_accessor :validations

    # Represents the scaling factor in percent. It should be btween 10 and 400.             
    attr_accessor :zoom

    attr_accessor :conditional_formattings

    # Indicates whether this worksheet is selected when the workbook is opened.
    attr_accessor :is_selected

    # Represents worksheet tab color.
    attr_accessor :tab_color

    # Represents first visible row index.             
    attr_accessor :first_visible_row

    # Flag indicating whether the Transition Formula Entry (Lotus compatibility) option is enabled.
    attr_accessor :transition_entry

    # Indicates the state for this sheet visibility             
    attr_accessor :visibility_type

    # Indicates whether the ruler is visible. Only apply for page break preview.
    attr_accessor :is_ruler_visible

    attr_accessor :links

    # Indicates if the worksheet is protected.
    attr_accessor :is_protected

    attr_accessor :merged_cells


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'index' => :'Index',
        :'pictures' => :'Pictures',
        :'charts' => :'Charts',
        :'comments' => :'Comments',
        :'hyperlinks' => :'Hyperlinks',
        :'is_visible' => :'IsVisible',
        :'view_type' => :'ViewType',
        :'type' => :'Type',
        :'is_gridlines_visible' => :'IsGridlinesVisible',
        :'is_row_column_headers_visible' => :'IsRowColumnHeadersVisible',
        :'is_page_break_preview' => :'IsPageBreakPreview',
        :'display_zeros' => :'DisplayZeros',
        :'transition_evaluation' => :'TransitionEvaluation',
        :'display_right_to_left' => :'DisplayRightToLeft',
        :'first_visible_column' => :'FirstVisibleColumn',
        :'ole_objects' => :'OleObjects',
        :'is_outline_shown' => :'IsOutlineShown',
        :'name' => :'Name',
        :'auto_shapes' => :'AutoShapes',
        :'cells' => :'Cells',
        :'validations' => :'Validations',
        :'zoom' => :'Zoom',
        :'conditional_formattings' => :'ConditionalFormattings',
        :'is_selected' => :'IsSelected',
        :'tab_color' => :'TabColor',
        :'first_visible_row' => :'FirstVisibleRow',
        :'transition_entry' => :'TransitionEntry',
        :'visibility_type' => :'VisibilityType',
        :'is_ruler_visible' => :'IsRulerVisible',
        :'links' => :'Links',
        :'is_protected' => :'IsProtected',
        :'merged_cells' => :'MergedCells'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'index' => :'Integer',
        :'pictures' => :'LinkElement',
        :'charts' => :'LinkElement',
        :'comments' => :'LinkElement',
        :'hyperlinks' => :'LinkElement',
        :'is_visible' => :'BOOLEAN',
        :'view_type' => :'String',
        :'type' => :'String',
        :'is_gridlines_visible' => :'BOOLEAN',
        :'is_row_column_headers_visible' => :'BOOLEAN',
        :'is_page_break_preview' => :'BOOLEAN',
        :'display_zeros' => :'BOOLEAN',
        :'transition_evaluation' => :'BOOLEAN',
        :'display_right_to_left' => :'BOOLEAN',
        :'first_visible_column' => :'Integer',
        :'ole_objects' => :'LinkElement',
        :'is_outline_shown' => :'BOOLEAN',
        :'name' => :'String',
        :'auto_shapes' => :'LinkElement',
        :'cells' => :'LinkElement',
        :'validations' => :'LinkElement',
        :'zoom' => :'Integer',
        :'conditional_formattings' => :'LinkElement',
        :'is_selected' => :'BOOLEAN',
        :'tab_color' => :'Color',
        :'first_visible_row' => :'Integer',
        :'transition_entry' => :'BOOLEAN',
        :'visibility_type' => :'String',
        :'is_ruler_visible' => :'BOOLEAN',
        :'links' => :'Array<Link>',
        :'is_protected' => :'BOOLEAN',
        :'merged_cells' => :'LinkElement'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Index')
        self.index = attributes[:'Index']
      end

      if attributes.has_key?(:'Pictures')
        self.pictures = attributes[:'Pictures']
      end

      if attributes.has_key?(:'Charts')
        self.charts = attributes[:'Charts']
      end

      if attributes.has_key?(:'Comments')
        self.comments = attributes[:'Comments']
      end

      if attributes.has_key?(:'Hyperlinks')
        self.hyperlinks = attributes[:'Hyperlinks']
      end

      if attributes.has_key?(:'IsVisible')
        self.is_visible = attributes[:'IsVisible']
      end

      if attributes.has_key?(:'ViewType')
        self.view_type = attributes[:'ViewType']
      end

      if attributes.has_key?(:'Type')
        self.type = attributes[:'Type']
      end

      if attributes.has_key?(:'IsGridlinesVisible')
        self.is_gridlines_visible = attributes[:'IsGridlinesVisible']
      end

      if attributes.has_key?(:'IsRowColumnHeadersVisible')
        self.is_row_column_headers_visible = attributes[:'IsRowColumnHeadersVisible']
      end

      if attributes.has_key?(:'IsPageBreakPreview')
        self.is_page_break_preview = attributes[:'IsPageBreakPreview']
      end

      if attributes.has_key?(:'DisplayZeros')
        self.display_zeros = attributes[:'DisplayZeros']
      end

      if attributes.has_key?(:'TransitionEvaluation')
        self.transition_evaluation = attributes[:'TransitionEvaluation']
      end

      if attributes.has_key?(:'DisplayRightToLeft')
        self.display_right_to_left = attributes[:'DisplayRightToLeft']
      end

      if attributes.has_key?(:'FirstVisibleColumn')
        self.first_visible_column = attributes[:'FirstVisibleColumn']
      end

      if attributes.has_key?(:'OleObjects')
        self.ole_objects = attributes[:'OleObjects']
      end

      if attributes.has_key?(:'IsOutlineShown')
        self.is_outline_shown = attributes[:'IsOutlineShown']
      end

      if attributes.has_key?(:'Name')
        self.name = attributes[:'Name']
      end

      if attributes.has_key?(:'AutoShapes')
        self.auto_shapes = attributes[:'AutoShapes']
      end

      if attributes.has_key?(:'Cells')
        self.cells = attributes[:'Cells']
      end

      if attributes.has_key?(:'Validations')
        self.validations = attributes[:'Validations']
      end

      if attributes.has_key?(:'Zoom')
        self.zoom = attributes[:'Zoom']
      end

      if attributes.has_key?(:'ConditionalFormattings')
        self.conditional_formattings = attributes[:'ConditionalFormattings']
      end

      if attributes.has_key?(:'IsSelected')
        self.is_selected = attributes[:'IsSelected']
      end

      if attributes.has_key?(:'TabColor')
        self.tab_color = attributes[:'TabColor']
      end

      if attributes.has_key?(:'FirstVisibleRow')
        self.first_visible_row = attributes[:'FirstVisibleRow']
      end

      if attributes.has_key?(:'TransitionEntry')
        self.transition_entry = attributes[:'TransitionEntry']
      end

      if attributes.has_key?(:'VisibilityType')
        self.visibility_type = attributes[:'VisibilityType']
      end

      if attributes.has_key?(:'IsRulerVisible')
        self.is_ruler_visible = attributes[:'IsRulerVisible']
      end

      if attributes.has_key?(:'Links')
        if (value = attributes[:'Links']).is_a?(Array)
          self.links = value
        end
      end

      if attributes.has_key?(:'IsProtected')
        self.is_protected = attributes[:'IsProtected']
      end

      if attributes.has_key?(:'MergedCells')
        self.merged_cells = attributes[:'MergedCells']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @index.nil?
        invalid_properties.push("invalid value for 'index', index cannot be nil.")
      end

      if @is_protected.nil?
        invalid_properties.push("invalid value for 'is_protected', is_protected cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @index.nil?
      return false if @is_protected.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          index == o.index &&
          pictures == o.pictures &&
          charts == o.charts &&
          comments == o.comments &&
          hyperlinks == o.hyperlinks &&
          is_visible == o.is_visible &&
          view_type == o.view_type &&
          type == o.type &&
          is_gridlines_visible == o.is_gridlines_visible &&
          is_row_column_headers_visible == o.is_row_column_headers_visible &&
          is_page_break_preview == o.is_page_break_preview &&
          display_zeros == o.display_zeros &&
          transition_evaluation == o.transition_evaluation &&
          display_right_to_left == o.display_right_to_left &&
          first_visible_column == o.first_visible_column &&
          ole_objects == o.ole_objects &&
          is_outline_shown == o.is_outline_shown &&
          name == o.name &&
          auto_shapes == o.auto_shapes &&
          cells == o.cells &&
          validations == o.validations &&
          zoom == o.zoom &&
          conditional_formattings == o.conditional_formattings &&
          is_selected == o.is_selected &&
          tab_color == o.tab_color &&
          first_visible_row == o.first_visible_row &&
          transition_entry == o.transition_entry &&
          visibility_type == o.visibility_type &&
          is_ruler_visible == o.is_ruler_visible &&
          links == o.links &&
          is_protected == o.is_protected &&
          merged_cells == o.merged_cells
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [index, pictures, charts, comments, hyperlinks, is_visible, view_type, type, is_gridlines_visible, is_row_column_headers_visible, is_page_break_preview, display_zeros, transition_evaluation, display_right_to_left, first_visible_column, ole_objects, is_outline_shown, name, auto_shapes, cells, validations, zoom, conditional_formattings, is_selected, tab_color, first_visible_row, transition_entry, visibility_type, is_ruler_visible, links, is_protected, merged_cells].hash
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
