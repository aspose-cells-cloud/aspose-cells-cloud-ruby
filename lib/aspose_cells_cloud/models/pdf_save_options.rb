=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PdfSaveOptionsrb.cs">
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

  class PdfSaveOptions
        #Indicates whether the window's title bar should display the document title.            
        attr_accessor :display_doc_title
        #Indicates whether to export document structure.            
        attr_accessor :export_document_structure
        #Setting for rendering Emf metafile.            
        attr_accessor :emf_render_setting
        #Specifies the way CustomDocumentPropertyCollection are exported to PDF file.            
        attr_accessor :custom_properties_export
        #Gets and sets pdf optimization type.            
        attr_accessor :optimization_type
        #Gets and sets producer of generated pdf document.            
        attr_accessor :producer
        #Indicate the compression algorithm.            
        attr_accessor :pdf_compression
        #Gets or sets embedded font encoding in pdf.            
        attr_accessor :font_encoding
        #Gets or sets watermark to output.            
        attr_accessor :watermark
        #Indicates whether calculate formulas before saving pdf file.The default value is false.            
        attr_accessor :calculate_formula
        #Indicates whether check font compatibility for every character in text.                The default value is true.  Disable this property may give better performance.                 But when the default or specified font of text/character cannot be used                to render it, unreadable characters(such as block) maybe occur in the generated                pdf.  For such situation user should keep this property as true so that alternative                font can be searched and used to render the text instead;            
        attr_accessor :check_font_compatibility
        #Workbook converts to pdf will according to PdfCompliance in this property.            
        attr_accessor :compliance
        #When characters in the Excel are unicode and not be set with correct font in cell style,              They may appear as block in pdf,image.  Set the DefaultFont such as MingLiu or MS Gothic to show these characters.               If this property is not set, Aspose.Cells will use system default font to show these unicode characters.            
        attr_accessor :default_font
        #If OnePagePerSheet is true , all content of one sheet will output to only            one page in result. The paper size of pagesetup will be invalid, and the               other settings of pagesetup will still take effect.            
        attr_accessor :one_page_per_sheet
        #Indicates which pages will not be printed.            
        attr_accessor :printing_page_type
        #Set this options, when security is need in xls2pdf result.            
        attr_accessor :security_options
        #Set desired PPI(pixels per inch) of resample images and jpeg quality  All images will be converted to JPEG with the specified quality setting, and images that are greater than the specified PPI (pixels per inch) will be resampled.              Desired pixels per inch. 220 high quality. 150 screen quality. 96 email quality.            
        attr_accessor :desired_ppi
        #Set desired PPI(pixels per inch) of resample images and jpeg quality  All images will be converted to JPEG with the specified quality setting, and images that are greater than the specified PPI (pixels per inch) will be resampled.              0 - 100% JPEG quality.            
        attr_accessor :jpeg_quality
        #Represents the image type when converting the chart and shape .            
        attr_accessor :image_type
        #            
        attr_accessor :save_format
        #            
        attr_accessor :cached_file_folder
        #            
        attr_accessor :clear_data
        #            
        attr_accessor :create_directory
        #            
        attr_accessor :enable_http_compression
        #            
        attr_accessor :refresh_chart_cache
        #            
        attr_accessor :sort_names
        #            
        attr_accessor :validate_merged_areas
        #            
        attr_accessor :merge_areas
        #            
        attr_accessor :sort_external_names
        #            
        attr_accessor :check_excel_restriction
        #            
        attr_accessor :update_smart_art
        #            
        attr_accessor :encrypt_document_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'display_doc_title' => :'DisplayDocTitle',
        :'export_document_structure' => :'ExportDocumentStructure',
        :'emf_render_setting' => :'EmfRenderSetting',
        :'custom_properties_export' => :'CustomPropertiesExport',
        :'optimization_type' => :'OptimizationType',
        :'producer' => :'Producer',
        :'pdf_compression' => :'PdfCompression',
        :'font_encoding' => :'FontEncoding',
        :'watermark' => :'Watermark',
        :'calculate_formula' => :'CalculateFormula',
        :'check_font_compatibility' => :'CheckFontCompatibility',
        :'compliance' => :'Compliance',
        :'default_font' => :'DefaultFont',
        :'one_page_per_sheet' => :'OnePagePerSheet',
        :'printing_page_type' => :'PrintingPageType',
        :'security_options' => :'SecurityOptions',
        :'desired_ppi' => :'desiredPPI',
        :'jpeg_quality' => :'jpegQuality',
        :'image_type' => :'ImageType',
        :'save_format' => :'SaveFormat',
        :'cached_file_folder' => :'CachedFileFolder',
        :'clear_data' => :'ClearData',
        :'create_directory' => :'CreateDirectory',
        :'enable_http_compression' => :'EnableHTTPCompression',
        :'refresh_chart_cache' => :'RefreshChartCache',
        :'sort_names' => :'SortNames',
        :'validate_merged_areas' => :'ValidateMergedAreas',
        :'merge_areas' => :'MergeAreas',
        :'sort_external_names' => :'SortExternalNames',
        :'check_excel_restriction' => :'CheckExcelRestriction',
        :'update_smart_art' => :'UpdateSmartArt',
        :'encrypt_document_properties' => :'EncryptDocumentProperties'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'display_doc_title' => :'BOOLEAN',
        :'export_document_structure' => :'BOOLEAN',
        :'emf_render_setting' => :'String',
        :'custom_properties_export' => :'String',
        :'optimization_type' => :'String',
        :'producer' => :'String',
        :'pdf_compression' => :'String',
        :'font_encoding' => :'String',
        :'watermark' => :'RenderingWatermark',
        :'calculate_formula' => :'BOOLEAN',
        :'check_font_compatibility' => :'BOOLEAN',
        :'compliance' => :'String',
        :'default_font' => :'String',
        :'one_page_per_sheet' => :'BOOLEAN',
        :'printing_page_type' => :'String',
        :'security_options' => :'PdfSecurityOptions',
        :'desired_ppi' => :'Integer',
        :'jpeg_quality' => :'Integer',
        :'image_type' => :'String',
        :'save_format' => :'String',
        :'cached_file_folder' => :'String',
        :'clear_data' => :'BOOLEAN',
        :'create_directory' => :'BOOLEAN',
        :'enable_http_compression' => :'BOOLEAN',
        :'refresh_chart_cache' => :'BOOLEAN',
        :'sort_names' => :'BOOLEAN',
        :'validate_merged_areas' => :'BOOLEAN',
        :'merge_areas' => :'BOOLEAN',
        :'sort_external_names' => :'BOOLEAN',
        :'check_excel_restriction' => :'BOOLEAN',
        :'update_smart_art' => :'BOOLEAN',
        :'encrypt_document_properties' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'DisplayDocTitle')
          self.display_doc_title = attributes[:'DisplayDocTitle']
      end
      if attributes.has_key?(:'ExportDocumentStructure')
          self.export_document_structure = attributes[:'ExportDocumentStructure']
      end
      if attributes.has_key?(:'EmfRenderSetting')
          self.emf_render_setting = attributes[:'EmfRenderSetting']
      end
      if attributes.has_key?(:'CustomPropertiesExport')
          self.custom_properties_export = attributes[:'CustomPropertiesExport']
      end
      if attributes.has_key?(:'OptimizationType')
          self.optimization_type = attributes[:'OptimizationType']
      end
      if attributes.has_key?(:'Producer')
          self.producer = attributes[:'Producer']
      end
      if attributes.has_key?(:'PdfCompression')
          self.pdf_compression = attributes[:'PdfCompression']
      end
      if attributes.has_key?(:'FontEncoding')
          self.font_encoding = attributes[:'FontEncoding']
      end
      if attributes.has_key?(:'Watermark')
          self.watermark = attributes[:'Watermark']
      end
      if attributes.has_key?(:'CalculateFormula')
          self.calculate_formula = attributes[:'CalculateFormula']
      end
      if attributes.has_key?(:'CheckFontCompatibility')
          self.check_font_compatibility = attributes[:'CheckFontCompatibility']
      end
      if attributes.has_key?(:'Compliance')
          self.compliance = attributes[:'Compliance']
      end
      if attributes.has_key?(:'DefaultFont')
          self.default_font = attributes[:'DefaultFont']
      end
      if attributes.has_key?(:'OnePagePerSheet')
          self.one_page_per_sheet = attributes[:'OnePagePerSheet']
      end
      if attributes.has_key?(:'PrintingPageType')
          self.printing_page_type = attributes[:'PrintingPageType']
      end
      if attributes.has_key?(:'SecurityOptions')
          self.security_options = attributes[:'SecurityOptions']
      end
      if attributes.has_key?(:'desiredPPI')
          self.desired_ppi = attributes[:'desiredPPI']
      end
      if attributes.has_key?(:'jpegQuality')
          self.jpeg_quality = attributes[:'jpegQuality']
      end
      if attributes.has_key?(:'ImageType')
          self.image_type = attributes[:'ImageType']
      end
      if attributes.has_key?(:'SaveFormat')
          self.save_format = attributes[:'SaveFormat']
      end
      if attributes.has_key?(:'CachedFileFolder')
          self.cached_file_folder = attributes[:'CachedFileFolder']
      end
      if attributes.has_key?(:'ClearData')
          self.clear_data = attributes[:'ClearData']
      end
      if attributes.has_key?(:'CreateDirectory')
          self.create_directory = attributes[:'CreateDirectory']
      end
      if attributes.has_key?(:'EnableHTTPCompression')
          self.enable_http_compression = attributes[:'EnableHTTPCompression']
      end
      if attributes.has_key?(:'RefreshChartCache')
          self.refresh_chart_cache = attributes[:'RefreshChartCache']
      end
      if attributes.has_key?(:'SortNames')
          self.sort_names = attributes[:'SortNames']
      end
      if attributes.has_key?(:'ValidateMergedAreas')
          self.validate_merged_areas = attributes[:'ValidateMergedAreas']
      end
      if attributes.has_key?(:'MergeAreas')
          self.merge_areas = attributes[:'MergeAreas']
      end
      if attributes.has_key?(:'SortExternalNames')
          self.sort_external_names = attributes[:'SortExternalNames']
      end
      if attributes.has_key?(:'CheckExcelRestriction')
          self.check_excel_restriction = attributes[:'CheckExcelRestriction']
      end
      if attributes.has_key?(:'UpdateSmartArt')
          self.update_smart_art = attributes[:'UpdateSmartArt']
      end
      if attributes.has_key?(:'EncryptDocumentProperties')
          self.encrypt_document_properties = attributes[:'EncryptDocumentProperties']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @display_doc_title.nil?
          invalid_properties.push("invalid value for 'display_doc_title', display_doc_title cannot be nil.")
      end
      if @export_document_structure.nil?
          invalid_properties.push("invalid value for 'export_document_structure', export_document_structure cannot be nil.")
      end
      if @emf_render_setting.nil?
          invalid_properties.push("invalid value for 'emf_render_setting', emf_render_setting cannot be nil.")
      end
      if @custom_properties_export.nil?
          invalid_properties.push("invalid value for 'custom_properties_export', custom_properties_export cannot be nil.")
      end
      if @optimization_type.nil?
          invalid_properties.push("invalid value for 'optimization_type', optimization_type cannot be nil.")
      end
      if @producer.nil?
          invalid_properties.push("invalid value for 'producer', producer cannot be nil.")
      end
      if @pdf_compression.nil?
          invalid_properties.push("invalid value for 'pdf_compression', pdf_compression cannot be nil.")
      end
      if @font_encoding.nil?
          invalid_properties.push("invalid value for 'font_encoding', font_encoding cannot be nil.")
      end
      if @watermark.nil?
          invalid_properties.push("invalid value for 'watermark', watermark cannot be nil.")
      end
      if @calculate_formula.nil?
          invalid_properties.push("invalid value for 'calculate_formula', calculate_formula cannot be nil.")
      end
      if @check_font_compatibility.nil?
          invalid_properties.push("invalid value for 'check_font_compatibility', check_font_compatibility cannot be nil.")
      end
      if @compliance.nil?
          invalid_properties.push("invalid value for 'compliance', compliance cannot be nil.")
      end
      if @default_font.nil?
          invalid_properties.push("invalid value for 'default_font', default_font cannot be nil.")
      end
      if @one_page_per_sheet.nil?
          invalid_properties.push("invalid value for 'one_page_per_sheet', one_page_per_sheet cannot be nil.")
      end
      if @printing_page_type.nil?
          invalid_properties.push("invalid value for 'printing_page_type', printing_page_type cannot be nil.")
      end
      if @security_options.nil?
          invalid_properties.push("invalid value for 'security_options', security_options cannot be nil.")
      end
      if @desired_ppi.nil?
          invalid_properties.push("invalid value for 'desired_ppi', desired_ppi cannot be nil.")
      end
      if @jpeg_quality.nil?
          invalid_properties.push("invalid value for 'jpeg_quality', jpeg_quality cannot be nil.")
      end
      if @image_type.nil?
          invalid_properties.push("invalid value for 'image_type', image_type cannot be nil.")
      end
      if @save_format.nil?
          invalid_properties.push("invalid value for 'save_format', save_format cannot be nil.")
      end
      if @cached_file_folder.nil?
          invalid_properties.push("invalid value for 'cached_file_folder', cached_file_folder cannot be nil.")
      end
      if @clear_data.nil?
          invalid_properties.push("invalid value for 'clear_data', clear_data cannot be nil.")
      end
      if @create_directory.nil?
          invalid_properties.push("invalid value for 'create_directory', create_directory cannot be nil.")
      end
      if @enable_http_compression.nil?
          invalid_properties.push("invalid value for 'enable_http_compression', enable_http_compression cannot be nil.")
      end
      if @refresh_chart_cache.nil?
          invalid_properties.push("invalid value for 'refresh_chart_cache', refresh_chart_cache cannot be nil.")
      end
      if @sort_names.nil?
          invalid_properties.push("invalid value for 'sort_names', sort_names cannot be nil.")
      end
      if @validate_merged_areas.nil?
          invalid_properties.push("invalid value for 'validate_merged_areas', validate_merged_areas cannot be nil.")
      end
      if @merge_areas.nil?
          invalid_properties.push("invalid value for 'merge_areas', merge_areas cannot be nil.")
      end
      if @sort_external_names.nil?
          invalid_properties.push("invalid value for 'sort_external_names', sort_external_names cannot be nil.")
      end
      if @check_excel_restriction.nil?
          invalid_properties.push("invalid value for 'check_excel_restriction', check_excel_restriction cannot be nil.")
      end
      if @update_smart_art.nil?
          invalid_properties.push("invalid value for 'update_smart_art', update_smart_art cannot be nil.")
      end
      if @encrypt_document_properties.nil?
          invalid_properties.push("invalid value for 'encrypt_document_properties', encrypt_document_properties cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @display_doc_title.nil?
      return false if @export_document_structure.nil?
      return false if @emf_render_setting.nil?
      return false if @custom_properties_export.nil?
      return false if @optimization_type.nil?
      return false if @producer.nil?
      return false if @pdf_compression.nil?
      return false if @font_encoding.nil?
      return false if @watermark.nil?
      return false if @calculate_formula.nil?
      return false if @check_font_compatibility.nil?
      return false if @compliance.nil?
      return false if @default_font.nil?
      return false if @one_page_per_sheet.nil?
      return false if @printing_page_type.nil?
      return false if @security_options.nil?
      return false if @desired_ppi.nil?
      return false if @jpeg_quality.nil?
      return false if @image_type.nil?
      return false if @save_format.nil?
      return false if @cached_file_folder.nil?
      return false if @clear_data.nil?
      return false if @create_directory.nil?
      return false if @enable_http_compression.nil?
      return false if @refresh_chart_cache.nil?
      return false if @sort_names.nil?
      return false if @validate_merged_areas.nil?
      return false if @merge_areas.nil?
      return false if @sort_external_names.nil?
      return false if @check_excel_restriction.nil?
      return false if @update_smart_art.nil?
      return false if @encrypt_document_properties.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          display_doc_title == o.display_doc_title &&
          export_document_structure == o.export_document_structure &&
          emf_render_setting == o.emf_render_setting &&
          custom_properties_export == o.custom_properties_export &&
          optimization_type == o.optimization_type &&
          producer == o.producer &&
          pdf_compression == o.pdf_compression &&
          font_encoding == o.font_encoding &&
          watermark == o.watermark &&
          calculate_formula == o.calculate_formula &&
          check_font_compatibility == o.check_font_compatibility &&
          compliance == o.compliance &&
          default_font == o.default_font &&
          one_page_per_sheet == o.one_page_per_sheet &&
          printing_page_type == o.printing_page_type &&
          security_options == o.security_options &&
          desired_ppi == o.desired_ppi &&
          jpeg_quality == o.jpeg_quality &&
          image_type == o.image_type &&
          save_format == o.save_format &&
          cached_file_folder == o.cached_file_folder &&
          clear_data == o.clear_data &&
          create_directory == o.create_directory &&
          enable_http_compression == o.enable_http_compression &&
          refresh_chart_cache == o.refresh_chart_cache &&
          sort_names == o.sort_names &&
          validate_merged_areas == o.validate_merged_areas &&
          merge_areas == o.merge_areas &&
          sort_external_names == o.sort_external_names &&
          check_excel_restriction == o.check_excel_restriction &&
          update_smart_art == o.update_smart_art &&
          encrypt_document_properties == o.encrypt_document_properties 
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
      [ display_doc_title , export_document_structure , emf_render_setting , custom_properties_export , optimization_type , producer , pdf_compression , font_encoding , watermark , calculate_formula , check_font_compatibility , compliance , default_font , one_page_per_sheet , printing_page_type , security_options , desired_ppi , jpeg_quality , image_type , save_format , cached_file_folder , clear_data , create_directory , enable_http_compression , refresh_chart_cache , sort_names , validate_merged_areas , merge_areas , sort_external_names , check_excel_restriction , update_smart_art , encrypt_document_properties ].hash
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
