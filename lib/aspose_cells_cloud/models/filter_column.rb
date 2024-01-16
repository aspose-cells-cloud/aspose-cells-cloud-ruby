=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="FilterColumnrb.cs">
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

  class FilterColumn
        #Gets and sets the column offset in the range.             
        attr_accessor :field_index
        #Gets and sets the type fo filtering data.             
        attr_accessor :filter_type
        #            
        attr_accessor :multiple_filters
        #            
        attr_accessor :color_filter
        #            
        attr_accessor :custom_filters
        #            
        attr_accessor :dynamic_filter
        #            
        attr_accessor :icon_filter
        #            
        attr_accessor :top10_filter
        #Indicates whether the AutoFilter button for this column is visible.             
        attr_accessor :visibledropdown

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'field_index' => :'FieldIndex',
        :'filter_type' => :'FilterType',
        :'multiple_filters' => :'MultipleFilters',
        :'color_filter' => :'ColorFilter',
        :'custom_filters' => :'CustomFilters',
        :'dynamic_filter' => :'DynamicFilter',
        :'icon_filter' => :'IconFilter',
        :'top10_filter' => :'Top10Filter',
        :'visibledropdown' => :'Visibledropdown'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'field_index' => :'Integer',
        :'filter_type' => :'String',
        :'multiple_filters' => :'MultipleFilters',
        :'color_filter' => :'ColorFilter',
        :'custom_filters' => :'Array<CustomFilter>',
        :'dynamic_filter' => :'DynamicFilter',
        :'icon_filter' => :'IconFilter',
        :'top10_filter' => :'Top10Filter',
        :'visibledropdown' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'FieldIndex')
          self.field_index = attributes[:'FieldIndex']
      end
      if attributes.has_key?(:'FilterType')
          self.filter_type = attributes[:'FilterType']
      end
      if attributes.has_key?(:'MultipleFilters')
          self.multiple_filters = attributes[:'MultipleFilters']
      end
      if attributes.has_key?(:'ColorFilter')
          self.color_filter = attributes[:'ColorFilter']
      end
      if attributes.has_key?(:'CustomFilters')
          self.custom_filters = attributes[:'CustomFilters']
      end
      if attributes.has_key?(:'DynamicFilter')
          self.dynamic_filter = attributes[:'DynamicFilter']
      end
      if attributes.has_key?(:'IconFilter')
          self.icon_filter = attributes[:'IconFilter']
      end
      if attributes.has_key?(:'Top10Filter')
          self.top10_filter = attributes[:'Top10Filter']
      end
      if attributes.has_key?(:'Visibledropdown')
          self.visibledropdown = attributes[:'Visibledropdown']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @field_index.nil?
          invalid_properties.push("invalid value for 'field_index', field_index cannot be nil.")
      end
      if @filter_type.nil?
          invalid_properties.push("invalid value for 'filter_type', filter_type cannot be nil.")
      end
      if @multiple_filters.nil?
          invalid_properties.push("invalid value for 'multiple_filters', multiple_filters cannot be nil.")
      end
      if @color_filter.nil?
          invalid_properties.push("invalid value for 'color_filter', color_filter cannot be nil.")
      end
      if @custom_filters.nil?
          invalid_properties.push("invalid value for 'custom_filters', custom_filters cannot be nil.")
      end
      if @dynamic_filter.nil?
          invalid_properties.push("invalid value for 'dynamic_filter', dynamic_filter cannot be nil.")
      end
      if @icon_filter.nil?
          invalid_properties.push("invalid value for 'icon_filter', icon_filter cannot be nil.")
      end
      if @top10_filter.nil?
          invalid_properties.push("invalid value for 'top10_filter', top10_filter cannot be nil.")
      end
      if @visibledropdown.nil?
          invalid_properties.push("invalid value for 'visibledropdown', visibledropdown cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @field_index.nil?
      return false if @filter_type.nil?
      return false if @multiple_filters.nil?
      return false if @color_filter.nil?
      return false if @custom_filters.nil?
      return false if @dynamic_filter.nil?
      return false if @icon_filter.nil?
      return false if @top10_filter.nil?
      return false if @visibledropdown.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          field_index == o.field_index &&
          filter_type == o.filter_type &&
          multiple_filters == o.multiple_filters &&
          color_filter == o.color_filter &&
          custom_filters == o.custom_filters &&
          dynamic_filter == o.dynamic_filter &&
          icon_filter == o.icon_filter &&
          top10_filter == o.top10_filter &&
          visibledropdown == o.visibledropdown 
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
      [ field_index , filter_type , multiple_filters , color_filter , custom_filters , dynamic_filter , icon_filter , top10_filter , visibledropdown ].hash
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
