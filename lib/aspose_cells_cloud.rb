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

# Common files
require 'aspose_cells_cloud/api_client'
require 'aspose_cells_cloud/api_error'
require 'aspose_cells_cloud/version'
require 'aspose_cells_cloud/configuration'

# Models
require 'aspose_cells_cloud/models/above_average'
require 'aspose_cells_cloud/models/access_token_response'
require 'aspose_cells_cloud/models/area'
require 'aspose_cells_cloud/models/auto_fitter_options'
require 'aspose_cells_cloud/models/border'
require 'aspose_cells_cloud/models/calculation_options'
require 'aspose_cells_cloud/models/cell_area'
require 'aspose_cells_cloud/models/cell_value'
require 'aspose_cells_cloud/models/cells_cloud_response'
require 'aspose_cells_cloud/models/cells_color'
require 'aspose_cells_cloud/models/color'
require 'aspose_cells_cloud/models/color_filter'
require 'aspose_cells_cloud/models/color_filter_request'
require 'aspose_cells_cloud/models/color_scale'
require 'aspose_cells_cloud/models/conditional_formatting_icon'
require 'aspose_cells_cloud/models/conditional_formatting_value'
require 'aspose_cells_cloud/models/copy_options'
require 'aspose_cells_cloud/models/create_pivot_table_request'
require 'aspose_cells_cloud/models/custom_filter'
require 'aspose_cells_cloud/models/custom_parser_config'
require 'aspose_cells_cloud/models/data_bar'
require 'aspose_cells_cloud/models/data_bar_border'
require 'aspose_cells_cloud/models/data_sorter'
require 'aspose_cells_cloud/models/disc_usage'
require 'aspose_cells_cloud/models/dynamic_filter'
require 'aspose_cells_cloud/models/error'
require 'aspose_cells_cloud/models/error_details'
require 'aspose_cells_cloud/models/file_source'
require 'aspose_cells_cloud/models/file_versions'
require 'aspose_cells_cloud/models/files_list'
require 'aspose_cells_cloud/models/files_upload_result'
require 'aspose_cells_cloud/models/fill_format'
require 'aspose_cells_cloud/models/filter_column'
require 'aspose_cells_cloud/models/font'
require 'aspose_cells_cloud/models/font_setting'
require 'aspose_cells_cloud/models/gradient_fill'
require 'aspose_cells_cloud/models/gradient_fill_stop'
require 'aspose_cells_cloud/models/horizontal_page_break'
require 'aspose_cells_cloud/models/icon_filter'
require 'aspose_cells_cloud/models/icon_set'
require 'aspose_cells_cloud/models/import_option'
require 'aspose_cells_cloud/models/line'
require 'aspose_cells_cloud/models/link'
require 'aspose_cells_cloud/models/link_element'
require 'aspose_cells_cloud/models/list_column'
require 'aspose_cells_cloud/models/multiple_filter'
require 'aspose_cells_cloud/models/multiple_filters'
require 'aspose_cells_cloud/models/negative_bar_format'
require 'aspose_cells_cloud/models/object_exist'
require 'aspose_cells_cloud/models/operate_object'
require 'aspose_cells_cloud/models/operate_object_position'
require 'aspose_cells_cloud/models/operate_parameter'
require 'aspose_cells_cloud/models/page_section'
require 'aspose_cells_cloud/models/password_request'
require 'aspose_cells_cloud/models/paste_options'
require 'aspose_cells_cloud/models/pattern_fill'
require 'aspose_cells_cloud/models/pdf_security_options'
require 'aspose_cells_cloud/models/pic_format_option'
require 'aspose_cells_cloud/models/pivot_field'
require 'aspose_cells_cloud/models/pivot_filter'
require 'aspose_cells_cloud/models/pivot_item'
require 'aspose_cells_cloud/models/pivot_table_field_request'
require 'aspose_cells_cloud/models/protect_sheet_parameter'
require 'aspose_cells_cloud/models/range'
require 'aspose_cells_cloud/models/range_copy_request'
require 'aspose_cells_cloud/models/range_set_outline_border_request'
require 'aspose_cells_cloud/models/range_set_style_request'
require 'aspose_cells_cloud/models/ranges'
require 'aspose_cells_cloud/models/result_destination'
require 'aspose_cells_cloud/models/save_options'
require 'aspose_cells_cloud/models/save_result'
require 'aspose_cells_cloud/models/shadow_effect'
require 'aspose_cells_cloud/models/single_value'
require 'aspose_cells_cloud/models/solid_fill'
require 'aspose_cells_cloud/models/sort_key'
require 'aspose_cells_cloud/models/split_result'
require 'aspose_cells_cloud/models/storage_exist'
require 'aspose_cells_cloud/models/storage_file'
require 'aspose_cells_cloud/models/task_data'
require 'aspose_cells_cloud/models/task_description'
require 'aspose_cells_cloud/models/task_parameter'
require 'aspose_cells_cloud/models/texture_fill'
require 'aspose_cells_cloud/models/theme_color'
require 'aspose_cells_cloud/models/tile_pic_option'
require 'aspose_cells_cloud/models/top10'
require 'aspose_cells_cloud/models/top10_filter'
require 'aspose_cells_cloud/models/value_type'
require 'aspose_cells_cloud/models/vertical_page_break'
require 'aspose_cells_cloud/models/workbook'
require 'aspose_cells_cloud/models/workbook_encryption_request'
require 'aspose_cells_cloud/models/workbook_protection_request'
require 'aspose_cells_cloud/models/workbook_settings'
require 'aspose_cells_cloud/models/worksheet'
require 'aspose_cells_cloud/models/worksheet_moving_request'
require 'aspose_cells_cloud/models/auto_filter'
require 'aspose_cells_cloud/models/auto_filter_response'
require 'aspose_cells_cloud/models/auto_shape_response'
require 'aspose_cells_cloud/models/auto_shapes'
require 'aspose_cells_cloud/models/auto_shapes_response'
require 'aspose_cells_cloud/models/cell'
require 'aspose_cells_cloud/models/cell_response'
require 'aspose_cells_cloud/models/cells'
require 'aspose_cells_cloud/models/cells_document_properties'
require 'aspose_cells_cloud/models/cells_document_properties_response'
require 'aspose_cells_cloud/models/cells_document_property'
require 'aspose_cells_cloud/models/cells_document_property_response'
require 'aspose_cells_cloud/models/cells_object_operate_task_parameter'
require 'aspose_cells_cloud/models/cells_response'
require 'aspose_cells_cloud/models/chart'
require 'aspose_cells_cloud/models/chart_area_response'
require 'aspose_cells_cloud/models/chart_frame'
require 'aspose_cells_cloud/models/chart_operate_parameter'
require 'aspose_cells_cloud/models/charts'
require 'aspose_cells_cloud/models/charts_response'
require 'aspose_cells_cloud/models/column'
require 'aspose_cells_cloud/models/column_response'
require 'aspose_cells_cloud/models/columns'
require 'aspose_cells_cloud/models/columns_response'
require 'aspose_cells_cloud/models/comment'
require 'aspose_cells_cloud/models/comment_response'
require 'aspose_cells_cloud/models/comments'
require 'aspose_cells_cloud/models/comments_response'
require 'aspose_cells_cloud/models/conditional_formatting'
require 'aspose_cells_cloud/models/conditional_formatting_response'
require 'aspose_cells_cloud/models/conditional_formattings'
require 'aspose_cells_cloud/models/conditional_formattings_response'
require 'aspose_cells_cloud/models/convert_task_parameter'
require 'aspose_cells_cloud/models/dif_save_options'
require 'aspose_cells_cloud/models/file_version'
require 'aspose_cells_cloud/models/fill_format_response'
require 'aspose_cells_cloud/models/format_condition'
require 'aspose_cells_cloud/models/horizontal_page_break_response'
require 'aspose_cells_cloud/models/horizontal_page_breaks'
require 'aspose_cells_cloud/models/horizontal_page_breaks_response'
require 'aspose_cells_cloud/models/html_save_options'
require 'aspose_cells_cloud/models/hyperlink'
require 'aspose_cells_cloud/models/hyperlink_response'
require 'aspose_cells_cloud/models/hyperlinks'
require 'aspose_cells_cloud/models/hyperlinks_response'
require 'aspose_cells_cloud/models/image_save_options'
require 'aspose_cells_cloud/models/import_batch_data_option'
require 'aspose_cells_cloud/models/import_csv_data_option'
require 'aspose_cells_cloud/models/import_data_task_parameter'
require 'aspose_cells_cloud/models/import_double_array_option'
require 'aspose_cells_cloud/models/import_int_array_option'
require 'aspose_cells_cloud/models/import_string_array_option'
require 'aspose_cells_cloud/models/legend_response'
require 'aspose_cells_cloud/models/line_format'
require 'aspose_cells_cloud/models/line_response'
require 'aspose_cells_cloud/models/list_object'
require 'aspose_cells_cloud/models/list_object_operate_parameter'
require 'aspose_cells_cloud/models/list_object_response'
require 'aspose_cells_cloud/models/list_objects'
require 'aspose_cells_cloud/models/list_objects_response'
require 'aspose_cells_cloud/models/m_html_save_options'
require 'aspose_cells_cloud/models/markdown_save_options'
require 'aspose_cells_cloud/models/merged_cell'
require 'aspose_cells_cloud/models/merged_cell_response'
require 'aspose_cells_cloud/models/merged_cells'
require 'aspose_cells_cloud/models/merged_cells_response'
require 'aspose_cells_cloud/models/name'
require 'aspose_cells_cloud/models/name_response'
require 'aspose_cells_cloud/models/names'
require 'aspose_cells_cloud/models/names_response'
require 'aspose_cells_cloud/models/ods_save_options'
require 'aspose_cells_cloud/models/ole_object_response'
require 'aspose_cells_cloud/models/ole_objects'
require 'aspose_cells_cloud/models/ole_objects_response'
require 'aspose_cells_cloud/models/ooxml_save_options'
require 'aspose_cells_cloud/models/page_break_operate_parameter'
require 'aspose_cells_cloud/models/page_sections_response'
require 'aspose_cells_cloud/models/page_setup'
require 'aspose_cells_cloud/models/page_setup_operate_parameter'
require 'aspose_cells_cloud/models/page_setup_response'
require 'aspose_cells_cloud/models/pdf_save_options'
require 'aspose_cells_cloud/models/picture_response'
require 'aspose_cells_cloud/models/pictures'
require 'aspose_cells_cloud/models/pictures_response'
require 'aspose_cells_cloud/models/pivot_field_response'
require 'aspose_cells_cloud/models/pivot_filter_response'
require 'aspose_cells_cloud/models/pivot_filters_response'
require 'aspose_cells_cloud/models/pivot_table'
require 'aspose_cells_cloud/models/pivot_table_operate_parameter'
require 'aspose_cells_cloud/models/pivot_table_response'
require 'aspose_cells_cloud/models/pivot_tables'
require 'aspose_cells_cloud/models/pivot_tables_response'
require 'aspose_cells_cloud/models/range_value_response'
require 'aspose_cells_cloud/models/ranges_response'
require 'aspose_cells_cloud/models/row'
require 'aspose_cells_cloud/models/row_response'
require 'aspose_cells_cloud/models/rows'
require 'aspose_cells_cloud/models/rows_response'
require 'aspose_cells_cloud/models/save_response'
require 'aspose_cells_cloud/models/save_result_task_parameter'
require 'aspose_cells_cloud/models/shape'
require 'aspose_cells_cloud/models/shape_operate_parameter'
require 'aspose_cells_cloud/models/shape_response'
require 'aspose_cells_cloud/models/shapes'
require 'aspose_cells_cloud/models/shapes_response'
require 'aspose_cells_cloud/models/single_value_response'
require 'aspose_cells_cloud/models/smart_marker_task_parameter'
require 'aspose_cells_cloud/models/split_result_document'
require 'aspose_cells_cloud/models/split_result_response'
require 'aspose_cells_cloud/models/split_workbook_task_parameter'
require 'aspose_cells_cloud/models/spreadsheet_ml2003_save_options'
require 'aspose_cells_cloud/models/style'
require 'aspose_cells_cloud/models/style_response'
require 'aspose_cells_cloud/models/svg_save_options'
require 'aspose_cells_cloud/models/text_item'
require 'aspose_cells_cloud/models/text_items'
require 'aspose_cells_cloud/models/text_items_response'
require 'aspose_cells_cloud/models/text_options'
require 'aspose_cells_cloud/models/title_response'
require 'aspose_cells_cloud/models/txt_save_options'
require 'aspose_cells_cloud/models/validation'
require 'aspose_cells_cloud/models/validation_response'
require 'aspose_cells_cloud/models/validations'
require 'aspose_cells_cloud/models/validations_response'
require 'aspose_cells_cloud/models/vertical_page_break_response'
require 'aspose_cells_cloud/models/vertical_page_breaks'
require 'aspose_cells_cloud/models/vertical_page_breaks_response'
require 'aspose_cells_cloud/models/workbook_operate_parameter'
require 'aspose_cells_cloud/models/workbook_replace_response'
require 'aspose_cells_cloud/models/workbook_response'
require 'aspose_cells_cloud/models/workbook_settings_operate_parameter'
require 'aspose_cells_cloud/models/workbook_settings_response'
require 'aspose_cells_cloud/models/worksheet_replace_response'
require 'aspose_cells_cloud/models/worksheet_response'
require 'aspose_cells_cloud/models/worksheets'
require 'aspose_cells_cloud/models/worksheets_response'
require 'aspose_cells_cloud/models/xls_save_options'
require 'aspose_cells_cloud/models/xlsb_save_options'
require 'aspose_cells_cloud/models/xps_save_options'
require 'aspose_cells_cloud/models/auto_shape'
require 'aspose_cells_cloud/models/chart_area'
require 'aspose_cells_cloud/models/legend'
require 'aspose_cells_cloud/models/ole_object'
require 'aspose_cells_cloud/models/picture'
require 'aspose_cells_cloud/models/title'

# APIs
require 'aspose_cells_cloud/api/cells_api'

module AsposeCellsCloud
  class << self
    # Customize default settings for the SDK using block.
    #   AsposeCellsCloud.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
