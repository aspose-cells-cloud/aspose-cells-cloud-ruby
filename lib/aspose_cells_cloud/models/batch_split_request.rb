=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="BatchSplitRequestrb.cs">
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

  class BatchSplitRequest
        #The directory stores files that need to format conversion.                        
        attr_accessor :source_folder
        #Aspose Cloud storage name            
        attr_accessor :source_storage
        #Indicates the match condition that needs to be processed for the file name.            
        attr_accessor :match_condition
        #Output file format            
        attr_accessor :format
        #From worksheet index of workbook.            
        attr_accessor :from_index
        #To worksheet index of workbook.            
        attr_accessor :to_index
        #The directory that stores files whose format conversion was successful.            
        attr_accessor :out_folder
        #Aspose Cloud storage name.            
        attr_accessor :out_storage
        #The regional settings for workbook.            
        attr_accessor :region
        #Indicates save options.            
        attr_accessor :save_options

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'source_folder' => :'SourceFolder',
        :'source_storage' => :'SourceStorage',
        :'match_condition' => :'MatchCondition',
        :'format' => :'Format',
        :'from_index' => :'FromIndex',
        :'to_index' => :'ToIndex',
        :'out_folder' => :'OutFolder',
        :'out_storage' => :'OutStorage',
        :'region' => :'Region',
        :'save_options' => :'SaveOptions'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'source_folder' => :'String',
        :'source_storage' => :'String',
        :'match_condition' => :'MatchConditionRequest',
        :'format' => :'String',
        :'from_index' => :'Integer',
        :'to_index' => :'Integer',
        :'out_folder' => :'String',
        :'out_storage' => :'String',
        :'region' => :'String',
        :'save_options' => :'SaveOptions'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'SourceFolder')
          self.source_folder = attributes[:'SourceFolder']
      end
      if attributes.has_key?(:'SourceStorage')
          self.source_storage = attributes[:'SourceStorage']
      end
      if attributes.has_key?(:'MatchCondition')
          self.match_condition = attributes[:'MatchCondition']
      end
      if attributes.has_key?(:'Format')
          self.format = attributes[:'Format']
      end
      if attributes.has_key?(:'FromIndex')
          self.from_index = attributes[:'FromIndex']
      end
      if attributes.has_key?(:'ToIndex')
          self.to_index = attributes[:'ToIndex']
      end
      if attributes.has_key?(:'OutFolder')
          self.out_folder = attributes[:'OutFolder']
      end
      if attributes.has_key?(:'OutStorage')
          self.out_storage = attributes[:'OutStorage']
      end
      if attributes.has_key?(:'Region')
          self.region = attributes[:'Region']
      end
      if attributes.has_key?(:'SaveOptions')
          self.save_options = attributes[:'SaveOptions']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @source_folder.nil?
          invalid_properties.push("invalid value for 'source_folder', source_folder cannot be nil.")
      end
      if @source_storage.nil?
          invalid_properties.push("invalid value for 'source_storage', source_storage cannot be nil.")
      end
      if @match_condition.nil?
          invalid_properties.push("invalid value for 'match_condition', match_condition cannot be nil.")
      end
      if @format.nil?
          invalid_properties.push("invalid value for 'format', format cannot be nil.")
      end
      if @from_index.nil?
          invalid_properties.push("invalid value for 'from_index', from_index cannot be nil.")
      end
      if @to_index.nil?
          invalid_properties.push("invalid value for 'to_index', to_index cannot be nil.")
      end
      if @out_folder.nil?
          invalid_properties.push("invalid value for 'out_folder', out_folder cannot be nil.")
      end
      if @out_storage.nil?
          invalid_properties.push("invalid value for 'out_storage', out_storage cannot be nil.")
      end
      if @region.nil?
          invalid_properties.push("invalid value for 'region', region cannot be nil.")
      end
      if @save_options.nil?
          invalid_properties.push("invalid value for 'save_options', save_options cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @source_folder.nil?
      return false if @source_storage.nil?
      return false if @match_condition.nil?
      return false if @format.nil?
      return false if @from_index.nil?
      return false if @to_index.nil?
      return false if @out_folder.nil?
      return false if @out_storage.nil?
      return false if @region.nil?
      return false if @save_options.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          source_folder == o.source_folder &&
          source_storage == o.source_storage &&
          match_condition == o.match_condition &&
          format == o.format &&
          from_index == o.from_index &&
          to_index == o.to_index &&
          out_folder == o.out_folder &&
          out_storage == o.out_storage &&
          region == o.region &&
          save_options == o.save_options 
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
      [ source_folder , source_storage , match_condition , format , from_index , to_index , out_folder , out_storage , region , save_options ].hash
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
