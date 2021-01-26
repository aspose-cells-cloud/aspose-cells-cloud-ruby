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

  class PivotTable
    attr_accessor :link

    attr_accessor :show_pivot_style_last_column

    attr_accessor :row_header_caption

    attr_accessor :column_range

    attr_accessor :refresh_data_on_opening_file

    attr_accessor :page_fields

    attr_accessor :data_fields

    attr_accessor :data_body_range

    attr_accessor :show_drill

    attr_accessor :refresh_data_flag

    attr_accessor :column_grand

    attr_accessor :pivot_table_style_name

    attr_accessor :pivot_filters

    attr_accessor :null_string

    attr_accessor :item_print_titles

    attr_accessor :display_null_string

    attr_accessor :enable_field_list

    attr_accessor :table_range2

    attr_accessor :row_fields

    attr_accessor :page_field_order

    attr_accessor :auto_format_type

    attr_accessor :enable_data_value_editing

    attr_accessor :show_pivot_style_row_header

    attr_accessor :is_grid_drop_zones

    attr_accessor :enable_wizard

    attr_accessor :show_member_property_tips

    attr_accessor :alt_text_description

    attr_accessor :show_data_tips

    attr_accessor :print_titles

    attr_accessor :table_range1

    attr_accessor :show_empty_row

    attr_accessor :is_multiple_field_filters

    attr_accessor :show_empty_col

    attr_accessor :show_row_header_caption

    attr_accessor :has_blank_rows

    attr_accessor :data_source

    attr_accessor :tag

    attr_accessor :enable_drilldown

    attr_accessor :indent

    attr_accessor :name

    attr_accessor :row_grand

    attr_accessor :grand_total_name

    attr_accessor :display_error_string

    attr_accessor :row_range

    attr_accessor :is_selected

    attr_accessor :column_fields

    attr_accessor :column_header_caption

    attr_accessor :show_values_row

    attr_accessor :enable_field_dialog

    attr_accessor :missing_items_limit

    attr_accessor :show_pivot_style_row_stripes

    attr_accessor :manual_update

    attr_accessor :is_auto_format

    attr_accessor :display_immediate_items

    attr_accessor :error_string

    attr_accessor :custom_list_sort

    attr_accessor :merge_labels

    attr_accessor :page_field_wrap_count

    attr_accessor :show_pivot_style_column_stripes

    attr_accessor :field_list_sort_ascending

    attr_accessor :alt_text_title

    attr_accessor :preserve_formatting

    attr_accessor :pivot_table_style_type

    attr_accessor :data_field

    attr_accessor :save_data

    attr_accessor :subtotal_hidden_page_items

    attr_accessor :print_drill

    attr_accessor :show_pivot_style_column_header

    attr_accessor :base_fields


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'link' => :'link',
        :'show_pivot_style_last_column' => :'ShowPivotStyleLastColumn',
        :'row_header_caption' => :'RowHeaderCaption',
        :'column_range' => :'ColumnRange',
        :'refresh_data_on_opening_file' => :'RefreshDataOnOpeningFile',
        :'page_fields' => :'PageFields',
        :'data_fields' => :'DataFields',
        :'data_body_range' => :'DataBodyRange',
        :'show_drill' => :'ShowDrill',
        :'refresh_data_flag' => :'RefreshDataFlag',
        :'column_grand' => :'ColumnGrand',
        :'pivot_table_style_name' => :'PivotTableStyleName',
        :'pivot_filters' => :'PivotFilters',
        :'null_string' => :'NullString',
        :'item_print_titles' => :'ItemPrintTitles',
        :'display_null_string' => :'DisplayNullString',
        :'enable_field_list' => :'EnableFieldList',
        :'table_range2' => :'TableRange2',
        :'row_fields' => :'RowFields',
        :'page_field_order' => :'PageFieldOrder',
        :'auto_format_type' => :'AutoFormatType',
        :'enable_data_value_editing' => :'EnableDataValueEditing',
        :'show_pivot_style_row_header' => :'ShowPivotStyleRowHeader',
        :'is_grid_drop_zones' => :'IsGridDropZones',
        :'enable_wizard' => :'EnableWizard',
        :'show_member_property_tips' => :'ShowMemberPropertyTips',
        :'alt_text_description' => :'AltTextDescription',
        :'show_data_tips' => :'ShowDataTips',
        :'print_titles' => :'PrintTitles',
        :'table_range1' => :'TableRange1',
        :'show_empty_row' => :'ShowEmptyRow',
        :'is_multiple_field_filters' => :'IsMultipleFieldFilters',
        :'show_empty_col' => :'ShowEmptyCol',
        :'show_row_header_caption' => :'ShowRowHeaderCaption',
        :'has_blank_rows' => :'HasBlankRows',
        :'data_source' => :'DataSource',
        :'tag' => :'Tag',
        :'enable_drilldown' => :'EnableDrilldown',
        :'indent' => :'Indent',
        :'name' => :'Name',
        :'row_grand' => :'RowGrand',
        :'grand_total_name' => :'GrandTotalName',
        :'display_error_string' => :'DisplayErrorString',
        :'row_range' => :'RowRange',
        :'is_selected' => :'IsSelected',
        :'column_fields' => :'ColumnFields',
        :'column_header_caption' => :'ColumnHeaderCaption',
        :'show_values_row' => :'ShowValuesRow',
        :'enable_field_dialog' => :'EnableFieldDialog',
        :'missing_items_limit' => :'MissingItemsLimit',
        :'show_pivot_style_row_stripes' => :'ShowPivotStyleRowStripes',
        :'manual_update' => :'ManualUpdate',
        :'is_auto_format' => :'IsAutoFormat',
        :'display_immediate_items' => :'DisplayImmediateItems',
        :'error_string' => :'ErrorString',
        :'custom_list_sort' => :'CustomListSort',
        :'merge_labels' => :'MergeLabels',
        :'page_field_wrap_count' => :'PageFieldWrapCount',
        :'show_pivot_style_column_stripes' => :'ShowPivotStyleColumnStripes',
        :'field_list_sort_ascending' => :'FieldListSortAscending',
        :'alt_text_title' => :'AltTextTitle',
        :'preserve_formatting' => :'PreserveFormatting',
        :'pivot_table_style_type' => :'PivotTableStyleType',
        :'data_field' => :'DataField',
        :'save_data' => :'SaveData',
        :'subtotal_hidden_page_items' => :'SubtotalHiddenPageItems',
        :'print_drill' => :'PrintDrill',
        :'show_pivot_style_column_header' => :'ShowPivotStyleColumnHeader',
        :'base_fields' => :'BaseFields'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'link' => :'Link',
        :'show_pivot_style_last_column' => :'BOOLEAN',
        :'row_header_caption' => :'String',
        :'column_range' => :'CellArea',
        :'refresh_data_on_opening_file' => :'BOOLEAN',
        :'page_fields' => :'Array<PivotField>',
        :'data_fields' => :'Array<PivotField>',
        :'data_body_range' => :'CellArea',
        :'show_drill' => :'BOOLEAN',
        :'refresh_data_flag' => :'BOOLEAN',
        :'column_grand' => :'BOOLEAN',
        :'pivot_table_style_name' => :'String',
        :'pivot_filters' => :'Array<PivotFilter>',
        :'null_string' => :'String',
        :'item_print_titles' => :'BOOLEAN',
        :'display_null_string' => :'BOOLEAN',
        :'enable_field_list' => :'BOOLEAN',
        :'table_range2' => :'CellArea',
        :'row_fields' => :'Array<PivotField>',
        :'page_field_order' => :'String',
        :'auto_format_type' => :'String',
        :'enable_data_value_editing' => :'BOOLEAN',
        :'show_pivot_style_row_header' => :'BOOLEAN',
        :'is_grid_drop_zones' => :'BOOLEAN',
        :'enable_wizard' => :'BOOLEAN',
        :'show_member_property_tips' => :'BOOLEAN',
        :'alt_text_description' => :'String',
        :'show_data_tips' => :'BOOLEAN',
        :'print_titles' => :'BOOLEAN',
        :'table_range1' => :'CellArea',
        :'show_empty_row' => :'BOOLEAN',
        :'is_multiple_field_filters' => :'BOOLEAN',
        :'show_empty_col' => :'BOOLEAN',
        :'show_row_header_caption' => :'BOOLEAN',
        :'has_blank_rows' => :'BOOLEAN',
        :'data_source' => :'Array<String>',
        :'tag' => :'String',
        :'enable_drilldown' => :'BOOLEAN',
        :'indent' => :'Integer',
        :'name' => :'String',
        :'row_grand' => :'BOOLEAN',
        :'grand_total_name' => :'String',
        :'display_error_string' => :'BOOLEAN',
        :'row_range' => :'CellArea',
        :'is_selected' => :'BOOLEAN',
        :'column_fields' => :'Array<PivotField>',
        :'column_header_caption' => :'String',
        :'show_values_row' => :'BOOLEAN',
        :'enable_field_dialog' => :'BOOLEAN',
        :'missing_items_limit' => :'String',
        :'show_pivot_style_row_stripes' => :'BOOLEAN',
        :'manual_update' => :'BOOLEAN',
        :'is_auto_format' => :'BOOLEAN',
        :'display_immediate_items' => :'BOOLEAN',
        :'error_string' => :'String',
        :'custom_list_sort' => :'BOOLEAN',
        :'merge_labels' => :'BOOLEAN',
        :'page_field_wrap_count' => :'Integer',
        :'show_pivot_style_column_stripes' => :'BOOLEAN',
        :'field_list_sort_ascending' => :'BOOLEAN',
        :'alt_text_title' => :'String',
        :'preserve_formatting' => :'BOOLEAN',
        :'pivot_table_style_type' => :'String',
        :'data_field' => :'PivotField',
        :'save_data' => :'BOOLEAN',
        :'subtotal_hidden_page_items' => :'BOOLEAN',
        :'print_drill' => :'BOOLEAN',
        :'show_pivot_style_column_header' => :'BOOLEAN',
        :'base_fields' => :'Array<PivotField>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'link')
        self.link = attributes[:'link']
      end

      if attributes.has_key?(:'ShowPivotStyleLastColumn')
        self.show_pivot_style_last_column = attributes[:'ShowPivotStyleLastColumn']
      end

      if attributes.has_key?(:'RowHeaderCaption')
        self.row_header_caption = attributes[:'RowHeaderCaption']
      end

      if attributes.has_key?(:'ColumnRange')
        self.column_range = attributes[:'ColumnRange']
      end

      if attributes.has_key?(:'RefreshDataOnOpeningFile')
        self.refresh_data_on_opening_file = attributes[:'RefreshDataOnOpeningFile']
      end

      if attributes.has_key?(:'PageFields')
        if (value = attributes[:'PageFields']).is_a?(Array)
          self.page_fields = value
        end
      end

      if attributes.has_key?(:'DataFields')
        if (value = attributes[:'DataFields']).is_a?(Array)
          self.data_fields = value
        end
      end

      if attributes.has_key?(:'DataBodyRange')
        self.data_body_range = attributes[:'DataBodyRange']
      end

      if attributes.has_key?(:'ShowDrill')
        self.show_drill = attributes[:'ShowDrill']
      end

      if attributes.has_key?(:'RefreshDataFlag')
        self.refresh_data_flag = attributes[:'RefreshDataFlag']
      end

      if attributes.has_key?(:'ColumnGrand')
        self.column_grand = attributes[:'ColumnGrand']
      end

      if attributes.has_key?(:'PivotTableStyleName')
        self.pivot_table_style_name = attributes[:'PivotTableStyleName']
      end

      if attributes.has_key?(:'PivotFilters')
        if (value = attributes[:'PivotFilters']).is_a?(Array)
          self.pivot_filters = value
        end
      end

      if attributes.has_key?(:'NullString')
        self.null_string = attributes[:'NullString']
      end

      if attributes.has_key?(:'ItemPrintTitles')
        self.item_print_titles = attributes[:'ItemPrintTitles']
      end

      if attributes.has_key?(:'DisplayNullString')
        self.display_null_string = attributes[:'DisplayNullString']
      end

      if attributes.has_key?(:'EnableFieldList')
        self.enable_field_list = attributes[:'EnableFieldList']
      end

      if attributes.has_key?(:'TableRange2')
        self.table_range2 = attributes[:'TableRange2']
      end

      if attributes.has_key?(:'RowFields')
        if (value = attributes[:'RowFields']).is_a?(Array)
          self.row_fields = value
        end
      end

      if attributes.has_key?(:'PageFieldOrder')
        self.page_field_order = attributes[:'PageFieldOrder']
      end

      if attributes.has_key?(:'AutoFormatType')
        self.auto_format_type = attributes[:'AutoFormatType']
      end

      if attributes.has_key?(:'EnableDataValueEditing')
        self.enable_data_value_editing = attributes[:'EnableDataValueEditing']
      end

      if attributes.has_key?(:'ShowPivotStyleRowHeader')
        self.show_pivot_style_row_header = attributes[:'ShowPivotStyleRowHeader']
      end

      if attributes.has_key?(:'IsGridDropZones')
        self.is_grid_drop_zones = attributes[:'IsGridDropZones']
      end

      if attributes.has_key?(:'EnableWizard')
        self.enable_wizard = attributes[:'EnableWizard']
      end

      if attributes.has_key?(:'ShowMemberPropertyTips')
        self.show_member_property_tips = attributes[:'ShowMemberPropertyTips']
      end

      if attributes.has_key?(:'AltTextDescription')
        self.alt_text_description = attributes[:'AltTextDescription']
      end

      if attributes.has_key?(:'ShowDataTips')
        self.show_data_tips = attributes[:'ShowDataTips']
      end

      if attributes.has_key?(:'PrintTitles')
        self.print_titles = attributes[:'PrintTitles']
      end

      if attributes.has_key?(:'TableRange1')
        self.table_range1 = attributes[:'TableRange1']
      end

      if attributes.has_key?(:'ShowEmptyRow')
        self.show_empty_row = attributes[:'ShowEmptyRow']
      end

      if attributes.has_key?(:'IsMultipleFieldFilters')
        self.is_multiple_field_filters = attributes[:'IsMultipleFieldFilters']
      end

      if attributes.has_key?(:'ShowEmptyCol')
        self.show_empty_col = attributes[:'ShowEmptyCol']
      end

      if attributes.has_key?(:'ShowRowHeaderCaption')
        self.show_row_header_caption = attributes[:'ShowRowHeaderCaption']
      end

      if attributes.has_key?(:'HasBlankRows')
        self.has_blank_rows = attributes[:'HasBlankRows']
      end

      if attributes.has_key?(:'DataSource')
        if (value = attributes[:'DataSource']).is_a?(Array)
          self.data_source = value
        end
      end

      if attributes.has_key?(:'Tag')
        self.tag = attributes[:'Tag']
      end

      if attributes.has_key?(:'EnableDrilldown')
        self.enable_drilldown = attributes[:'EnableDrilldown']
      end

      if attributes.has_key?(:'Indent')
        self.indent = attributes[:'Indent']
      end

      if attributes.has_key?(:'Name')
        self.name = attributes[:'Name']
      end

      if attributes.has_key?(:'RowGrand')
        self.row_grand = attributes[:'RowGrand']
      end

      if attributes.has_key?(:'GrandTotalName')
        self.grand_total_name = attributes[:'GrandTotalName']
      end

      if attributes.has_key?(:'DisplayErrorString')
        self.display_error_string = attributes[:'DisplayErrorString']
      end

      if attributes.has_key?(:'RowRange')
        self.row_range = attributes[:'RowRange']
      end

      if attributes.has_key?(:'IsSelected')
        self.is_selected = attributes[:'IsSelected']
      end

      if attributes.has_key?(:'ColumnFields')
        if (value = attributes[:'ColumnFields']).is_a?(Array)
          self.column_fields = value
        end
      end

      if attributes.has_key?(:'ColumnHeaderCaption')
        self.column_header_caption = attributes[:'ColumnHeaderCaption']
      end

      if attributes.has_key?(:'ShowValuesRow')
        self.show_values_row = attributes[:'ShowValuesRow']
      end

      if attributes.has_key?(:'EnableFieldDialog')
        self.enable_field_dialog = attributes[:'EnableFieldDialog']
      end

      if attributes.has_key?(:'MissingItemsLimit')
        self.missing_items_limit = attributes[:'MissingItemsLimit']
      end

      if attributes.has_key?(:'ShowPivotStyleRowStripes')
        self.show_pivot_style_row_stripes = attributes[:'ShowPivotStyleRowStripes']
      end

      if attributes.has_key?(:'ManualUpdate')
        self.manual_update = attributes[:'ManualUpdate']
      end

      if attributes.has_key?(:'IsAutoFormat')
        self.is_auto_format = attributes[:'IsAutoFormat']
      end

      if attributes.has_key?(:'DisplayImmediateItems')
        self.display_immediate_items = attributes[:'DisplayImmediateItems']
      end

      if attributes.has_key?(:'ErrorString')
        self.error_string = attributes[:'ErrorString']
      end

      if attributes.has_key?(:'CustomListSort')
        self.custom_list_sort = attributes[:'CustomListSort']
      end

      if attributes.has_key?(:'MergeLabels')
        self.merge_labels = attributes[:'MergeLabels']
      end

      if attributes.has_key?(:'PageFieldWrapCount')
        self.page_field_wrap_count = attributes[:'PageFieldWrapCount']
      end

      if attributes.has_key?(:'ShowPivotStyleColumnStripes')
        self.show_pivot_style_column_stripes = attributes[:'ShowPivotStyleColumnStripes']
      end

      if attributes.has_key?(:'FieldListSortAscending')
        self.field_list_sort_ascending = attributes[:'FieldListSortAscending']
      end

      if attributes.has_key?(:'AltTextTitle')
        self.alt_text_title = attributes[:'AltTextTitle']
      end

      if attributes.has_key?(:'PreserveFormatting')
        self.preserve_formatting = attributes[:'PreserveFormatting']
      end

      if attributes.has_key?(:'PivotTableStyleType')
        self.pivot_table_style_type = attributes[:'PivotTableStyleType']
      end

      if attributes.has_key?(:'DataField')
        self.data_field = attributes[:'DataField']
      end

      if attributes.has_key?(:'SaveData')
        self.save_data = attributes[:'SaveData']
      end

      if attributes.has_key?(:'SubtotalHiddenPageItems')
        self.subtotal_hidden_page_items = attributes[:'SubtotalHiddenPageItems']
      end

      if attributes.has_key?(:'PrintDrill')
        self.print_drill = attributes[:'PrintDrill']
      end

      if attributes.has_key?(:'ShowPivotStyleColumnHeader')
        self.show_pivot_style_column_header = attributes[:'ShowPivotStyleColumnHeader']
      end

      if attributes.has_key?(:'BaseFields')
        if (value = attributes[:'BaseFields']).is_a?(Array)
          self.base_fields = value
        end
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
          link == o.link &&
          show_pivot_style_last_column == o.show_pivot_style_last_column &&
          row_header_caption == o.row_header_caption &&
          column_range == o.column_range &&
          refresh_data_on_opening_file == o.refresh_data_on_opening_file &&
          page_fields == o.page_fields &&
          data_fields == o.data_fields &&
          data_body_range == o.data_body_range &&
          show_drill == o.show_drill &&
          refresh_data_flag == o.refresh_data_flag &&
          column_grand == o.column_grand &&
          pivot_table_style_name == o.pivot_table_style_name &&
          pivot_filters == o.pivot_filters &&
          null_string == o.null_string &&
          item_print_titles == o.item_print_titles &&
          display_null_string == o.display_null_string &&
          enable_field_list == o.enable_field_list &&
          table_range2 == o.table_range2 &&
          row_fields == o.row_fields &&
          page_field_order == o.page_field_order &&
          auto_format_type == o.auto_format_type &&
          enable_data_value_editing == o.enable_data_value_editing &&
          show_pivot_style_row_header == o.show_pivot_style_row_header &&
          is_grid_drop_zones == o.is_grid_drop_zones &&
          enable_wizard == o.enable_wizard &&
          show_member_property_tips == o.show_member_property_tips &&
          alt_text_description == o.alt_text_description &&
          show_data_tips == o.show_data_tips &&
          print_titles == o.print_titles &&
          table_range1 == o.table_range1 &&
          show_empty_row == o.show_empty_row &&
          is_multiple_field_filters == o.is_multiple_field_filters &&
          show_empty_col == o.show_empty_col &&
          show_row_header_caption == o.show_row_header_caption &&
          has_blank_rows == o.has_blank_rows &&
          data_source == o.data_source &&
          tag == o.tag &&
          enable_drilldown == o.enable_drilldown &&
          indent == o.indent &&
          name == o.name &&
          row_grand == o.row_grand &&
          grand_total_name == o.grand_total_name &&
          display_error_string == o.display_error_string &&
          row_range == o.row_range &&
          is_selected == o.is_selected &&
          column_fields == o.column_fields &&
          column_header_caption == o.column_header_caption &&
          show_values_row == o.show_values_row &&
          enable_field_dialog == o.enable_field_dialog &&
          missing_items_limit == o.missing_items_limit &&
          show_pivot_style_row_stripes == o.show_pivot_style_row_stripes &&
          manual_update == o.manual_update &&
          is_auto_format == o.is_auto_format &&
          display_immediate_items == o.display_immediate_items &&
          error_string == o.error_string &&
          custom_list_sort == o.custom_list_sort &&
          merge_labels == o.merge_labels &&
          page_field_wrap_count == o.page_field_wrap_count &&
          show_pivot_style_column_stripes == o.show_pivot_style_column_stripes &&
          field_list_sort_ascending == o.field_list_sort_ascending &&
          alt_text_title == o.alt_text_title &&
          preserve_formatting == o.preserve_formatting &&
          pivot_table_style_type == o.pivot_table_style_type &&
          data_field == o.data_field &&
          save_data == o.save_data &&
          subtotal_hidden_page_items == o.subtotal_hidden_page_items &&
          print_drill == o.print_drill &&
          show_pivot_style_column_header == o.show_pivot_style_column_header &&
          base_fields == o.base_fields
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [link, show_pivot_style_last_column, row_header_caption, column_range, refresh_data_on_opening_file, page_fields, data_fields, data_body_range, show_drill, refresh_data_flag, column_grand, pivot_table_style_name, pivot_filters, null_string, item_print_titles, display_null_string, enable_field_list, table_range2, row_fields, page_field_order, auto_format_type, enable_data_value_editing, show_pivot_style_row_header, is_grid_drop_zones, enable_wizard, show_member_property_tips, alt_text_description, show_data_tips, print_titles, table_range1, show_empty_row, is_multiple_field_filters, show_empty_col, show_row_header_caption, has_blank_rows, data_source, tag, enable_drilldown, indent, name, row_grand, grand_total_name, display_error_string, row_range, is_selected, column_fields, column_header_caption, show_values_row, enable_field_dialog, missing_items_limit, show_pivot_style_row_stripes, manual_update, is_auto_format, display_immediate_items, error_string, custom_list_sort, merge_labels, page_field_wrap_count, show_pivot_style_column_stripes, field_list_sort_ascending, alt_text_title, preserve_formatting, pivot_table_style_type, data_field, save_data, subtotal_hidden_page_items, print_drill, show_pivot_style_column_header, base_fields].hash
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
