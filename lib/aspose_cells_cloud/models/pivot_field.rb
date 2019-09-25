=begin
--------------------------------------------------------------------------------------------------------------------
Copyright (c) 2019 Aspose.Cells Cloud
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

  class PivotField
    attr_accessor :pivot_items

    attr_accessor :display_name

    attr_accessor :number_format

    attr_accessor :drag_to_column

    attr_accessor :is_auto_show

    attr_accessor :is_repeat_item_labels

    attr_accessor :drag_to_row

    attr_accessor :is_auto_sort

    attr_accessor :insert_blank_row

    attr_accessor :show_subtotal_at_top

    attr_accessor :show_compact

    attr_accessor :function

    attr_accessor :is_multiple_item_selection_allowed

    attr_accessor :data_display_format

    attr_accessor :base_item_position

    attr_accessor :is_insert_page_breaks_between_items

    attr_accessor :show_all_items

    attr_accessor :base_item

    attr_accessor :item_count

    attr_accessor :name

    attr_accessor :show_in_outline_form

    attr_accessor :items

    attr_accessor :auto_show_field

    attr_accessor :is_auto_subtotals

    attr_accessor :is_include_new_items_in_filter

    attr_accessor :current_page_item

    attr_accessor :position

    attr_accessor :is_ascend_sort

    attr_accessor :is_ascend_show

    attr_accessor :base_field

    attr_accessor :auto_sort_field

    attr_accessor :auto_show_count

    attr_accessor :number

    attr_accessor :drag_to_page

    attr_accessor :drag_to_data

    attr_accessor :base_index

    attr_accessor :original_items

    attr_accessor :drag_to_hide

    attr_accessor :is_calculated_field


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'pivot_items' => :'PivotItems',
        :'display_name' => :'DisplayName',
        :'number_format' => :'NumberFormat',
        :'drag_to_column' => :'DragToColumn',
        :'is_auto_show' => :'IsAutoShow',
        :'is_repeat_item_labels' => :'IsRepeatItemLabels',
        :'drag_to_row' => :'DragToRow',
        :'is_auto_sort' => :'IsAutoSort',
        :'insert_blank_row' => :'InsertBlankRow',
        :'show_subtotal_at_top' => :'ShowSubtotalAtTop',
        :'show_compact' => :'ShowCompact',
        :'function' => :'Function',
        :'is_multiple_item_selection_allowed' => :'IsMultipleItemSelectionAllowed',
        :'data_display_format' => :'DataDisplayFormat',
        :'base_item_position' => :'BaseItemPosition',
        :'is_insert_page_breaks_between_items' => :'IsInsertPageBreaksBetweenItems',
        :'show_all_items' => :'ShowAllItems',
        :'base_item' => :'BaseItem',
        :'item_count' => :'ItemCount',
        :'name' => :'Name',
        :'show_in_outline_form' => :'ShowInOutlineForm',
        :'items' => :'Items',
        :'auto_show_field' => :'AutoShowField',
        :'is_auto_subtotals' => :'IsAutoSubtotals',
        :'is_include_new_items_in_filter' => :'IsIncludeNewItemsInFilter',
        :'current_page_item' => :'CurrentPageItem',
        :'position' => :'Position',
        :'is_ascend_sort' => :'IsAscendSort',
        :'is_ascend_show' => :'IsAscendShow',
        :'base_field' => :'BaseField',
        :'auto_sort_field' => :'AutoSortField',
        :'auto_show_count' => :'AutoShowCount',
        :'number' => :'Number',
        :'drag_to_page' => :'DragToPage',
        :'drag_to_data' => :'DragToData',
        :'base_index' => :'BaseIndex',
        :'original_items' => :'OriginalItems',
        :'drag_to_hide' => :'DragToHide',
        :'is_calculated_field' => :'IsCalculatedField'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'pivot_items' => :'Array<PivotItem>',
        :'display_name' => :'String',
        :'number_format' => :'String',
        :'drag_to_column' => :'BOOLEAN',
        :'is_auto_show' => :'BOOLEAN',
        :'is_repeat_item_labels' => :'BOOLEAN',
        :'drag_to_row' => :'BOOLEAN',
        :'is_auto_sort' => :'BOOLEAN',
        :'insert_blank_row' => :'BOOLEAN',
        :'show_subtotal_at_top' => :'BOOLEAN',
        :'show_compact' => :'BOOLEAN',
        :'function' => :'String',
        :'is_multiple_item_selection_allowed' => :'BOOLEAN',
        :'data_display_format' => :'String',
        :'base_item_position' => :'String',
        :'is_insert_page_breaks_between_items' => :'BOOLEAN',
        :'show_all_items' => :'BOOLEAN',
        :'base_item' => :'Integer',
        :'item_count' => :'Integer',
        :'name' => :'String',
        :'show_in_outline_form' => :'BOOLEAN',
        :'items' => :'Array<String>',
        :'auto_show_field' => :'Integer',
        :'is_auto_subtotals' => :'BOOLEAN',
        :'is_include_new_items_in_filter' => :'BOOLEAN',
        :'current_page_item' => :'Integer',
        :'position' => :'Integer',
        :'is_ascend_sort' => :'BOOLEAN',
        :'is_ascend_show' => :'BOOLEAN',
        :'base_field' => :'Integer',
        :'auto_sort_field' => :'Integer',
        :'auto_show_count' => :'Integer',
        :'number' => :'Integer',
        :'drag_to_page' => :'BOOLEAN',
        :'drag_to_data' => :'BOOLEAN',
        :'base_index' => :'Integer',
        :'original_items' => :'Array<String>',
        :'drag_to_hide' => :'BOOLEAN',
        :'is_calculated_field' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'PivotItems')
        if (value = attributes[:'PivotItems']).is_a?(Array)
          self.pivot_items = value
        end
      end

      if attributes.has_key?(:'DisplayName')
        self.display_name = attributes[:'DisplayName']
      end

      if attributes.has_key?(:'NumberFormat')
        self.number_format = attributes[:'NumberFormat']
      end

      if attributes.has_key?(:'DragToColumn')
        self.drag_to_column = attributes[:'DragToColumn']
      end

      if attributes.has_key?(:'IsAutoShow')
        self.is_auto_show = attributes[:'IsAutoShow']
      end

      if attributes.has_key?(:'IsRepeatItemLabels')
        self.is_repeat_item_labels = attributes[:'IsRepeatItemLabels']
      end

      if attributes.has_key?(:'DragToRow')
        self.drag_to_row = attributes[:'DragToRow']
      end

      if attributes.has_key?(:'IsAutoSort')
        self.is_auto_sort = attributes[:'IsAutoSort']
      end

      if attributes.has_key?(:'InsertBlankRow')
        self.insert_blank_row = attributes[:'InsertBlankRow']
      end

      if attributes.has_key?(:'ShowSubtotalAtTop')
        self.show_subtotal_at_top = attributes[:'ShowSubtotalAtTop']
      end

      if attributes.has_key?(:'ShowCompact')
        self.show_compact = attributes[:'ShowCompact']
      end

      if attributes.has_key?(:'Function')
        self.function = attributes[:'Function']
      end

      if attributes.has_key?(:'IsMultipleItemSelectionAllowed')
        self.is_multiple_item_selection_allowed = attributes[:'IsMultipleItemSelectionAllowed']
      end

      if attributes.has_key?(:'DataDisplayFormat')
        self.data_display_format = attributes[:'DataDisplayFormat']
      end

      if attributes.has_key?(:'BaseItemPosition')
        self.base_item_position = attributes[:'BaseItemPosition']
      end

      if attributes.has_key?(:'IsInsertPageBreaksBetweenItems')
        self.is_insert_page_breaks_between_items = attributes[:'IsInsertPageBreaksBetweenItems']
      end

      if attributes.has_key?(:'ShowAllItems')
        self.show_all_items = attributes[:'ShowAllItems']
      end

      if attributes.has_key?(:'BaseItem')
        self.base_item = attributes[:'BaseItem']
      end

      if attributes.has_key?(:'ItemCount')
        self.item_count = attributes[:'ItemCount']
      end

      if attributes.has_key?(:'Name')
        self.name = attributes[:'Name']
      end

      if attributes.has_key?(:'ShowInOutlineForm')
        self.show_in_outline_form = attributes[:'ShowInOutlineForm']
      end

      if attributes.has_key?(:'Items')
        if (value = attributes[:'Items']).is_a?(Array)
          self.items = value
        end
      end

      if attributes.has_key?(:'AutoShowField')
        self.auto_show_field = attributes[:'AutoShowField']
      end

      if attributes.has_key?(:'IsAutoSubtotals')
        self.is_auto_subtotals = attributes[:'IsAutoSubtotals']
      end

      if attributes.has_key?(:'IsIncludeNewItemsInFilter')
        self.is_include_new_items_in_filter = attributes[:'IsIncludeNewItemsInFilter']
      end

      if attributes.has_key?(:'CurrentPageItem')
        self.current_page_item = attributes[:'CurrentPageItem']
      end

      if attributes.has_key?(:'Position')
        self.position = attributes[:'Position']
      end

      if attributes.has_key?(:'IsAscendSort')
        self.is_ascend_sort = attributes[:'IsAscendSort']
      end

      if attributes.has_key?(:'IsAscendShow')
        self.is_ascend_show = attributes[:'IsAscendShow']
      end

      if attributes.has_key?(:'BaseField')
        self.base_field = attributes[:'BaseField']
      end

      if attributes.has_key?(:'AutoSortField')
        self.auto_sort_field = attributes[:'AutoSortField']
      end

      if attributes.has_key?(:'AutoShowCount')
        self.auto_show_count = attributes[:'AutoShowCount']
      end

      if attributes.has_key?(:'Number')
        self.number = attributes[:'Number']
      end

      if attributes.has_key?(:'DragToPage')
        self.drag_to_page = attributes[:'DragToPage']
      end

      if attributes.has_key?(:'DragToData')
        self.drag_to_data = attributes[:'DragToData']
      end

      if attributes.has_key?(:'BaseIndex')
        self.base_index = attributes[:'BaseIndex']
      end

      if attributes.has_key?(:'OriginalItems')
        if (value = attributes[:'OriginalItems']).is_a?(Array)
          self.original_items = value
        end
      end

      if attributes.has_key?(:'DragToHide')
        self.drag_to_hide = attributes[:'DragToHide']
      end

      if attributes.has_key?(:'IsCalculatedField')
        self.is_calculated_field = attributes[:'IsCalculatedField']
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
          pivot_items == o.pivot_items &&
          display_name == o.display_name &&
          number_format == o.number_format &&
          drag_to_column == o.drag_to_column &&
          is_auto_show == o.is_auto_show &&
          is_repeat_item_labels == o.is_repeat_item_labels &&
          drag_to_row == o.drag_to_row &&
          is_auto_sort == o.is_auto_sort &&
          insert_blank_row == o.insert_blank_row &&
          show_subtotal_at_top == o.show_subtotal_at_top &&
          show_compact == o.show_compact &&
          function == o.function &&
          is_multiple_item_selection_allowed == o.is_multiple_item_selection_allowed &&
          data_display_format == o.data_display_format &&
          base_item_position == o.base_item_position &&
          is_insert_page_breaks_between_items == o.is_insert_page_breaks_between_items &&
          show_all_items == o.show_all_items &&
          base_item == o.base_item &&
          item_count == o.item_count &&
          name == o.name &&
          show_in_outline_form == o.show_in_outline_form &&
          items == o.items &&
          auto_show_field == o.auto_show_field &&
          is_auto_subtotals == o.is_auto_subtotals &&
          is_include_new_items_in_filter == o.is_include_new_items_in_filter &&
          current_page_item == o.current_page_item &&
          position == o.position &&
          is_ascend_sort == o.is_ascend_sort &&
          is_ascend_show == o.is_ascend_show &&
          base_field == o.base_field &&
          auto_sort_field == o.auto_sort_field &&
          auto_show_count == o.auto_show_count &&
          number == o.number &&
          drag_to_page == o.drag_to_page &&
          drag_to_data == o.drag_to_data &&
          base_index == o.base_index &&
          original_items == o.original_items &&
          drag_to_hide == o.drag_to_hide &&
          is_calculated_field == o.is_calculated_field
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [pivot_items, display_name, number_format, drag_to_column, is_auto_show, is_repeat_item_labels, drag_to_row, is_auto_sort, insert_blank_row, show_subtotal_at_top, show_compact, function, is_multiple_item_selection_allowed, data_display_format, base_item_position, is_insert_page_breaks_between_items, show_all_items, base_item, item_count, name, show_in_outline_form, items, auto_show_field, is_auto_subtotals, is_include_new_items_in_filter, current_page_item, position, is_ascend_sort, is_ascend_show, base_field, auto_sort_field, auto_show_count, number, drag_to_page, drag_to_data, base_index, original_items, drag_to_hide, is_calculated_field].hash
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
