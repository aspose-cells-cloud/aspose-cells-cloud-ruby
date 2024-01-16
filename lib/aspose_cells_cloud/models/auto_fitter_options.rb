=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="AutoFitterOptionsrb.cs">
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

  class AutoFitterOptions
        #Gets and set the type of auto fitting row height of merged cells.            
        attr_accessor :auto_fit_merged_cells_type
        #Indicates whether auto fit row height when the cells is merged in a row.                        The default value is false.            
        attr_accessor :auto_fit_merged_cells
        #Ignores the hidden rows/columns.            
        attr_accessor :ignore_hidden
        #Indicates whether only fit the rows which height are not customed.            
        attr_accessor :only_auto
        #Gets or sets default edit language.            
        attr_accessor :default_edit_language
        #Gets and sets the max row height(in unit of Point) when autofitting rows.            
        attr_accessor :max_row_height
        #Gets and sets the type of auto fitting wrapped text.            
        attr_accessor :auto_fit_wrapped_text_type
        #Gets and sets the formatted strategy.            
        attr_accessor :format_strategy
        #Indicates whether fit for rendering purpose.            
        attr_accessor :for_rendering

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'auto_fit_merged_cells_type' => :'AutoFitMergedCellsType',
        :'auto_fit_merged_cells' => :'AutoFitMergedCells',
        :'ignore_hidden' => :'IgnoreHidden',
        :'only_auto' => :'OnlyAuto',
        :'default_edit_language' => :'DefaultEditLanguage',
        :'max_row_height' => :'MaxRowHeight',
        :'auto_fit_wrapped_text_type' => :'AutoFitWrappedTextType',
        :'format_strategy' => :'FormatStrategy',
        :'for_rendering' => :'ForRendering'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'auto_fit_merged_cells_type' => :'String',
        :'auto_fit_merged_cells' => :'BOOLEAN',
        :'ignore_hidden' => :'BOOLEAN',
        :'only_auto' => :'BOOLEAN',
        :'default_edit_language' => :'String',
        :'max_row_height' => :'Float',
        :'auto_fit_wrapped_text_type' => :'String',
        :'format_strategy' => :'String',
        :'for_rendering' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'AutoFitMergedCellsType')
          self.auto_fit_merged_cells_type = attributes[:'AutoFitMergedCellsType']
      end
      if attributes.has_key?(:'AutoFitMergedCells')
          self.auto_fit_merged_cells = attributes[:'AutoFitMergedCells']
      end
      if attributes.has_key?(:'IgnoreHidden')
          self.ignore_hidden = attributes[:'IgnoreHidden']
      end
      if attributes.has_key?(:'OnlyAuto')
          self.only_auto = attributes[:'OnlyAuto']
      end
      if attributes.has_key?(:'DefaultEditLanguage')
          self.default_edit_language = attributes[:'DefaultEditLanguage']
      end
      if attributes.has_key?(:'MaxRowHeight')
          self.max_row_height = attributes[:'MaxRowHeight']
      end
      if attributes.has_key?(:'AutoFitWrappedTextType')
          self.auto_fit_wrapped_text_type = attributes[:'AutoFitWrappedTextType']
      end
      if attributes.has_key?(:'FormatStrategy')
          self.format_strategy = attributes[:'FormatStrategy']
      end
      if attributes.has_key?(:'ForRendering')
          self.for_rendering = attributes[:'ForRendering']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @auto_fit_merged_cells_type.nil?
          invalid_properties.push("invalid value for 'auto_fit_merged_cells_type', auto_fit_merged_cells_type cannot be nil.")
      end
      if @auto_fit_merged_cells.nil?
          invalid_properties.push("invalid value for 'auto_fit_merged_cells', auto_fit_merged_cells cannot be nil.")
      end
      if @ignore_hidden.nil?
          invalid_properties.push("invalid value for 'ignore_hidden', ignore_hidden cannot be nil.")
      end
      if @only_auto.nil?
          invalid_properties.push("invalid value for 'only_auto', only_auto cannot be nil.")
      end
      if @default_edit_language.nil?
          invalid_properties.push("invalid value for 'default_edit_language', default_edit_language cannot be nil.")
      end
      if @max_row_height.nil?
          invalid_properties.push("invalid value for 'max_row_height', max_row_height cannot be nil.")
      end
      if @auto_fit_wrapped_text_type.nil?
          invalid_properties.push("invalid value for 'auto_fit_wrapped_text_type', auto_fit_wrapped_text_type cannot be nil.")
      end
      if @format_strategy.nil?
          invalid_properties.push("invalid value for 'format_strategy', format_strategy cannot be nil.")
      end
      if @for_rendering.nil?
          invalid_properties.push("invalid value for 'for_rendering', for_rendering cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @auto_fit_merged_cells_type.nil?
      return false if @auto_fit_merged_cells.nil?
      return false if @ignore_hidden.nil?
      return false if @only_auto.nil?
      return false if @default_edit_language.nil?
      return false if @max_row_height.nil?
      return false if @auto_fit_wrapped_text_type.nil?
      return false if @format_strategy.nil?
      return false if @for_rendering.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          auto_fit_merged_cells_type == o.auto_fit_merged_cells_type &&
          auto_fit_merged_cells == o.auto_fit_merged_cells &&
          ignore_hidden == o.ignore_hidden &&
          only_auto == o.only_auto &&
          default_edit_language == o.default_edit_language &&
          max_row_height == o.max_row_height &&
          auto_fit_wrapped_text_type == o.auto_fit_wrapped_text_type &&
          format_strategy == o.format_strategy &&
          for_rendering == o.for_rendering 
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
      [ auto_fit_merged_cells_type , auto_fit_merged_cells , ignore_hidden , only_auto , default_edit_language , max_row_height , auto_fit_wrapped_text_type , format_strategy , for_rendering ].hash
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
