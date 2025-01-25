=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Worksheetrb.cs">
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

  class Worksheet
        #            
        attr_accessor :links
        #Indicates if the specified worksheet is displayed from right to left instead of from left to right.            Default is false.             
        attr_accessor :display_right_to_left
        #True if zero values are displayed.             
        attr_accessor :display_zeros
        #Represents first visible column index.             
        attr_accessor :first_visible_column
        #Represents first visible row index.             
        attr_accessor :first_visible_row
        #Gets or sets the name of the worksheet.             
        attr_accessor :name
        #Gets the index of sheet in the worksheet collection.             
        attr_accessor :index
        #Gets or sets a value indicating whether the gridlines are visible.Default is true.             
        attr_accessor :is_gridlines_visible
        #Indicates whether to show outline.             
        attr_accessor :is_outline_shown
        #Indicates whether the specified worksheet is shown in normal view or page break preview.             
        attr_accessor :is_page_break_preview
        #Represents if the worksheet is visible.             
        attr_accessor :is_visible
        #Indicates if the worksheet is protected.             
        attr_accessor :is_protected
        #Gets or sets a value indicating whether the worksheet will display row and column headers.            Default is true.             
        attr_accessor :is_row_column_headers_visible
        #Indicates whether the ruler is visible. This property is only applied for page break preview.             
        attr_accessor :is_ruler_visible
        #Indicates whether this worksheet is selected when the workbook is opened.             
        attr_accessor :is_selected
        #Represents worksheet tab color.             
        attr_accessor :tab_color
        #Indicates whether the Transition Formula Entry (Lotus compatibility) option is enabled.             
        attr_accessor :transition_entry
        #Indicates whether the Transition Formula Evaluation (Lotus compatibility) option is enabled.             
        attr_accessor :transition_evaluation
        #Represents worksheet type.             
        attr_accessor :type
        #Gets and sets the view type.             
        attr_accessor :view_type
        #Indicates the visible state for this sheet.             
        attr_accessor :visibility_type
        #Represents the scaling factor in percentage. It should be between 10 and 400.             
        attr_accessor :zoom
        #Gets the  collection.             
        attr_accessor :cells
        #Gets a  collection             
        attr_accessor :charts
        #            
        attr_accessor :auto_shapes
        #Represents a collection of  in a worksheet.             
        attr_accessor :ole_objects
        #Gets the  collection.             
        attr_accessor :comments
        #Gets a  collection.             
        attr_accessor :pictures
        #            
        attr_accessor :merged_cells
        #Gets the data validation setting collection in the worksheet.             
        attr_accessor :validations
        #Gets the ConditionalFormattings in the worksheet.             
        attr_accessor :conditional_formattings
        #Gets the  collection.             
        attr_accessor :hyperlinks

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'links' => :'Links',
        :'display_right_to_left' => :'DisplayRightToLeft',
        :'display_zeros' => :'DisplayZeros',
        :'first_visible_column' => :'FirstVisibleColumn',
        :'first_visible_row' => :'FirstVisibleRow',
        :'name' => :'Name',
        :'index' => :'Index',
        :'is_gridlines_visible' => :'IsGridlinesVisible',
        :'is_outline_shown' => :'IsOutlineShown',
        :'is_page_break_preview' => :'IsPageBreakPreview',
        :'is_visible' => :'IsVisible',
        :'is_protected' => :'IsProtected',
        :'is_row_column_headers_visible' => :'IsRowColumnHeadersVisible',
        :'is_ruler_visible' => :'IsRulerVisible',
        :'is_selected' => :'IsSelected',
        :'tab_color' => :'TabColor',
        :'transition_entry' => :'TransitionEntry',
        :'transition_evaluation' => :'TransitionEvaluation',
        :'type' => :'Type',
        :'view_type' => :'ViewType',
        :'visibility_type' => :'VisibilityType',
        :'zoom' => :'Zoom',
        :'cells' => :'Cells',
        :'charts' => :'Charts',
        :'auto_shapes' => :'AutoShapes',
        :'ole_objects' => :'OleObjects',
        :'comments' => :'Comments',
        :'pictures' => :'Pictures',
        :'merged_cells' => :'MergedCells',
        :'validations' => :'Validations',
        :'conditional_formattings' => :'ConditionalFormattings',
        :'hyperlinks' => :'Hyperlinks'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'links' => :'Array<Link>',
        :'display_right_to_left' => :'BOOLEAN',
        :'display_zeros' => :'BOOLEAN',
        :'first_visible_column' => :'Integer',
        :'first_visible_row' => :'Integer',
        :'name' => :'String',
        :'index' => :'Integer',
        :'is_gridlines_visible' => :'BOOLEAN',
        :'is_outline_shown' => :'BOOLEAN',
        :'is_page_break_preview' => :'BOOLEAN',
        :'is_visible' => :'BOOLEAN',
        :'is_protected' => :'BOOLEAN',
        :'is_row_column_headers_visible' => :'BOOLEAN',
        :'is_ruler_visible' => :'BOOLEAN',
        :'is_selected' => :'BOOLEAN',
        :'tab_color' => :'Color',
        :'transition_entry' => :'BOOLEAN',
        :'transition_evaluation' => :'BOOLEAN',
        :'type' => :'String',
        :'view_type' => :'String',
        :'visibility_type' => :'String',
        :'zoom' => :'Integer',
        :'cells' => :'LinkElement',
        :'charts' => :'LinkElement',
        :'auto_shapes' => :'LinkElement',
        :'ole_objects' => :'LinkElement',
        :'comments' => :'LinkElement',
        :'pictures' => :'LinkElement',
        :'merged_cells' => :'LinkElement',
        :'validations' => :'LinkElement',
        :'conditional_formattings' => :'LinkElement',
        :'hyperlinks' => :'LinkElement'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Links')
          self.links = attributes[:'Links']
      end
      if attributes.has_key?(:'DisplayRightToLeft')
          self.display_right_to_left = attributes[:'DisplayRightToLeft']
      end
      if attributes.has_key?(:'DisplayZeros')
          self.display_zeros = attributes[:'DisplayZeros']
      end
      if attributes.has_key?(:'FirstVisibleColumn')
          self.first_visible_column = attributes[:'FirstVisibleColumn']
      end
      if attributes.has_key?(:'FirstVisibleRow')
          self.first_visible_row = attributes[:'FirstVisibleRow']
      end
      if attributes.has_key?(:'Name')
          self.name = attributes[:'Name']
      end
      if attributes.has_key?(:'Index')
          self.index = attributes[:'Index']
      end
      if attributes.has_key?(:'IsGridlinesVisible')
          self.is_gridlines_visible = attributes[:'IsGridlinesVisible']
      end
      if attributes.has_key?(:'IsOutlineShown')
          self.is_outline_shown = attributes[:'IsOutlineShown']
      end
      if attributes.has_key?(:'IsPageBreakPreview')
          self.is_page_break_preview = attributes[:'IsPageBreakPreview']
      end
      if attributes.has_key?(:'IsVisible')
          self.is_visible = attributes[:'IsVisible']
      end
      if attributes.has_key?(:'IsProtected')
          self.is_protected = attributes[:'IsProtected']
      end
      if attributes.has_key?(:'IsRowColumnHeadersVisible')
          self.is_row_column_headers_visible = attributes[:'IsRowColumnHeadersVisible']
      end
      if attributes.has_key?(:'IsRulerVisible')
          self.is_ruler_visible = attributes[:'IsRulerVisible']
      end
      if attributes.has_key?(:'IsSelected')
          self.is_selected = attributes[:'IsSelected']
      end
      if attributes.has_key?(:'TabColor')
          self.tab_color = attributes[:'TabColor']
      end
      if attributes.has_key?(:'TransitionEntry')
          self.transition_entry = attributes[:'TransitionEntry']
      end
      if attributes.has_key?(:'TransitionEvaluation')
          self.transition_evaluation = attributes[:'TransitionEvaluation']
      end
      if attributes.has_key?(:'Type')
          self.type = attributes[:'Type']
      end
      if attributes.has_key?(:'ViewType')
          self.view_type = attributes[:'ViewType']
      end
      if attributes.has_key?(:'VisibilityType')
          self.visibility_type = attributes[:'VisibilityType']
      end
      if attributes.has_key?(:'Zoom')
          self.zoom = attributes[:'Zoom']
      end
      if attributes.has_key?(:'Cells')
          self.cells = attributes[:'Cells']
      end
      if attributes.has_key?(:'Charts')
          self.charts = attributes[:'Charts']
      end
      if attributes.has_key?(:'AutoShapes')
          self.auto_shapes = attributes[:'AutoShapes']
      end
      if attributes.has_key?(:'OleObjects')
          self.ole_objects = attributes[:'OleObjects']
      end
      if attributes.has_key?(:'Comments')
          self.comments = attributes[:'Comments']
      end
      if attributes.has_key?(:'Pictures')
          self.pictures = attributes[:'Pictures']
      end
      if attributes.has_key?(:'MergedCells')
          self.merged_cells = attributes[:'MergedCells']
      end
      if attributes.has_key?(:'Validations')
          self.validations = attributes[:'Validations']
      end
      if attributes.has_key?(:'ConditionalFormattings')
          self.conditional_formattings = attributes[:'ConditionalFormattings']
      end
      if attributes.has_key?(:'Hyperlinks')
          self.hyperlinks = attributes[:'Hyperlinks']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @links.nil?
          invalid_properties.push("invalid value for 'links', links cannot be nil.")
      end
      if @display_right_to_left.nil?
          invalid_properties.push("invalid value for 'display_right_to_left', display_right_to_left cannot be nil.")
      end
      if @display_zeros.nil?
          invalid_properties.push("invalid value for 'display_zeros', display_zeros cannot be nil.")
      end
      if @first_visible_column.nil?
          invalid_properties.push("invalid value for 'first_visible_column', first_visible_column cannot be nil.")
      end
      if @first_visible_row.nil?
          invalid_properties.push("invalid value for 'first_visible_row', first_visible_row cannot be nil.")
      end
      if @name.nil?
          invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end
      if @index.nil?
          invalid_properties.push("invalid value for 'index', index cannot be nil.")
      end
      if @is_gridlines_visible.nil?
          invalid_properties.push("invalid value for 'is_gridlines_visible', is_gridlines_visible cannot be nil.")
      end
      if @is_outline_shown.nil?
          invalid_properties.push("invalid value for 'is_outline_shown', is_outline_shown cannot be nil.")
      end
      if @is_page_break_preview.nil?
          invalid_properties.push("invalid value for 'is_page_break_preview', is_page_break_preview cannot be nil.")
      end
      if @is_visible.nil?
          invalid_properties.push("invalid value for 'is_visible', is_visible cannot be nil.")
      end
      if @is_protected.nil?
          invalid_properties.push("invalid value for 'is_protected', is_protected cannot be nil.")
      end
      if @is_row_column_headers_visible.nil?
          invalid_properties.push("invalid value for 'is_row_column_headers_visible', is_row_column_headers_visible cannot be nil.")
      end
      if @is_ruler_visible.nil?
          invalid_properties.push("invalid value for 'is_ruler_visible', is_ruler_visible cannot be nil.")
      end
      if @is_selected.nil?
          invalid_properties.push("invalid value for 'is_selected', is_selected cannot be nil.")
      end
      if @tab_color.nil?
          invalid_properties.push("invalid value for 'tab_color', tab_color cannot be nil.")
      end
      if @transition_entry.nil?
          invalid_properties.push("invalid value for 'transition_entry', transition_entry cannot be nil.")
      end
      if @transition_evaluation.nil?
          invalid_properties.push("invalid value for 'transition_evaluation', transition_evaluation cannot be nil.")
      end
      if @type.nil?
          invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end
      if @view_type.nil?
          invalid_properties.push("invalid value for 'view_type', view_type cannot be nil.")
      end
      if @visibility_type.nil?
          invalid_properties.push("invalid value for 'visibility_type', visibility_type cannot be nil.")
      end
      if @zoom.nil?
          invalid_properties.push("invalid value for 'zoom', zoom cannot be nil.")
      end
      if @cells.nil?
          invalid_properties.push("invalid value for 'cells', cells cannot be nil.")
      end
      if @charts.nil?
          invalid_properties.push("invalid value for 'charts', charts cannot be nil.")
      end
      if @auto_shapes.nil?
          invalid_properties.push("invalid value for 'auto_shapes', auto_shapes cannot be nil.")
      end
      if @ole_objects.nil?
          invalid_properties.push("invalid value for 'ole_objects', ole_objects cannot be nil.")
      end
      if @comments.nil?
          invalid_properties.push("invalid value for 'comments', comments cannot be nil.")
      end
      if @pictures.nil?
          invalid_properties.push("invalid value for 'pictures', pictures cannot be nil.")
      end
      if @merged_cells.nil?
          invalid_properties.push("invalid value for 'merged_cells', merged_cells cannot be nil.")
      end
      if @validations.nil?
          invalid_properties.push("invalid value for 'validations', validations cannot be nil.")
      end
      if @conditional_formattings.nil?
          invalid_properties.push("invalid value for 'conditional_formattings', conditional_formattings cannot be nil.")
      end
      if @hyperlinks.nil?
          invalid_properties.push("invalid value for 'hyperlinks', hyperlinks cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @links.nil?
      return false if @display_right_to_left.nil?
      return false if @display_zeros.nil?
      return false if @first_visible_column.nil?
      return false if @first_visible_row.nil?
      return false if @name.nil?
      return false if @index.nil?
      return false if @is_gridlines_visible.nil?
      return false if @is_outline_shown.nil?
      return false if @is_page_break_preview.nil?
      return false if @is_visible.nil?
      return false if @is_protected.nil?
      return false if @is_row_column_headers_visible.nil?
      return false if @is_ruler_visible.nil?
      return false if @is_selected.nil?
      return false if @tab_color.nil?
      return false if @transition_entry.nil?
      return false if @transition_evaluation.nil?
      return false if @type.nil?
      return false if @view_type.nil?
      return false if @visibility_type.nil?
      return false if @zoom.nil?
      return false if @cells.nil?
      return false if @charts.nil?
      return false if @auto_shapes.nil?
      return false if @ole_objects.nil?
      return false if @comments.nil?
      return false if @pictures.nil?
      return false if @merged_cells.nil?
      return false if @validations.nil?
      return false if @conditional_formattings.nil?
      return false if @hyperlinks.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          links == o.links &&
          display_right_to_left == o.display_right_to_left &&
          display_zeros == o.display_zeros &&
          first_visible_column == o.first_visible_column &&
          first_visible_row == o.first_visible_row &&
          name == o.name &&
          index == o.index &&
          is_gridlines_visible == o.is_gridlines_visible &&
          is_outline_shown == o.is_outline_shown &&
          is_page_break_preview == o.is_page_break_preview &&
          is_visible == o.is_visible &&
          is_protected == o.is_protected &&
          is_row_column_headers_visible == o.is_row_column_headers_visible &&
          is_ruler_visible == o.is_ruler_visible &&
          is_selected == o.is_selected &&
          tab_color == o.tab_color &&
          transition_entry == o.transition_entry &&
          transition_evaluation == o.transition_evaluation &&
          type == o.type &&
          view_type == o.view_type &&
          visibility_type == o.visibility_type &&
          zoom == o.zoom &&
          cells == o.cells &&
          charts == o.charts &&
          auto_shapes == o.auto_shapes &&
          ole_objects == o.ole_objects &&
          comments == o.comments &&
          pictures == o.pictures &&
          merged_cells == o.merged_cells &&
          validations == o.validations &&
          conditional_formattings == o.conditional_formattings &&
          hyperlinks == o.hyperlinks 
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
      [ links , display_right_to_left , display_zeros , first_visible_column , first_visible_row , name , index , is_gridlines_visible , is_outline_shown , is_page_break_preview , is_visible , is_protected , is_row_column_headers_visible , is_ruler_visible , is_selected , tab_color , transition_entry , transition_evaluation , type , view_type , visibility_type , zoom , cells , charts , auto_shapes , ole_objects , comments , pictures , merged_cells , validations , conditional_formattings , hyperlinks ].hash
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
