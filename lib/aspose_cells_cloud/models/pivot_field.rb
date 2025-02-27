=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PivotFieldrb.cs">
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

  class PivotField
        #Represent the number of top or bottom items            that are automatically shown in the specified PivotTable field.            
        attr_accessor :auto_show_count
        #            
        attr_accessor :auto_show_field
        #            
        attr_accessor :auto_sort_field
        #            
        attr_accessor :base_field
        #            
        attr_accessor :base_index
        #            
        attr_accessor :base_item
        #            
        attr_accessor :base_item_position
        #            
        attr_accessor :current_page_item
        #            
        attr_accessor :data_display_format
        #            
        attr_accessor :display_name
        #            
        attr_accessor :drag_to_column
        #            
        attr_accessor :drag_to_data
        #            
        attr_accessor :drag_to_hide
        #            
        attr_accessor :drag_to_page
        #            
        attr_accessor :drag_to_row
        #            
        attr_accessor :function
        #            
        attr_accessor :insert_blank_row
        #            
        attr_accessor :is_ascend_show
        #            
        attr_accessor :is_ascend_sort
        #            
        attr_accessor :is_auto_show
        #            
        attr_accessor :is_auto_sort
        #            
        attr_accessor :is_auto_subtotals
        #            
        attr_accessor :is_calculated_field
        #            
        attr_accessor :is_include_new_items_in_filter
        #            
        attr_accessor :is_insert_page_breaks_between_items
        #            
        attr_accessor :is_multiple_item_selection_allowed
        #            
        attr_accessor :is_repeat_item_labels
        #            
        attr_accessor :item_count
        #            
        attr_accessor :items
        #            
        attr_accessor :name
        #            
        attr_accessor :number
        #            
        attr_accessor :number_format
        #            
        attr_accessor :original_items
        #            
        attr_accessor :pivot_items
        #            
        attr_accessor :position
        #            
        attr_accessor :show_all_items
        #            
        attr_accessor :show_compact
        #            
        attr_accessor :show_in_outline_form
        #            
        attr_accessor :show_subtotal_at_top

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'auto_show_count' => :'AutoShowCount',
        :'auto_show_field' => :'AutoShowField',
        :'auto_sort_field' => :'AutoSortField',
        :'base_field' => :'BaseField',
        :'base_index' => :'BaseIndex',
        :'base_item' => :'BaseItem',
        :'base_item_position' => :'BaseItemPosition',
        :'current_page_item' => :'CurrentPageItem',
        :'data_display_format' => :'DataDisplayFormat',
        :'display_name' => :'DisplayName',
        :'drag_to_column' => :'DragToColumn',
        :'drag_to_data' => :'DragToData',
        :'drag_to_hide' => :'DragToHide',
        :'drag_to_page' => :'DragToPage',
        :'drag_to_row' => :'DragToRow',
        :'function' => :'Function',
        :'insert_blank_row' => :'InsertBlankRow',
        :'is_ascend_show' => :'IsAscendShow',
        :'is_ascend_sort' => :'IsAscendSort',
        :'is_auto_show' => :'IsAutoShow',
        :'is_auto_sort' => :'IsAutoSort',
        :'is_auto_subtotals' => :'IsAutoSubtotals',
        :'is_calculated_field' => :'IsCalculatedField',
        :'is_include_new_items_in_filter' => :'IsIncludeNewItemsInFilter',
        :'is_insert_page_breaks_between_items' => :'IsInsertPageBreaksBetweenItems',
        :'is_multiple_item_selection_allowed' => :'IsMultipleItemSelectionAllowed',
        :'is_repeat_item_labels' => :'IsRepeatItemLabels',
        :'item_count' => :'ItemCount',
        :'items' => :'Items',
        :'name' => :'Name',
        :'number' => :'Number',
        :'number_format' => :'NumberFormat',
        :'original_items' => :'OriginalItems',
        :'pivot_items' => :'PivotItems',
        :'position' => :'Position',
        :'show_all_items' => :'ShowAllItems',
        :'show_compact' => :'ShowCompact',
        :'show_in_outline_form' => :'ShowInOutlineForm',
        :'show_subtotal_at_top' => :'ShowSubtotalAtTop'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'auto_show_count' => :'Integer',
        :'auto_show_field' => :'Integer',
        :'auto_sort_field' => :'Integer',
        :'base_field' => :'Integer',
        :'base_index' => :'Integer',
        :'base_item' => :'Integer',
        :'base_item_position' => :'String',
        :'current_page_item' => :'Integer',
        :'data_display_format' => :'String',
        :'display_name' => :'String',
        :'drag_to_column' => :'BOOLEAN',
        :'drag_to_data' => :'BOOLEAN',
        :'drag_to_hide' => :'BOOLEAN',
        :'drag_to_page' => :'BOOLEAN',
        :'drag_to_row' => :'BOOLEAN',
        :'function' => :'String',
        :'insert_blank_row' => :'BOOLEAN',
        :'is_ascend_show' => :'BOOLEAN',
        :'is_ascend_sort' => :'BOOLEAN',
        :'is_auto_show' => :'BOOLEAN',
        :'is_auto_sort' => :'BOOLEAN',
        :'is_auto_subtotals' => :'BOOLEAN',
        :'is_calculated_field' => :'BOOLEAN',
        :'is_include_new_items_in_filter' => :'BOOLEAN',
        :'is_insert_page_breaks_between_items' => :'BOOLEAN',
        :'is_multiple_item_selection_allowed' => :'BOOLEAN',
        :'is_repeat_item_labels' => :'BOOLEAN',
        :'item_count' => :'Integer',
        :'items' => :'Array<String>',
        :'name' => :'String',
        :'number' => :'Integer',
        :'number_format' => :'String',
        :'original_items' => :'Array<String>',
        :'pivot_items' => :'Array<PivotItem>',
        :'position' => :'Integer',
        :'show_all_items' => :'BOOLEAN',
        :'show_compact' => :'BOOLEAN',
        :'show_in_outline_form' => :'BOOLEAN',
        :'show_subtotal_at_top' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'AutoShowCount')
          self.auto_show_count = attributes[:'AutoShowCount']
      end
      if attributes.has_key?(:'AutoShowField')
          self.auto_show_field = attributes[:'AutoShowField']
      end
      if attributes.has_key?(:'AutoSortField')
          self.auto_sort_field = attributes[:'AutoSortField']
      end
      if attributes.has_key?(:'BaseField')
          self.base_field = attributes[:'BaseField']
      end
      if attributes.has_key?(:'BaseIndex')
          self.base_index = attributes[:'BaseIndex']
      end
      if attributes.has_key?(:'BaseItem')
          self.base_item = attributes[:'BaseItem']
      end
      if attributes.has_key?(:'BaseItemPosition')
          self.base_item_position = attributes[:'BaseItemPosition']
      end
      if attributes.has_key?(:'CurrentPageItem')
          self.current_page_item = attributes[:'CurrentPageItem']
      end
      if attributes.has_key?(:'DataDisplayFormat')
          self.data_display_format = attributes[:'DataDisplayFormat']
      end
      if attributes.has_key?(:'DisplayName')
          self.display_name = attributes[:'DisplayName']
      end
      if attributes.has_key?(:'DragToColumn')
          self.drag_to_column = attributes[:'DragToColumn']
      end
      if attributes.has_key?(:'DragToData')
          self.drag_to_data = attributes[:'DragToData']
      end
      if attributes.has_key?(:'DragToHide')
          self.drag_to_hide = attributes[:'DragToHide']
      end
      if attributes.has_key?(:'DragToPage')
          self.drag_to_page = attributes[:'DragToPage']
      end
      if attributes.has_key?(:'DragToRow')
          self.drag_to_row = attributes[:'DragToRow']
      end
      if attributes.has_key?(:'Function')
          self.function = attributes[:'Function']
      end
      if attributes.has_key?(:'InsertBlankRow')
          self.insert_blank_row = attributes[:'InsertBlankRow']
      end
      if attributes.has_key?(:'IsAscendShow')
          self.is_ascend_show = attributes[:'IsAscendShow']
      end
      if attributes.has_key?(:'IsAscendSort')
          self.is_ascend_sort = attributes[:'IsAscendSort']
      end
      if attributes.has_key?(:'IsAutoShow')
          self.is_auto_show = attributes[:'IsAutoShow']
      end
      if attributes.has_key?(:'IsAutoSort')
          self.is_auto_sort = attributes[:'IsAutoSort']
      end
      if attributes.has_key?(:'IsAutoSubtotals')
          self.is_auto_subtotals = attributes[:'IsAutoSubtotals']
      end
      if attributes.has_key?(:'IsCalculatedField')
          self.is_calculated_field = attributes[:'IsCalculatedField']
      end
      if attributes.has_key?(:'IsIncludeNewItemsInFilter')
          self.is_include_new_items_in_filter = attributes[:'IsIncludeNewItemsInFilter']
      end
      if attributes.has_key?(:'IsInsertPageBreaksBetweenItems')
          self.is_insert_page_breaks_between_items = attributes[:'IsInsertPageBreaksBetweenItems']
      end
      if attributes.has_key?(:'IsMultipleItemSelectionAllowed')
          self.is_multiple_item_selection_allowed = attributes[:'IsMultipleItemSelectionAllowed']
      end
      if attributes.has_key?(:'IsRepeatItemLabels')
          self.is_repeat_item_labels = attributes[:'IsRepeatItemLabels']
      end
      if attributes.has_key?(:'ItemCount')
          self.item_count = attributes[:'ItemCount']
      end
      if attributes.has_key?(:'Items')
          self.items = attributes[:'Items']
      end
      if attributes.has_key?(:'Name')
          self.name = attributes[:'Name']
      end
      if attributes.has_key?(:'Number')
          self.number = attributes[:'Number']
      end
      if attributes.has_key?(:'NumberFormat')
          self.number_format = attributes[:'NumberFormat']
      end
      if attributes.has_key?(:'OriginalItems')
          self.original_items = attributes[:'OriginalItems']
      end
      if attributes.has_key?(:'PivotItems')
          self.pivot_items = attributes[:'PivotItems']
      end
      if attributes.has_key?(:'Position')
          self.position = attributes[:'Position']
      end
      if attributes.has_key?(:'ShowAllItems')
          self.show_all_items = attributes[:'ShowAllItems']
      end
      if attributes.has_key?(:'ShowCompact')
          self.show_compact = attributes[:'ShowCompact']
      end
      if attributes.has_key?(:'ShowInOutlineForm')
          self.show_in_outline_form = attributes[:'ShowInOutlineForm']
      end
      if attributes.has_key?(:'ShowSubtotalAtTop')
          self.show_subtotal_at_top = attributes[:'ShowSubtotalAtTop']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @auto_show_count.nil?
          invalid_properties.push("invalid value for 'auto_show_count', auto_show_count cannot be nil.")
      end
      if @auto_show_field.nil?
          invalid_properties.push("invalid value for 'auto_show_field', auto_show_field cannot be nil.")
      end
      if @auto_sort_field.nil?
          invalid_properties.push("invalid value for 'auto_sort_field', auto_sort_field cannot be nil.")
      end
      if @base_field.nil?
          invalid_properties.push("invalid value for 'base_field', base_field cannot be nil.")
      end
      if @base_index.nil?
          invalid_properties.push("invalid value for 'base_index', base_index cannot be nil.")
      end
      if @base_item.nil?
          invalid_properties.push("invalid value for 'base_item', base_item cannot be nil.")
      end
      if @base_item_position.nil?
          invalid_properties.push("invalid value for 'base_item_position', base_item_position cannot be nil.")
      end
      if @current_page_item.nil?
          invalid_properties.push("invalid value for 'current_page_item', current_page_item cannot be nil.")
      end
      if @data_display_format.nil?
          invalid_properties.push("invalid value for 'data_display_format', data_display_format cannot be nil.")
      end
      if @display_name.nil?
          invalid_properties.push("invalid value for 'display_name', display_name cannot be nil.")
      end
      if @drag_to_column.nil?
          invalid_properties.push("invalid value for 'drag_to_column', drag_to_column cannot be nil.")
      end
      if @drag_to_data.nil?
          invalid_properties.push("invalid value for 'drag_to_data', drag_to_data cannot be nil.")
      end
      if @drag_to_hide.nil?
          invalid_properties.push("invalid value for 'drag_to_hide', drag_to_hide cannot be nil.")
      end
      if @drag_to_page.nil?
          invalid_properties.push("invalid value for 'drag_to_page', drag_to_page cannot be nil.")
      end
      if @drag_to_row.nil?
          invalid_properties.push("invalid value for 'drag_to_row', drag_to_row cannot be nil.")
      end
      if @function.nil?
          invalid_properties.push("invalid value for 'function', function cannot be nil.")
      end
      if @insert_blank_row.nil?
          invalid_properties.push("invalid value for 'insert_blank_row', insert_blank_row cannot be nil.")
      end
      if @is_ascend_show.nil?
          invalid_properties.push("invalid value for 'is_ascend_show', is_ascend_show cannot be nil.")
      end
      if @is_ascend_sort.nil?
          invalid_properties.push("invalid value for 'is_ascend_sort', is_ascend_sort cannot be nil.")
      end
      if @is_auto_show.nil?
          invalid_properties.push("invalid value for 'is_auto_show', is_auto_show cannot be nil.")
      end
      if @is_auto_sort.nil?
          invalid_properties.push("invalid value for 'is_auto_sort', is_auto_sort cannot be nil.")
      end
      if @is_auto_subtotals.nil?
          invalid_properties.push("invalid value for 'is_auto_subtotals', is_auto_subtotals cannot be nil.")
      end
      if @is_calculated_field.nil?
          invalid_properties.push("invalid value for 'is_calculated_field', is_calculated_field cannot be nil.")
      end
      if @is_include_new_items_in_filter.nil?
          invalid_properties.push("invalid value for 'is_include_new_items_in_filter', is_include_new_items_in_filter cannot be nil.")
      end
      if @is_insert_page_breaks_between_items.nil?
          invalid_properties.push("invalid value for 'is_insert_page_breaks_between_items', is_insert_page_breaks_between_items cannot be nil.")
      end
      if @is_multiple_item_selection_allowed.nil?
          invalid_properties.push("invalid value for 'is_multiple_item_selection_allowed', is_multiple_item_selection_allowed cannot be nil.")
      end
      if @is_repeat_item_labels.nil?
          invalid_properties.push("invalid value for 'is_repeat_item_labels', is_repeat_item_labels cannot be nil.")
      end
      if @item_count.nil?
          invalid_properties.push("invalid value for 'item_count', item_count cannot be nil.")
      end
      if @items.nil?
          invalid_properties.push("invalid value for 'items', items cannot be nil.")
      end
      if @name.nil?
          invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end
      if @number.nil?
          invalid_properties.push("invalid value for 'number', number cannot be nil.")
      end
      if @number_format.nil?
          invalid_properties.push("invalid value for 'number_format', number_format cannot be nil.")
      end
      if @original_items.nil?
          invalid_properties.push("invalid value for 'original_items', original_items cannot be nil.")
      end
      if @pivot_items.nil?
          invalid_properties.push("invalid value for 'pivot_items', pivot_items cannot be nil.")
      end
      if @position.nil?
          invalid_properties.push("invalid value for 'position', position cannot be nil.")
      end
      if @show_all_items.nil?
          invalid_properties.push("invalid value for 'show_all_items', show_all_items cannot be nil.")
      end
      if @show_compact.nil?
          invalid_properties.push("invalid value for 'show_compact', show_compact cannot be nil.")
      end
      if @show_in_outline_form.nil?
          invalid_properties.push("invalid value for 'show_in_outline_form', show_in_outline_form cannot be nil.")
      end
      if @show_subtotal_at_top.nil?
          invalid_properties.push("invalid value for 'show_subtotal_at_top', show_subtotal_at_top cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @auto_show_count.nil?
      return false if @auto_show_field.nil?
      return false if @auto_sort_field.nil?
      return false if @base_field.nil?
      return false if @base_index.nil?
      return false if @base_item.nil?
      return false if @base_item_position.nil?
      return false if @current_page_item.nil?
      return false if @data_display_format.nil?
      return false if @display_name.nil?
      return false if @drag_to_column.nil?
      return false if @drag_to_data.nil?
      return false if @drag_to_hide.nil?
      return false if @drag_to_page.nil?
      return false if @drag_to_row.nil?
      return false if @function.nil?
      return false if @insert_blank_row.nil?
      return false if @is_ascend_show.nil?
      return false if @is_ascend_sort.nil?
      return false if @is_auto_show.nil?
      return false if @is_auto_sort.nil?
      return false if @is_auto_subtotals.nil?
      return false if @is_calculated_field.nil?
      return false if @is_include_new_items_in_filter.nil?
      return false if @is_insert_page_breaks_between_items.nil?
      return false if @is_multiple_item_selection_allowed.nil?
      return false if @is_repeat_item_labels.nil?
      return false if @item_count.nil?
      return false if @items.nil?
      return false if @name.nil?
      return false if @number.nil?
      return false if @number_format.nil?
      return false if @original_items.nil?
      return false if @pivot_items.nil?
      return false if @position.nil?
      return false if @show_all_items.nil?
      return false if @show_compact.nil?
      return false if @show_in_outline_form.nil?
      return false if @show_subtotal_at_top.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          auto_show_count == o.auto_show_count &&
          auto_show_field == o.auto_show_field &&
          auto_sort_field == o.auto_sort_field &&
          base_field == o.base_field &&
          base_index == o.base_index &&
          base_item == o.base_item &&
          base_item_position == o.base_item_position &&
          current_page_item == o.current_page_item &&
          data_display_format == o.data_display_format &&
          display_name == o.display_name &&
          drag_to_column == o.drag_to_column &&
          drag_to_data == o.drag_to_data &&
          drag_to_hide == o.drag_to_hide &&
          drag_to_page == o.drag_to_page &&
          drag_to_row == o.drag_to_row &&
          function == o.function &&
          insert_blank_row == o.insert_blank_row &&
          is_ascend_show == o.is_ascend_show &&
          is_ascend_sort == o.is_ascend_sort &&
          is_auto_show == o.is_auto_show &&
          is_auto_sort == o.is_auto_sort &&
          is_auto_subtotals == o.is_auto_subtotals &&
          is_calculated_field == o.is_calculated_field &&
          is_include_new_items_in_filter == o.is_include_new_items_in_filter &&
          is_insert_page_breaks_between_items == o.is_insert_page_breaks_between_items &&
          is_multiple_item_selection_allowed == o.is_multiple_item_selection_allowed &&
          is_repeat_item_labels == o.is_repeat_item_labels &&
          item_count == o.item_count &&
          items == o.items &&
          name == o.name &&
          number == o.number &&
          number_format == o.number_format &&
          original_items == o.original_items &&
          pivot_items == o.pivot_items &&
          position == o.position &&
          show_all_items == o.show_all_items &&
          show_compact == o.show_compact &&
          show_in_outline_form == o.show_in_outline_form &&
          show_subtotal_at_top == o.show_subtotal_at_top 
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
      [ auto_show_count , auto_show_field , auto_sort_field , base_field , base_index , base_item , base_item_position , current_page_item , data_display_format , display_name , drag_to_column , drag_to_data , drag_to_hide , drag_to_page , drag_to_row , function , insert_blank_row , is_ascend_show , is_ascend_sort , is_auto_show , is_auto_sort , is_auto_subtotals , is_calculated_field , is_include_new_items_in_filter , is_insert_page_breaks_between_items , is_multiple_item_selection_allowed , is_repeat_item_labels , item_count , items , name , number , number_format , original_items , pivot_items , position , show_all_items , show_compact , show_in_outline_form , show_subtotal_at_top ].hash
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
