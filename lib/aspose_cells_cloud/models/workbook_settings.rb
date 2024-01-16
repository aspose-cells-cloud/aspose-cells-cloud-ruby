=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="WorkbookSettingsrb.cs">
   Copyright (c) 2024 Aspose.Cells Cloud
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

  class WorkbookSettings
        #Specifies a boolean value that indicates the application automatically compressed pictures in the workbook.             
        attr_accessor :auto_compress_pictures
        #Indicates whether the file is mark for auto-recovery.             
        attr_accessor :auto_recover
        #Specifies the incremental public release of the application.             
        attr_accessor :build_version
        #It specifies whether to calculate formulas manually,            automatically or automatically except for multiple table operations.             
        attr_accessor :calc_mode
        #Specifies the stack size for calculating cells recursively.            The large value for this size will give better performance when there are lots of cells need to be calculated recursively.            On the other hand, larger value will raise the risk of StackOverflowException.            If user gets StackOverflowException when calculating formulas, this value should be decreased.             
        attr_accessor :calc_stack_size
        #Specifies the version of the calculation engine used to calculate values in the workbook.             
        attr_accessor :calculation_id
        #Indicates whether check comptiliblity when saving workbook.                         Remarks: The default value is true.                         
        attr_accessor :check_comptiliblity
        #Whether check restriction of excel file when user modify cells related objects.            For example, excel does not allow inputting string value longer than 32K.            When you input a value longer than 32K such as by Cell.PutValue(string), if this property is true, you will get an Exception.            If this property is false, we will accept your input string value as the cell's value so that later            you can output the complete string value for other file formats such as CSV.            However, if you have set such kind of value that is invalid for excel file format,            you should not save the workbook as excel file format later. Otherwise there may be unexpected error for the generated excel file.             
        attr_accessor :check_excel_restriction
        #indicates whether the application last saved the workbook file after a crash.             
        attr_accessor :crash_save
        #Whether creates calculated formulas chain. Default is false.             
        attr_accessor :create_calc_chain
        #indicates whether the application last opened the workbook for data recovery.             
        attr_accessor :data_extract_load
        #Gets or sets a value which represents if the workbook uses the 1904 date system.             
        attr_accessor :date1904
        #Indicates whether and how to show objects in the workbook.             
        attr_accessor :display_drawing_objects
        #Enable macros;             
        attr_accessor :enable_macros
        #Gets or sets the first visible worksheet tab.             
        attr_accessor :first_visible_tab
        #Gets and sets whether hide the field list for the PivotTable.             
        attr_accessor :hide_pivot_field_list
        #Indicates whether encrypting the workbook with default password if Structure and Windows of the workbook are locked.             
        attr_accessor :is_default_encrypted
        #Indicates whether this workbook is hidden.             
        attr_accessor :is_hidden
        #Gets or sets a value indicating whether the generated spreadsheet will contain a horizontal scroll bar.             
        attr_accessor :is_h_scroll_bar_visible
        #Represents whether the generated spreadsheet will be opened Minimized.             
        attr_accessor :is_minimized
        #Gets or sets a value indicating whether the generated spreadsheet will contain a vertical scroll bar.             
        attr_accessor :is_v_scroll_bar_visible
        #Indicates whether enable iterative calculation to resolve circular references.             
        attr_accessor :iteration
        #Gets or sets the user interface language of the Workbook version based on CountryCode that has saved the file.             
        attr_accessor :language_code
        #Returns or sets the maximum number of change to resolve a circular reference.             
        attr_accessor :max_change
        #Returns or sets the maximum number of iterations to resolve a circular reference.             
        attr_accessor :max_iteration
        #Gets or sets the memory usage options. The new option will be taken as the default option for newly created worksheets but does not take effect for existing worksheets.             
        attr_accessor :memory_setting
        #Gets or sets the decimal separator for formatting/parsing numeric values. Default is the decimal separator of current Region.             
        attr_accessor :number_decimal_separator
        #Gets or sets the character that separates groups of digits to the left of the decimal in numeric values. Default is the group separator of current Region.             
        attr_accessor :number_group_separator
        #Indicates whether parsing the formula when reading the file.             
        attr_accessor :parsing_formula_on_open
        #True if calculations in this workbook will be done using only the precision of the numbers as they're displayed             
        attr_accessor :precision_as_displayed
        #Indicates whether to recalculate before saving the document.             
        attr_accessor :recalculate_before_save
        #Indicates whether re-calculate all formulas on opening file.             
        attr_accessor :re_calculate_on_open
        #Indicates if the Read Only Recommended option is selected.                        
        attr_accessor :recommend_read_only
        #Gets or sets the regional settings for workbook.             
        attr_accessor :region
        #True if personal information can be removed from the specified workbook.             
        attr_accessor :remove_personal_information
        #Indicates whether the application last opened the workbook in safe or repair mode.             
        attr_accessor :repair_load
        #Gets or sets a value that indicates whether the Workbook is shared.             
        attr_accessor :shared
        #Width of worksheet tab bar (in 1/1000 of window width).             
        attr_accessor :sheet_tab_bar_width
        #Get or sets a value whether the Workbook tabs are displayed.             
        attr_accessor :show_tabs
        #Indicates whether update adjacent cells' border.             
        attr_accessor :update_adjacent_cells_border
        #Gets and sets how updates external links when the workbook is opened.             
        attr_accessor :update_links_type
        #The height of the window, in unit of point.             
        attr_accessor :window_height
        #The distance from the left edge of the client area to the left edge of the window, in unit of point.             
        attr_accessor :window_left
        #The distance from the top edge of the client area to the top edge of the window, in unit of point.             
        attr_accessor :window_top
        #The width of the window, in unit of point.             
        attr_accessor :window_width
        #Gets and sets the author of the file.             
        attr_accessor :author
        #Indicates whether checking custom number format when setting Style.Custom.             
        attr_accessor :check_custom_number_format
        #Gets the protection type of the workbook.             
        attr_accessor :protection_type
        #Gets and sets the globalization settings.             
        attr_accessor :globalization_settings
        #Represents Workbook file encryption password.             
        attr_accessor :password
        #Provides access to the workbook write protection options.             
        attr_accessor :write_protection
        #Gets a value that indicates whether a password is required to open this workbook.             
        attr_accessor :is_encrypted
        #Gets a value that indicates whether the structure or window of the Workbook is protected.             
        attr_accessor :is_protected
        #Gets the max row index, zero-based.             
        attr_accessor :max_row
        #Gets the max column index, zero-based.             
        attr_accessor :max_column
        #Gets and sets the number of significant digits.            The default value is .             
        attr_accessor :significant_digits
        #Indicates whether check compatibility with earlier versions when saving workbook.             
        attr_accessor :check_compatibility
        #Gets and sets the default print paper size.             
        attr_accessor :paper_size
        #Gets and sets the max row number of shared formula.             
        attr_accessor :max_rows_of_shared_formula
        #Specifies the OOXML version for the output document. The default value is Ecma376_2006.             
        attr_accessor :compliance
        #Indicates whether setting  property when entering the string value(which starts  with single quote mark ) to the cell             
        attr_accessor :quote_prefix_to_style
        #Gets the settings for formula-related features.             
        attr_accessor :formula_settings
        #Fully calculates every time when a calculation is triggered.             
        attr_accessor :force_full_calculate

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'auto_compress_pictures' => :'AutoCompressPictures',
        :'auto_recover' => :'AutoRecover',
        :'build_version' => :'BuildVersion',
        :'calc_mode' => :'CalcMode',
        :'calc_stack_size' => :'CalcStackSize',
        :'calculation_id' => :'CalculationId',
        :'check_comptiliblity' => :'CheckComptiliblity',
        :'check_excel_restriction' => :'CheckExcelRestriction',
        :'crash_save' => :'CrashSave',
        :'create_calc_chain' => :'CreateCalcChain',
        :'data_extract_load' => :'DataExtractLoad',
        :'date1904' => :'Date1904',
        :'display_drawing_objects' => :'DisplayDrawingObjects',
        :'enable_macros' => :'EnableMacros',
        :'first_visible_tab' => :'FirstVisibleTab',
        :'hide_pivot_field_list' => :'HidePivotFieldList',
        :'is_default_encrypted' => :'IsDefaultEncrypted',
        :'is_hidden' => :'IsHidden',
        :'is_h_scroll_bar_visible' => :'IsHScrollBarVisible',
        :'is_minimized' => :'IsMinimized',
        :'is_v_scroll_bar_visible' => :'IsVScrollBarVisible',
        :'iteration' => :'Iteration',
        :'language_code' => :'LanguageCode',
        :'max_change' => :'MaxChange',
        :'max_iteration' => :'MaxIteration',
        :'memory_setting' => :'MemorySetting',
        :'number_decimal_separator' => :'NumberDecimalSeparator',
        :'number_group_separator' => :'NumberGroupSeparator',
        :'parsing_formula_on_open' => :'ParsingFormulaOnOpen',
        :'precision_as_displayed' => :'PrecisionAsDisplayed',
        :'recalculate_before_save' => :'RecalculateBeforeSave',
        :'re_calculate_on_open' => :'ReCalculateOnOpen',
        :'recommend_read_only' => :'RecommendReadOnly',
        :'region' => :'Region',
        :'remove_personal_information' => :'RemovePersonalInformation',
        :'repair_load' => :'RepairLoad',
        :'shared' => :'Shared',
        :'sheet_tab_bar_width' => :'SheetTabBarWidth',
        :'show_tabs' => :'ShowTabs',
        :'update_adjacent_cells_border' => :'UpdateAdjacentCellsBorder',
        :'update_links_type' => :'UpdateLinksType',
        :'window_height' => :'WindowHeight',
        :'window_left' => :'WindowLeft',
        :'window_top' => :'WindowTop',
        :'window_width' => :'WindowWidth',
        :'author' => :'Author',
        :'check_custom_number_format' => :'CheckCustomNumberFormat',
        :'protection_type' => :'ProtectionType',
        :'globalization_settings' => :'GlobalizationSettings',
        :'password' => :'Password',
        :'write_protection' => :'WriteProtection',
        :'is_encrypted' => :'IsEncrypted',
        :'is_protected' => :'IsProtected',
        :'max_row' => :'MaxRow',
        :'max_column' => :'MaxColumn',
        :'significant_digits' => :'SignificantDigits',
        :'check_compatibility' => :'CheckCompatibility',
        :'paper_size' => :'PaperSize',
        :'max_rows_of_shared_formula' => :'MaxRowsOfSharedFormula',
        :'compliance' => :'Compliance',
        :'quote_prefix_to_style' => :'QuotePrefixToStyle',
        :'formula_settings' => :'FormulaSettings',
        :'force_full_calculate' => :'ForceFullCalculate'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'auto_compress_pictures' => :'BOOLEAN',
        :'auto_recover' => :'BOOLEAN',
        :'build_version' => :'String',
        :'calc_mode' => :'String',
        :'calc_stack_size' => :'Integer',
        :'calculation_id' => :'String',
        :'check_comptiliblity' => :'BOOLEAN',
        :'check_excel_restriction' => :'BOOLEAN',
        :'crash_save' => :'BOOLEAN',
        :'create_calc_chain' => :'BOOLEAN',
        :'data_extract_load' => :'BOOLEAN',
        :'date1904' => :'BOOLEAN',
        :'display_drawing_objects' => :'String',
        :'enable_macros' => :'BOOLEAN',
        :'first_visible_tab' => :'Integer',
        :'hide_pivot_field_list' => :'BOOLEAN',
        :'is_default_encrypted' => :'BOOLEAN',
        :'is_hidden' => :'BOOLEAN',
        :'is_h_scroll_bar_visible' => :'BOOLEAN',
        :'is_minimized' => :'BOOLEAN',
        :'is_v_scroll_bar_visible' => :'BOOLEAN',
        :'iteration' => :'BOOLEAN',
        :'language_code' => :'String',
        :'max_change' => :'Float',
        :'max_iteration' => :'Integer',
        :'memory_setting' => :'String',
        :'number_decimal_separator' => :'String',
        :'number_group_separator' => :'String',
        :'parsing_formula_on_open' => :'BOOLEAN',
        :'precision_as_displayed' => :'BOOLEAN',
        :'recalculate_before_save' => :'BOOLEAN',
        :'re_calculate_on_open' => :'BOOLEAN',
        :'recommend_read_only' => :'BOOLEAN',
        :'region' => :'String',
        :'remove_personal_information' => :'BOOLEAN',
        :'repair_load' => :'BOOLEAN',
        :'shared' => :'BOOLEAN',
        :'sheet_tab_bar_width' => :'Integer',
        :'show_tabs' => :'BOOLEAN',
        :'update_adjacent_cells_border' => :'BOOLEAN',
        :'update_links_type' => :'String',
        :'window_height' => :'Float',
        :'window_left' => :'Float',
        :'window_top' => :'Float',
        :'window_width' => :'Float',
        :'author' => :'String',
        :'check_custom_number_format' => :'BOOLEAN',
        :'protection_type' => :'String',
        :'globalization_settings' => :'GlobalizationSettings',
        :'password' => :'String',
        :'write_protection' => :'WriteProtection',
        :'is_encrypted' => :'BOOLEAN',
        :'is_protected' => :'BOOLEAN',
        :'max_row' => :'Integer',
        :'max_column' => :'Integer',
        :'significant_digits' => :'Integer',
        :'check_compatibility' => :'BOOLEAN',
        :'paper_size' => :'String',
        :'max_rows_of_shared_formula' => :'Integer',
        :'compliance' => :'String',
        :'quote_prefix_to_style' => :'BOOLEAN',
        :'formula_settings' => :'FormulaSettings',
        :'force_full_calculate' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'AutoCompressPictures')
          self.auto_compress_pictures = attributes[:'AutoCompressPictures']
      end
      if attributes.has_key?(:'AutoRecover')
          self.auto_recover = attributes[:'AutoRecover']
      end
      if attributes.has_key?(:'BuildVersion')
          self.build_version = attributes[:'BuildVersion']
      end
      if attributes.has_key?(:'CalcMode')
          self.calc_mode = attributes[:'CalcMode']
      end
      if attributes.has_key?(:'CalcStackSize')
          self.calc_stack_size = attributes[:'CalcStackSize']
      end
      if attributes.has_key?(:'CalculationId')
          self.calculation_id = attributes[:'CalculationId']
      end
      if attributes.has_key?(:'CheckComptiliblity')
          self.check_comptiliblity = attributes[:'CheckComptiliblity']
      end
      if attributes.has_key?(:'CheckExcelRestriction')
          self.check_excel_restriction = attributes[:'CheckExcelRestriction']
      end
      if attributes.has_key?(:'CrashSave')
          self.crash_save = attributes[:'CrashSave']
      end
      if attributes.has_key?(:'CreateCalcChain')
          self.create_calc_chain = attributes[:'CreateCalcChain']
      end
      if attributes.has_key?(:'DataExtractLoad')
          self.data_extract_load = attributes[:'DataExtractLoad']
      end
      if attributes.has_key?(:'Date1904')
          self.date1904 = attributes[:'Date1904']
      end
      if attributes.has_key?(:'DisplayDrawingObjects')
          self.display_drawing_objects = attributes[:'DisplayDrawingObjects']
      end
      if attributes.has_key?(:'EnableMacros')
          self.enable_macros = attributes[:'EnableMacros']
      end
      if attributes.has_key?(:'FirstVisibleTab')
          self.first_visible_tab = attributes[:'FirstVisibleTab']
      end
      if attributes.has_key?(:'HidePivotFieldList')
          self.hide_pivot_field_list = attributes[:'HidePivotFieldList']
      end
      if attributes.has_key?(:'IsDefaultEncrypted')
          self.is_default_encrypted = attributes[:'IsDefaultEncrypted']
      end
      if attributes.has_key?(:'IsHidden')
          self.is_hidden = attributes[:'IsHidden']
      end
      if attributes.has_key?(:'IsHScrollBarVisible')
          self.is_h_scroll_bar_visible = attributes[:'IsHScrollBarVisible']
      end
      if attributes.has_key?(:'IsMinimized')
          self.is_minimized = attributes[:'IsMinimized']
      end
      if attributes.has_key?(:'IsVScrollBarVisible')
          self.is_v_scroll_bar_visible = attributes[:'IsVScrollBarVisible']
      end
      if attributes.has_key?(:'Iteration')
          self.iteration = attributes[:'Iteration']
      end
      if attributes.has_key?(:'LanguageCode')
          self.language_code = attributes[:'LanguageCode']
      end
      if attributes.has_key?(:'MaxChange')
          self.max_change = attributes[:'MaxChange']
      end
      if attributes.has_key?(:'MaxIteration')
          self.max_iteration = attributes[:'MaxIteration']
      end
      if attributes.has_key?(:'MemorySetting')
          self.memory_setting = attributes[:'MemorySetting']
      end
      if attributes.has_key?(:'NumberDecimalSeparator')
          self.number_decimal_separator = attributes[:'NumberDecimalSeparator']
      end
      if attributes.has_key?(:'NumberGroupSeparator')
          self.number_group_separator = attributes[:'NumberGroupSeparator']
      end
      if attributes.has_key?(:'ParsingFormulaOnOpen')
          self.parsing_formula_on_open = attributes[:'ParsingFormulaOnOpen']
      end
      if attributes.has_key?(:'PrecisionAsDisplayed')
          self.precision_as_displayed = attributes[:'PrecisionAsDisplayed']
      end
      if attributes.has_key?(:'RecalculateBeforeSave')
          self.recalculate_before_save = attributes[:'RecalculateBeforeSave']
      end
      if attributes.has_key?(:'ReCalculateOnOpen')
          self.re_calculate_on_open = attributes[:'ReCalculateOnOpen']
      end
      if attributes.has_key?(:'RecommendReadOnly')
          self.recommend_read_only = attributes[:'RecommendReadOnly']
      end
      if attributes.has_key?(:'Region')
          self.region = attributes[:'Region']
      end
      if attributes.has_key?(:'RemovePersonalInformation')
          self.remove_personal_information = attributes[:'RemovePersonalInformation']
      end
      if attributes.has_key?(:'RepairLoad')
          self.repair_load = attributes[:'RepairLoad']
      end
      if attributes.has_key?(:'Shared')
          self.shared = attributes[:'Shared']
      end
      if attributes.has_key?(:'SheetTabBarWidth')
          self.sheet_tab_bar_width = attributes[:'SheetTabBarWidth']
      end
      if attributes.has_key?(:'ShowTabs')
          self.show_tabs = attributes[:'ShowTabs']
      end
      if attributes.has_key?(:'UpdateAdjacentCellsBorder')
          self.update_adjacent_cells_border = attributes[:'UpdateAdjacentCellsBorder']
      end
      if attributes.has_key?(:'UpdateLinksType')
          self.update_links_type = attributes[:'UpdateLinksType']
      end
      if attributes.has_key?(:'WindowHeight')
          self.window_height = attributes[:'WindowHeight']
      end
      if attributes.has_key?(:'WindowLeft')
          self.window_left = attributes[:'WindowLeft']
      end
      if attributes.has_key?(:'WindowTop')
          self.window_top = attributes[:'WindowTop']
      end
      if attributes.has_key?(:'WindowWidth')
          self.window_width = attributes[:'WindowWidth']
      end
      if attributes.has_key?(:'Author')
          self.author = attributes[:'Author']
      end
      if attributes.has_key?(:'CheckCustomNumberFormat')
          self.check_custom_number_format = attributes[:'CheckCustomNumberFormat']
      end
      if attributes.has_key?(:'ProtectionType')
          self.protection_type = attributes[:'ProtectionType']
      end
      if attributes.has_key?(:'GlobalizationSettings')
          self.globalization_settings = attributes[:'GlobalizationSettings']
      end
      if attributes.has_key?(:'Password')
          self.password = attributes[:'Password']
      end
      if attributes.has_key?(:'WriteProtection')
          self.write_protection = attributes[:'WriteProtection']
      end
      if attributes.has_key?(:'IsEncrypted')
          self.is_encrypted = attributes[:'IsEncrypted']
      end
      if attributes.has_key?(:'IsProtected')
          self.is_protected = attributes[:'IsProtected']
      end
      if attributes.has_key?(:'MaxRow')
          self.max_row = attributes[:'MaxRow']
      end
      if attributes.has_key?(:'MaxColumn')
          self.max_column = attributes[:'MaxColumn']
      end
      if attributes.has_key?(:'SignificantDigits')
          self.significant_digits = attributes[:'SignificantDigits']
      end
      if attributes.has_key?(:'CheckCompatibility')
          self.check_compatibility = attributes[:'CheckCompatibility']
      end
      if attributes.has_key?(:'PaperSize')
          self.paper_size = attributes[:'PaperSize']
      end
      if attributes.has_key?(:'MaxRowsOfSharedFormula')
          self.max_rows_of_shared_formula = attributes[:'MaxRowsOfSharedFormula']
      end
      if attributes.has_key?(:'Compliance')
          self.compliance = attributes[:'Compliance']
      end
      if attributes.has_key?(:'QuotePrefixToStyle')
          self.quote_prefix_to_style = attributes[:'QuotePrefixToStyle']
      end
      if attributes.has_key?(:'FormulaSettings')
          self.formula_settings = attributes[:'FormulaSettings']
      end
      if attributes.has_key?(:'ForceFullCalculate')
          self.force_full_calculate = attributes[:'ForceFullCalculate']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @auto_compress_pictures.nil?
          invalid_properties.push("invalid value for 'auto_compress_pictures', auto_compress_pictures cannot be nil.")
      end
      if @auto_recover.nil?
          invalid_properties.push("invalid value for 'auto_recover', auto_recover cannot be nil.")
      end
      if @build_version.nil?
          invalid_properties.push("invalid value for 'build_version', build_version cannot be nil.")
      end
      if @calc_mode.nil?
          invalid_properties.push("invalid value for 'calc_mode', calc_mode cannot be nil.")
      end
      if @calc_stack_size.nil?
          invalid_properties.push("invalid value for 'calc_stack_size', calc_stack_size cannot be nil.")
      end
      if @calculation_id.nil?
          invalid_properties.push("invalid value for 'calculation_id', calculation_id cannot be nil.")
      end
      if @check_comptiliblity.nil?
          invalid_properties.push("invalid value for 'check_comptiliblity', check_comptiliblity cannot be nil.")
      end
      if @check_excel_restriction.nil?
          invalid_properties.push("invalid value for 'check_excel_restriction', check_excel_restriction cannot be nil.")
      end
      if @crash_save.nil?
          invalid_properties.push("invalid value for 'crash_save', crash_save cannot be nil.")
      end
      if @create_calc_chain.nil?
          invalid_properties.push("invalid value for 'create_calc_chain', create_calc_chain cannot be nil.")
      end
      if @data_extract_load.nil?
          invalid_properties.push("invalid value for 'data_extract_load', data_extract_load cannot be nil.")
      end
      if @date1904.nil?
          invalid_properties.push("invalid value for 'date1904', date1904 cannot be nil.")
      end
      if @display_drawing_objects.nil?
          invalid_properties.push("invalid value for 'display_drawing_objects', display_drawing_objects cannot be nil.")
      end
      if @enable_macros.nil?
          invalid_properties.push("invalid value for 'enable_macros', enable_macros cannot be nil.")
      end
      if @first_visible_tab.nil?
          invalid_properties.push("invalid value for 'first_visible_tab', first_visible_tab cannot be nil.")
      end
      if @hide_pivot_field_list.nil?
          invalid_properties.push("invalid value for 'hide_pivot_field_list', hide_pivot_field_list cannot be nil.")
      end
      if @is_default_encrypted.nil?
          invalid_properties.push("invalid value for 'is_default_encrypted', is_default_encrypted cannot be nil.")
      end
      if @is_hidden.nil?
          invalid_properties.push("invalid value for 'is_hidden', is_hidden cannot be nil.")
      end
      if @is_h_scroll_bar_visible.nil?
          invalid_properties.push("invalid value for 'is_h_scroll_bar_visible', is_h_scroll_bar_visible cannot be nil.")
      end
      if @is_minimized.nil?
          invalid_properties.push("invalid value for 'is_minimized', is_minimized cannot be nil.")
      end
      if @is_v_scroll_bar_visible.nil?
          invalid_properties.push("invalid value for 'is_v_scroll_bar_visible', is_v_scroll_bar_visible cannot be nil.")
      end
      if @iteration.nil?
          invalid_properties.push("invalid value for 'iteration', iteration cannot be nil.")
      end
      if @language_code.nil?
          invalid_properties.push("invalid value for 'language_code', language_code cannot be nil.")
      end
      if @max_change.nil?
          invalid_properties.push("invalid value for 'max_change', max_change cannot be nil.")
      end
      if @max_iteration.nil?
          invalid_properties.push("invalid value for 'max_iteration', max_iteration cannot be nil.")
      end
      if @memory_setting.nil?
          invalid_properties.push("invalid value for 'memory_setting', memory_setting cannot be nil.")
      end
      if @number_decimal_separator.nil?
          invalid_properties.push("invalid value for 'number_decimal_separator', number_decimal_separator cannot be nil.")
      end
      if @number_group_separator.nil?
          invalid_properties.push("invalid value for 'number_group_separator', number_group_separator cannot be nil.")
      end
      if @parsing_formula_on_open.nil?
          invalid_properties.push("invalid value for 'parsing_formula_on_open', parsing_formula_on_open cannot be nil.")
      end
      if @precision_as_displayed.nil?
          invalid_properties.push("invalid value for 'precision_as_displayed', precision_as_displayed cannot be nil.")
      end
      if @recalculate_before_save.nil?
          invalid_properties.push("invalid value for 'recalculate_before_save', recalculate_before_save cannot be nil.")
      end
      if @re_calculate_on_open.nil?
          invalid_properties.push("invalid value for 're_calculate_on_open', re_calculate_on_open cannot be nil.")
      end
      if @recommend_read_only.nil?
          invalid_properties.push("invalid value for 'recommend_read_only', recommend_read_only cannot be nil.")
      end
      if @region.nil?
          invalid_properties.push("invalid value for 'region', region cannot be nil.")
      end
      if @remove_personal_information.nil?
          invalid_properties.push("invalid value for 'remove_personal_information', remove_personal_information cannot be nil.")
      end
      if @repair_load.nil?
          invalid_properties.push("invalid value for 'repair_load', repair_load cannot be nil.")
      end
      if @shared.nil?
          invalid_properties.push("invalid value for 'shared', shared cannot be nil.")
      end
      if @sheet_tab_bar_width.nil?
          invalid_properties.push("invalid value for 'sheet_tab_bar_width', sheet_tab_bar_width cannot be nil.")
      end
      if @show_tabs.nil?
          invalid_properties.push("invalid value for 'show_tabs', show_tabs cannot be nil.")
      end
      if @update_adjacent_cells_border.nil?
          invalid_properties.push("invalid value for 'update_adjacent_cells_border', update_adjacent_cells_border cannot be nil.")
      end
      if @update_links_type.nil?
          invalid_properties.push("invalid value for 'update_links_type', update_links_type cannot be nil.")
      end
      if @window_height.nil?
          invalid_properties.push("invalid value for 'window_height', window_height cannot be nil.")
      end
      if @window_left.nil?
          invalid_properties.push("invalid value for 'window_left', window_left cannot be nil.")
      end
      if @window_top.nil?
          invalid_properties.push("invalid value for 'window_top', window_top cannot be nil.")
      end
      if @window_width.nil?
          invalid_properties.push("invalid value for 'window_width', window_width cannot be nil.")
      end
      if @author.nil?
          invalid_properties.push("invalid value for 'author', author cannot be nil.")
      end
      if @check_custom_number_format.nil?
          invalid_properties.push("invalid value for 'check_custom_number_format', check_custom_number_format cannot be nil.")
      end
      if @protection_type.nil?
          invalid_properties.push("invalid value for 'protection_type', protection_type cannot be nil.")
      end
      if @globalization_settings.nil?
          invalid_properties.push("invalid value for 'globalization_settings', globalization_settings cannot be nil.")
      end
      if @password.nil?
          invalid_properties.push("invalid value for 'password', password cannot be nil.")
      end
      if @write_protection.nil?
          invalid_properties.push("invalid value for 'write_protection', write_protection cannot be nil.")
      end
      if @is_encrypted.nil?
          invalid_properties.push("invalid value for 'is_encrypted', is_encrypted cannot be nil.")
      end
      if @is_protected.nil?
          invalid_properties.push("invalid value for 'is_protected', is_protected cannot be nil.")
      end
      if @max_row.nil?
          invalid_properties.push("invalid value for 'max_row', max_row cannot be nil.")
      end
      if @max_column.nil?
          invalid_properties.push("invalid value for 'max_column', max_column cannot be nil.")
      end
      if @significant_digits.nil?
          invalid_properties.push("invalid value for 'significant_digits', significant_digits cannot be nil.")
      end
      if @check_compatibility.nil?
          invalid_properties.push("invalid value for 'check_compatibility', check_compatibility cannot be nil.")
      end
      if @paper_size.nil?
          invalid_properties.push("invalid value for 'paper_size', paper_size cannot be nil.")
      end
      if @max_rows_of_shared_formula.nil?
          invalid_properties.push("invalid value for 'max_rows_of_shared_formula', max_rows_of_shared_formula cannot be nil.")
      end
      if @compliance.nil?
          invalid_properties.push("invalid value for 'compliance', compliance cannot be nil.")
      end
      if @quote_prefix_to_style.nil?
          invalid_properties.push("invalid value for 'quote_prefix_to_style', quote_prefix_to_style cannot be nil.")
      end
      if @formula_settings.nil?
          invalid_properties.push("invalid value for 'formula_settings', formula_settings cannot be nil.")
      end
      if @force_full_calculate.nil?
          invalid_properties.push("invalid value for 'force_full_calculate', force_full_calculate cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @auto_compress_pictures.nil?
      return false if @auto_recover.nil?
      return false if @build_version.nil?
      return false if @calc_mode.nil?
      return false if @calc_stack_size.nil?
      return false if @calculation_id.nil?
      return false if @check_comptiliblity.nil?
      return false if @check_excel_restriction.nil?
      return false if @crash_save.nil?
      return false if @create_calc_chain.nil?
      return false if @data_extract_load.nil?
      return false if @date1904.nil?
      return false if @display_drawing_objects.nil?
      return false if @enable_macros.nil?
      return false if @first_visible_tab.nil?
      return false if @hide_pivot_field_list.nil?
      return false if @is_default_encrypted.nil?
      return false if @is_hidden.nil?
      return false if @is_h_scroll_bar_visible.nil?
      return false if @is_minimized.nil?
      return false if @is_v_scroll_bar_visible.nil?
      return false if @iteration.nil?
      return false if @language_code.nil?
      return false if @max_change.nil?
      return false if @max_iteration.nil?
      return false if @memory_setting.nil?
      return false if @number_decimal_separator.nil?
      return false if @number_group_separator.nil?
      return false if @parsing_formula_on_open.nil?
      return false if @precision_as_displayed.nil?
      return false if @recalculate_before_save.nil?
      return false if @re_calculate_on_open.nil?
      return false if @recommend_read_only.nil?
      return false if @region.nil?
      return false if @remove_personal_information.nil?
      return false if @repair_load.nil?
      return false if @shared.nil?
      return false if @sheet_tab_bar_width.nil?
      return false if @show_tabs.nil?
      return false if @update_adjacent_cells_border.nil?
      return false if @update_links_type.nil?
      return false if @window_height.nil?
      return false if @window_left.nil?
      return false if @window_top.nil?
      return false if @window_width.nil?
      return false if @author.nil?
      return false if @check_custom_number_format.nil?
      return false if @protection_type.nil?
      return false if @globalization_settings.nil?
      return false if @password.nil?
      return false if @write_protection.nil?
      return false if @is_encrypted.nil?
      return false if @is_protected.nil?
      return false if @max_row.nil?
      return false if @max_column.nil?
      return false if @significant_digits.nil?
      return false if @check_compatibility.nil?
      return false if @paper_size.nil?
      return false if @max_rows_of_shared_formula.nil?
      return false if @compliance.nil?
      return false if @quote_prefix_to_style.nil?
      return false if @formula_settings.nil?
      return false if @force_full_calculate.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          auto_compress_pictures == o.auto_compress_pictures &&
          auto_recover == o.auto_recover &&
          build_version == o.build_version &&
          calc_mode == o.calc_mode &&
          calc_stack_size == o.calc_stack_size &&
          calculation_id == o.calculation_id &&
          check_comptiliblity == o.check_comptiliblity &&
          check_excel_restriction == o.check_excel_restriction &&
          crash_save == o.crash_save &&
          create_calc_chain == o.create_calc_chain &&
          data_extract_load == o.data_extract_load &&
          date1904 == o.date1904 &&
          display_drawing_objects == o.display_drawing_objects &&
          enable_macros == o.enable_macros &&
          first_visible_tab == o.first_visible_tab &&
          hide_pivot_field_list == o.hide_pivot_field_list &&
          is_default_encrypted == o.is_default_encrypted &&
          is_hidden == o.is_hidden &&
          is_h_scroll_bar_visible == o.is_h_scroll_bar_visible &&
          is_minimized == o.is_minimized &&
          is_v_scroll_bar_visible == o.is_v_scroll_bar_visible &&
          iteration == o.iteration &&
          language_code == o.language_code &&
          max_change == o.max_change &&
          max_iteration == o.max_iteration &&
          memory_setting == o.memory_setting &&
          number_decimal_separator == o.number_decimal_separator &&
          number_group_separator == o.number_group_separator &&
          parsing_formula_on_open == o.parsing_formula_on_open &&
          precision_as_displayed == o.precision_as_displayed &&
          recalculate_before_save == o.recalculate_before_save &&
          re_calculate_on_open == o.re_calculate_on_open &&
          recommend_read_only == o.recommend_read_only &&
          region == o.region &&
          remove_personal_information == o.remove_personal_information &&
          repair_load == o.repair_load &&
          shared == o.shared &&
          sheet_tab_bar_width == o.sheet_tab_bar_width &&
          show_tabs == o.show_tabs &&
          update_adjacent_cells_border == o.update_adjacent_cells_border &&
          update_links_type == o.update_links_type &&
          window_height == o.window_height &&
          window_left == o.window_left &&
          window_top == o.window_top &&
          window_width == o.window_width &&
          author == o.author &&
          check_custom_number_format == o.check_custom_number_format &&
          protection_type == o.protection_type &&
          globalization_settings == o.globalization_settings &&
          password == o.password &&
          write_protection == o.write_protection &&
          is_encrypted == o.is_encrypted &&
          is_protected == o.is_protected &&
          max_row == o.max_row &&
          max_column == o.max_column &&
          significant_digits == o.significant_digits &&
          check_compatibility == o.check_compatibility &&
          paper_size == o.paper_size &&
          max_rows_of_shared_formula == o.max_rows_of_shared_formula &&
          compliance == o.compliance &&
          quote_prefix_to_style == o.quote_prefix_to_style &&
          formula_settings == o.formula_settings &&
          force_full_calculate == o.force_full_calculate 
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
      [ auto_compress_pictures , auto_recover , build_version , calc_mode , calc_stack_size , calculation_id , check_comptiliblity , check_excel_restriction , crash_save , create_calc_chain , data_extract_load , date1904 , display_drawing_objects , enable_macros , first_visible_tab , hide_pivot_field_list , is_default_encrypted , is_hidden , is_h_scroll_bar_visible , is_minimized , is_v_scroll_bar_visible , iteration , language_code , max_change , max_iteration , memory_setting , number_decimal_separator , number_group_separator , parsing_formula_on_open , precision_as_displayed , recalculate_before_save , re_calculate_on_open , recommend_read_only , region , remove_personal_information , repair_load , shared , sheet_tab_bar_width , show_tabs , update_adjacent_cells_border , update_links_type , window_height , window_left , window_top , window_width , author , check_custom_number_format , protection_type , globalization_settings , password , write_protection , is_encrypted , is_protected , max_row , max_column , significant_digits , check_compatibility , paper_size , max_rows_of_shared_formula , compliance , quote_prefix_to_style , formula_settings , force_full_calculate ].hash
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
