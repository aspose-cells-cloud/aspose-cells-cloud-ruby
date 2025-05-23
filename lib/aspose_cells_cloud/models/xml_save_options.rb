=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="XmlSaveOptionsrb.cs">
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

  class XmlSaveOptions
        #Represents the indexes of exported sheets.            
        attr_accessor :sheet_indexes
        #Gets or sets the exporting range.            
        attr_accessor :export_area
        #Indicates whether the range contains header row.            
        attr_accessor :has_header_row
        #Indicates whether exporting xml map in the file.            
        attr_accessor :xml_map_name
        #Indicates whether exporting sheet's name as the name of the element.            
        attr_accessor :sheet_name_as_element_name
        #Indicates whether exporting data as attributes of element.            
        attr_accessor :data_as_attribute
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
        :'sheet_indexes' => :'SheetIndexes',
        :'export_area' => :'ExportArea',
        :'has_header_row' => :'HasHeaderRow',
        :'xml_map_name' => :'XmlMapName',
        :'sheet_name_as_element_name' => :'SheetNameAsElementName',
        :'data_as_attribute' => :'DataAsAttribute',
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
        :'sheet_indexes' => :'Array<Integer>',
        :'export_area' => :'CellArea',
        :'has_header_row' => :'BOOLEAN',
        :'xml_map_name' => :'String',
        :'sheet_name_as_element_name' => :'BOOLEAN',
        :'data_as_attribute' => :'BOOLEAN',
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

      if attributes.has_key?(:'SheetIndexes')
          self.sheet_indexes = attributes[:'SheetIndexes']
      end
      if attributes.has_key?(:'ExportArea')
          self.export_area = attributes[:'ExportArea']
      end
      if attributes.has_key?(:'HasHeaderRow')
          self.has_header_row = attributes[:'HasHeaderRow']
      end
      if attributes.has_key?(:'XmlMapName')
          self.xml_map_name = attributes[:'XmlMapName']
      end
      if attributes.has_key?(:'SheetNameAsElementName')
          self.sheet_name_as_element_name = attributes[:'SheetNameAsElementName']
      end
      if attributes.has_key?(:'DataAsAttribute')
          self.data_as_attribute = attributes[:'DataAsAttribute']
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
      if @sheet_indexes.nil?
          invalid_properties.push("invalid value for 'sheet_indexes', sheet_indexes cannot be nil.")
      end
      if @export_area.nil?
          invalid_properties.push("invalid value for 'export_area', export_area cannot be nil.")
      end
      if @has_header_row.nil?
          invalid_properties.push("invalid value for 'has_header_row', has_header_row cannot be nil.")
      end
      if @xml_map_name.nil?
          invalid_properties.push("invalid value for 'xml_map_name', xml_map_name cannot be nil.")
      end
      if @sheet_name_as_element_name.nil?
          invalid_properties.push("invalid value for 'sheet_name_as_element_name', sheet_name_as_element_name cannot be nil.")
      end
      if @data_as_attribute.nil?
          invalid_properties.push("invalid value for 'data_as_attribute', data_as_attribute cannot be nil.")
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
      return false if @sheet_indexes.nil?
      return false if @export_area.nil?
      return false if @has_header_row.nil?
      return false if @xml_map_name.nil?
      return false if @sheet_name_as_element_name.nil?
      return false if @data_as_attribute.nil?
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
          sheet_indexes == o.sheet_indexes &&
          export_area == o.export_area &&
          has_header_row == o.has_header_row &&
          xml_map_name == o.xml_map_name &&
          sheet_name_as_element_name == o.sheet_name_as_element_name &&
          data_as_attribute == o.data_as_attribute &&
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
      [ sheet_indexes , export_area , has_header_row , xml_map_name , sheet_name_as_element_name , data_as_attribute , save_format , cached_file_folder , clear_data , create_directory , enable_http_compression , refresh_chart_cache , sort_names , validate_merged_areas , merge_areas , sort_external_names , check_excel_restriction , update_smart_art , encrypt_document_properties ].hash
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
