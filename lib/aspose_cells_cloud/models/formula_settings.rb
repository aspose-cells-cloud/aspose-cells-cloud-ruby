=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="FormulaSettingsrb.cs">
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

  class FormulaSettings
        #Indicates whether the application is required to perform a full calculation when the workbook is opened.             
        attr_accessor :calculate_on_open
        #Indicates whether recalculate the workbook before saving the document, when in manual calculation mode.             
        attr_accessor :calculate_on_save
        #Indicates whether calculates all formulas every time when a calculation is triggered.             
        attr_accessor :force_full_calculation
        #Gets or sets the mode for workbook calculation in ms excel.             
        attr_accessor :calculation_mode
        #Specifies the version of the calculation engine used to calculate values in the workbook.             
        attr_accessor :calculation_id
        #Indicates whether enable iterative calculation to resolve circular references.             
        attr_accessor :enable_iterative_calculation
        #The maximum iterations to resolve a circular reference.             
        attr_accessor :max_iteration
        #The maximum change to resolve a circular reference.             
        attr_accessor :max_change
        #Whether the precision of calculated result be set as they are displayed while calculating formulas             
        attr_accessor :precision_as_displayed
        #Whether enable calculation chain for formulas. Default is false.             
        attr_accessor :enable_calculation_chain
        #Indicates whether preserve those spaces and line breaks that are padded between formula tokens            while getting and setting formulas.            Default value is false.             
        attr_accessor :preserve_padding_spaces

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'calculate_on_open' => :'CalculateOnOpen',
        :'calculate_on_save' => :'CalculateOnSave',
        :'force_full_calculation' => :'ForceFullCalculation',
        :'calculation_mode' => :'CalculationMode',
        :'calculation_id' => :'CalculationId',
        :'enable_iterative_calculation' => :'EnableIterativeCalculation',
        :'max_iteration' => :'MaxIteration',
        :'max_change' => :'MaxChange',
        :'precision_as_displayed' => :'PrecisionAsDisplayed',
        :'enable_calculation_chain' => :'EnableCalculationChain',
        :'preserve_padding_spaces' => :'PreservePaddingSpaces'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'calculate_on_open' => :'BOOLEAN',
        :'calculate_on_save' => :'BOOLEAN',
        :'force_full_calculation' => :'BOOLEAN',
        :'calculation_mode' => :'String',
        :'calculation_id' => :'String',
        :'enable_iterative_calculation' => :'BOOLEAN',
        :'max_iteration' => :'Integer',
        :'max_change' => :'Float',
        :'precision_as_displayed' => :'BOOLEAN',
        :'enable_calculation_chain' => :'BOOLEAN',
        :'preserve_padding_spaces' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'CalculateOnOpen')
          self.calculate_on_open = attributes[:'CalculateOnOpen']
      end
      if attributes.has_key?(:'CalculateOnSave')
          self.calculate_on_save = attributes[:'CalculateOnSave']
      end
      if attributes.has_key?(:'ForceFullCalculation')
          self.force_full_calculation = attributes[:'ForceFullCalculation']
      end
      if attributes.has_key?(:'CalculationMode')
          self.calculation_mode = attributes[:'CalculationMode']
      end
      if attributes.has_key?(:'CalculationId')
          self.calculation_id = attributes[:'CalculationId']
      end
      if attributes.has_key?(:'EnableIterativeCalculation')
          self.enable_iterative_calculation = attributes[:'EnableIterativeCalculation']
      end
      if attributes.has_key?(:'MaxIteration')
          self.max_iteration = attributes[:'MaxIteration']
      end
      if attributes.has_key?(:'MaxChange')
          self.max_change = attributes[:'MaxChange']
      end
      if attributes.has_key?(:'PrecisionAsDisplayed')
          self.precision_as_displayed = attributes[:'PrecisionAsDisplayed']
      end
      if attributes.has_key?(:'EnableCalculationChain')
          self.enable_calculation_chain = attributes[:'EnableCalculationChain']
      end
      if attributes.has_key?(:'PreservePaddingSpaces')
          self.preserve_padding_spaces = attributes[:'PreservePaddingSpaces']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @calculate_on_open.nil?
          invalid_properties.push("invalid value for 'calculate_on_open', calculate_on_open cannot be nil.")
      end
      if @calculate_on_save.nil?
          invalid_properties.push("invalid value for 'calculate_on_save', calculate_on_save cannot be nil.")
      end
      if @force_full_calculation.nil?
          invalid_properties.push("invalid value for 'force_full_calculation', force_full_calculation cannot be nil.")
      end
      if @calculation_mode.nil?
          invalid_properties.push("invalid value for 'calculation_mode', calculation_mode cannot be nil.")
      end
      if @calculation_id.nil?
          invalid_properties.push("invalid value for 'calculation_id', calculation_id cannot be nil.")
      end
      if @enable_iterative_calculation.nil?
          invalid_properties.push("invalid value for 'enable_iterative_calculation', enable_iterative_calculation cannot be nil.")
      end
      if @max_iteration.nil?
          invalid_properties.push("invalid value for 'max_iteration', max_iteration cannot be nil.")
      end
      if @max_change.nil?
          invalid_properties.push("invalid value for 'max_change', max_change cannot be nil.")
      end
      if @precision_as_displayed.nil?
          invalid_properties.push("invalid value for 'precision_as_displayed', precision_as_displayed cannot be nil.")
      end
      if @enable_calculation_chain.nil?
          invalid_properties.push("invalid value for 'enable_calculation_chain', enable_calculation_chain cannot be nil.")
      end
      if @preserve_padding_spaces.nil?
          invalid_properties.push("invalid value for 'preserve_padding_spaces', preserve_padding_spaces cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @calculate_on_open.nil?
      return false if @calculate_on_save.nil?
      return false if @force_full_calculation.nil?
      return false if @calculation_mode.nil?
      return false if @calculation_id.nil?
      return false if @enable_iterative_calculation.nil?
      return false if @max_iteration.nil?
      return false if @max_change.nil?
      return false if @precision_as_displayed.nil?
      return false if @enable_calculation_chain.nil?
      return false if @preserve_padding_spaces.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          calculate_on_open == o.calculate_on_open &&
          calculate_on_save == o.calculate_on_save &&
          force_full_calculation == o.force_full_calculation &&
          calculation_mode == o.calculation_mode &&
          calculation_id == o.calculation_id &&
          enable_iterative_calculation == o.enable_iterative_calculation &&
          max_iteration == o.max_iteration &&
          max_change == o.max_change &&
          precision_as_displayed == o.precision_as_displayed &&
          enable_calculation_chain == o.enable_calculation_chain &&
          preserve_padding_spaces == o.preserve_padding_spaces 
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
      [ calculate_on_open , calculate_on_save , force_full_calculation , calculation_mode , calculation_id , enable_iterative_calculation , max_iteration , max_change , precision_as_displayed , enable_calculation_chain , preserve_padding_spaces ].hash
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
