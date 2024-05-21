=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="ChartPointrb.cs">
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

  class ChartPoint
        #Gets the area.            
        attr_accessor :area
        #Gets the border.            
        attr_accessor :border
        #Returns a DataLabels object that represents the data label associated with the point.            
        attr_accessor :data_labels
        #The distance of an open pie slice from the center of the pie chart is expressed as a percentage of the pie diameter.            
        attr_accessor :explosion
        #Gets the marker.            
        attr_accessor :marker
        #True if the chartpoint has a shadow.            
        attr_accessor :shadow
        #Gets or sets the X value of the chart point.            
        attr_accessor :x_value
        #Gets or sets the Y value of the chart point.            
        attr_accessor :y_value
        #Gets or sets a value indicates whether this data points is in the second pie or bar on a pie of pie or bar of pie chart.            
        attr_accessor :is_in_secondary_plot
        #            
        attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'area' => :'Area',
        :'border' => :'Border',
        :'data_labels' => :'DataLabels',
        :'explosion' => :'Explosion',
        :'marker' => :'Marker',
        :'shadow' => :'Shadow',
        :'x_value' => :'XValue',
        :'y_value' => :'YValue',
        :'is_in_secondary_plot' => :'IsInSecondaryPlot',
        :'link' => :'link'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'area' => :'Area',
        :'border' => :'Line',
        :'data_labels' => :'DataLabels',
        :'explosion' => :'Integer',
        :'marker' => :'Marker',
        :'shadow' => :'BOOLEAN',
        :'x_value' => :'Object',
        :'y_value' => :'Object',
        :'is_in_secondary_plot' => :'BOOLEAN',
        :'link' => :'Link'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Area')
          self.area = attributes[:'Area']
      end
      if attributes.has_key?(:'Border')
          self.border = attributes[:'Border']
      end
      if attributes.has_key?(:'DataLabels')
          self.data_labels = attributes[:'DataLabels']
      end
      if attributes.has_key?(:'Explosion')
          self.explosion = attributes[:'Explosion']
      end
      if attributes.has_key?(:'Marker')
          self.marker = attributes[:'Marker']
      end
      if attributes.has_key?(:'Shadow')
          self.shadow = attributes[:'Shadow']
      end
      if attributes.has_key?(:'XValue')
          self.x_value = attributes[:'XValue']
      end
      if attributes.has_key?(:'YValue')
          self.y_value = attributes[:'YValue']
      end
      if attributes.has_key?(:'IsInSecondaryPlot')
          self.is_in_secondary_plot = attributes[:'IsInSecondaryPlot']
      end
      if attributes.has_key?(:'link')
          self.link = attributes[:'link']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @area.nil?
          invalid_properties.push("invalid value for 'area', area cannot be nil.")
      end
      if @border.nil?
          invalid_properties.push("invalid value for 'border', border cannot be nil.")
      end
      if @data_labels.nil?
          invalid_properties.push("invalid value for 'data_labels', data_labels cannot be nil.")
      end
      if @explosion.nil?
          invalid_properties.push("invalid value for 'explosion', explosion cannot be nil.")
      end
      if @marker.nil?
          invalid_properties.push("invalid value for 'marker', marker cannot be nil.")
      end
      if @shadow.nil?
          invalid_properties.push("invalid value for 'shadow', shadow cannot be nil.")
      end
      if @x_value.nil?
          invalid_properties.push("invalid value for 'x_value', x_value cannot be nil.")
      end
      if @y_value.nil?
          invalid_properties.push("invalid value for 'y_value', y_value cannot be nil.")
      end
      if @is_in_secondary_plot.nil?
          invalid_properties.push("invalid value for 'is_in_secondary_plot', is_in_secondary_plot cannot be nil.")
      end
      if @link.nil?
          invalid_properties.push("invalid value for 'link', link cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @area.nil?
      return false if @border.nil?
      return false if @data_labels.nil?
      return false if @explosion.nil?
      return false if @marker.nil?
      return false if @shadow.nil?
      return false if @x_value.nil?
      return false if @y_value.nil?
      return false if @is_in_secondary_plot.nil?
      return false if @link.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          area == o.area &&
          border == o.border &&
          data_labels == o.data_labels &&
          explosion == o.explosion &&
          marker == o.marker &&
          shadow == o.shadow &&
          x_value == o.x_value &&
          y_value == o.y_value &&
          is_in_secondary_plot == o.is_in_secondary_plot &&
          link == o.link 
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
      [ area , border , data_labels , explosion , marker , shadow , x_value , y_value , is_in_secondary_plot , link ].hash
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
