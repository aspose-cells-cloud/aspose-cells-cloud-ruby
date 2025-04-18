=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="DateTimeGroupItemrb.cs">
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

  class DateTimeGroupItem
        #Gets and sets the group type.            
        attr_accessor :date_time_grouping_type
        #Gets and sets the day of the grouped date time.            
        attr_accessor :day
        #Gets and sets the hour of the grouped date time.            
        attr_accessor :hour
        #Gets and sets the minute of the grouped date time.            
        attr_accessor :minute
        #Gets and sets the month of the grouped date time.            
        attr_accessor :month
        #Gets and sets the second of the grouped date time.            
        attr_accessor :second
        #Gets and sets the year of the grouped date time.            
        attr_accessor :year

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'date_time_grouping_type' => :'DateTimeGroupingType',
        :'day' => :'Day',
        :'hour' => :'Hour',
        :'minute' => :'Minute',
        :'month' => :'Month',
        :'second' => :'Second',
        :'year' => :'Year'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'date_time_grouping_type' => :'String',
        :'day' => :'Integer',
        :'hour' => :'Integer',
        :'minute' => :'Integer',
        :'month' => :'Integer',
        :'second' => :'Integer',
        :'year' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'DateTimeGroupingType')
          self.date_time_grouping_type = attributes[:'DateTimeGroupingType']
      end
      if attributes.has_key?(:'Day')
          self.day = attributes[:'Day']
      end
      if attributes.has_key?(:'Hour')
          self.hour = attributes[:'Hour']
      end
      if attributes.has_key?(:'Minute')
          self.minute = attributes[:'Minute']
      end
      if attributes.has_key?(:'Month')
          self.month = attributes[:'Month']
      end
      if attributes.has_key?(:'Second')
          self.second = attributes[:'Second']
      end
      if attributes.has_key?(:'Year')
          self.year = attributes[:'Year']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @date_time_grouping_type.nil?
          invalid_properties.push("invalid value for 'date_time_grouping_type', date_time_grouping_type cannot be nil.")
      end
      if @day.nil?
          invalid_properties.push("invalid value for 'day', day cannot be nil.")
      end
      if @hour.nil?
          invalid_properties.push("invalid value for 'hour', hour cannot be nil.")
      end
      if @minute.nil?
          invalid_properties.push("invalid value for 'minute', minute cannot be nil.")
      end
      if @month.nil?
          invalid_properties.push("invalid value for 'month', month cannot be nil.")
      end
      if @second.nil?
          invalid_properties.push("invalid value for 'second', second cannot be nil.")
      end
      if @year.nil?
          invalid_properties.push("invalid value for 'year', year cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @date_time_grouping_type.nil?
      return false if @day.nil?
      return false if @hour.nil?
      return false if @minute.nil?
      return false if @month.nil?
      return false if @second.nil?
      return false if @year.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          date_time_grouping_type == o.date_time_grouping_type &&
          day == o.day &&
          hour == o.hour &&
          minute == o.minute &&
          month == o.month &&
          second == o.second &&
          year == o.year 
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
      [ date_time_grouping_type , day , hour , minute , month , second , year ].hash
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
