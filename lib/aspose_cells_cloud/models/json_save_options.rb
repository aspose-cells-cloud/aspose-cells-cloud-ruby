=begin
--------------------------------------------------------------------------------------------------------------------
Copyright (c) 2022 Aspose.Cells Cloud
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

  class JsonSaveOptions
    attr_accessor :enable_http_compression

    attr_accessor :save_format

    # Make the workbook empty after saving the file.
    attr_accessor :clear_data

    # The cached file folder is used to store some large data.
    attr_accessor :cached_file_folder

    # Indicates whether validate merged areas before saving the file. The default value is false.             
    attr_accessor :validate_merged_areas

    attr_accessor :refresh_chart_cache

    # If true and the directory does not exist, the directory will be automatically created before saving the file.             
    attr_accessor :create_directory

    attr_accessor :sort_names

    attr_accessor :export_area

    attr_accessor :has_header_row

    attr_accessor :export_as_string

    attr_accessor :indent


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'enable_http_compression' => :'EnableHTTPCompression',
        :'save_format' => :'SaveFormat',
        :'clear_data' => :'ClearData',
        :'cached_file_folder' => :'CachedFileFolder',
        :'validate_merged_areas' => :'ValidateMergedAreas',
        :'refresh_chart_cache' => :'RefreshChartCache',
        :'create_directory' => :'CreateDirectory',
        :'sort_names' => :'SortNames',
        :'export_area' => :'ExportArea',
        :'has_header_row' => :'HasHeaderRow',
        :'export_as_string' => :'ExportAsString',
        :'indent' => :'Indent'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'enable_http_compression' => :'BOOLEAN',
        :'save_format' => :'String',
        :'clear_data' => :'BOOLEAN',
        :'cached_file_folder' => :'String',
        :'validate_merged_areas' => :'BOOLEAN',
        :'refresh_chart_cache' => :'BOOLEAN',
        :'create_directory' => :'BOOLEAN',
        :'sort_names' => :'BOOLEAN',
        :'export_area' => :'CellArea',
        :'has_header_row' => :'BOOLEAN',
        :'export_as_string' => :'BOOLEAN',
        :'indent' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'EnableHTTPCompression')
        self.enable_http_compression = attributes[:'EnableHTTPCompression']
      end

      if attributes.has_key?(:'SaveFormat')
        self.save_format = attributes[:'SaveFormat']
      end

      if attributes.has_key?(:'ClearData')
        self.clear_data = attributes[:'ClearData']
      end

      if attributes.has_key?(:'CachedFileFolder')
        self.cached_file_folder = attributes[:'CachedFileFolder']
      end

      if attributes.has_key?(:'ValidateMergedAreas')
        self.validate_merged_areas = attributes[:'ValidateMergedAreas']
      end

      if attributes.has_key?(:'RefreshChartCache')
        self.refresh_chart_cache = attributes[:'RefreshChartCache']
      end

      if attributes.has_key?(:'CreateDirectory')
        self.create_directory = attributes[:'CreateDirectory']
      end

      if attributes.has_key?(:'SortNames')
        self.sort_names = attributes[:'SortNames']
      end

      if attributes.has_key?(:'ExportArea')
        self.export_area = attributes[:'ExportArea']
      end

      if attributes.has_key?(:'HasHeaderRow')
        self.has_header_row = attributes[:'HasHeaderRow']
      end

      if attributes.has_key?(:'ExportAsString')
        self.export_as_string = attributes[:'ExportAsString']
      end

      if attributes.has_key?(:'Indent')
        self.indent = attributes[:'Indent']
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
          enable_http_compression == o.enable_http_compression &&
          save_format == o.save_format &&
          clear_data == o.clear_data &&
          cached_file_folder == o.cached_file_folder &&
          validate_merged_areas == o.validate_merged_areas &&
          refresh_chart_cache == o.refresh_chart_cache &&
          create_directory == o.create_directory &&
          sort_names == o.sort_names &&
          export_area == o.export_area &&
          has_header_row == o.has_header_row &&
          export_as_string == o.export_as_string &&
          indent == o.indent
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [enable_http_compression, save_format, clear_data, cached_file_folder, validate_merged_areas, refresh_chart_cache, create_directory, sort_names, export_area, has_header_row, export_as_string, indent].hash
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
