=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="CellsApi.cs">
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


require "uri"

module AsposeCellsCloud
  class CellsApi
    attr_accessor :api_client

    def initialize(client_id,client_secret, app_version = 'v3.0', app_host = 'api.aspose.cloud',  api_client = ApiClient.default)
      @api_client = api_client
      @api_client.config.client_secret = client_secret
      @api_client.config.client_id = client_id
      @api_client.config.api_version = app_version
      @api_client.config.host = app_host
    end

    # Get auto filters description in worksheet.

    def get_worksheet_auto_filter( get_worksheet_auto_filter_request, opts = {})

       data, _status_code, _headers = get_worksheet_auto_filter_request.create_http_request(@api_client,opts )
       return data
    end

    # Adds date filter in worksheet.

    def put_worksheet_date_filter( put_worksheet_date_filter_request, opts = {})

       data, _status_code, _headers = put_worksheet_date_filter_request.create_http_request(@api_client,opts )
       return data
    end

    # Adds a filter for a filter column in worksheet.
    #             

    def put_worksheet_filter( put_worksheet_filter_request, opts = {})

       data, _status_code, _headers = put_worksheet_filter_request.create_http_request(@api_client,opts )
       return data
    end

    # Adds an icon filter in worksheet.

    def put_worksheet_icon_filter( put_worksheet_icon_filter_request, opts = {})

       data, _status_code, _headers = put_worksheet_icon_filter_request.create_http_request(@api_client,opts )
       return data
    end

    # Filters a list with a custom criteria in worksheet.
    #             

    def put_worksheet_custom_filter( put_worksheet_custom_filter_request, opts = {})

       data, _status_code, _headers = put_worksheet_custom_filter_request.create_http_request(@api_client,opts )
       return data
    end

    # Adds a dynamic filter in worksheet.

    def put_worksheet_dynamic_filter( put_worksheet_dynamic_filter_request, opts = {})

       data, _status_code, _headers = put_worksheet_dynamic_filter_request.create_http_request(@api_client,opts )
       return data
    end

    # Filters the top 10 item in the list in worksheet

    def put_worksheet_filter_top10( put_worksheet_filter_top10_request, opts = {})

       data, _status_code, _headers = put_worksheet_filter_top10_request.create_http_request(@api_client,opts )
       return data
    end

    # Adds a color filter in worksheet.

    def put_worksheet_color_filter( put_worksheet_color_filter_request, opts = {})

       data, _status_code, _headers = put_worksheet_color_filter_request.create_http_request(@api_client,opts )
       return data
    end

    # Match all blank cell in the list.

    def post_worksheet_match_blanks( post_worksheet_match_blanks_request, opts = {})

       data, _status_code, _headers = post_worksheet_match_blanks_request.create_http_request(@api_client,opts )
       return data
    end

    # Match all not blank cell in the list.
    #             

    def post_worksheet_match_non_blanks( post_worksheet_match_non_blanks_request, opts = {})

       data, _status_code, _headers = post_worksheet_match_non_blanks_request.create_http_request(@api_client,opts )
       return data
    end

    # Refresh auto filters in worksheet.

    def post_worksheet_auto_filter_refresh( post_worksheet_auto_filter_refresh_request, opts = {})

       data, _status_code, _headers = post_worksheet_auto_filter_refresh_request.create_http_request(@api_client,opts )
       return data
    end

    # Removes a date filter in worksheet.
    #             

    def delete_worksheet_date_filter( delete_worksheet_date_filter_request, opts = {})

       data, _status_code, _headers = delete_worksheet_date_filter_request.create_http_request(@api_client,opts )
       return data
    end

    # Deletes a filter for a filter column in worksheet.
    #             

    def delete_worksheet_filter( delete_worksheet_filter_request, opts = {})

       data, _status_code, _headers = delete_worksheet_filter_request.create_http_request(@api_client,opts )
       return data
    end

    # Get autoshapes description in worksheet.

    def get_worksheet_autoshapes( get_worksheet_autoshapes_request, opts = {})

       data, _status_code, _headers = get_worksheet_autoshapes_request.create_http_request(@api_client,opts )
       return data
    end

    # Get autoshape description in some format.

    def get_worksheet_autoshape_with_format( get_worksheet_autoshape_with_format_request, opts = {})

       data, _status_code, _headers = get_worksheet_autoshape_with_format_request.create_http_request(@api_client,opts )
       return data
    end


    def post_batch_convert( post_batch_convert_request, opts = {})

       data, _status_code, _headers = post_batch_convert_request.create_http_request(@api_client,opts )
       return data
    end


    def post_batch_protect( post_batch_protect_request, opts = {})

       data, _status_code, _headers = post_batch_protect_request.create_http_request(@api_client,opts )
       return data
    end


    def post_batch_lock( post_batch_lock_request, opts = {})

       data, _status_code, _headers = post_batch_lock_request.create_http_request(@api_client,opts )
       return data
    end


    def post_batch_unlock( post_batch_unlock_request, opts = {})

       data, _status_code, _headers = post_batch_unlock_request.create_http_request(@api_client,opts )
       return data
    end


    def post_batch_split( post_batch_split_request, opts = {})

       data, _status_code, _headers = post_batch_split_request.create_http_request(@api_client,opts )
       return data
    end

    # Clear cells contents in worksheet.

    def post_clear_contents( post_clear_contents_request, opts = {})

       data, _status_code, _headers = post_clear_contents_request.create_http_request(@api_client,opts )
       return data
    end

    # Clear cells formats in worksheet.

    def post_clear_formats( post_clear_formats_request, opts = {})

       data, _status_code, _headers = post_clear_formats_request.create_http_request(@api_client,opts )
       return data
    end

    # Updates cell's range style in worksheet.

    def post_update_worksheet_range_style( post_update_worksheet_range_style_request, opts = {})

       data, _status_code, _headers = post_update_worksheet_range_style_request.create_http_request(@api_client,opts )
       return data
    end

    # Merge cells in worksheet.

    def post_worksheet_merge( post_worksheet_merge_request, opts = {})

       data, _status_code, _headers = post_worksheet_merge_request.create_http_request(@api_client,opts )
       return data
    end

    # Unmerge cells in worksheet.

    def post_worksheet_unmerge( post_worksheet_unmerge_request, opts = {})

       data, _status_code, _headers = post_worksheet_unmerge_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets cells description in some format.

    def get_worksheet_cells( get_worksheet_cells_request, opts = {})

       data, _status_code, _headers = get_worksheet_cells_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets cell data by cell or method name in worksheet.

    def get_worksheet_cell( get_worksheet_cell_request, opts = {})

       data, _status_code, _headers = get_worksheet_cell_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets cell's style description in worksheet.

    def get_worksheet_cell_style( get_worksheet_cell_style_request, opts = {})

       data, _status_code, _headers = get_worksheet_cell_style_request.create_http_request(@api_client,opts )
       return data
    end

    # Sets cell value by cell name in worksheet.

    def post_worksheet_cell_set_value( post_worksheet_cell_set_value_request, opts = {})

       data, _status_code, _headers = post_worksheet_cell_set_value_request.create_http_request(@api_client,opts )
       return data
    end

    # Sets cell's style by cell name in worksheet.

    def post_update_worksheet_cell_style( post_update_worksheet_cell_style_request, opts = {})

       data, _status_code, _headers = post_update_worksheet_cell_style_request.create_http_request(@api_client,opts )
       return data
    end

    # Sets the value of the range in worksheet.

    def post_set_cell_range_value( post_set_cell_range_value_request, opts = {})

       data, _status_code, _headers = post_set_cell_range_value_request.create_http_request(@api_client,opts )
       return data
    end

    # Copies data to destination cell from a source cell in worksheet.

    def post_copy_cell_into_cell( post_copy_cell_into_cell_request, opts = {})

       data, _status_code, _headers = post_copy_cell_into_cell_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets the html string which contains data and some formats in this cell.

    def get_cell_html_string( get_cell_html_string_request, opts = {})

       data, _status_code, _headers = get_cell_html_string_request.create_http_request(@api_client,opts )
       return data
    end

    # Sets the html string which contains data and some formats in this cell.

    def post_set_cell_html_string( post_set_cell_html_string_request, opts = {})

       data, _status_code, _headers = post_set_cell_html_string_request.create_http_request(@api_client,opts )
       return data
    end

    # Calculates cell formula in worksheet.

    def post_cell_calculate( post_cell_calculate_request, opts = {})

       data, _status_code, _headers = post_cell_calculate_request.create_http_request(@api_client,opts )
       return data
    end

    # Sets cell characters in worksheet.

    def post_cell_characters( post_cell_characters_request, opts = {})

       data, _status_code, _headers = post_cell_characters_request.create_http_request(@api_client,opts )
       return data
    end

    # Get worksheet columns description.

    def get_worksheet_columns( get_worksheet_columns_request, opts = {})

       data, _status_code, _headers = get_worksheet_columns_request.create_http_request(@api_client,opts )
       return data
    end

    # Sets worksheet column width.

    def post_set_worksheet_column_width( post_set_worksheet_column_width_request, opts = {})

       data, _status_code, _headers = post_set_worksheet_column_width_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets worksheet column data by column's index.

    def get_worksheet_column( get_worksheet_column_request, opts = {})

       data, _status_code, _headers = get_worksheet_column_request.create_http_request(@api_client,opts )
       return data
    end

    # Insert worksheet columns.

    def put_insert_worksheet_columns( put_insert_worksheet_columns_request, opts = {})

       data, _status_code, _headers = put_insert_worksheet_columns_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete worksheet columns.

    def delete_worksheet_columns( delete_worksheet_columns_request, opts = {})

       data, _status_code, _headers = delete_worksheet_columns_request.create_http_request(@api_client,opts )
       return data
    end

    # Hide worksheet columns.

    def post_hide_worksheet_columns( post_hide_worksheet_columns_request, opts = {})

       data, _status_code, _headers = post_hide_worksheet_columns_request.create_http_request(@api_client,opts )
       return data
    end

    # Unhide worksheet columns.

    def post_unhide_worksheet_columns( post_unhide_worksheet_columns_request, opts = {})

       data, _status_code, _headers = post_unhide_worksheet_columns_request.create_http_request(@api_client,opts )
       return data
    end

    # Group worksheet columns.

    def post_group_worksheet_columns( post_group_worksheet_columns_request, opts = {})

       data, _status_code, _headers = post_group_worksheet_columns_request.create_http_request(@api_client,opts )
       return data
    end

    # Ungroup worksheet columns.

    def post_ungroup_worksheet_columns( post_ungroup_worksheet_columns_request, opts = {})

       data, _status_code, _headers = post_ungroup_worksheet_columns_request.create_http_request(@api_client,opts )
       return data
    end

    # Copy data to destination columns from source columns in worksheet.

    def post_copy_worksheet_columns( post_copy_worksheet_columns_request, opts = {})

       data, _status_code, _headers = post_copy_worksheet_columns_request.create_http_request(@api_client,opts )
       return data
    end

    # Sets column style in worksheet.

    def post_column_style( post_column_style_request, opts = {})

       data, _status_code, _headers = post_column_style_request.create_http_request(@api_client,opts )
       return data
    end

    # Get rows description in worksheet.

    def get_worksheet_rows( get_worksheet_rows_request, opts = {})

       data, _status_code, _headers = get_worksheet_rows_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets row data by row's index in worksheet.

    def get_worksheet_row( get_worksheet_row_request, opts = {})

       data, _status_code, _headers = get_worksheet_row_request.create_http_request(@api_client,opts )
       return data
    end

    # Deletes row in worksheet.

    def delete_worksheet_row( delete_worksheet_row_request, opts = {})

       data, _status_code, _headers = delete_worksheet_row_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete several rows in worksheet.

    def delete_worksheet_rows( delete_worksheet_rows_request, opts = {})

       data, _status_code, _headers = delete_worksheet_rows_request.create_http_request(@api_client,opts )
       return data
    end

    # Insert several new rows in worksheet.

    def put_insert_worksheet_rows( put_insert_worksheet_rows_request, opts = {})

       data, _status_code, _headers = put_insert_worksheet_rows_request.create_http_request(@api_client,opts )
       return data
    end

    # Inserts new row in worksheet.

    def put_insert_worksheet_row( put_insert_worksheet_row_request, opts = {})

       data, _status_code, _headers = put_insert_worksheet_row_request.create_http_request(@api_client,opts )
       return data
    end

    # Updates row in worksheet.

    def post_update_worksheet_row( post_update_worksheet_row_request, opts = {})

       data, _status_code, _headers = post_update_worksheet_row_request.create_http_request(@api_client,opts )
       return data
    end

    # Hide rows in worksheet.

    def post_hide_worksheet_rows( post_hide_worksheet_rows_request, opts = {})

       data, _status_code, _headers = post_hide_worksheet_rows_request.create_http_request(@api_client,opts )
       return data
    end

    # Unhide rows in worksheet.

    def post_unhide_worksheet_rows( post_unhide_worksheet_rows_request, opts = {})

       data, _status_code, _headers = post_unhide_worksheet_rows_request.create_http_request(@api_client,opts )
       return data
    end

    # Group rows in worksheet.

    def post_group_worksheet_rows( post_group_worksheet_rows_request, opts = {})

       data, _status_code, _headers = post_group_worksheet_rows_request.create_http_request(@api_client,opts )
       return data
    end

    # Ungroup rows in worksheet.

    def post_ungroup_worksheet_rows( post_ungroup_worksheet_rows_request, opts = {})

       data, _status_code, _headers = post_ungroup_worksheet_rows_request.create_http_request(@api_client,opts )
       return data
    end

    # Copies data and formats of some whole rows in worksheet.

    def post_copy_worksheet_rows( post_copy_worksheet_rows_request, opts = {})

       data, _status_code, _headers = post_copy_worksheet_rows_request.create_http_request(@api_client,opts )
       return data
    end

    # Applies formats for a whole row in worksheet.
    #             

    def post_row_style( post_row_style_request, opts = {})

       data, _status_code, _headers = post_row_style_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets cells description in some format.

    def get_cells_cloud_services_health_check( get_cells_cloud_services_health_check_request, opts = {})

       data, _status_code, _headers = get_cells_cloud_services_health_check_request.create_http_request(@api_client,opts )
       return data
    end

    # Aspose.Cells Cloud service health status check(old). 

    def get_cells_cloud_service_status( get_cells_cloud_service_status_request, opts = {})

       data, _status_code, _headers = get_cells_cloud_service_status_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets chart area description in worksheet.

    def get_chart_area( get_chart_area_request, opts = {})

       data, _status_code, _headers = get_chart_area_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets chart area fill format description in worksheet.

    def get_chart_area_fill_format( get_chart_area_fill_format_request, opts = {})

       data, _status_code, _headers = get_chart_area_fill_format_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets chart area border description.

    def get_chart_area_border( get_chart_area_border_request, opts = {})

       data, _status_code, _headers = get_chart_area_border_request.create_http_request(@api_client,opts )
       return data
    end

    # Get worksheet charts description.

    def get_worksheet_charts( get_worksheet_charts_request, opts = {})

       data, _status_code, _headers = get_worksheet_charts_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets chart in some format.

    def get_worksheet_chart( get_worksheet_chart_request, opts = {})

       data, _status_code, _headers = get_worksheet_chart_request.create_http_request(@api_client,opts )
       return data
    end

    # Adds new chart in worksheet.

    def put_worksheet_add_chart( put_worksheet_add_chart_request, opts = {})

       data, _status_code, _headers = put_worksheet_add_chart_request.create_http_request(@api_client,opts )
       return data
    end

    # Deletes a chart by index in worksheet.

    def delete_worksheet_delete_chart( delete_worksheet_delete_chart_request, opts = {})

       data, _status_code, _headers = delete_worksheet_delete_chart_request.create_http_request(@api_client,opts )
       return data
    end

    # Update chart propreties in worksheet.

    def post_worksheet_chart( post_worksheet_chart_request, opts = {})

       data, _status_code, _headers = post_worksheet_chart_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets chart legend description in worksheet.

    def get_worksheet_chart_legend( get_worksheet_chart_legend_request, opts = {})

       data, _status_code, _headers = get_worksheet_chart_legend_request.create_http_request(@api_client,opts )
       return data
    end

    # Updates chart legend in worksheet.

    def post_worksheet_chart_legend( post_worksheet_chart_legend_request, opts = {})

       data, _status_code, _headers = post_worksheet_chart_legend_request.create_http_request(@api_client,opts )
       return data
    end

    # Show chart legend in worksheet.

    def put_worksheet_chart_legend( put_worksheet_chart_legend_request, opts = {})

       data, _status_code, _headers = put_worksheet_chart_legend_request.create_http_request(@api_client,opts )
       return data
    end

    # Hides chart legend in worksheet.

    def delete_worksheet_chart_legend( delete_worksheet_chart_legend_request, opts = {})

       data, _status_code, _headers = delete_worksheet_chart_legend_request.create_http_request(@api_client,opts )
       return data
    end

    # Clear the charts in worksheets.

    def delete_worksheet_clear_charts( delete_worksheet_clear_charts_request, opts = {})

       data, _status_code, _headers = delete_worksheet_clear_charts_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets chart title description in worksheet.

    def get_worksheet_chart_title( get_worksheet_chart_title_request, opts = {})

       data, _status_code, _headers = get_worksheet_chart_title_request.create_http_request(@api_client,opts )
       return data
    end

    # Update chart title in worksheet.

    def post_worksheet_chart_title( post_worksheet_chart_title_request, opts = {})

       data, _status_code, _headers = post_worksheet_chart_title_request.create_http_request(@api_client,opts )
       return data
    end

    # Add chart title / Set chart title visible

    def put_worksheet_chart_title( put_worksheet_chart_title_request, opts = {})

       data, _status_code, _headers = put_worksheet_chart_title_request.create_http_request(@api_client,opts )
       return data
    end

    # Hides chart title in worksheet.

    def delete_worksheet_chart_title( delete_worksheet_chart_title_request, opts = {})

       data, _status_code, _headers = delete_worksheet_chart_title_request.create_http_request(@api_client,opts )
       return data
    end


    def get_chart_series_axis( get_chart_series_axis_request, opts = {})

       data, _status_code, _headers = get_chart_series_axis_request.create_http_request(@api_client,opts )
       return data
    end


    def get_chart_category_axis( get_chart_category_axis_request, opts = {})

       data, _status_code, _headers = get_chart_category_axis_request.create_http_request(@api_client,opts )
       return data
    end


    def get_chart_value_axis( get_chart_value_axis_request, opts = {})

       data, _status_code, _headers = get_chart_value_axis_request.create_http_request(@api_client,opts )
       return data
    end


    def get_chart_second_category_axis( get_chart_second_category_axis_request, opts = {})

       data, _status_code, _headers = get_chart_second_category_axis_request.create_http_request(@api_client,opts )
       return data
    end


    def get_chart_second_value_axis( get_chart_second_value_axis_request, opts = {})

       data, _status_code, _headers = get_chart_second_value_axis_request.create_http_request(@api_client,opts )
       return data
    end


    def post_chart_series_axis( post_chart_series_axis_request, opts = {})

       data, _status_code, _headers = post_chart_series_axis_request.create_http_request(@api_client,opts )
       return data
    end


    def post_chart_category_axis( post_chart_category_axis_request, opts = {})

       data, _status_code, _headers = post_chart_category_axis_request.create_http_request(@api_client,opts )
       return data
    end


    def post_chart_value_axis( post_chart_value_axis_request, opts = {})

       data, _status_code, _headers = post_chart_value_axis_request.create_http_request(@api_client,opts )
       return data
    end


    def post_chart_second_category_axis( post_chart_second_category_axis_request, opts = {})

       data, _status_code, _headers = post_chart_second_category_axis_request.create_http_request(@api_client,opts )
       return data
    end


    def post_chart_second_value_axis( post_chart_second_value_axis_request, opts = {})

       data, _status_code, _headers = post_chart_second_value_axis_request.create_http_request(@api_client,opts )
       return data
    end

    # Get conditional formattings description.

    def get_worksheet_conditional_formattings( get_worksheet_conditional_formattings_request, opts = {})

       data, _status_code, _headers = get_worksheet_conditional_formattings_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets conditional formatting description in worksheet.

    def get_worksheet_conditional_formatting( get_worksheet_conditional_formatting_request, opts = {})

       data, _status_code, _headers = get_worksheet_conditional_formatting_request.create_http_request(@api_client,opts )
       return data
    end

    # Adds a condition formatting in worksheet.

    def put_worksheet_conditional_formatting( put_worksheet_conditional_formatting_request, opts = {})

       data, _status_code, _headers = put_worksheet_conditional_formatting_request.create_http_request(@api_client,opts )
       return data
    end

    # Adds a format condition in worksheet.

    def put_worksheet_format_condition( put_worksheet_format_condition_request, opts = {})

       data, _status_code, _headers = put_worksheet_format_condition_request.create_http_request(@api_client,opts )
       return data
    end

    # Adds a cell area for format condition.

    def put_worksheet_format_condition_area( put_worksheet_format_condition_area_request, opts = {})

       data, _status_code, _headers = put_worksheet_format_condition_area_request.create_http_request(@api_client,opts )
       return data
    end

    # Adds a condition for format condition.

    def put_worksheet_format_condition_condition( put_worksheet_format_condition_condition_request, opts = {})

       data, _status_code, _headers = put_worksheet_format_condition_condition_request.create_http_request(@api_client,opts )
       return data
    end

    # Clear all condition formattings.

    def delete_worksheet_conditional_formattings( delete_worksheet_conditional_formattings_request, opts = {})

       data, _status_code, _headers = delete_worksheet_conditional_formattings_request.create_http_request(@api_client,opts )
       return data
    end

    # Remove a conditional formatting.

    def delete_worksheet_conditional_formatting( delete_worksheet_conditional_formatting_request, opts = {})

       data, _status_code, _headers = delete_worksheet_conditional_formatting_request.create_http_request(@api_client,opts )
       return data
    end

    # Removes cell area from conditional formatting.

    def delete_worksheet_conditional_formatting_area( delete_worksheet_conditional_formatting_area_request, opts = {})

       data, _status_code, _headers = delete_worksheet_conditional_formatting_area_request.create_http_request(@api_client,opts )
       return data
    end

    # Exports workbook to some format.

    def get_workbook( get_workbook_request, opts = {})

       data, _status_code, _headers = get_workbook_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts workbook from request content to some format.

    def put_convert_workbook( put_convert_workbook_request, opts = {})

       data, _status_code, _headers = put_convert_workbook_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts document and saves result to storage.

    def post_workbook_save_as( post_workbook_save_as_request, opts = {})

       data, _status_code, _headers = post_workbook_save_as_request.create_http_request(@api_client,opts )
       return data
    end


    def post_convert_workbook_to_pdf( post_convert_workbook_to_pdf_request, opts = {})

       data, _status_code, _headers = post_convert_workbook_to_pdf_request.create_http_request(@api_client,opts )
       return data
    end


    def post_convert_workbook_to_png( post_convert_workbook_to_png_request, opts = {})

       data, _status_code, _headers = post_convert_workbook_to_png_request.create_http_request(@api_client,opts )
       return data
    end


    def post_convert_workbook_to_docx( post_convert_workbook_to_docx_request, opts = {})

       data, _status_code, _headers = post_convert_workbook_to_docx_request.create_http_request(@api_client,opts )
       return data
    end


    def post_convert_workbook_to_pptx( post_convert_workbook_to_pptx_request, opts = {})

       data, _status_code, _headers = post_convert_workbook_to_pptx_request.create_http_request(@api_client,opts )
       return data
    end


    def post_convert_workbook_to_html( post_convert_workbook_to_html_request, opts = {})

       data, _status_code, _headers = post_convert_workbook_to_html_request.create_http_request(@api_client,opts )
       return data
    end


    def post_convert_workbook_to_markdown( post_convert_workbook_to_markdown_request, opts = {})

       data, _status_code, _headers = post_convert_workbook_to_markdown_request.create_http_request(@api_client,opts )
       return data
    end


    def post_convert_workbook_to_json( post_convert_workbook_to_json_request, opts = {})

       data, _status_code, _headers = post_convert_workbook_to_json_request.create_http_request(@api_client,opts )
       return data
    end


    def post_convert_workbook_to_sql( post_convert_workbook_to_sql_request, opts = {})

       data, _status_code, _headers = post_convert_workbook_to_sql_request.create_http_request(@api_client,opts )
       return data
    end


    def post_convert_workbook_to_csv( post_convert_workbook_to_csv_request, opts = {})

       data, _status_code, _headers = post_convert_workbook_to_csv_request.create_http_request(@api_client,opts )
       return data
    end

    # Export excel internal elements or itself to kinds of format files.

    def post_export( post_export_request, opts = {})

       data, _status_code, _headers = post_export_request.create_http_request(@api_client,opts )
       return data
    end

    # Export XML data from Excel file. 
    # When there are Xml Maps in Excel file, export xml data. 
    # When there is not xml map in Excel file, convert Excel file to xml file. 

    def post_workbook_export_xml( post_workbook_export_xml_request, opts = {})

       data, _status_code, _headers = post_workbook_export_xml_request.create_http_request(@api_client,opts )
       return data
    end

    # Imports/Updates an XML data file into the workbook.
    # The XML data file can be a cloud file or HTTP URI data.

    def post_workbook_import_json( post_workbook_import_json_request, opts = {})

       data, _status_code, _headers = post_workbook_import_json_request.create_http_request(@api_client,opts )
       return data
    end

    # Imports/Updates an XML data file into the workbook.
    # The XML data file can be a cloud file or HTTP URI data.

    def post_workbook_import_xml( post_workbook_import_xml_request, opts = {})

       data, _status_code, _headers = post_workbook_import_xml_request.create_http_request(@api_client,opts )
       return data
    end

    # Imports data into workbook.

    def post_import_data( post_import_data_request, opts = {})

       data, _status_code, _headers = post_import_data_request.create_http_request(@api_client,opts )
       return data
    end

    # Get hyperlinks description in worksheet.

    def get_worksheet_hyperlinks( get_worksheet_hyperlinks_request, opts = {})

       data, _status_code, _headers = get_worksheet_hyperlinks_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets hyperlink description by index in worksheet.

    def get_worksheet_hyperlink( get_worksheet_hyperlink_request, opts = {})

       data, _status_code, _headers = get_worksheet_hyperlink_request.create_http_request(@api_client,opts )
       return data
    end

    # Deletes hyperlink by index in worksheet.

    def delete_worksheet_hyperlink( delete_worksheet_hyperlink_request, opts = {})

       data, _status_code, _headers = delete_worksheet_hyperlink_request.create_http_request(@api_client,opts )
       return data
    end

    # Updates hyperlink by index in worksheet.

    def post_worksheet_hyperlink( post_worksheet_hyperlink_request, opts = {})

       data, _status_code, _headers = post_worksheet_hyperlink_request.create_http_request(@api_client,opts )
       return data
    end

    # Adds hyperlink in worksheet.

    def put_worksheet_hyperlink( put_worksheet_hyperlink_request, opts = {})

       data, _status_code, _headers = put_worksheet_hyperlink_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete all hyperlinks in worksheet.

    def delete_worksheet_hyperlinks( delete_worksheet_hyperlinks_request, opts = {})

       data, _status_code, _headers = delete_worksheet_hyperlinks_request.create_http_request(@api_client,opts )
       return data
    end

    # Combine data files and template files to kinds of format files. 

    def post_assemble( post_assemble_request, opts = {})

       data, _status_code, _headers = post_assemble_request.create_http_request(@api_client,opts )
       return data
    end

    # Compress XLS, XLSX, XLSM, XLSB, ODS and more

    def post_compress( post_compress_request, opts = {})

       data, _status_code, _headers = post_compress_request.create_http_request(@api_client,opts )
       return data
    end

    # Merge cells in worksheet.

    def post_merge( post_merge_request, opts = {})

       data, _status_code, _headers = post_merge_request.create_http_request(@api_client,opts )
       return data
    end

    # Split Excel spreadsheet files by worksheet, save as kinds of format files.

    def post_split( post_split_request, opts = {})

       data, _status_code, _headers = post_split_request.create_http_request(@api_client,opts )
       return data
    end

    # Search specify the text from excel files.

    def post_search( post_search_request, opts = {})

       data, _status_code, _headers = post_search_request.create_http_request(@api_client,opts )
       return data
    end

    # Use new text to replace specify the text from excel files.

    def post_replace( post_replace_request, opts = {})

       data, _status_code, _headers = post_replace_request.create_http_request(@api_client,opts )
       return data
    end

    # Import data into excel file.

    def post_import( post_import_request, opts = {})

       data, _status_code, _headers = post_import_request.create_http_request(@api_client,opts )
       return data
    end

    # Add Text Watermark to Excel files.

    def post_watermark( post_watermark_request, opts = {})

       data, _status_code, _headers = post_watermark_request.create_http_request(@api_client,opts )
       return data
    end

    # Clear excel internal elements for excel files

    def post_clear_objects( post_clear_objects_request, opts = {})

       data, _status_code, _headers = post_clear_objects_request.create_http_request(@api_client,opts )
       return data
    end

    # Reverse rows or columns of Excel files, save as kinds of format files.

    def post_reverse( post_reverse_request, opts = {})

       data, _status_code, _headers = post_reverse_request.create_http_request(@api_client,opts )
       return data
    end


    def post_repair( post_repair_request, opts = {})

       data, _status_code, _headers = post_repair_request.create_http_request(@api_client,opts )
       return data
    end

    # Reverse rows or columns of Excel files, save as kinds of format files.

    def post_rotate( post_rotate_request, opts = {})

       data, _status_code, _headers = post_rotate_request.create_http_request(@api_client,opts )
       return data
    end


    def post_metadata( post_metadata_request, opts = {})

       data, _status_code, _headers = post_metadata_request.create_http_request(@api_client,opts )
       return data
    end


    def get_metadata( get_metadata_request, opts = {})

       data, _status_code, _headers = get_metadata_request.create_http_request(@api_client,opts )
       return data
    end


    def delete_metadata( delete_metadata_request, opts = {})

       data, _status_code, _headers = delete_metadata_request.create_http_request(@api_client,opts )
       return data
    end

    # Get listobjects description in worksheet.

    def get_worksheet_list_objects( get_worksheet_list_objects_request, opts = {})

       data, _status_code, _headers = get_worksheet_list_objects_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets list object description by index in worksheet.

    def get_worksheet_list_object( get_worksheet_list_object_request, opts = {})

       data, _status_code, _headers = get_worksheet_list_object_request.create_http_request(@api_client,opts )
       return data
    end

    # Adds a list object in worksheet.

    def put_worksheet_list_object( put_worksheet_list_object_request, opts = {})

       data, _status_code, _headers = put_worksheet_list_object_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete worksheet list objects in worksheet.

    def delete_worksheet_list_objects( delete_worksheet_list_objects_request, opts = {})

       data, _status_code, _headers = delete_worksheet_list_objects_request.create_http_request(@api_client,opts )
       return data
    end

    # Deletes list object by index in worksheet.

    def delete_worksheet_list_object( delete_worksheet_list_object_request, opts = {})

       data, _status_code, _headers = delete_worksheet_list_object_request.create_http_request(@api_client,opts )
       return data
    end

    # Updates list object in worksheet.

    def post_worksheet_list_object( post_worksheet_list_object_request, opts = {})

       data, _status_code, _headers = post_worksheet_list_object_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts list object to range in worksheet.

    def post_worksheet_list_object_convert_to_range( post_worksheet_list_object_convert_to_range_request, opts = {})

       data, _status_code, _headers = post_worksheet_list_object_convert_to_range_request.create_http_request(@api_client,opts )
       return data
    end

    # Creates pivot table with list object in worksheet.

    def post_worksheet_list_object_summarize_with_pivot_table( post_worksheet_list_object_summarize_with_pivot_table_request, opts = {})

       data, _status_code, _headers = post_worksheet_list_object_summarize_with_pivot_table_request.create_http_request(@api_client,opts )
       return data
    end

    # Sorts list object in worksheet.

    def post_worksheet_list_object_sort_table( post_worksheet_list_object_sort_table_request, opts = {})

       data, _status_code, _headers = post_worksheet_list_object_sort_table_request.create_http_request(@api_client,opts )
       return data
    end

    # Remove duplicates on list object.

    def post_worksheet_list_object_remove_duplicates( post_worksheet_list_object_remove_duplicates_request, opts = {})

       data, _status_code, _headers = post_worksheet_list_object_remove_duplicates_request.create_http_request(@api_client,opts )
       return data
    end

    # Insert slicer for list object.

    def post_worksheet_list_object_insert_slicer( post_worksheet_list_object_insert_slicer_request, opts = {})

       data, _status_code, _headers = post_worksheet_list_object_insert_slicer_request.create_http_request(@api_client,opts )
       return data
    end

    # Update list column properties.

    def post_worksheet_list_column( post_worksheet_list_column_request, opts = {})

       data, _status_code, _headers = post_worksheet_list_column_request.create_http_request(@api_client,opts )
       return data
    end

    # Update table total of list columns.

    def post_worksheet_list_columns_total( post_worksheet_list_columns_total_request, opts = {})

       data, _status_code, _headers = post_worksheet_list_columns_total_request.create_http_request(@api_client,opts )
       return data
    end

    # Get OLE objects description in worksheet.

    def get_worksheet_ole_objects( get_worksheet_ole_objects_request, opts = {})

       data, _status_code, _headers = get_worksheet_ole_objects_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets OLE object info or get the OLE object in some format.

    def get_worksheet_ole_object( get_worksheet_ole_object_request, opts = {})

       data, _status_code, _headers = get_worksheet_ole_object_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete all OLE objects in  worksheet.

    def delete_worksheet_ole_objects( delete_worksheet_ole_objects_request, opts = {})

       data, _status_code, _headers = delete_worksheet_ole_objects_request.create_http_request(@api_client,opts )
       return data
    end

    # Deletes an OLE object in worksheet.

    def delete_worksheet_ole_object( delete_worksheet_ole_object_request, opts = {})

       data, _status_code, _headers = delete_worksheet_ole_object_request.create_http_request(@api_client,opts )
       return data
    end

    # Update an OLE object in worksheet.

    def post_update_worksheet_ole_object( post_update_worksheet_ole_object_request, opts = {})

       data, _status_code, _headers = post_update_worksheet_ole_object_request.create_http_request(@api_client,opts )
       return data
    end

    # Add an OLE object in worksheet.

    def put_worksheet_ole_object( put_worksheet_ole_object_request, opts = {})

       data, _status_code, _headers = put_worksheet_ole_object_request.create_http_request(@api_client,opts )
       return data
    end

    # Get vertical page breaks description in worksheet.

    def get_vertical_page_breaks( get_vertical_page_breaks_request, opts = {})

       data, _status_code, _headers = get_vertical_page_breaks_request.create_http_request(@api_client,opts )
       return data
    end

    # Get horizontal page breaks descripton in worksheet.

    def get_horizontal_page_breaks( get_horizontal_page_breaks_request, opts = {})

       data, _status_code, _headers = get_horizontal_page_breaks_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets a vertical page break description in worksheet.

    def get_vertical_page_break( get_vertical_page_break_request, opts = {})

       data, _status_code, _headers = get_vertical_page_break_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets a horizontal page breaks descripton in worksheet.

    def get_horizontal_page_break( get_horizontal_page_break_request, opts = {})

       data, _status_code, _headers = get_horizontal_page_break_request.create_http_request(@api_client,opts )
       return data
    end

    # Adds a vertical page break in worksheet.

    def put_vertical_page_break( put_vertical_page_break_request, opts = {})

       data, _status_code, _headers = put_vertical_page_break_request.create_http_request(@api_client,opts )
       return data
    end

    # Adds a horizontal page breaks in worksheet.

    def put_horizontal_page_break( put_horizontal_page_break_request, opts = {})

       data, _status_code, _headers = put_horizontal_page_break_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete vertical page breaks in worksheet.

    def delete_vertical_page_breaks( delete_vertical_page_breaks_request, opts = {})

       data, _status_code, _headers = delete_vertical_page_breaks_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete horizontal page breaks in worksheet.

    def delete_horizontal_page_breaks( delete_horizontal_page_breaks_request, opts = {})

       data, _status_code, _headers = delete_horizontal_page_breaks_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete a vertical page breaks in worksheet.

    def delete_vertical_page_break( delete_vertical_page_break_request, opts = {})

       data, _status_code, _headers = delete_vertical_page_break_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete a horizontal page breaks in worksheet.

    def delete_horizontal_page_break( delete_horizontal_page_break_request, opts = {})

       data, _status_code, _headers = delete_horizontal_page_break_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets page setup description in worksheet.

    def get_page_setup( get_page_setup_request, opts = {})

       data, _status_code, _headers = get_page_setup_request.create_http_request(@api_client,opts )
       return data
    end

    # Updates page setup in worksheet.

    def post_page_setup( post_page_setup_request, opts = {})

       data, _status_code, _headers = post_page_setup_request.create_http_request(@api_client,opts )
       return data
    end

    # Clears header footer in worksheet.

    def delete_header_footer( delete_header_footer_request, opts = {})

       data, _status_code, _headers = delete_header_footer_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets page header description in worksheet.

    def get_header( get_header_request, opts = {})

       data, _status_code, _headers = get_header_request.create_http_request(@api_client,opts )
       return data
    end

    # Updates page header in worksheet. 

    def post_header( post_header_request, opts = {})

       data, _status_code, _headers = post_header_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets page footer description in worksheet.

    def get_footer( get_footer_request, opts = {})

       data, _status_code, _headers = get_footer_request.create_http_request(@api_client,opts )
       return data
    end

    # Update  page footer description in worksheet. 

    def post_footer( post_footer_request, opts = {})

       data, _status_code, _headers = post_footer_request.create_http_request(@api_client,opts )
       return data
    end

    # Get pictures description in worksheet.

    def get_worksheet_pictures( get_worksheet_pictures_request, opts = {})

       data, _status_code, _headers = get_worksheet_pictures_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets a picture by number in worksheet.

    def get_worksheet_picture_with_format( get_worksheet_picture_with_format_request, opts = {})

       data, _status_code, _headers = get_worksheet_picture_with_format_request.create_http_request(@api_client,opts )
       return data
    end

    # Adds a new picture in worksheet.

    def put_worksheet_add_picture( put_worksheet_add_picture_request, opts = {})

       data, _status_code, _headers = put_worksheet_add_picture_request.create_http_request(@api_client,opts )
       return data
    end

    # Updates a picture by index in worksheet.

    def post_worksheet_picture( post_worksheet_picture_request, opts = {})

       data, _status_code, _headers = post_worksheet_picture_request.create_http_request(@api_client,opts )
       return data
    end

    # Deletes a picture object in worksheet

    def delete_worksheet_picture( delete_worksheet_picture_request, opts = {})

       data, _status_code, _headers = delete_worksheet_picture_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete all pictures in worksheet.

    def delete_worksheet_pictures( delete_worksheet_pictures_request, opts = {})

       data, _status_code, _headers = delete_worksheet_pictures_request.create_http_request(@api_client,opts )
       return data
    end

    # Get worksheet pivottables description.

    def get_worksheet_pivot_tables( get_worksheet_pivot_tables_request, opts = {})

       data, _status_code, _headers = get_worksheet_pivot_tables_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets a pivottable info by index in worksheet.

    def get_worksheet_pivot_table( get_worksheet_pivot_table_request, opts = {})

       data, _status_code, _headers = get_worksheet_pivot_table_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets pivot field description in pivot table.

    def get_pivot_table_field( get_pivot_table_field_request, opts = {})

       data, _status_code, _headers = get_pivot_table_field_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets pivot table filters in worksheet.

    def get_worksheet_pivot_table_filters( get_worksheet_pivot_table_filters_request, opts = {})

       data, _status_code, _headers = get_worksheet_pivot_table_filters_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets pivot table filters in worksheet.

    def get_worksheet_pivot_table_filter( get_worksheet_pivot_table_filter_request, opts = {})

       data, _status_code, _headers = get_worksheet_pivot_table_filter_request.create_http_request(@api_client,opts )
       return data
    end

    # Adds a pivot table in worksheet.

    def put_worksheet_pivot_table( put_worksheet_pivot_table_request, opts = {})

       data, _status_code, _headers = put_worksheet_pivot_table_request.create_http_request(@api_client,opts )
       return data
    end

    # Adds a pivot field in pivot table

    def put_pivot_table_field( put_pivot_table_field_request, opts = {})

       data, _status_code, _headers = put_pivot_table_field_request.create_http_request(@api_client,opts )
       return data
    end

    # Adds a pivot filter for piovt table index

    def put_worksheet_pivot_table_filter( put_worksheet_pivot_table_filter_request, opts = {})

       data, _status_code, _headers = put_worksheet_pivot_table_filter_request.create_http_request(@api_client,opts )
       return data
    end

    # Hides pivot field item in pivot table.

    def post_pivot_table_field_hide_item( post_pivot_table_field_hide_item_request, opts = {})

       data, _status_code, _headers = post_pivot_table_field_hide_item_request.create_http_request(@api_client,opts )
       return data
    end

    # Moves pivot field in pivot table.

    def post_pivot_table_field_move_to( post_pivot_table_field_move_to_request, opts = {})

       data, _status_code, _headers = post_pivot_table_field_move_to_request.create_http_request(@api_client,opts )
       return data
    end

    # Updates cell style in pivot table.

    def post_pivot_table_cell_style( post_pivot_table_cell_style_request, opts = {})

       data, _status_code, _headers = post_pivot_table_cell_style_request.create_http_request(@api_client,opts )
       return data
    end

    # Updates style in pivot table.

    def post_pivot_table_style( post_pivot_table_style_request, opts = {})

       data, _status_code, _headers = post_pivot_table_style_request.create_http_request(@api_client,opts )
       return data
    end


    def post_pivot_table_update_pivot_fields( post_pivot_table_update_pivot_fields_request, opts = {})

       data, _status_code, _headers = post_pivot_table_update_pivot_fields_request.create_http_request(@api_client,opts )
       return data
    end


    def post_pivot_table_update_pivot_field( post_pivot_table_update_pivot_field_request, opts = {})

       data, _status_code, _headers = post_pivot_table_update_pivot_field_request.create_http_request(@api_client,opts )
       return data
    end

    # Calculates pivottable's data to cells.

    def post_worksheet_pivot_table_calculate( post_worksheet_pivot_table_calculate_request, opts = {})

       data, _status_code, _headers = post_worksheet_pivot_table_calculate_request.create_http_request(@api_client,opts )
       return data
    end

    # Moves pivot table in worksheet.

    def post_worksheet_pivot_table_move( post_worksheet_pivot_table_move_request, opts = {})

       data, _status_code, _headers = post_worksheet_pivot_table_move_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete pivot tables in worksheet.

    def delete_worksheet_pivot_tables( delete_worksheet_pivot_tables_request, opts = {})

       data, _status_code, _headers = delete_worksheet_pivot_tables_request.create_http_request(@api_client,opts )
       return data
    end

    # Deletes  pivot table by index in worksheet.

    def delete_worksheet_pivot_table( delete_worksheet_pivot_table_request, opts = {})

       data, _status_code, _headers = delete_worksheet_pivot_table_request.create_http_request(@api_client,opts )
       return data
    end

    # Deletes pivot field in pivot table.

    def delete_pivot_table_field( delete_pivot_table_field_request, opts = {})

       data, _status_code, _headers = delete_pivot_table_field_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete all pivot filters in piovt table.

    def delete_worksheet_pivot_table_filters( delete_worksheet_pivot_table_filters_request, opts = {})

       data, _status_code, _headers = delete_worksheet_pivot_table_filters_request.create_http_request(@api_client,opts )
       return data
    end

    # Deletes a pivot filter in piovt table.

    def delete_worksheet_pivot_table_filter( delete_worksheet_pivot_table_filter_request, opts = {})

       data, _status_code, _headers = delete_worksheet_pivot_table_filter_request.create_http_request(@api_client,opts )
       return data
    end

    # Get document properties description.

    def get_document_properties( get_document_properties_request, opts = {})

       data, _status_code, _headers = get_document_properties_request.create_http_request(@api_client,opts )
       return data
    end

    # Sets/creates a sdocument property.

    def put_document_property( put_document_property_request, opts = {})

       data, _status_code, _headers = put_document_property_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets document property by name.

    def get_document_property( get_document_property_request, opts = {})

       data, _status_code, _headers = get_document_property_request.create_http_request(@api_client,opts )
       return data
    end

    # Deletes a document property.

    def delete_document_property( delete_document_property_request, opts = {})

       data, _status_code, _headers = delete_document_property_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete all custom document properties and clean built-in ones.

    def delete_document_properties( delete_document_properties_request, opts = {})

       data, _status_code, _headers = delete_document_properties_request.create_http_request(@api_client,opts )
       return data
    end

    # Digital Signature.

    def post_digital_signature( post_digital_signature_request, opts = {})

       data, _status_code, _headers = post_digital_signature_request.create_http_request(@api_client,opts )
       return data
    end

    # Encripts workbook.

    def post_encrypt_workbook( post_encrypt_workbook_request, opts = {})

       data, _status_code, _headers = post_encrypt_workbook_request.create_http_request(@api_client,opts )
       return data
    end

    # Decrypts workbook.

    def delete_decrypt_workbook( delete_decrypt_workbook_request, opts = {})

       data, _status_code, _headers = delete_decrypt_workbook_request.create_http_request(@api_client,opts )
       return data
    end

    # Protects workbook.

    def post_protect_workbook( post_protect_workbook_request, opts = {})

       data, _status_code, _headers = post_protect_workbook_request.create_http_request(@api_client,opts )
       return data
    end

    # Unprotects workbook.

    def delete_un_protect_workbook( delete_un_protect_workbook_request, opts = {})

       data, _status_code, _headers = delete_un_protect_workbook_request.create_http_request(@api_client,opts )
       return data
    end

    # Protects document from changes.

    def put_document_protect_from_changes( put_document_protect_from_changes_request, opts = {})

       data, _status_code, _headers = put_document_protect_from_changes_request.create_http_request(@api_client,opts )
       return data
    end

    # Unprotects document from changes.

    def delete_document_un_protect_from_changes( delete_document_un_protect_from_changes_request, opts = {})

       data, _status_code, _headers = delete_document_un_protect_from_changes_request.create_http_request(@api_client,opts )
       return data
    end

    # Unprotect password protected Excel file.

    def post_unlock( post_unlock_request, opts = {})

       data, _status_code, _headers = post_unlock_request.create_http_request(@api_client,opts )
       return data
    end

    # Setting access password.

    def post_lock( post_lock_request, opts = {})

       data, _status_code, _headers = post_lock_request.create_http_request(@api_client,opts )
       return data
    end

    # Protect MS Excel and OpenDocument Spreadsheet by making them password protected.

    def post_protect( post_protect_request, opts = {})

       data, _status_code, _headers = post_protect_request.create_http_request(@api_client,opts )
       return data
    end

    # Copys content to destination range from source range in worksheet.

    def post_worksheet_cells_ranges_copy( post_worksheet_cells_ranges_copy_request, opts = {})

       data, _status_code, _headers = post_worksheet_cells_ranges_copy_request.create_http_request(@api_client,opts )
       return data
    end

    # Combines a range of cells into a single cell. 

    def post_worksheet_cells_range_merge( post_worksheet_cells_range_merge_request, opts = {})

       data, _status_code, _headers = post_worksheet_cells_range_merge_request.create_http_request(@api_client,opts )
       return data
    end

    # Unmerges merged cells of this range.

    def post_worksheet_cells_range_un_merge( post_worksheet_cells_range_un_merge_request, opts = {})

       data, _status_code, _headers = post_worksheet_cells_range_un_merge_request.create_http_request(@api_client,opts )
       return data
    end

    # Sets the style of the range.

    def post_worksheet_cells_range_style( post_worksheet_cells_range_style_request, opts = {})

       data, _status_code, _headers = post_worksheet_cells_range_style_request.create_http_request(@api_client,opts )
       return data
    end

    # Get the value of cells in range.

    def get_worksheet_cells_range_value( get_worksheet_cells_range_value_request, opts = {})

       data, _status_code, _headers = get_worksheet_cells_range_value_request.create_http_request(@api_client,opts )
       return data
    end

    # Puts a value into the range, if appropriate the value will be converted to other data type and cell's number format will be reset.
    #             

    def post_worksheet_cells_range_value( post_worksheet_cells_range_value_request, opts = {})

       data, _status_code, _headers = post_worksheet_cells_range_value_request.create_http_request(@api_client,opts )
       return data
    end

    # Moves the current range to the dest range.
    #             

    def post_worksheet_cells_range_move_to( post_worksheet_cells_range_move_to_request, opts = {})

       data, _status_code, _headers = post_worksheet_cells_range_move_to_request.create_http_request(@api_client,opts )
       return data
    end

    # Sets outline border around a range of cells.

    def post_worksheet_cells_range_sort( post_worksheet_cells_range_sort_request, opts = {})

       data, _status_code, _headers = post_worksheet_cells_range_sort_request.create_http_request(@api_client,opts )
       return data
    end

    # Sets outline border around a range of cells.

    def post_worksheet_cells_range_outline_border( post_worksheet_cells_range_outline_border_request, opts = {})

       data, _status_code, _headers = post_worksheet_cells_range_outline_border_request.create_http_request(@api_client,opts )
       return data
    end

    # Sets column width of range.

    def post_worksheet_cells_range_column_width( post_worksheet_cells_range_column_width_request, opts = {})

       data, _status_code, _headers = post_worksheet_cells_range_column_width_request.create_http_request(@api_client,opts )
       return data
    end

    # Sets row height of range.

    def post_worksheet_cells_range_row_height( post_worksheet_cells_range_row_height_request, opts = {})

       data, _status_code, _headers = post_worksheet_cells_range_row_height_request.create_http_request(@api_client,opts )
       return data
    end

    # Inserts a range of cells and shift cells according to the shift option.
    #             

    def put_worksheet_cells_range( put_worksheet_cells_range_request, opts = {})

       data, _status_code, _headers = put_worksheet_cells_range_request.create_http_request(@api_client,opts )
       return data
    end

    # Deletes a range of cells and shift cells according to the shift option.

    def delete_worksheet_cells_range( delete_worksheet_cells_range_request, opts = {})

       data, _status_code, _headers = delete_worksheet_cells_range_request.create_http_request(@api_client,opts )
       return data
    end

    # Get shapes description in worksheet.

    def get_worksheet_shapes( get_worksheet_shapes_request, opts = {})

       data, _status_code, _headers = get_worksheet_shapes_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets shape description in worksheet.

    def get_worksheet_shape( get_worksheet_shape_request, opts = {})

       data, _status_code, _headers = get_worksheet_shape_request.create_http_request(@api_client,opts )
       return data
    end

    # Adds shape in worksheet.

    def put_worksheet_shape( put_worksheet_shape_request, opts = {})

       data, _status_code, _headers = put_worksheet_shape_request.create_http_request(@api_client,opts )
       return data
    end

    # delete all shapes in worksheet.

    def delete_worksheet_shapes( delete_worksheet_shapes_request, opts = {})

       data, _status_code, _headers = delete_worksheet_shapes_request.create_http_request(@api_client,opts )
       return data
    end

    # Deletes a shape in worksheet.

    def delete_worksheet_shape( delete_worksheet_shape_request, opts = {})

       data, _status_code, _headers = delete_worksheet_shape_request.create_http_request(@api_client,opts )
       return data
    end

    # Updates a shape in worksheet.

    def post_worksheet_shape( post_worksheet_shape_request, opts = {})

       data, _status_code, _headers = post_worksheet_shape_request.create_http_request(@api_client,opts )
       return data
    end


    def post_worksheet_group_shape( post_worksheet_group_shape_request, opts = {})

       data, _status_code, _headers = post_worksheet_group_shape_request.create_http_request(@api_client,opts )
       return data
    end


    def post_worksheet_ungroup_shape( post_worksheet_ungroup_shape_request, opts = {})

       data, _status_code, _headers = post_worksheet_ungroup_shape_request.create_http_request(@api_client,opts )
       return data
    end

    # Get worksheet sparkline groups description.

    def get_worksheet_sparkline_groups( get_worksheet_sparkline_groups_request, opts = {})

       data, _status_code, _headers = get_worksheet_sparkline_groups_request.create_http_request(@api_client,opts )
       return data
    end

    # Get worksheet sparkline group description.

    def get_worksheet_sparkline_group( get_worksheet_sparkline_group_request, opts = {})

       data, _status_code, _headers = get_worksheet_sparkline_group_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete worksheet sparkline groups description.

    def delete_worksheet_sparkline_groups( delete_worksheet_sparkline_groups_request, opts = {})

       data, _status_code, _headers = delete_worksheet_sparkline_groups_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete worksheet sparkline group description.

    def delete_worksheet_sparkline_group( delete_worksheet_sparkline_group_request, opts = {})

       data, _status_code, _headers = delete_worksheet_sparkline_group_request.create_http_request(@api_client,opts )
       return data
    end

    # Put worksheet sparkline group description.

    def put_worksheet_sparkline_group( put_worksheet_sparkline_group_request, opts = {})

       data, _status_code, _headers = put_worksheet_sparkline_group_request.create_http_request(@api_client,opts )
       return data
    end

    # Post worksheet sparkline group description.

    def post_worksheet_sparkline_group( post_worksheet_sparkline_group_request, opts = {})

       data, _status_code, _headers = post_worksheet_sparkline_group_request.create_http_request(@api_client,opts )
       return data
    end

    # Run tasks.

    def post_run_task( post_run_task_request, opts = {})

       data, _status_code, _headers = post_run_task_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets workbook default style description.

    def get_workbook_default_style( get_workbook_default_style_request, opts = {})

       data, _status_code, _headers = get_workbook_default_style_request.create_http_request(@api_client,opts )
       return data
    end

    # Get workbook's text items.

    def get_workbook_text_items( get_workbook_text_items_request, opts = {})

       data, _status_code, _headers = get_workbook_text_items_request.create_http_request(@api_client,opts )
       return data
    end

    # Get workbook's names.

    def get_workbook_names( get_workbook_names_request, opts = {})

       data, _status_code, _headers = get_workbook_names_request.create_http_request(@api_client,opts )
       return data
    end

    # Defines a new name in workbook.

    def put_workbook_name( put_workbook_name_request, opts = {})

       data, _status_code, _headers = put_workbook_name_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets workbook's name description.

    def get_workbook_name( get_workbook_name_request, opts = {})

       data, _status_code, _headers = get_workbook_name_request.create_http_request(@api_client,opts )
       return data
    end

    # Update workbook's name. 

    def post_workbook_name( post_workbook_name_request, opts = {})

       data, _status_code, _headers = post_workbook_name_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets workbook's name value.

    def get_workbook_name_value( get_workbook_name_value_request, opts = {})

       data, _status_code, _headers = get_workbook_name_value_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete workbook's names.

    def delete_workbook_names( delete_workbook_names_request, opts = {})

       data, _status_code, _headers = delete_workbook_names_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets workbook's name description.

    def delete_workbook_name( delete_workbook_name_request, opts = {})

       data, _status_code, _headers = delete_workbook_name_request.create_http_request(@api_client,opts )
       return data
    end

    # Merge workbooks.

    def post_workbooks_merge( post_workbooks_merge_request, opts = {})

       data, _status_code, _headers = post_workbooks_merge_request.create_http_request(@api_client,opts )
       return data
    end

    # Search text in workbook.

    def post_workbooks_text_search( post_workbooks_text_search_request, opts = {})

       data, _status_code, _headers = post_workbooks_text_search_request.create_http_request(@api_client,opts )
       return data
    end

    # Replaces text in workbook.

    def post_workbook_text_replace( post_workbook_text_replace_request, opts = {})

       data, _status_code, _headers = post_workbook_text_replace_request.create_http_request(@api_client,opts )
       return data
    end

    # Smart marker processing result.

    def post_workbook_get_smart_marker_result( post_workbook_get_smart_marker_result_request, opts = {})

       data, _status_code, _headers = post_workbook_get_smart_marker_result_request.create_http_request(@api_client,opts )
       return data
    end

    # Creates new workbook using deferent methods.

    def put_workbook_create( put_workbook_create_request, opts = {})

       data, _status_code, _headers = put_workbook_create_request.create_http_request(@api_client,opts )
       return data
    end

    # Splits workbook.

    def post_workbook_split( post_workbook_split_request, opts = {})

       data, _status_code, _headers = post_workbook_split_request.create_http_request(@api_client,opts )
       return data
    end

    # Calculate all formulas in workbook.

    def post_workbook_calculate_formula( post_workbook_calculate_formula_request, opts = {})

       data, _status_code, _headers = post_workbook_calculate_formula_request.create_http_request(@api_client,opts )
       return data
    end

    # Autofit workbook rows.

    def post_autofit_workbook_rows( post_autofit_workbook_rows_request, opts = {})

       data, _status_code, _headers = post_autofit_workbook_rows_request.create_http_request(@api_client,opts )
       return data
    end


    def post_autofit_workbook_columns( post_autofit_workbook_columns_request, opts = {})

       data, _status_code, _headers = post_autofit_workbook_columns_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets workbook settings description.

    def get_workbook_settings( get_workbook_settings_request, opts = {})

       data, _status_code, _headers = get_workbook_settings_request.create_http_request(@api_client,opts )
       return data
    end

    # Updates workbook setting.

    def post_workbook_settings( post_workbook_settings_request, opts = {})

       data, _status_code, _headers = post_workbook_settings_request.create_http_request(@api_client,opts )
       return data
    end

    # Set workbook background.

    def put_workbook_background( put_workbook_background_request, opts = {})

       data, _status_code, _headers = put_workbook_background_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete workbook background.

    def delete_workbook_background( delete_workbook_background_request, opts = {})

       data, _status_code, _headers = delete_workbook_background_request.create_http_request(@api_client,opts )
       return data
    end

    # Set workbook water marker.

    def put_workbook_water_marker( put_workbook_water_marker_request, opts = {})

       data, _status_code, _headers = put_workbook_water_marker_request.create_http_request(@api_client,opts )
       return data
    end


    def get_page_count( get_page_count_request, opts = {})

       data, _status_code, _headers = get_page_count_request.create_http_request(@api_client,opts )
       return data
    end

    # Get worksheets description.

    def get_worksheets( get_worksheets_request, opts = {})

       data, _status_code, _headers = get_worksheets_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets worksheet in some format.

    def get_worksheet_with_format( get_worksheet_with_format_request, opts = {})

       data, _status_code, _headers = get_worksheet_with_format_request.create_http_request(@api_client,opts )
       return data
    end

    # Changes worksheet visibility.

    def put_change_visibility_worksheet( put_change_visibility_worksheet_request, opts = {})

       data, _status_code, _headers = put_change_visibility_worksheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Active sheet

    def put_active_worksheet( put_active_worksheet_request, opts = {})

       data, _status_code, _headers = put_active_worksheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Inserts new worksheet in workbook.

    def put_insert_new_worksheet( put_insert_new_worksheet_request, opts = {})

       data, _status_code, _headers = put_insert_new_worksheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Adds new worksheet in workbook.

    def put_add_new_worksheet( put_add_new_worksheet_request, opts = {})

       data, _status_code, _headers = put_add_new_worksheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Deletes a worksheet in workbook.

    def delete_worksheet( delete_worksheet_request, opts = {})

       data, _status_code, _headers = delete_worksheet_request.create_http_request(@api_client,opts )
       return data
    end


    def delete_worksheets( delete_worksheets_request, opts = {})

       data, _status_code, _headers = delete_worksheets_request.create_http_request(@api_client,opts )
       return data
    end

    # Move worksheet in workbook.

    def post_move_worksheet( post_move_worksheet_request, opts = {})

       data, _status_code, _headers = post_move_worksheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Protects worksheet.

    def put_protect_worksheet( put_protect_worksheet_request, opts = {})

       data, _status_code, _headers = put_protect_worksheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Unprotects worksheet.

    def delete_unprotect_worksheet( delete_unprotect_worksheet_request, opts = {})

       data, _status_code, _headers = delete_unprotect_worksheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Get text items in worksheet.

    def get_worksheet_text_items( get_worksheet_text_items_request, opts = {})

       data, _status_code, _headers = get_worksheet_text_items_request.create_http_request(@api_client,opts )
       return data
    end

    # Get comments description in worksheet.

    def get_worksheet_comments( get_worksheet_comments_request, opts = {})

       data, _status_code, _headers = get_worksheet_comments_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets comment by cell name in worksheet.

    def get_worksheet_comment( get_worksheet_comment_request, opts = {})

       data, _status_code, _headers = get_worksheet_comment_request.create_http_request(@api_client,opts )
       return data
    end

    # Adds cell comment in worksheet.

    def put_worksheet_comment( put_worksheet_comment_request, opts = {})

       data, _status_code, _headers = put_worksheet_comment_request.create_http_request(@api_client,opts )
       return data
    end

    # Updates cell comment in worksheet.

    def post_worksheet_comment( post_worksheet_comment_request, opts = {})

       data, _status_code, _headers = post_worksheet_comment_request.create_http_request(@api_client,opts )
       return data
    end

    # Deletes cell comment in worksheet.

    def delete_worksheet_comment( delete_worksheet_comment_request, opts = {})

       data, _status_code, _headers = delete_worksheet_comment_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete all comments in worksheet.

    def delete_worksheet_comments( delete_worksheet_comments_request, opts = {})

       data, _status_code, _headers = delete_worksheet_comments_request.create_http_request(@api_client,opts )
       return data
    end

    # Get worksheet merged cells.

    def get_worksheet_merged_cells( get_worksheet_merged_cells_request, opts = {})

       data, _status_code, _headers = get_worksheet_merged_cells_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets merged cell description by its index in worksheet.

    def get_worksheet_merged_cell( get_worksheet_merged_cell_request, opts = {})

       data, _status_code, _headers = get_worksheet_merged_cell_request.create_http_request(@api_client,opts )
       return data
    end

    # Calculates formula value in worksheet.

    def get_worksheet_calculate_formula( get_worksheet_calculate_formula_request, opts = {})

       data, _status_code, _headers = get_worksheet_calculate_formula_request.create_http_request(@api_client,opts )
       return data
    end

    # Calculates formula value in worksheet.

    def post_worksheet_calculate_formula( post_worksheet_calculate_formula_request, opts = {})

       data, _status_code, _headers = post_worksheet_calculate_formula_request.create_http_request(@api_client,opts )
       return data
    end

    # Searchs text in worksheet.

    def post_worksheet_text_search( post_worksheet_text_search_request, opts = {})

       data, _status_code, _headers = post_worksheet_text_search_request.create_http_request(@api_client,opts )
       return data
    end

    # Replaces text in worksheet.

    def post_worsheet_text_replace( post_worsheet_text_replace_request, opts = {})

       data, _status_code, _headers = post_worsheet_text_replace_request.create_http_request(@api_client,opts )
       return data
    end

    # Sorts range in worksheet.

    def post_worksheet_range_sort( post_worksheet_range_sort_request, opts = {})

       data, _status_code, _headers = post_worksheet_range_sort_request.create_http_request(@api_client,opts )
       return data
    end

    # Autofits row in worksheet.

    def post_autofit_worksheet_row( post_autofit_worksheet_row_request, opts = {})

       data, _status_code, _headers = post_autofit_worksheet_row_request.create_http_request(@api_client,opts )
       return data
    end

    # Autofit rows in worksheet.

    def post_autofit_worksheet_rows( post_autofit_worksheet_rows_request, opts = {})

       data, _status_code, _headers = post_autofit_worksheet_rows_request.create_http_request(@api_client,opts )
       return data
    end


    def post_autofit_worksheet_columns( post_autofit_worksheet_columns_request, opts = {})

       data, _status_code, _headers = post_autofit_worksheet_columns_request.create_http_request(@api_client,opts )
       return data
    end

    # Sets background image in worksheet.

    def put_worksheet_background( put_worksheet_background_request, opts = {})

       data, _status_code, _headers = put_worksheet_background_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete background image in worksheet.

    def delete_worksheet_background( delete_worksheet_background_request, opts = {})

       data, _status_code, _headers = delete_worksheet_background_request.create_http_request(@api_client,opts )
       return data
    end

    # Sets freeze panes in worksheet.

    def put_worksheet_freeze_panes( put_worksheet_freeze_panes_request, opts = {})

       data, _status_code, _headers = put_worksheet_freeze_panes_request.create_http_request(@api_client,opts )
       return data
    end

    # Unfreezes panes in worksheet.

    def delete_worksheet_freeze_panes( delete_worksheet_freeze_panes_request, opts = {})

       data, _status_code, _headers = delete_worksheet_freeze_panes_request.create_http_request(@api_client,opts )
       return data
    end

    # Copies contents and formats from another worksheet.

    def post_copy_worksheet( post_copy_worksheet_request, opts = {})

       data, _status_code, _headers = post_copy_worksheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Rename worksheet.

    def post_rename_worksheet( post_rename_worksheet_request, opts = {})

       data, _status_code, _headers = post_rename_worksheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Update worksheet properties.

    def post_update_worksheet_property( post_update_worksheet_property_request, opts = {})

       data, _status_code, _headers = post_update_worksheet_property_request.create_http_request(@api_client,opts )
       return data
    end

    # Get worksheets ranges description.

    def get_named_ranges( get_named_ranges_request, opts = {})

       data, _status_code, _headers = get_named_ranges_request.create_http_request(@api_client,opts )
       return data
    end

    # Get range values.

    def get_named_range_value( get_named_range_value_request, opts = {})

       data, _status_code, _headers = get_named_range_value_request.create_http_request(@api_client,opts )
       return data
    end

    # Updates worksheet zoom.

    def post_update_worksheet_zoom( post_update_worksheet_zoom_request, opts = {})

       data, _status_code, _headers = post_update_worksheet_zoom_request.create_http_request(@api_client,opts )
       return data
    end


    def get_worksheet_page_count( get_worksheet_page_count_request, opts = {})

       data, _status_code, _headers = get_worksheet_page_count_request.create_http_request(@api_client,opts )
       return data
    end

    # Get validations description in worksheet.

    def get_worksheet_validations( get_worksheet_validations_request, opts = {})

       data, _status_code, _headers = get_worksheet_validations_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets a validation by index in worksheet.

    def get_worksheet_validation( get_worksheet_validation_request, opts = {})

       data, _status_code, _headers = get_worksheet_validation_request.create_http_request(@api_client,opts )
       return data
    end

    # Adds a validation at index in worksheet.

    def put_worksheet_validation( put_worksheet_validation_request, opts = {})

       data, _status_code, _headers = put_worksheet_validation_request.create_http_request(@api_client,opts )
       return data
    end

    # Updates a validation by index in worksheet.

    def post_worksheet_validation( post_worksheet_validation_request, opts = {})

       data, _status_code, _headers = post_worksheet_validation_request.create_http_request(@api_client,opts )
       return data
    end

    # Deletes a validation by index in worksheet.

    def delete_worksheet_validation( delete_worksheet_validation_request, opts = {})

       data, _status_code, _headers = delete_worksheet_validation_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete all validations in worksheet.

    def delete_worksheet_validations( delete_worksheet_validations_request, opts = {})

       data, _status_code, _headers = delete_worksheet_validations_request.create_http_request(@api_client,opts )
       return data
    end


    def download_file( download_file_request, opts = {})

       data, _status_code, _headers = download_file_request.create_http_request(@api_client,opts )
       return data
    end


    def upload_file( upload_file_request, opts = {})

       data, _status_code, _headers = upload_file_request.create_http_request(@api_client,opts )
       return data
    end


    def copy_file( copy_file_request, opts = {})

       data, _status_code, _headers = copy_file_request.create_http_request(@api_client,opts )
       return data
    end


    def move_file( move_file_request, opts = {})

       data, _status_code, _headers = move_file_request.create_http_request(@api_client,opts )
       return data
    end


    def delete_file( delete_file_request, opts = {})

       data, _status_code, _headers = delete_file_request.create_http_request(@api_client,opts )
       return data
    end


    def get_files_list( get_files_list_request, opts = {})

       data, _status_code, _headers = get_files_list_request.create_http_request(@api_client,opts )
       return data
    end


    def create_folder( create_folder_request, opts = {})

       data, _status_code, _headers = create_folder_request.create_http_request(@api_client,opts )
       return data
    end


    def copy_folder( copy_folder_request, opts = {})

       data, _status_code, _headers = copy_folder_request.create_http_request(@api_client,opts )
       return data
    end


    def move_folder( move_folder_request, opts = {})

       data, _status_code, _headers = move_folder_request.create_http_request(@api_client,opts )
       return data
    end


    def delete_folder( delete_folder_request, opts = {})

       data, _status_code, _headers = delete_folder_request.create_http_request(@api_client,opts )
       return data
    end


    def storage_exists( storage_exists_request, opts = {})

       data, _status_code, _headers = storage_exists_request.create_http_request(@api_client,opts )
       return data
    end


    def object_exists( object_exists_request, opts = {})

       data, _status_code, _headers = object_exists_request.create_http_request(@api_client,opts )
       return data
    end


    def get_disc_usage( get_disc_usage_request, opts = {})

       data, _status_code, _headers = get_disc_usage_request.create_http_request(@api_client,opts )
       return data
    end


    def get_file_versions( get_file_versions_request, opts = {})

       data, _status_code, _headers = get_file_versions_request.create_http_request(@api_client,opts )
       return data
    end
  end
end  
