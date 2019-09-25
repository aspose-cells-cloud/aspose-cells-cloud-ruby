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

  class WorkbookSettings
    attr_accessor :number_group_separator

    attr_accessor :hide_pivot_field_list

    # Represents whether the generated spreadsheet will be opened Minimized.             
    attr_accessor :is_minimized

    # Specifies the version of the calculation engine used to calculate values in the workbook.             
    attr_accessor :calculation_id

    # Indicates whether re-calculate all formulas on opening file.             
    attr_accessor :re_calculate_on_open

    # Whether check restriction of excel file when user modify cells related objects.  For example, excel does not allow inputting string value longer than 32K.  When you input a value longer than 32K such as by Cell.PutValue(string), if this property is true, you will get an Exception.  If this property is false, we will accept your input string value as the cell's value so that later you can output the complete string value for other file formats such as CSV.  However, if you have set such kind of value that is invalid for excel file format, you should not save the workbook as excel file format later. Otherwise there may be unexpected error for the generated excel file.             
    attr_accessor :check_excel_restriction

    # Gets or sets a value indicating whether the generated spreadsheet will contain a horizontal scroll bar.                           Remarks: The default value is true.              
    attr_accessor :is_h_scroll_bar_visible

    # The height of the window, in unit of point.             
    attr_accessor :window_height

    # The distance from the left edge of the client area to the left edge of the window, in unit of point.             
    attr_accessor :window_left

    # Specifies the stack size for calculating cells recursively.  The large value for this size will give better performance when there are lots of cells need to be calculated recursively.  On the other hand, larger value will raise the stakes of StackOverflowException.  If use gets StackOverflowException when calculating formulas, this value should be decreased.             
    attr_accessor :calc_stack_size

    # Gets or sets a value that indicates whether the Workbook is shared.                           Remarks: The default value is false.              
    attr_accessor :shared

    attr_accessor :remove_personal_information

    # Gets or sets the user interface language of the Workbook version based on CountryCode that has saved the file.             
    attr_accessor :language_code

    attr_accessor :enable_macros

    attr_accessor :is_default_encrypted

    # Indicates whether to recalculate before saving the document.             
    attr_accessor :recalculate_before_save

    # Indicates whether parsing the formula when reading the file.                           Remarks: Only applies for Excel Xlsx,Xltx, Xltm,Xlsm file because the formulas in the files are stored with a string formula.              
    attr_accessor :parsing_formula_on_open

    # The distance from the top edge of the client area to the top edge of the window, in unit of point.             
    attr_accessor :window_top

    # Gets or sets the system regional settings based on CountryCode at the time the file was saved.                           Remarks: If you do not want to use the region saved in the file, please reset it after reading the file.              
    attr_accessor :region

    attr_accessor :memory_setting

    # Indicates whether update adjacent cells' border.                           Remarks: The default value is true.  For example: the bottom border of the cell A1 is update, the top border of the cell A2 should be changed too.              
    attr_accessor :update_adjacent_cells_border

    attr_accessor :crash_save

    # Get or sets a value whether the Workbook tabs are displayed.                           Remarks: The default value is true.              
    attr_accessor :show_tabs

    # True if calculations in this workbook will be done using only the precision of the numbers as they're displayed             
    attr_accessor :precision_as_displayed

    # It specifies whether to calculate formulas manually, automatically or automatically except for multiple table operations.             
    attr_accessor :calc_mode

    attr_accessor :auto_compress_pictures

    # Gets or sets a value which represents if the workbook uses the 1904 date system.             
    attr_accessor :date1904

    attr_accessor :number_decimal_separator

    # Indicates if Aspose.Cells will use iteration to resolve circular references.             
    attr_accessor :iteration

    # Indicates whether check comptiliblity when saving workbook.                           Remarks:  The default value is true.              
    attr_accessor :check_comptiliblity

    attr_accessor :auto_recover

    # Returns or sets the maximum number of change that Microsoft Excel can use to resolve a circular reference.             
    attr_accessor :max_change

    attr_accessor :data_extract_load

    # Gets or sets the first visible worksheet tab.             
    attr_accessor :first_visible_tab

    # Indicates whether this workbook is hidden.             
    attr_accessor :is_hidden

    # Indicates if the Read Only Recommended option is selected.             
    attr_accessor :recommend_read_only

    # Indicates whether and how to show objects in the workbook.             
    attr_accessor :display_drawing_objects

    # Specifies the incremental public release of the application.             
    attr_accessor :build_version

    # Gets or sets a value indicating whether the generated spreadsheet will contain a vertical scroll bar.                           Remarks: The default value is true.              
    attr_accessor :is_v_scroll_bar_visible

    # The width of the window, in unit of point.             
    attr_accessor :window_width

    # Indicates whether create calculated formulas chain.             
    attr_accessor :create_calc_chain

    # Returns or sets the maximum number of iterations that Aspose.Cells can use to resolve a circular reference.             
    attr_accessor :max_iteration

    attr_accessor :repair_load

    attr_accessor :update_links_type

    # Width of worksheet tab bar (in 1/1000 of window width).             
    attr_accessor :sheet_tab_bar_width


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'number_group_separator' => :'NumberGroupSeparator',
        :'hide_pivot_field_list' => :'HidePivotFieldList',
        :'is_minimized' => :'IsMinimized',
        :'calculation_id' => :'CalculationId',
        :'re_calculate_on_open' => :'ReCalculateOnOpen',
        :'check_excel_restriction' => :'CheckExcelRestriction',
        :'is_h_scroll_bar_visible' => :'IsHScrollBarVisible',
        :'window_height' => :'WindowHeight',
        :'window_left' => :'WindowLeft',
        :'calc_stack_size' => :'CalcStackSize',
        :'shared' => :'Shared',
        :'remove_personal_information' => :'RemovePersonalInformation',
        :'language_code' => :'LanguageCode',
        :'enable_macros' => :'EnableMacros',
        :'is_default_encrypted' => :'IsDefaultEncrypted',
        :'recalculate_before_save' => :'RecalculateBeforeSave',
        :'parsing_formula_on_open' => :'ParsingFormulaOnOpen',
        :'window_top' => :'WindowTop',
        :'region' => :'Region',
        :'memory_setting' => :'MemorySetting',
        :'update_adjacent_cells_border' => :'UpdateAdjacentCellsBorder',
        :'crash_save' => :'CrashSave',
        :'show_tabs' => :'ShowTabs',
        :'precision_as_displayed' => :'PrecisionAsDisplayed',
        :'calc_mode' => :'CalcMode',
        :'auto_compress_pictures' => :'AutoCompressPictures',
        :'date1904' => :'Date1904',
        :'number_decimal_separator' => :'NumberDecimalSeparator',
        :'iteration' => :'Iteration',
        :'check_comptiliblity' => :'CheckComptiliblity',
        :'auto_recover' => :'AutoRecover',
        :'max_change' => :'MaxChange',
        :'data_extract_load' => :'DataExtractLoad',
        :'first_visible_tab' => :'FirstVisibleTab',
        :'is_hidden' => :'IsHidden',
        :'recommend_read_only' => :'RecommendReadOnly',
        :'display_drawing_objects' => :'DisplayDrawingObjects',
        :'build_version' => :'BuildVersion',
        :'is_v_scroll_bar_visible' => :'IsVScrollBarVisible',
        :'window_width' => :'WindowWidth',
        :'create_calc_chain' => :'CreateCalcChain',
        :'max_iteration' => :'MaxIteration',
        :'repair_load' => :'RepairLoad',
        :'update_links_type' => :'UpdateLinksType',
        :'sheet_tab_bar_width' => :'SheetTabBarWidth'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'number_group_separator' => :'String',
        :'hide_pivot_field_list' => :'BOOLEAN',
        :'is_minimized' => :'BOOLEAN',
        :'calculation_id' => :'String',
        :'re_calculate_on_open' => :'BOOLEAN',
        :'check_excel_restriction' => :'BOOLEAN',
        :'is_h_scroll_bar_visible' => :'BOOLEAN',
        :'window_height' => :'Float',
        :'window_left' => :'Float',
        :'calc_stack_size' => :'Integer',
        :'shared' => :'BOOLEAN',
        :'remove_personal_information' => :'BOOLEAN',
        :'language_code' => :'String',
        :'enable_macros' => :'BOOLEAN',
        :'is_default_encrypted' => :'BOOLEAN',
        :'recalculate_before_save' => :'BOOLEAN',
        :'parsing_formula_on_open' => :'BOOLEAN',
        :'window_top' => :'Float',
        :'region' => :'String',
        :'memory_setting' => :'String',
        :'update_adjacent_cells_border' => :'BOOLEAN',
        :'crash_save' => :'BOOLEAN',
        :'show_tabs' => :'BOOLEAN',
        :'precision_as_displayed' => :'BOOLEAN',
        :'calc_mode' => :'String',
        :'auto_compress_pictures' => :'BOOLEAN',
        :'date1904' => :'BOOLEAN',
        :'number_decimal_separator' => :'String',
        :'iteration' => :'BOOLEAN',
        :'check_comptiliblity' => :'BOOLEAN',
        :'auto_recover' => :'BOOLEAN',
        :'max_change' => :'Float',
        :'data_extract_load' => :'BOOLEAN',
        :'first_visible_tab' => :'Integer',
        :'is_hidden' => :'BOOLEAN',
        :'recommend_read_only' => :'BOOLEAN',
        :'display_drawing_objects' => :'String',
        :'build_version' => :'String',
        :'is_v_scroll_bar_visible' => :'BOOLEAN',
        :'window_width' => :'Float',
        :'create_calc_chain' => :'BOOLEAN',
        :'max_iteration' => :'Integer',
        :'repair_load' => :'BOOLEAN',
        :'update_links_type' => :'String',
        :'sheet_tab_bar_width' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'NumberGroupSeparator')
        self.number_group_separator = attributes[:'NumberGroupSeparator']
      end

      if attributes.has_key?(:'HidePivotFieldList')
        self.hide_pivot_field_list = attributes[:'HidePivotFieldList']
      end

      if attributes.has_key?(:'IsMinimized')
        self.is_minimized = attributes[:'IsMinimized']
      end

      if attributes.has_key?(:'CalculationId')
        self.calculation_id = attributes[:'CalculationId']
      end

      if attributes.has_key?(:'ReCalculateOnOpen')
        self.re_calculate_on_open = attributes[:'ReCalculateOnOpen']
      end

      if attributes.has_key?(:'CheckExcelRestriction')
        self.check_excel_restriction = attributes[:'CheckExcelRestriction']
      end

      if attributes.has_key?(:'IsHScrollBarVisible')
        self.is_h_scroll_bar_visible = attributes[:'IsHScrollBarVisible']
      end

      if attributes.has_key?(:'WindowHeight')
        self.window_height = attributes[:'WindowHeight']
      end

      if attributes.has_key?(:'WindowLeft')
        self.window_left = attributes[:'WindowLeft']
      end

      if attributes.has_key?(:'CalcStackSize')
        self.calc_stack_size = attributes[:'CalcStackSize']
      end

      if attributes.has_key?(:'Shared')
        self.shared = attributes[:'Shared']
      end

      if attributes.has_key?(:'RemovePersonalInformation')
        self.remove_personal_information = attributes[:'RemovePersonalInformation']
      end

      if attributes.has_key?(:'LanguageCode')
        self.language_code = attributes[:'LanguageCode']
      end

      if attributes.has_key?(:'EnableMacros')
        self.enable_macros = attributes[:'EnableMacros']
      end

      if attributes.has_key?(:'IsDefaultEncrypted')
        self.is_default_encrypted = attributes[:'IsDefaultEncrypted']
      end

      if attributes.has_key?(:'RecalculateBeforeSave')
        self.recalculate_before_save = attributes[:'RecalculateBeforeSave']
      end

      if attributes.has_key?(:'ParsingFormulaOnOpen')
        self.parsing_formula_on_open = attributes[:'ParsingFormulaOnOpen']
      end

      if attributes.has_key?(:'WindowTop')
        self.window_top = attributes[:'WindowTop']
      end

      if attributes.has_key?(:'Region')
        self.region = attributes[:'Region']
      end

      if attributes.has_key?(:'MemorySetting')
        self.memory_setting = attributes[:'MemorySetting']
      end

      if attributes.has_key?(:'UpdateAdjacentCellsBorder')
        self.update_adjacent_cells_border = attributes[:'UpdateAdjacentCellsBorder']
      end

      if attributes.has_key?(:'CrashSave')
        self.crash_save = attributes[:'CrashSave']
      end

      if attributes.has_key?(:'ShowTabs')
        self.show_tabs = attributes[:'ShowTabs']
      end

      if attributes.has_key?(:'PrecisionAsDisplayed')
        self.precision_as_displayed = attributes[:'PrecisionAsDisplayed']
      end

      if attributes.has_key?(:'CalcMode')
        self.calc_mode = attributes[:'CalcMode']
      end

      if attributes.has_key?(:'AutoCompressPictures')
        self.auto_compress_pictures = attributes[:'AutoCompressPictures']
      end

      if attributes.has_key?(:'Date1904')
        self.date1904 = attributes[:'Date1904']
      end

      if attributes.has_key?(:'NumberDecimalSeparator')
        self.number_decimal_separator = attributes[:'NumberDecimalSeparator']
      end

      if attributes.has_key?(:'Iteration')
        self.iteration = attributes[:'Iteration']
      end

      if attributes.has_key?(:'CheckComptiliblity')
        self.check_comptiliblity = attributes[:'CheckComptiliblity']
      end

      if attributes.has_key?(:'AutoRecover')
        self.auto_recover = attributes[:'AutoRecover']
      end

      if attributes.has_key?(:'MaxChange')
        self.max_change = attributes[:'MaxChange']
      end

      if attributes.has_key?(:'DataExtractLoad')
        self.data_extract_load = attributes[:'DataExtractLoad']
      end

      if attributes.has_key?(:'FirstVisibleTab')
        self.first_visible_tab = attributes[:'FirstVisibleTab']
      end

      if attributes.has_key?(:'IsHidden')
        self.is_hidden = attributes[:'IsHidden']
      end

      if attributes.has_key?(:'RecommendReadOnly')
        self.recommend_read_only = attributes[:'RecommendReadOnly']
      end

      if attributes.has_key?(:'DisplayDrawingObjects')
        self.display_drawing_objects = attributes[:'DisplayDrawingObjects']
      end

      if attributes.has_key?(:'BuildVersion')
        self.build_version = attributes[:'BuildVersion']
      end

      if attributes.has_key?(:'IsVScrollBarVisible')
        self.is_v_scroll_bar_visible = attributes[:'IsVScrollBarVisible']
      end

      if attributes.has_key?(:'WindowWidth')
        self.window_width = attributes[:'WindowWidth']
      end

      if attributes.has_key?(:'CreateCalcChain')
        self.create_calc_chain = attributes[:'CreateCalcChain']
      end

      if attributes.has_key?(:'MaxIteration')
        self.max_iteration = attributes[:'MaxIteration']
      end

      if attributes.has_key?(:'RepairLoad')
        self.repair_load = attributes[:'RepairLoad']
      end

      if attributes.has_key?(:'UpdateLinksType')
        self.update_links_type = attributes[:'UpdateLinksType']
      end

      if attributes.has_key?(:'SheetTabBarWidth')
        self.sheet_tab_bar_width = attributes[:'SheetTabBarWidth']
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
          number_group_separator == o.number_group_separator &&
          hide_pivot_field_list == o.hide_pivot_field_list &&
          is_minimized == o.is_minimized &&
          calculation_id == o.calculation_id &&
          re_calculate_on_open == o.re_calculate_on_open &&
          check_excel_restriction == o.check_excel_restriction &&
          is_h_scroll_bar_visible == o.is_h_scroll_bar_visible &&
          window_height == o.window_height &&
          window_left == o.window_left &&
          calc_stack_size == o.calc_stack_size &&
          shared == o.shared &&
          remove_personal_information == o.remove_personal_information &&
          language_code == o.language_code &&
          enable_macros == o.enable_macros &&
          is_default_encrypted == o.is_default_encrypted &&
          recalculate_before_save == o.recalculate_before_save &&
          parsing_formula_on_open == o.parsing_formula_on_open &&
          window_top == o.window_top &&
          region == o.region &&
          memory_setting == o.memory_setting &&
          update_adjacent_cells_border == o.update_adjacent_cells_border &&
          crash_save == o.crash_save &&
          show_tabs == o.show_tabs &&
          precision_as_displayed == o.precision_as_displayed &&
          calc_mode == o.calc_mode &&
          auto_compress_pictures == o.auto_compress_pictures &&
          date1904 == o.date1904 &&
          number_decimal_separator == o.number_decimal_separator &&
          iteration == o.iteration &&
          check_comptiliblity == o.check_comptiliblity &&
          auto_recover == o.auto_recover &&
          max_change == o.max_change &&
          data_extract_load == o.data_extract_load &&
          first_visible_tab == o.first_visible_tab &&
          is_hidden == o.is_hidden &&
          recommend_read_only == o.recommend_read_only &&
          display_drawing_objects == o.display_drawing_objects &&
          build_version == o.build_version &&
          is_v_scroll_bar_visible == o.is_v_scroll_bar_visible &&
          window_width == o.window_width &&
          create_calc_chain == o.create_calc_chain &&
          max_iteration == o.max_iteration &&
          repair_load == o.repair_load &&
          update_links_type == o.update_links_type &&
          sheet_tab_bar_width == o.sheet_tab_bar_width
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [number_group_separator, hide_pivot_field_list, is_minimized, calculation_id, re_calculate_on_open, check_excel_restriction, is_h_scroll_bar_visible, window_height, window_left, calc_stack_size, shared, remove_personal_information, language_code, enable_macros, is_default_encrypted, recalculate_before_save, parsing_formula_on_open, window_top, region, memory_setting, update_adjacent_cells_border, crash_save, show_tabs, precision_as_displayed, calc_mode, auto_compress_pictures, date1904, number_decimal_separator, iteration, check_comptiliblity, auto_recover, max_change, data_extract_load, first_visible_tab, is_hidden, recommend_read_only, display_drawing_objects, build_version, is_v_scroll_bar_visible, window_width, create_calc_chain, max_iteration, repair_load, update_links_type, sheet_tab_bar_width].hash
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
