=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="MHtmlSaveOptionsrb.cs">
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

  class MHtmlSaveOptions
        #The directory that the attached files will be saved to.  Only for saving to html stream.            
        attr_accessor :attached_files_directory
        #Specify the Url prefix of attached files such as image in the html file. Only for saving to html stream.            
        attr_accessor :attached_files_url_prefix
        #If not set,use Encoding.UTF8 as default enconding type.            
        attr_accessor :encoding
        #Indicates if exporting the whole workbook to html file.            
        attr_accessor :export_active_worksheet_only
        #Get or set the format of chart image before exporting            
        attr_accessor :export_chart_image_format
        #Specifies whether images are saved in Base64 format to HTML, MHTML or EPUB.            
        attr_accessor :export_images_as_base64
        #Hidden column(the width of this column is 0) in excel,before save this into                html format, if HtmlHiddenColDisplayType is "Remove",the hidden column would               ont been output, if the value is "Hidden", the column would been output,but was hidden,the default value is "Hidden"            
        attr_accessor :hidden_col_display_type
        #Hidden row(the height of this row is 0) in excel,before save this into html                format, if HtmlHiddenRowDisplayType is "Remove",the hidden row would ont               been output, if the value is "Hidden", the row would been output,but was               hidden,the default value is "Hidden"            
        attr_accessor :hidden_row_display_type
        #Indicates if a cross-cell string will be displayed in the same way as MS               Excel when saving an Excel file in html format.  By default the value is               Default, so, for cross-cell strings, there is little difference between the               html files created by Aspose.Cells and MS Excel. But the performance for               creating large html files,setting the value to Cross would be several times               faster than setting it to Default or Fit2Cell.            
        attr_accessor :html_cross_string_type
        #Indicates if export image files to temp directory.  Only for saving to html  stream.            
        attr_accessor :is_exp_image_to_temp_dir
        #The title of the html page.  Only for saving to html stream.            
        attr_accessor :page_title
        #Parse html tag in cell,like ,as cell value,or as html tag,default is true            
        attr_accessor :parse_html_tag_in_cell
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

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'attached_files_directory' => :'AttachedFilesDirectory',
        :'attached_files_url_prefix' => :'AttachedFilesUrlPrefix',
        :'encoding' => :'Encoding',
        :'export_active_worksheet_only' => :'ExportActiveWorksheetOnly',
        :'export_chart_image_format' => :'ExportChartImageFormat',
        :'export_images_as_base64' => :'ExportImagesAsBase64',
        :'hidden_col_display_type' => :'HiddenColDisplayType',
        :'hidden_row_display_type' => :'HiddenRowDisplayType',
        :'html_cross_string_type' => :'HtmlCrossStringType',
        :'is_exp_image_to_temp_dir' => :'IsExpImageToTempDir',
        :'page_title' => :'PageTitle',
        :'parse_html_tag_in_cell' => :'ParseHtmlTagInCell',
        :'save_format' => :'SaveFormat',
        :'cached_file_folder' => :'CachedFileFolder',
        :'clear_data' => :'ClearData',
        :'create_directory' => :'CreateDirectory',
        :'enable_http_compression' => :'EnableHTTPCompression',
        :'refresh_chart_cache' => :'RefreshChartCache',
        :'sort_names' => :'SortNames',
        :'validate_merged_areas' => :'ValidateMergedAreas'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'attached_files_directory' => :'String',
        :'attached_files_url_prefix' => :'String',
        :'encoding' => :'String',
        :'export_active_worksheet_only' => :'BOOLEAN',
        :'export_chart_image_format' => :'String',
        :'export_images_as_base64' => :'BOOLEAN',
        :'hidden_col_display_type' => :'String',
        :'hidden_row_display_type' => :'String',
        :'html_cross_string_type' => :'String',
        :'is_exp_image_to_temp_dir' => :'BOOLEAN',
        :'page_title' => :'String',
        :'parse_html_tag_in_cell' => :'BOOLEAN',
        :'save_format' => :'String',
        :'cached_file_folder' => :'String',
        :'clear_data' => :'BOOLEAN',
        :'create_directory' => :'BOOLEAN',
        :'enable_http_compression' => :'BOOLEAN',
        :'refresh_chart_cache' => :'BOOLEAN',
        :'sort_names' => :'BOOLEAN',
        :'validate_merged_areas' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'AttachedFilesDirectory')
          self.attached_files_directory = attributes[:'AttachedFilesDirectory']
      end
      if attributes.has_key?(:'AttachedFilesUrlPrefix')
          self.attached_files_url_prefix = attributes[:'AttachedFilesUrlPrefix']
      end
      if attributes.has_key?(:'Encoding')
          self.encoding = attributes[:'Encoding']
      end
      if attributes.has_key?(:'ExportActiveWorksheetOnly')
          self.export_active_worksheet_only = attributes[:'ExportActiveWorksheetOnly']
      end
      if attributes.has_key?(:'ExportChartImageFormat')
          self.export_chart_image_format = attributes[:'ExportChartImageFormat']
      end
      if attributes.has_key?(:'ExportImagesAsBase64')
          self.export_images_as_base64 = attributes[:'ExportImagesAsBase64']
      end
      if attributes.has_key?(:'HiddenColDisplayType')
          self.hidden_col_display_type = attributes[:'HiddenColDisplayType']
      end
      if attributes.has_key?(:'HiddenRowDisplayType')
          self.hidden_row_display_type = attributes[:'HiddenRowDisplayType']
      end
      if attributes.has_key?(:'HtmlCrossStringType')
          self.html_cross_string_type = attributes[:'HtmlCrossStringType']
      end
      if attributes.has_key?(:'IsExpImageToTempDir')
          self.is_exp_image_to_temp_dir = attributes[:'IsExpImageToTempDir']
      end
      if attributes.has_key?(:'PageTitle')
          self.page_title = attributes[:'PageTitle']
      end
      if attributes.has_key?(:'ParseHtmlTagInCell')
          self.parse_html_tag_in_cell = attributes[:'ParseHtmlTagInCell']
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

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @attached_files_directory.nil?
          invalid_properties.push("invalid value for 'attached_files_directory', attached_files_directory cannot be nil.")
      end
      if @attached_files_url_prefix.nil?
          invalid_properties.push("invalid value for 'attached_files_url_prefix', attached_files_url_prefix cannot be nil.")
      end
      if @encoding.nil?
          invalid_properties.push("invalid value for 'encoding', encoding cannot be nil.")
      end
      if @export_active_worksheet_only.nil?
          invalid_properties.push("invalid value for 'export_active_worksheet_only', export_active_worksheet_only cannot be nil.")
      end
      if @export_chart_image_format.nil?
          invalid_properties.push("invalid value for 'export_chart_image_format', export_chart_image_format cannot be nil.")
      end
      if @export_images_as_base64.nil?
          invalid_properties.push("invalid value for 'export_images_as_base64', export_images_as_base64 cannot be nil.")
      end
      if @hidden_col_display_type.nil?
          invalid_properties.push("invalid value for 'hidden_col_display_type', hidden_col_display_type cannot be nil.")
      end
      if @hidden_row_display_type.nil?
          invalid_properties.push("invalid value for 'hidden_row_display_type', hidden_row_display_type cannot be nil.")
      end
      if @html_cross_string_type.nil?
          invalid_properties.push("invalid value for 'html_cross_string_type', html_cross_string_type cannot be nil.")
      end
      if @is_exp_image_to_temp_dir.nil?
          invalid_properties.push("invalid value for 'is_exp_image_to_temp_dir', is_exp_image_to_temp_dir cannot be nil.")
      end
      if @page_title.nil?
          invalid_properties.push("invalid value for 'page_title', page_title cannot be nil.")
      end
      if @parse_html_tag_in_cell.nil?
          invalid_properties.push("invalid value for 'parse_html_tag_in_cell', parse_html_tag_in_cell cannot be nil.")
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

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @attached_files_directory.nil?
      return false if @attached_files_url_prefix.nil?
      return false if @encoding.nil?
      return false if @export_active_worksheet_only.nil?
      return false if @export_chart_image_format.nil?
      return false if @export_images_as_base64.nil?
      return false if @hidden_col_display_type.nil?
      return false if @hidden_row_display_type.nil?
      return false if @html_cross_string_type.nil?
      return false if @is_exp_image_to_temp_dir.nil?
      return false if @page_title.nil?
      return false if @parse_html_tag_in_cell.nil?
      return false if @save_format.nil?
      return false if @cached_file_folder.nil?
      return false if @clear_data.nil?
      return false if @create_directory.nil?
      return false if @enable_http_compression.nil?
      return false if @refresh_chart_cache.nil?
      return false if @sort_names.nil?
      return false if @validate_merged_areas.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          attached_files_directory == o.attached_files_directory &&
          attached_files_url_prefix == o.attached_files_url_prefix &&
          encoding == o.encoding &&
          export_active_worksheet_only == o.export_active_worksheet_only &&
          export_chart_image_format == o.export_chart_image_format &&
          export_images_as_base64 == o.export_images_as_base64 &&
          hidden_col_display_type == o.hidden_col_display_type &&
          hidden_row_display_type == o.hidden_row_display_type &&
          html_cross_string_type == o.html_cross_string_type &&
          is_exp_image_to_temp_dir == o.is_exp_image_to_temp_dir &&
          page_title == o.page_title &&
          parse_html_tag_in_cell == o.parse_html_tag_in_cell &&
          save_format == o.save_format &&
          cached_file_folder == o.cached_file_folder &&
          clear_data == o.clear_data &&
          create_directory == o.create_directory &&
          enable_http_compression == o.enable_http_compression &&
          refresh_chart_cache == o.refresh_chart_cache &&
          sort_names == o.sort_names &&
          validate_merged_areas == o.validate_merged_areas 
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
      [ attached_files_directory , attached_files_url_prefix , encoding , export_active_worksheet_only , export_chart_image_format , export_images_as_base64 , hidden_col_display_type , hidden_row_display_type , html_cross_string_type , is_exp_image_to_temp_dir , page_title , parse_html_tag_in_cell , save_format , cached_file_folder , clear_data , create_directory , enable_http_compression , refresh_chart_cache , sort_names , validate_merged_areas ].hash
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
