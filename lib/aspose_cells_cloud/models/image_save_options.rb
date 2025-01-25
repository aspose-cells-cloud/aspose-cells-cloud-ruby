=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="ImageSaveOptionsrb.cs">
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

  class ImageSaveOptions
        #Indicate the chart imagetype when converting.            
        attr_accessor :chart_image_type
        #Indicate the filename of embeded image in svg. This should be full path with directory like "c:\\xpsEmbeded"            
        attr_accessor :embeded_image_name_in_svg
        #Gets or sets the horizontal resolution for generated images, in dots per inch.                 Applies generating image method except Emf format images.               The default value is 96.            
        attr_accessor :horizontal_resolution
        #Gets or sets the format of the generated images.  Don't apply the method that returns a Bitmap object.             The default value is ImageFormat.Bmp.  Don't apply the method that returns a Bitmap object.            
        attr_accessor :image_format
        #Indicates whether the width and height of the cells is automatically fitted by cell value. The default value is false.            
        attr_accessor :is_cell_auto_fit
        #If OnePagePerSheet is true , all content of one sheet will output to only                one page in result. The paper size of pagesetup will be invalid, and the                other settings of pagesetup will still take effect.            
        attr_accessor :one_page_per_sheet
        #If this property is true , onle Area will be output, and no scale will take effect.            
        attr_accessor :only_area
        #Indicates which pages will not be printed.            
        attr_accessor :printing_page
        #If PrintWithStatusDialog = true , there will be a dialog that shows current print status.  else no such dialog will show.            
        attr_accessor :print_with_status_dialog
        #Gets or sets a value determining the quality of the generated images to apply only when saving pages to the Jpeg format.            Has effect only when saving to JPEG.  The value must be between 0 and 100. The default value is 100.            
        attr_accessor :quality
        #Gets or sets the type of compression to apply only when saving pages to the Tiff format.            Has effect only when saving to TIFF.  The default value is Lzw.            
        attr_accessor :tiff_compression
        #Gets or sets the vertical resolution for generated images, in dots per inch.            Applies generating image method except Emf format image.            The default value is 96.            
        attr_accessor :vertical_resolution
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
        :'chart_image_type' => :'ChartImageType',
        :'embeded_image_name_in_svg' => :'EmbededImageNameInSvg',
        :'horizontal_resolution' => :'HorizontalResolution',
        :'image_format' => :'ImageFormat',
        :'is_cell_auto_fit' => :'IsCellAutoFit',
        :'one_page_per_sheet' => :'OnePagePerSheet',
        :'only_area' => :'OnlyArea',
        :'printing_page' => :'PrintingPage',
        :'print_with_status_dialog' => :'PrintWithStatusDialog',
        :'quality' => :'Quality',
        :'tiff_compression' => :'TiffCompression',
        :'vertical_resolution' => :'VerticalResolution',
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
        :'chart_image_type' => :'String',
        :'embeded_image_name_in_svg' => :'String',
        :'horizontal_resolution' => :'Integer',
        :'image_format' => :'String',
        :'is_cell_auto_fit' => :'BOOLEAN',
        :'one_page_per_sheet' => :'BOOLEAN',
        :'only_area' => :'BOOLEAN',
        :'printing_page' => :'String',
        :'print_with_status_dialog' => :'BOOLEAN',
        :'quality' => :'Integer',
        :'tiff_compression' => :'String',
        :'vertical_resolution' => :'Integer',
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

      if attributes.has_key?(:'ChartImageType')
          self.chart_image_type = attributes[:'ChartImageType']
      end
      if attributes.has_key?(:'EmbededImageNameInSvg')
          self.embeded_image_name_in_svg = attributes[:'EmbededImageNameInSvg']
      end
      if attributes.has_key?(:'HorizontalResolution')
          self.horizontal_resolution = attributes[:'HorizontalResolution']
      end
      if attributes.has_key?(:'ImageFormat')
          self.image_format = attributes[:'ImageFormat']
      end
      if attributes.has_key?(:'IsCellAutoFit')
          self.is_cell_auto_fit = attributes[:'IsCellAutoFit']
      end
      if attributes.has_key?(:'OnePagePerSheet')
          self.one_page_per_sheet = attributes[:'OnePagePerSheet']
      end
      if attributes.has_key?(:'OnlyArea')
          self.only_area = attributes[:'OnlyArea']
      end
      if attributes.has_key?(:'PrintingPage')
          self.printing_page = attributes[:'PrintingPage']
      end
      if attributes.has_key?(:'PrintWithStatusDialog')
          self.print_with_status_dialog = attributes[:'PrintWithStatusDialog']
      end
      if attributes.has_key?(:'Quality')
          self.quality = attributes[:'Quality']
      end
      if attributes.has_key?(:'TiffCompression')
          self.tiff_compression = attributes[:'TiffCompression']
      end
      if attributes.has_key?(:'VerticalResolution')
          self.vertical_resolution = attributes[:'VerticalResolution']
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
      if @chart_image_type.nil?
          invalid_properties.push("invalid value for 'chart_image_type', chart_image_type cannot be nil.")
      end
      if @embeded_image_name_in_svg.nil?
          invalid_properties.push("invalid value for 'embeded_image_name_in_svg', embeded_image_name_in_svg cannot be nil.")
      end
      if @horizontal_resolution.nil?
          invalid_properties.push("invalid value for 'horizontal_resolution', horizontal_resolution cannot be nil.")
      end
      if @image_format.nil?
          invalid_properties.push("invalid value for 'image_format', image_format cannot be nil.")
      end
      if @is_cell_auto_fit.nil?
          invalid_properties.push("invalid value for 'is_cell_auto_fit', is_cell_auto_fit cannot be nil.")
      end
      if @one_page_per_sheet.nil?
          invalid_properties.push("invalid value for 'one_page_per_sheet', one_page_per_sheet cannot be nil.")
      end
      if @only_area.nil?
          invalid_properties.push("invalid value for 'only_area', only_area cannot be nil.")
      end
      if @printing_page.nil?
          invalid_properties.push("invalid value for 'printing_page', printing_page cannot be nil.")
      end
      if @print_with_status_dialog.nil?
          invalid_properties.push("invalid value for 'print_with_status_dialog', print_with_status_dialog cannot be nil.")
      end
      if @quality.nil?
          invalid_properties.push("invalid value for 'quality', quality cannot be nil.")
      end
      if @tiff_compression.nil?
          invalid_properties.push("invalid value for 'tiff_compression', tiff_compression cannot be nil.")
      end
      if @vertical_resolution.nil?
          invalid_properties.push("invalid value for 'vertical_resolution', vertical_resolution cannot be nil.")
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
      return false if @chart_image_type.nil?
      return false if @embeded_image_name_in_svg.nil?
      return false if @horizontal_resolution.nil?
      return false if @image_format.nil?
      return false if @is_cell_auto_fit.nil?
      return false if @one_page_per_sheet.nil?
      return false if @only_area.nil?
      return false if @printing_page.nil?
      return false if @print_with_status_dialog.nil?
      return false if @quality.nil?
      return false if @tiff_compression.nil?
      return false if @vertical_resolution.nil?
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
          chart_image_type == o.chart_image_type &&
          embeded_image_name_in_svg == o.embeded_image_name_in_svg &&
          horizontal_resolution == o.horizontal_resolution &&
          image_format == o.image_format &&
          is_cell_auto_fit == o.is_cell_auto_fit &&
          one_page_per_sheet == o.one_page_per_sheet &&
          only_area == o.only_area &&
          printing_page == o.printing_page &&
          print_with_status_dialog == o.print_with_status_dialog &&
          quality == o.quality &&
          tiff_compression == o.tiff_compression &&
          vertical_resolution == o.vertical_resolution &&
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
      [ chart_image_type , embeded_image_name_in_svg , horizontal_resolution , image_format , is_cell_auto_fit , one_page_per_sheet , only_area , printing_page , print_with_status_dialog , quality , tiff_compression , vertical_resolution , save_format , cached_file_folder , clear_data , create_directory , enable_http_compression , refresh_chart_cache , sort_names , validate_merged_areas ].hash
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
