=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="CalculationOptionsrb.cs">
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

  class CalculationOptions
        #Specifies the stack size for calculating cells recursively.             
        attr_accessor :calc_stack_size
        #Indicates whether errors encountered while calculating formulas should be ignored.            The error may be unsupported function, external links, etc.            The default value is true.             
        attr_accessor :ignore_error
        #Specifies the strategy for processing precision of calculation.             
        attr_accessor :precision_strategy
        #Indicates whether calculate the dependent cells recursively when calculating one cell and it depends on other cells.            The default value is true.             
        attr_accessor :recursive
        #The custom formula calculation engine to extend the default calculation engine of Aspose.Cells.             
        attr_accessor :custom_engine
        #The monitor for user to track the progress of formula calculation.             
        attr_accessor :calculation_monitor
        #Specifies the data sources for external links used in formulas.             
        attr_accessor :linked_data_sources

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'calc_stack_size' => :'CalcStackSize',
        :'ignore_error' => :'IgnoreError',
        :'precision_strategy' => :'PrecisionStrategy',
        :'recursive' => :'Recursive',
        :'custom_engine' => :'CustomEngine',
        :'calculation_monitor' => :'CalculationMonitor',
        :'linked_data_sources' => :'LinkedDataSources'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'calc_stack_size' => :'Integer',
        :'ignore_error' => :'BOOLEAN',
        :'precision_strategy' => :'String',
        :'recursive' => :'BOOLEAN',
        :'custom_engine' => :'AbstractCalculationEngine',
        :'calculation_monitor' => :'AbstractCalculationMonitor',
        :'linked_data_sources' => :'Array<Workbook>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'CalcStackSize')
          self.calc_stack_size = attributes[:'CalcStackSize']
      end
      if attributes.has_key?(:'IgnoreError')
          self.ignore_error = attributes[:'IgnoreError']
      end
      if attributes.has_key?(:'PrecisionStrategy')
          self.precision_strategy = attributes[:'PrecisionStrategy']
      end
      if attributes.has_key?(:'Recursive')
          self.recursive = attributes[:'Recursive']
      end
      if attributes.has_key?(:'CustomEngine')
          self.custom_engine = attributes[:'CustomEngine']
      end
      if attributes.has_key?(:'CalculationMonitor')
          self.calculation_monitor = attributes[:'CalculationMonitor']
      end
      if attributes.has_key?(:'LinkedDataSources')
          self.linked_data_sources = attributes[:'LinkedDataSources']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @calc_stack_size.nil?
          invalid_properties.push("invalid value for 'calc_stack_size', calc_stack_size cannot be nil.")
      end
      if @ignore_error.nil?
          invalid_properties.push("invalid value for 'ignore_error', ignore_error cannot be nil.")
      end
      if @precision_strategy.nil?
          invalid_properties.push("invalid value for 'precision_strategy', precision_strategy cannot be nil.")
      end
      if @recursive.nil?
          invalid_properties.push("invalid value for 'recursive', recursive cannot be nil.")
      end
      if @custom_engine.nil?
          invalid_properties.push("invalid value for 'custom_engine', custom_engine cannot be nil.")
      end
      if @calculation_monitor.nil?
          invalid_properties.push("invalid value for 'calculation_monitor', calculation_monitor cannot be nil.")
      end
      if @linked_data_sources.nil?
          invalid_properties.push("invalid value for 'linked_data_sources', linked_data_sources cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @calc_stack_size.nil?
      return false if @ignore_error.nil?
      return false if @precision_strategy.nil?
      return false if @recursive.nil?
      return false if @custom_engine.nil?
      return false if @calculation_monitor.nil?
      return false if @linked_data_sources.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          calc_stack_size == o.calc_stack_size &&
          ignore_error == o.ignore_error &&
          precision_strategy == o.precision_strategy &&
          recursive == o.recursive &&
          custom_engine == o.custom_engine &&
          calculation_monitor == o.calculation_monitor &&
          linked_data_sources == o.linked_data_sources 
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
      [ calc_stack_size , ignore_error , precision_strategy , recursive , custom_engine , calculation_monitor , linked_data_sources ].hash
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
