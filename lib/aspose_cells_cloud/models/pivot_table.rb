=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PivotTablerb.cs">
   Copyright (c) 2026 Aspose.Cells Cloud
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

  class PivotTable
        #Gets the description of the alt text            
        attr_accessor :alt_text_description
        #            
        attr_accessor :alt_text_title
        #            
        attr_accessor :auto_format_type
        #            
        attr_accessor :base_fields
        #            
        attr_accessor :column_fields
        #            
        attr_accessor :column_grand
        #            
        attr_accessor :column_header_caption
        #            
        attr_accessor :column_range
        #            
        attr_accessor :custom_list_sort
        #            
        attr_accessor :data_body_range
        #            
        attr_accessor :data_field
        #            
        attr_accessor :data_fields
        #            
        attr_accessor :data_source
        #            
        attr_accessor :display_error_string
        #            
        attr_accessor :display_immediate_items
        #            
        attr_accessor :display_null_string
        #            
        attr_accessor :enable_data_value_editing
        #            
        attr_accessor :enable_drilldown
        #            
        attr_accessor :enable_field_dialog
        #            
        attr_accessor :enable_field_list
        #            
        attr_accessor :enable_wizard
        #            
        attr_accessor :error_string
        #            
        attr_accessor :field_list_sort_ascending
        #            
        attr_accessor :grand_total_name
        #            
        attr_accessor :has_blank_rows
        #            
        attr_accessor :indent
        #            
        attr_accessor :is_auto_format
        #            
        attr_accessor :is_grid_drop_zones
        #            
        attr_accessor :is_multiple_field_filters
        #            
        attr_accessor :is_selected
        #            
        attr_accessor :item_print_titles
        #            
        attr_accessor :manual_update
        #            
        attr_accessor :merge_labels
        #            
        attr_accessor :missing_items_limit
        #Represents pivot table name.            
        attr_accessor :name
        #            
        attr_accessor :null_string
        #            
        attr_accessor :page_field_order
        #            
        attr_accessor :page_fields
        #            
        attr_accessor :page_field_wrap_count
        #            
        attr_accessor :pivot_filters
        #            
        attr_accessor :pivot_table_style_name
        #            
        attr_accessor :pivot_table_style_type
        #            
        attr_accessor :preserve_formatting
        #            
        attr_accessor :print_drill
        #            
        attr_accessor :print_titles
        #            
        attr_accessor :refresh_data_flag
        #            
        attr_accessor :refresh_data_on_opening_file
        #            
        attr_accessor :row_fields
        #            
        attr_accessor :row_grand
        #            
        attr_accessor :row_header_caption
        #            
        attr_accessor :row_range
        #            
        attr_accessor :save_data
        #            
        attr_accessor :show_data_tips
        #            
        attr_accessor :show_drill
        #            
        attr_accessor :show_empty_col
        #            
        attr_accessor :show_empty_row
        #            
        attr_accessor :show_member_property_tips
        #            
        attr_accessor :show_pivot_style_column_header
        #            
        attr_accessor :show_pivot_style_column_stripes
        #            
        attr_accessor :show_pivot_style_last_column
        #            
        attr_accessor :show_pivot_style_row_header
        #            
        attr_accessor :show_pivot_style_row_stripes
        #            
        attr_accessor :show_row_header_caption
        #            
        attr_accessor :show_values_row
        #            
        attr_accessor :subtotal_hidden_page_items
        #            
        attr_accessor :table_range1
        #            
        attr_accessor :table_range2
        #            
        attr_accessor :tag
        #            
        attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'alt_text_description' => :'AltTextDescription',
        :'alt_text_title' => :'AltTextTitle',
        :'auto_format_type' => :'AutoFormatType',
        :'base_fields' => :'BaseFields',
        :'column_fields' => :'ColumnFields',
        :'column_grand' => :'ColumnGrand',
        :'column_header_caption' => :'ColumnHeaderCaption',
        :'column_range' => :'ColumnRange',
        :'custom_list_sort' => :'CustomListSort',
        :'data_body_range' => :'DataBodyRange',
        :'data_field' => :'DataField',
        :'data_fields' => :'DataFields',
        :'data_source' => :'DataSource',
        :'display_error_string' => :'DisplayErrorString',
        :'display_immediate_items' => :'DisplayImmediateItems',
        :'display_null_string' => :'DisplayNullString',
        :'enable_data_value_editing' => :'EnableDataValueEditing',
        :'enable_drilldown' => :'EnableDrilldown',
        :'enable_field_dialog' => :'EnableFieldDialog',
        :'enable_field_list' => :'EnableFieldList',
        :'enable_wizard' => :'EnableWizard',
        :'error_string' => :'ErrorString',
        :'field_list_sort_ascending' => :'FieldListSortAscending',
        :'grand_total_name' => :'GrandTotalName',
        :'has_blank_rows' => :'HasBlankRows',
        :'indent' => :'Indent',
        :'is_auto_format' => :'IsAutoFormat',
        :'is_grid_drop_zones' => :'IsGridDropZones',
        :'is_multiple_field_filters' => :'IsMultipleFieldFilters',
        :'is_selected' => :'IsSelected',
        :'item_print_titles' => :'ItemPrintTitles',
        :'manual_update' => :'ManualUpdate',
        :'merge_labels' => :'MergeLabels',
        :'missing_items_limit' => :'MissingItemsLimit',
        :'name' => :'Name',
        :'null_string' => :'NullString',
        :'page_field_order' => :'PageFieldOrder',
        :'page_fields' => :'PageFields',
        :'page_field_wrap_count' => :'PageFieldWrapCount',
        :'pivot_filters' => :'PivotFilters',
        :'pivot_table_style_name' => :'PivotTableStyleName',
        :'pivot_table_style_type' => :'PivotTableStyleType',
        :'preserve_formatting' => :'PreserveFormatting',
        :'print_drill' => :'PrintDrill',
        :'print_titles' => :'PrintTitles',
        :'refresh_data_flag' => :'RefreshDataFlag',
        :'refresh_data_on_opening_file' => :'RefreshDataOnOpeningFile',
        :'row_fields' => :'RowFields',
        :'row_grand' => :'RowGrand',
        :'row_header_caption' => :'RowHeaderCaption',
        :'row_range' => :'RowRange',
        :'save_data' => :'SaveData',
        :'show_data_tips' => :'ShowDataTips',
        :'show_drill' => :'ShowDrill',
        :'show_empty_col' => :'ShowEmptyCol',
        :'show_empty_row' => :'ShowEmptyRow',
        :'show_member_property_tips' => :'ShowMemberPropertyTips',
        :'show_pivot_style_column_header' => :'ShowPivotStyleColumnHeader',
        :'show_pivot_style_column_stripes' => :'ShowPivotStyleColumnStripes',
        :'show_pivot_style_last_column' => :'ShowPivotStyleLastColumn',
        :'show_pivot_style_row_header' => :'ShowPivotStyleRowHeader',
        :'show_pivot_style_row_stripes' => :'ShowPivotStyleRowStripes',
        :'show_row_header_caption' => :'ShowRowHeaderCaption',
        :'show_values_row' => :'ShowValuesRow',
        :'subtotal_hidden_page_items' => :'SubtotalHiddenPageItems',
        :'table_range1' => :'TableRange1',
        :'table_range2' => :'TableRange2',
        :'tag' => :'Tag',
        :'link' => :'link'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'alt_text_description' => :'String',
        :'alt_text_title' => :'String',
        :'auto_format_type' => :'String',
        :'base_fields' => :'Array<PivotField>',
        :'column_fields' => :'Array<PivotField>',
        :'column_grand' => :'BOOLEAN',
        :'column_header_caption' => :'String',
        :'column_range' => :'CellArea',
        :'custom_list_sort' => :'BOOLEAN',
        :'data_body_range' => :'CellArea',
        :'data_field' => :'PivotField',
        :'data_fields' => :'Array<PivotField>',
        :'data_source' => :'Array<String>',
        :'display_error_string' => :'BOOLEAN',
        :'display_immediate_items' => :'BOOLEAN',
        :'display_null_string' => :'BOOLEAN',
        :'enable_data_value_editing' => :'BOOLEAN',
        :'enable_drilldown' => :'BOOLEAN',
        :'enable_field_dialog' => :'BOOLEAN',
        :'enable_field_list' => :'BOOLEAN',
        :'enable_wizard' => :'BOOLEAN',
        :'error_string' => :'String',
        :'field_list_sort_ascending' => :'BOOLEAN',
        :'grand_total_name' => :'String',
        :'has_blank_rows' => :'BOOLEAN',
        :'indent' => :'Integer',
        :'is_auto_format' => :'BOOLEAN',
        :'is_grid_drop_zones' => :'BOOLEAN',
        :'is_multiple_field_filters' => :'BOOLEAN',
        :'is_selected' => :'BOOLEAN',
        :'item_print_titles' => :'BOOLEAN',
        :'manual_update' => :'BOOLEAN',
        :'merge_labels' => :'BOOLEAN',
        :'missing_items_limit' => :'String',
        :'name' => :'String',
        :'null_string' => :'String',
        :'page_field_order' => :'String',
        :'page_fields' => :'Array<PivotField>',
        :'page_field_wrap_count' => :'Integer',
        :'pivot_filters' => :'Array<PivotFilter>',
        :'pivot_table_style_name' => :'String',
        :'pivot_table_style_type' => :'String',
        :'preserve_formatting' => :'BOOLEAN',
        :'print_drill' => :'BOOLEAN',
        :'print_titles' => :'BOOLEAN',
        :'refresh_data_flag' => :'BOOLEAN',
        :'refresh_data_on_opening_file' => :'BOOLEAN',
        :'row_fields' => :'Array<PivotField>',
        :'row_grand' => :'BOOLEAN',
        :'row_header_caption' => :'String',
        :'row_range' => :'CellArea',
        :'save_data' => :'BOOLEAN',
        :'show_data_tips' => :'BOOLEAN',
        :'show_drill' => :'BOOLEAN',
        :'show_empty_col' => :'BOOLEAN',
        :'show_empty_row' => :'BOOLEAN',
        :'show_member_property_tips' => :'BOOLEAN',
        :'show_pivot_style_column_header' => :'BOOLEAN',
        :'show_pivot_style_column_stripes' => :'BOOLEAN',
        :'show_pivot_style_last_column' => :'BOOLEAN',
        :'show_pivot_style_row_header' => :'BOOLEAN',
        :'show_pivot_style_row_stripes' => :'BOOLEAN',
        :'show_row_header_caption' => :'BOOLEAN',
        :'show_values_row' => :'BOOLEAN',
        :'subtotal_hidden_page_items' => :'BOOLEAN',
        :'table_range1' => :'CellArea',
        :'table_range2' => :'CellArea',
        :'tag' => :'String',
        :'link' => :'Link'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'AltTextDescription')
          self.alt_text_description = attributes[:'AltTextDescription']
      end
      if attributes.has_key?(:'AltTextTitle')
          self.alt_text_title = attributes[:'AltTextTitle']
      end
      if attributes.has_key?(:'AutoFormatType')
          self.auto_format_type = attributes[:'AutoFormatType']
      end
      if attributes.has_key?(:'BaseFields')
          self.base_fields = attributes[:'BaseFields']
      end
      if attributes.has_key?(:'ColumnFields')
          self.column_fields = attributes[:'ColumnFields']
      end
      if attributes.has_key?(:'ColumnGrand')
          self.column_grand = attributes[:'ColumnGrand']
      end
      if attributes.has_key?(:'ColumnHeaderCaption')
          self.column_header_caption = attributes[:'ColumnHeaderCaption']
      end
      if attributes.has_key?(:'ColumnRange')
          self.column_range = attributes[:'ColumnRange']
      end
      if attributes.has_key?(:'CustomListSort')
          self.custom_list_sort = attributes[:'CustomListSort']
      end
      if attributes.has_key?(:'DataBodyRange')
          self.data_body_range = attributes[:'DataBodyRange']
      end
      if attributes.has_key?(:'DataField')
          self.data_field = attributes[:'DataField']
      end
      if attributes.has_key?(:'DataFields')
          self.data_fields = attributes[:'DataFields']
      end
      if attributes.has_key?(:'DataSource')
          self.data_source = attributes[:'DataSource']
      end
      if attributes.has_key?(:'DisplayErrorString')
          self.display_error_string = attributes[:'DisplayErrorString']
      end
      if attributes.has_key?(:'DisplayImmediateItems')
          self.display_immediate_items = attributes[:'DisplayImmediateItems']
      end
      if attributes.has_key?(:'DisplayNullString')
          self.display_null_string = attributes[:'DisplayNullString']
      end
      if attributes.has_key?(:'EnableDataValueEditing')
          self.enable_data_value_editing = attributes[:'EnableDataValueEditing']
      end
      if attributes.has_key?(:'EnableDrilldown')
          self.enable_drilldown = attributes[:'EnableDrilldown']
      end
      if attributes.has_key?(:'EnableFieldDialog')
          self.enable_field_dialog = attributes[:'EnableFieldDialog']
      end
      if attributes.has_key?(:'EnableFieldList')
          self.enable_field_list = attributes[:'EnableFieldList']
      end
      if attributes.has_key?(:'EnableWizard')
          self.enable_wizard = attributes[:'EnableWizard']
      end
      if attributes.has_key?(:'ErrorString')
          self.error_string = attributes[:'ErrorString']
      end
      if attributes.has_key?(:'FieldListSortAscending')
          self.field_list_sort_ascending = attributes[:'FieldListSortAscending']
      end
      if attributes.has_key?(:'GrandTotalName')
          self.grand_total_name = attributes[:'GrandTotalName']
      end
      if attributes.has_key?(:'HasBlankRows')
          self.has_blank_rows = attributes[:'HasBlankRows']
      end
      if attributes.has_key?(:'Indent')
          self.indent = attributes[:'Indent']
      end
      if attributes.has_key?(:'IsAutoFormat')
          self.is_auto_format = attributes[:'IsAutoFormat']
      end
      if attributes.has_key?(:'IsGridDropZones')
          self.is_grid_drop_zones = attributes[:'IsGridDropZones']
      end
      if attributes.has_key?(:'IsMultipleFieldFilters')
          self.is_multiple_field_filters = attributes[:'IsMultipleFieldFilters']
      end
      if attributes.has_key?(:'IsSelected')
          self.is_selected = attributes[:'IsSelected']
      end
      if attributes.has_key?(:'ItemPrintTitles')
          self.item_print_titles = attributes[:'ItemPrintTitles']
      end
      if attributes.has_key?(:'ManualUpdate')
          self.manual_update = attributes[:'ManualUpdate']
      end
      if attributes.has_key?(:'MergeLabels')
          self.merge_labels = attributes[:'MergeLabels']
      end
      if attributes.has_key?(:'MissingItemsLimit')
          self.missing_items_limit = attributes[:'MissingItemsLimit']
      end
      if attributes.has_key?(:'Name')
          self.name = attributes[:'Name']
      end
      if attributes.has_key?(:'NullString')
          self.null_string = attributes[:'NullString']
      end
      if attributes.has_key?(:'PageFieldOrder')
          self.page_field_order = attributes[:'PageFieldOrder']
      end
      if attributes.has_key?(:'PageFields')
          self.page_fields = attributes[:'PageFields']
      end
      if attributes.has_key?(:'PageFieldWrapCount')
          self.page_field_wrap_count = attributes[:'PageFieldWrapCount']
      end
      if attributes.has_key?(:'PivotFilters')
          self.pivot_filters = attributes[:'PivotFilters']
      end
      if attributes.has_key?(:'PivotTableStyleName')
          self.pivot_table_style_name = attributes[:'PivotTableStyleName']
      end
      if attributes.has_key?(:'PivotTableStyleType')
          self.pivot_table_style_type = attributes[:'PivotTableStyleType']
      end
      if attributes.has_key?(:'PreserveFormatting')
          self.preserve_formatting = attributes[:'PreserveFormatting']
      end
      if attributes.has_key?(:'PrintDrill')
          self.print_drill = attributes[:'PrintDrill']
      end
      if attributes.has_key?(:'PrintTitles')
          self.print_titles = attributes[:'PrintTitles']
      end
      if attributes.has_key?(:'RefreshDataFlag')
          self.refresh_data_flag = attributes[:'RefreshDataFlag']
      end
      if attributes.has_key?(:'RefreshDataOnOpeningFile')
          self.refresh_data_on_opening_file = attributes[:'RefreshDataOnOpeningFile']
      end
      if attributes.has_key?(:'RowFields')
          self.row_fields = attributes[:'RowFields']
      end
      if attributes.has_key?(:'RowGrand')
          self.row_grand = attributes[:'RowGrand']
      end
      if attributes.has_key?(:'RowHeaderCaption')
          self.row_header_caption = attributes[:'RowHeaderCaption']
      end
      if attributes.has_key?(:'RowRange')
          self.row_range = attributes[:'RowRange']
      end
      if attributes.has_key?(:'SaveData')
          self.save_data = attributes[:'SaveData']
      end
      if attributes.has_key?(:'ShowDataTips')
          self.show_data_tips = attributes[:'ShowDataTips']
      end
      if attributes.has_key?(:'ShowDrill')
          self.show_drill = attributes[:'ShowDrill']
      end
      if attributes.has_key?(:'ShowEmptyCol')
          self.show_empty_col = attributes[:'ShowEmptyCol']
      end
      if attributes.has_key?(:'ShowEmptyRow')
          self.show_empty_row = attributes[:'ShowEmptyRow']
      end
      if attributes.has_key?(:'ShowMemberPropertyTips')
          self.show_member_property_tips = attributes[:'ShowMemberPropertyTips']
      end
      if attributes.has_key?(:'ShowPivotStyleColumnHeader')
          self.show_pivot_style_column_header = attributes[:'ShowPivotStyleColumnHeader']
      end
      if attributes.has_key?(:'ShowPivotStyleColumnStripes')
          self.show_pivot_style_column_stripes = attributes[:'ShowPivotStyleColumnStripes']
      end
      if attributes.has_key?(:'ShowPivotStyleLastColumn')
          self.show_pivot_style_last_column = attributes[:'ShowPivotStyleLastColumn']
      end
      if attributes.has_key?(:'ShowPivotStyleRowHeader')
          self.show_pivot_style_row_header = attributes[:'ShowPivotStyleRowHeader']
      end
      if attributes.has_key?(:'ShowPivotStyleRowStripes')
          self.show_pivot_style_row_stripes = attributes[:'ShowPivotStyleRowStripes']
      end
      if attributes.has_key?(:'ShowRowHeaderCaption')
          self.show_row_header_caption = attributes[:'ShowRowHeaderCaption']
      end
      if attributes.has_key?(:'ShowValuesRow')
          self.show_values_row = attributes[:'ShowValuesRow']
      end
      if attributes.has_key?(:'SubtotalHiddenPageItems')
          self.subtotal_hidden_page_items = attributes[:'SubtotalHiddenPageItems']
      end
      if attributes.has_key?(:'TableRange1')
          self.table_range1 = attributes[:'TableRange1']
      end
      if attributes.has_key?(:'TableRange2')
          self.table_range2 = attributes[:'TableRange2']
      end
      if attributes.has_key?(:'Tag')
          self.tag = attributes[:'Tag']
      end
      if attributes.has_key?(:'link')
          self.link = attributes[:'link']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @alt_text_description.nil?
          invalid_properties.push("invalid value for 'alt_text_description', alt_text_description cannot be nil.")
      end
      if @alt_text_title.nil?
          invalid_properties.push("invalid value for 'alt_text_title', alt_text_title cannot be nil.")
      end
      if @auto_format_type.nil?
          invalid_properties.push("invalid value for 'auto_format_type', auto_format_type cannot be nil.")
      end
      if @base_fields.nil?
          invalid_properties.push("invalid value for 'base_fields', base_fields cannot be nil.")
      end
      if @column_fields.nil?
          invalid_properties.push("invalid value for 'column_fields', column_fields cannot be nil.")
      end
      if @column_grand.nil?
          invalid_properties.push("invalid value for 'column_grand', column_grand cannot be nil.")
      end
      if @column_header_caption.nil?
          invalid_properties.push("invalid value for 'column_header_caption', column_header_caption cannot be nil.")
      end
      if @column_range.nil?
          invalid_properties.push("invalid value for 'column_range', column_range cannot be nil.")
      end
      if @custom_list_sort.nil?
          invalid_properties.push("invalid value for 'custom_list_sort', custom_list_sort cannot be nil.")
      end
      if @data_body_range.nil?
          invalid_properties.push("invalid value for 'data_body_range', data_body_range cannot be nil.")
      end
      if @data_field.nil?
          invalid_properties.push("invalid value for 'data_field', data_field cannot be nil.")
      end
      if @data_fields.nil?
          invalid_properties.push("invalid value for 'data_fields', data_fields cannot be nil.")
      end
      if @data_source.nil?
          invalid_properties.push("invalid value for 'data_source', data_source cannot be nil.")
      end
      if @display_error_string.nil?
          invalid_properties.push("invalid value for 'display_error_string', display_error_string cannot be nil.")
      end
      if @display_immediate_items.nil?
          invalid_properties.push("invalid value for 'display_immediate_items', display_immediate_items cannot be nil.")
      end
      if @display_null_string.nil?
          invalid_properties.push("invalid value for 'display_null_string', display_null_string cannot be nil.")
      end
      if @enable_data_value_editing.nil?
          invalid_properties.push("invalid value for 'enable_data_value_editing', enable_data_value_editing cannot be nil.")
      end
      if @enable_drilldown.nil?
          invalid_properties.push("invalid value for 'enable_drilldown', enable_drilldown cannot be nil.")
      end
      if @enable_field_dialog.nil?
          invalid_properties.push("invalid value for 'enable_field_dialog', enable_field_dialog cannot be nil.")
      end
      if @enable_field_list.nil?
          invalid_properties.push("invalid value for 'enable_field_list', enable_field_list cannot be nil.")
      end
      if @enable_wizard.nil?
          invalid_properties.push("invalid value for 'enable_wizard', enable_wizard cannot be nil.")
      end
      if @error_string.nil?
          invalid_properties.push("invalid value for 'error_string', error_string cannot be nil.")
      end
      if @field_list_sort_ascending.nil?
          invalid_properties.push("invalid value for 'field_list_sort_ascending', field_list_sort_ascending cannot be nil.")
      end
      if @grand_total_name.nil?
          invalid_properties.push("invalid value for 'grand_total_name', grand_total_name cannot be nil.")
      end
      if @has_blank_rows.nil?
          invalid_properties.push("invalid value for 'has_blank_rows', has_blank_rows cannot be nil.")
      end
      if @indent.nil?
          invalid_properties.push("invalid value for 'indent', indent cannot be nil.")
      end
      if @is_auto_format.nil?
          invalid_properties.push("invalid value for 'is_auto_format', is_auto_format cannot be nil.")
      end
      if @is_grid_drop_zones.nil?
          invalid_properties.push("invalid value for 'is_grid_drop_zones', is_grid_drop_zones cannot be nil.")
      end
      if @is_multiple_field_filters.nil?
          invalid_properties.push("invalid value for 'is_multiple_field_filters', is_multiple_field_filters cannot be nil.")
      end
      if @is_selected.nil?
          invalid_properties.push("invalid value for 'is_selected', is_selected cannot be nil.")
      end
      if @item_print_titles.nil?
          invalid_properties.push("invalid value for 'item_print_titles', item_print_titles cannot be nil.")
      end
      if @manual_update.nil?
          invalid_properties.push("invalid value for 'manual_update', manual_update cannot be nil.")
      end
      if @merge_labels.nil?
          invalid_properties.push("invalid value for 'merge_labels', merge_labels cannot be nil.")
      end
      if @missing_items_limit.nil?
          invalid_properties.push("invalid value for 'missing_items_limit', missing_items_limit cannot be nil.")
      end
      if @name.nil?
          invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end
      if @null_string.nil?
          invalid_properties.push("invalid value for 'null_string', null_string cannot be nil.")
      end
      if @page_field_order.nil?
          invalid_properties.push("invalid value for 'page_field_order', page_field_order cannot be nil.")
      end
      if @page_fields.nil?
          invalid_properties.push("invalid value for 'page_fields', page_fields cannot be nil.")
      end
      if @page_field_wrap_count.nil?
          invalid_properties.push("invalid value for 'page_field_wrap_count', page_field_wrap_count cannot be nil.")
      end
      if @pivot_filters.nil?
          invalid_properties.push("invalid value for 'pivot_filters', pivot_filters cannot be nil.")
      end
      if @pivot_table_style_name.nil?
          invalid_properties.push("invalid value for 'pivot_table_style_name', pivot_table_style_name cannot be nil.")
      end
      if @pivot_table_style_type.nil?
          invalid_properties.push("invalid value for 'pivot_table_style_type', pivot_table_style_type cannot be nil.")
      end
      if @preserve_formatting.nil?
          invalid_properties.push("invalid value for 'preserve_formatting', preserve_formatting cannot be nil.")
      end
      if @print_drill.nil?
          invalid_properties.push("invalid value for 'print_drill', print_drill cannot be nil.")
      end
      if @print_titles.nil?
          invalid_properties.push("invalid value for 'print_titles', print_titles cannot be nil.")
      end
      if @refresh_data_flag.nil?
          invalid_properties.push("invalid value for 'refresh_data_flag', refresh_data_flag cannot be nil.")
      end
      if @refresh_data_on_opening_file.nil?
          invalid_properties.push("invalid value for 'refresh_data_on_opening_file', refresh_data_on_opening_file cannot be nil.")
      end
      if @row_fields.nil?
          invalid_properties.push("invalid value for 'row_fields', row_fields cannot be nil.")
      end
      if @row_grand.nil?
          invalid_properties.push("invalid value for 'row_grand', row_grand cannot be nil.")
      end
      if @row_header_caption.nil?
          invalid_properties.push("invalid value for 'row_header_caption', row_header_caption cannot be nil.")
      end
      if @row_range.nil?
          invalid_properties.push("invalid value for 'row_range', row_range cannot be nil.")
      end
      if @save_data.nil?
          invalid_properties.push("invalid value for 'save_data', save_data cannot be nil.")
      end
      if @show_data_tips.nil?
          invalid_properties.push("invalid value for 'show_data_tips', show_data_tips cannot be nil.")
      end
      if @show_drill.nil?
          invalid_properties.push("invalid value for 'show_drill', show_drill cannot be nil.")
      end
      if @show_empty_col.nil?
          invalid_properties.push("invalid value for 'show_empty_col', show_empty_col cannot be nil.")
      end
      if @show_empty_row.nil?
          invalid_properties.push("invalid value for 'show_empty_row', show_empty_row cannot be nil.")
      end
      if @show_member_property_tips.nil?
          invalid_properties.push("invalid value for 'show_member_property_tips', show_member_property_tips cannot be nil.")
      end
      if @show_pivot_style_column_header.nil?
          invalid_properties.push("invalid value for 'show_pivot_style_column_header', show_pivot_style_column_header cannot be nil.")
      end
      if @show_pivot_style_column_stripes.nil?
          invalid_properties.push("invalid value for 'show_pivot_style_column_stripes', show_pivot_style_column_stripes cannot be nil.")
      end
      if @show_pivot_style_last_column.nil?
          invalid_properties.push("invalid value for 'show_pivot_style_last_column', show_pivot_style_last_column cannot be nil.")
      end
      if @show_pivot_style_row_header.nil?
          invalid_properties.push("invalid value for 'show_pivot_style_row_header', show_pivot_style_row_header cannot be nil.")
      end
      if @show_pivot_style_row_stripes.nil?
          invalid_properties.push("invalid value for 'show_pivot_style_row_stripes', show_pivot_style_row_stripes cannot be nil.")
      end
      if @show_row_header_caption.nil?
          invalid_properties.push("invalid value for 'show_row_header_caption', show_row_header_caption cannot be nil.")
      end
      if @show_values_row.nil?
          invalid_properties.push("invalid value for 'show_values_row', show_values_row cannot be nil.")
      end
      if @subtotal_hidden_page_items.nil?
          invalid_properties.push("invalid value for 'subtotal_hidden_page_items', subtotal_hidden_page_items cannot be nil.")
      end
      if @table_range1.nil?
          invalid_properties.push("invalid value for 'table_range1', table_range1 cannot be nil.")
      end
      if @table_range2.nil?
          invalid_properties.push("invalid value for 'table_range2', table_range2 cannot be nil.")
      end
      if @tag.nil?
          invalid_properties.push("invalid value for 'tag', tag cannot be nil.")
      end
      if @link.nil?
          invalid_properties.push("invalid value for 'link', link cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @alt_text_description.nil?
      return false if @alt_text_title.nil?
      return false if @auto_format_type.nil?
      return false if @base_fields.nil?
      return false if @column_fields.nil?
      return false if @column_grand.nil?
      return false if @column_header_caption.nil?
      return false if @column_range.nil?
      return false if @custom_list_sort.nil?
      return false if @data_body_range.nil?
      return false if @data_field.nil?
      return false if @data_fields.nil?
      return false if @data_source.nil?
      return false if @display_error_string.nil?
      return false if @display_immediate_items.nil?
      return false if @display_null_string.nil?
      return false if @enable_data_value_editing.nil?
      return false if @enable_drilldown.nil?
      return false if @enable_field_dialog.nil?
      return false if @enable_field_list.nil?
      return false if @enable_wizard.nil?
      return false if @error_string.nil?
      return false if @field_list_sort_ascending.nil?
      return false if @grand_total_name.nil?
      return false if @has_blank_rows.nil?
      return false if @indent.nil?
      return false if @is_auto_format.nil?
      return false if @is_grid_drop_zones.nil?
      return false if @is_multiple_field_filters.nil?
      return false if @is_selected.nil?
      return false if @item_print_titles.nil?
      return false if @manual_update.nil?
      return false if @merge_labels.nil?
      return false if @missing_items_limit.nil?
      return false if @name.nil?
      return false if @null_string.nil?
      return false if @page_field_order.nil?
      return false if @page_fields.nil?
      return false if @page_field_wrap_count.nil?
      return false if @pivot_filters.nil?
      return false if @pivot_table_style_name.nil?
      return false if @pivot_table_style_type.nil?
      return false if @preserve_formatting.nil?
      return false if @print_drill.nil?
      return false if @print_titles.nil?
      return false if @refresh_data_flag.nil?
      return false if @refresh_data_on_opening_file.nil?
      return false if @row_fields.nil?
      return false if @row_grand.nil?
      return false if @row_header_caption.nil?
      return false if @row_range.nil?
      return false if @save_data.nil?
      return false if @show_data_tips.nil?
      return false if @show_drill.nil?
      return false if @show_empty_col.nil?
      return false if @show_empty_row.nil?
      return false if @show_member_property_tips.nil?
      return false if @show_pivot_style_column_header.nil?
      return false if @show_pivot_style_column_stripes.nil?
      return false if @show_pivot_style_last_column.nil?
      return false if @show_pivot_style_row_header.nil?
      return false if @show_pivot_style_row_stripes.nil?
      return false if @show_row_header_caption.nil?
      return false if @show_values_row.nil?
      return false if @subtotal_hidden_page_items.nil?
      return false if @table_range1.nil?
      return false if @table_range2.nil?
      return false if @tag.nil?
      return false if @link.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          alt_text_description == o.alt_text_description &&
          alt_text_title == o.alt_text_title &&
          auto_format_type == o.auto_format_type &&
          base_fields == o.base_fields &&
          column_fields == o.column_fields &&
          column_grand == o.column_grand &&
          column_header_caption == o.column_header_caption &&
          column_range == o.column_range &&
          custom_list_sort == o.custom_list_sort &&
          data_body_range == o.data_body_range &&
          data_field == o.data_field &&
          data_fields == o.data_fields &&
          data_source == o.data_source &&
          display_error_string == o.display_error_string &&
          display_immediate_items == o.display_immediate_items &&
          display_null_string == o.display_null_string &&
          enable_data_value_editing == o.enable_data_value_editing &&
          enable_drilldown == o.enable_drilldown &&
          enable_field_dialog == o.enable_field_dialog &&
          enable_field_list == o.enable_field_list &&
          enable_wizard == o.enable_wizard &&
          error_string == o.error_string &&
          field_list_sort_ascending == o.field_list_sort_ascending &&
          grand_total_name == o.grand_total_name &&
          has_blank_rows == o.has_blank_rows &&
          indent == o.indent &&
          is_auto_format == o.is_auto_format &&
          is_grid_drop_zones == o.is_grid_drop_zones &&
          is_multiple_field_filters == o.is_multiple_field_filters &&
          is_selected == o.is_selected &&
          item_print_titles == o.item_print_titles &&
          manual_update == o.manual_update &&
          merge_labels == o.merge_labels &&
          missing_items_limit == o.missing_items_limit &&
          name == o.name &&
          null_string == o.null_string &&
          page_field_order == o.page_field_order &&
          page_fields == o.page_fields &&
          page_field_wrap_count == o.page_field_wrap_count &&
          pivot_filters == o.pivot_filters &&
          pivot_table_style_name == o.pivot_table_style_name &&
          pivot_table_style_type == o.pivot_table_style_type &&
          preserve_formatting == o.preserve_formatting &&
          print_drill == o.print_drill &&
          print_titles == o.print_titles &&
          refresh_data_flag == o.refresh_data_flag &&
          refresh_data_on_opening_file == o.refresh_data_on_opening_file &&
          row_fields == o.row_fields &&
          row_grand == o.row_grand &&
          row_header_caption == o.row_header_caption &&
          row_range == o.row_range &&
          save_data == o.save_data &&
          show_data_tips == o.show_data_tips &&
          show_drill == o.show_drill &&
          show_empty_col == o.show_empty_col &&
          show_empty_row == o.show_empty_row &&
          show_member_property_tips == o.show_member_property_tips &&
          show_pivot_style_column_header == o.show_pivot_style_column_header &&
          show_pivot_style_column_stripes == o.show_pivot_style_column_stripes &&
          show_pivot_style_last_column == o.show_pivot_style_last_column &&
          show_pivot_style_row_header == o.show_pivot_style_row_header &&
          show_pivot_style_row_stripes == o.show_pivot_style_row_stripes &&
          show_row_header_caption == o.show_row_header_caption &&
          show_values_row == o.show_values_row &&
          subtotal_hidden_page_items == o.subtotal_hidden_page_items &&
          table_range1 == o.table_range1 &&
          table_range2 == o.table_range2 &&
          tag == o.tag &&
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
      [ alt_text_description , alt_text_title , auto_format_type , base_fields , column_fields , column_grand , column_header_caption , column_range , custom_list_sort , data_body_range , data_field , data_fields , data_source , display_error_string , display_immediate_items , display_null_string , enable_data_value_editing , enable_drilldown , enable_field_dialog , enable_field_list , enable_wizard , error_string , field_list_sort_ascending , grand_total_name , has_blank_rows , indent , is_auto_format , is_grid_drop_zones , is_multiple_field_filters , is_selected , item_print_titles , manual_update , merge_labels , missing_items_limit , name , null_string , page_field_order , page_fields , page_field_wrap_count , pivot_filters , pivot_table_style_name , pivot_table_style_type , preserve_formatting , print_drill , print_titles , refresh_data_flag , refresh_data_on_opening_file , row_fields , row_grand , row_header_caption , row_range , save_data , show_data_tips , show_drill , show_empty_col , show_empty_row , show_member_property_tips , show_pivot_style_column_header , show_pivot_style_column_stripes , show_pivot_style_last_column , show_pivot_style_row_header , show_pivot_style_row_stripes , show_row_header_caption , show_values_row , subtotal_hidden_page_items , table_range1 , table_range2 , tag , link ].hash
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
