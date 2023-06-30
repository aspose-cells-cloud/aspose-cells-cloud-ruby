=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="JsonSaveOptionsrb.cs">
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


require 'date'

module AsposeCellsCloud

  class JsonSaveOptions
        #            
        attr_accessor :export_area
        #            
        attr_accessor :has_header_row
        #            
        attr_accessor :export_as_string
        #            
        attr_accessor :indent
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
        :'export_area' => :'ExportArea',
        :'has_header_row' => :'HasHeaderRow',
        :'export_as_string' => :'ExportAsString',
        :'indent' => :'Indent',
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
        :'export_area' => :'CellArea',
        :'has_header_row' => :'BOOLEAN',
        :'export_as_string' => :'BOOLEAN',
        :'indent' => :'String',
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
      if @export_area.nil?
          invalid_properties.push("invalid value for 'export_area', export_area cannot be nil.")
      end
      if @has_header_row.nil?
          invalid_properties.push("invalid value for 'has_header_row', has_header_row cannot be nil.")
      end
      if @export_as_string.nil?
          invalid_properties.push("invalid value for 'export_as_string', export_as_string cannot be nil.")
      end
      if @indent.nil?
          invalid_properties.push("invalid value for 'indent', indent cannot be nil.")
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
      return false if @export_area.nil?
      return false if @has_header_row.nil?
      return false if @export_as_string.nil?
      return false if @indent.nil?
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
          export_area == o.export_area &&
          has_header_row == o.has_header_row &&
          export_as_string == o.export_as_string &&
          indent == o.indent &&
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
      [ export_area , has_header_row , export_as_string , indent , save_format , cached_file_folder , clear_data , create_directory , enable_http_compression , refresh_chart_cache , sort_names , validate_merged_areas ].hash
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
