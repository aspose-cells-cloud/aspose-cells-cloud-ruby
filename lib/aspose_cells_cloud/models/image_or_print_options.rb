=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="ImageOrPrintOptionsrb.cs">
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

  class ImageOrPrintOptions
        #            
        attr_accessor :text_cross_type
        #            
        attr_accessor :gridline_type
        #            
        attr_accessor :output_blank_page_when_nothing_to_print
        #            
        attr_accessor :check_workbook_default_font
        #            
        attr_accessor :default_font
        #            
        attr_accessor :is_optimized
        #            
        attr_accessor :page_count
        #            
        attr_accessor :page_index
        #            
        attr_accessor :is_font_substitution_char_granularity
        #            
        attr_accessor :transparent
        #            
        attr_accessor :only_area
        #            
        attr_accessor :svg_fit_to_view_port
        #            
        attr_accessor :embeded_image_name_in_svg
        #            
        attr_accessor :all_columns_in_one_page_per_sheet
        #            
        attr_accessor :print_with_status_dialog
        #            
        attr_accessor :horizontal_resolution
        #            
        attr_accessor :vertical_resolution
        #            
        attr_accessor :default_edit_language
        #            
        attr_accessor :tiff_color_depth
        #            
        attr_accessor :tiff_compression
        #            
        attr_accessor :printing_page
        #            
        attr_accessor :quality
        #            
        attr_accessor :image_type
        #            
        attr_accessor :one_page_per_sheet
        #            
        attr_accessor :tiff_binarization_method

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'text_cross_type' => :'TextCrossType',
        :'gridline_type' => :'GridlineType',
        :'output_blank_page_when_nothing_to_print' => :'OutputBlankPageWhenNothingToPrint',
        :'check_workbook_default_font' => :'CheckWorkbookDefaultFont',
        :'default_font' => :'DefaultFont',
        :'is_optimized' => :'IsOptimized',
        :'page_count' => :'PageCount',
        :'page_index' => :'PageIndex',
        :'is_font_substitution_char_granularity' => :'IsFontSubstitutionCharGranularity',
        :'transparent' => :'Transparent',
        :'only_area' => :'OnlyArea',
        :'svg_fit_to_view_port' => :'SVGFitToViewPort',
        :'embeded_image_name_in_svg' => :'EmbededImageNameInSvg',
        :'all_columns_in_one_page_per_sheet' => :'AllColumnsInOnePagePerSheet',
        :'print_with_status_dialog' => :'PrintWithStatusDialog',
        :'horizontal_resolution' => :'HorizontalResolution',
        :'vertical_resolution' => :'VerticalResolution',
        :'default_edit_language' => :'DefaultEditLanguage',
        :'tiff_color_depth' => :'TiffColorDepth',
        :'tiff_compression' => :'TiffCompression',
        :'printing_page' => :'PrintingPage',
        :'quality' => :'Quality',
        :'image_type' => :'ImageType',
        :'one_page_per_sheet' => :'OnePagePerSheet',
        :'tiff_binarization_method' => :'TiffBinarizationMethod'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'text_cross_type' => :'String',
        :'gridline_type' => :'String',
        :'output_blank_page_when_nothing_to_print' => :'BOOLEAN',
        :'check_workbook_default_font' => :'BOOLEAN',
        :'default_font' => :'String',
        :'is_optimized' => :'BOOLEAN',
        :'page_count' => :'Integer',
        :'page_index' => :'Integer',
        :'is_font_substitution_char_granularity' => :'BOOLEAN',
        :'transparent' => :'BOOLEAN',
        :'only_area' => :'BOOLEAN',
        :'svg_fit_to_view_port' => :'BOOLEAN',
        :'embeded_image_name_in_svg' => :'String',
        :'all_columns_in_one_page_per_sheet' => :'BOOLEAN',
        :'print_with_status_dialog' => :'BOOLEAN',
        :'horizontal_resolution' => :'Integer',
        :'vertical_resolution' => :'Integer',
        :'default_edit_language' => :'String',
        :'tiff_color_depth' => :'String',
        :'tiff_compression' => :'String',
        :'printing_page' => :'String',
        :'quality' => :'Integer',
        :'image_type' => :'String',
        :'one_page_per_sheet' => :'BOOLEAN',
        :'tiff_binarization_method' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'TextCrossType')
          self.text_cross_type = attributes[:'TextCrossType']
      end
      if attributes.has_key?(:'GridlineType')
          self.gridline_type = attributes[:'GridlineType']
      end
      if attributes.has_key?(:'OutputBlankPageWhenNothingToPrint')
          self.output_blank_page_when_nothing_to_print = attributes[:'OutputBlankPageWhenNothingToPrint']
      end
      if attributes.has_key?(:'CheckWorkbookDefaultFont')
          self.check_workbook_default_font = attributes[:'CheckWorkbookDefaultFont']
      end
      if attributes.has_key?(:'DefaultFont')
          self.default_font = attributes[:'DefaultFont']
      end
      if attributes.has_key?(:'IsOptimized')
          self.is_optimized = attributes[:'IsOptimized']
      end
      if attributes.has_key?(:'PageCount')
          self.page_count = attributes[:'PageCount']
      end
      if attributes.has_key?(:'PageIndex')
          self.page_index = attributes[:'PageIndex']
      end
      if attributes.has_key?(:'IsFontSubstitutionCharGranularity')
          self.is_font_substitution_char_granularity = attributes[:'IsFontSubstitutionCharGranularity']
      end
      if attributes.has_key?(:'Transparent')
          self.transparent = attributes[:'Transparent']
      end
      if attributes.has_key?(:'OnlyArea')
          self.only_area = attributes[:'OnlyArea']
      end
      if attributes.has_key?(:'SVGFitToViewPort')
          self.svg_fit_to_view_port = attributes[:'SVGFitToViewPort']
      end
      if attributes.has_key?(:'EmbededImageNameInSvg')
          self.embeded_image_name_in_svg = attributes[:'EmbededImageNameInSvg']
      end
      if attributes.has_key?(:'AllColumnsInOnePagePerSheet')
          self.all_columns_in_one_page_per_sheet = attributes[:'AllColumnsInOnePagePerSheet']
      end
      if attributes.has_key?(:'PrintWithStatusDialog')
          self.print_with_status_dialog = attributes[:'PrintWithStatusDialog']
      end
      if attributes.has_key?(:'HorizontalResolution')
          self.horizontal_resolution = attributes[:'HorizontalResolution']
      end
      if attributes.has_key?(:'VerticalResolution')
          self.vertical_resolution = attributes[:'VerticalResolution']
      end
      if attributes.has_key?(:'DefaultEditLanguage')
          self.default_edit_language = attributes[:'DefaultEditLanguage']
      end
      if attributes.has_key?(:'TiffColorDepth')
          self.tiff_color_depth = attributes[:'TiffColorDepth']
      end
      if attributes.has_key?(:'TiffCompression')
          self.tiff_compression = attributes[:'TiffCompression']
      end
      if attributes.has_key?(:'PrintingPage')
          self.printing_page = attributes[:'PrintingPage']
      end
      if attributes.has_key?(:'Quality')
          self.quality = attributes[:'Quality']
      end
      if attributes.has_key?(:'ImageType')
          self.image_type = attributes[:'ImageType']
      end
      if attributes.has_key?(:'OnePagePerSheet')
          self.one_page_per_sheet = attributes[:'OnePagePerSheet']
      end
      if attributes.has_key?(:'TiffBinarizationMethod')
          self.tiff_binarization_method = attributes[:'TiffBinarizationMethod']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @text_cross_type.nil?
          invalid_properties.push("invalid value for 'text_cross_type', text_cross_type cannot be nil.")
      end
      if @gridline_type.nil?
          invalid_properties.push("invalid value for 'gridline_type', gridline_type cannot be nil.")
      end
      if @output_blank_page_when_nothing_to_print.nil?
          invalid_properties.push("invalid value for 'output_blank_page_when_nothing_to_print', output_blank_page_when_nothing_to_print cannot be nil.")
      end
      if @check_workbook_default_font.nil?
          invalid_properties.push("invalid value for 'check_workbook_default_font', check_workbook_default_font cannot be nil.")
      end
      if @default_font.nil?
          invalid_properties.push("invalid value for 'default_font', default_font cannot be nil.")
      end
      if @is_optimized.nil?
          invalid_properties.push("invalid value for 'is_optimized', is_optimized cannot be nil.")
      end
      if @page_count.nil?
          invalid_properties.push("invalid value for 'page_count', page_count cannot be nil.")
      end
      if @page_index.nil?
          invalid_properties.push("invalid value for 'page_index', page_index cannot be nil.")
      end
      if @is_font_substitution_char_granularity.nil?
          invalid_properties.push("invalid value for 'is_font_substitution_char_granularity', is_font_substitution_char_granularity cannot be nil.")
      end
      if @transparent.nil?
          invalid_properties.push("invalid value for 'transparent', transparent cannot be nil.")
      end
      if @only_area.nil?
          invalid_properties.push("invalid value for 'only_area', only_area cannot be nil.")
      end
      if @svg_fit_to_view_port.nil?
          invalid_properties.push("invalid value for 'svg_fit_to_view_port', svg_fit_to_view_port cannot be nil.")
      end
      if @embeded_image_name_in_svg.nil?
          invalid_properties.push("invalid value for 'embeded_image_name_in_svg', embeded_image_name_in_svg cannot be nil.")
      end
      if @all_columns_in_one_page_per_sheet.nil?
          invalid_properties.push("invalid value for 'all_columns_in_one_page_per_sheet', all_columns_in_one_page_per_sheet cannot be nil.")
      end
      if @print_with_status_dialog.nil?
          invalid_properties.push("invalid value for 'print_with_status_dialog', print_with_status_dialog cannot be nil.")
      end
      if @horizontal_resolution.nil?
          invalid_properties.push("invalid value for 'horizontal_resolution', horizontal_resolution cannot be nil.")
      end
      if @vertical_resolution.nil?
          invalid_properties.push("invalid value for 'vertical_resolution', vertical_resolution cannot be nil.")
      end
      if @default_edit_language.nil?
          invalid_properties.push("invalid value for 'default_edit_language', default_edit_language cannot be nil.")
      end
      if @tiff_color_depth.nil?
          invalid_properties.push("invalid value for 'tiff_color_depth', tiff_color_depth cannot be nil.")
      end
      if @tiff_compression.nil?
          invalid_properties.push("invalid value for 'tiff_compression', tiff_compression cannot be nil.")
      end
      if @printing_page.nil?
          invalid_properties.push("invalid value for 'printing_page', printing_page cannot be nil.")
      end
      if @quality.nil?
          invalid_properties.push("invalid value for 'quality', quality cannot be nil.")
      end
      if @image_type.nil?
          invalid_properties.push("invalid value for 'image_type', image_type cannot be nil.")
      end
      if @one_page_per_sheet.nil?
          invalid_properties.push("invalid value for 'one_page_per_sheet', one_page_per_sheet cannot be nil.")
      end
      if @tiff_binarization_method.nil?
          invalid_properties.push("invalid value for 'tiff_binarization_method', tiff_binarization_method cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @text_cross_type.nil?
      return false if @gridline_type.nil?
      return false if @output_blank_page_when_nothing_to_print.nil?
      return false if @check_workbook_default_font.nil?
      return false if @default_font.nil?
      return false if @is_optimized.nil?
      return false if @page_count.nil?
      return false if @page_index.nil?
      return false if @is_font_substitution_char_granularity.nil?
      return false if @transparent.nil?
      return false if @only_area.nil?
      return false if @svg_fit_to_view_port.nil?
      return false if @embeded_image_name_in_svg.nil?
      return false if @all_columns_in_one_page_per_sheet.nil?
      return false if @print_with_status_dialog.nil?
      return false if @horizontal_resolution.nil?
      return false if @vertical_resolution.nil?
      return false if @default_edit_language.nil?
      return false if @tiff_color_depth.nil?
      return false if @tiff_compression.nil?
      return false if @printing_page.nil?
      return false if @quality.nil?
      return false if @image_type.nil?
      return false if @one_page_per_sheet.nil?
      return false if @tiff_binarization_method.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          text_cross_type == o.text_cross_type &&
          gridline_type == o.gridline_type &&
          output_blank_page_when_nothing_to_print == o.output_blank_page_when_nothing_to_print &&
          check_workbook_default_font == o.check_workbook_default_font &&
          default_font == o.default_font &&
          is_optimized == o.is_optimized &&
          page_count == o.page_count &&
          page_index == o.page_index &&
          is_font_substitution_char_granularity == o.is_font_substitution_char_granularity &&
          transparent == o.transparent &&
          only_area == o.only_area &&
          svg_fit_to_view_port == o.svg_fit_to_view_port &&
          embeded_image_name_in_svg == o.embeded_image_name_in_svg &&
          all_columns_in_one_page_per_sheet == o.all_columns_in_one_page_per_sheet &&
          print_with_status_dialog == o.print_with_status_dialog &&
          horizontal_resolution == o.horizontal_resolution &&
          vertical_resolution == o.vertical_resolution &&
          default_edit_language == o.default_edit_language &&
          tiff_color_depth == o.tiff_color_depth &&
          tiff_compression == o.tiff_compression &&
          printing_page == o.printing_page &&
          quality == o.quality &&
          image_type == o.image_type &&
          one_page_per_sheet == o.one_page_per_sheet &&
          tiff_binarization_method == o.tiff_binarization_method 
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
      [ text_cross_type , gridline_type , output_blank_page_when_nothing_to_print , check_workbook_default_font , default_font , is_optimized , page_count , page_index , is_font_substitution_char_granularity , transparent , only_area , svg_fit_to_view_port , embeded_image_name_in_svg , all_columns_in_one_page_per_sheet , print_with_status_dialog , horizontal_resolution , vertical_resolution , default_edit_language , tiff_color_depth , tiff_compression , printing_page , quality , image_type , one_page_per_sheet , tiff_binarization_method ].hash
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
