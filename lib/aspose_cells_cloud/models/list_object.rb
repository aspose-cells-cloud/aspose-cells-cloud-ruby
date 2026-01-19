=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="ListObjectrb.cs">
   Copyright (c) 2026 Aspose.Cells Cloud
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

  class ListObject
        #Gets auto filter.            
        attr_accessor :auto_filter
        #Gets and sets the display name.            
        attr_accessor :display_name
        #Gets the start column of the range.            
        attr_accessor :start_column
        #Gets the start row of the range.            
        attr_accessor :start_row
        #Gets the end column of the range.            
        attr_accessor :end_column
        #Gets the end  row of the range.            
        attr_accessor :end_row
        #Gets ListColumns of the ListObject.            
        attr_accessor :list_columns
        #Gets and sets whether this ListObject show header row.            
        attr_accessor :show_header_row
        #Indicates whether column stripe formatting is applied.            
        attr_accessor :show_table_style_column_stripes
        #Indicates whether the first column in the table should have the style applied.            
        attr_accessor :show_table_style_first_column
        #Indicates whether the last column in the table should have the style applied.            
        attr_accessor :show_table_style_last_column
        #Indicates whether row stripe formatting is applied.            
        attr_accessor :show_table_style_row_stripes
        #Gets and sets whether this ListObject show total row.            
        attr_accessor :show_totals
        #Gets and sets the table style name.            
        attr_accessor :table_style_name
        #Gets and the built-in table style.            
        attr_accessor :table_style_type
        #Gets the data range of the ListObject.            
        attr_accessor :data_range
        #Gets the data source type of the table.            
        attr_accessor :data_source_type
        #Gets and sets the comment of the table.            
        attr_accessor :comment
        #Gets an  used for this list.            
        attr_accessor :xml_map
        #Gets and sets the alternative text.            
        attr_accessor :alternative_text
        #Gets and sets the alternative description.            
        attr_accessor :alternative_description
        #            
        attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'auto_filter' => :'AutoFilter',
        :'display_name' => :'DisplayName',
        :'start_column' => :'StartColumn',
        :'start_row' => :'StartRow',
        :'end_column' => :'EndColumn',
        :'end_row' => :'EndRow',
        :'list_columns' => :'ListColumns',
        :'show_header_row' => :'ShowHeaderRow',
        :'show_table_style_column_stripes' => :'ShowTableStyleColumnStripes',
        :'show_table_style_first_column' => :'ShowTableStyleFirstColumn',
        :'show_table_style_last_column' => :'ShowTableStyleLastColumn',
        :'show_table_style_row_stripes' => :'ShowTableStyleRowStripes',
        :'show_totals' => :'ShowTotals',
        :'table_style_name' => :'TableStyleName',
        :'table_style_type' => :'TableStyleType',
        :'data_range' => :'DataRange',
        :'data_source_type' => :'DataSourceType',
        :'comment' => :'Comment',
        :'xml_map' => :'XmlMap',
        :'alternative_text' => :'AlternativeText',
        :'alternative_description' => :'AlternativeDescription',
        :'link' => :'link'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'auto_filter' => :'AutoFilter',
        :'display_name' => :'String',
        :'start_column' => :'Integer',
        :'start_row' => :'Integer',
        :'end_column' => :'Integer',
        :'end_row' => :'Integer',
        :'list_columns' => :'Array<ListColumn>',
        :'show_header_row' => :'BOOLEAN',
        :'show_table_style_column_stripes' => :'BOOLEAN',
        :'show_table_style_first_column' => :'BOOLEAN',
        :'show_table_style_last_column' => :'BOOLEAN',
        :'show_table_style_row_stripes' => :'BOOLEAN',
        :'show_totals' => :'BOOLEAN',
        :'table_style_name' => :'String',
        :'table_style_type' => :'String',
        :'data_range' => :'Range',
        :'data_source_type' => :'String',
        :'comment' => :'String',
        :'xml_map' => :'XmlMap',
        :'alternative_text' => :'String',
        :'alternative_description' => :'String',
        :'link' => :'Link'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'AutoFilter')
          self.auto_filter = attributes[:'AutoFilter']
      end
      if attributes.has_key?(:'DisplayName')
          self.display_name = attributes[:'DisplayName']
      end
      if attributes.has_key?(:'StartColumn')
          self.start_column = attributes[:'StartColumn']
      end
      if attributes.has_key?(:'StartRow')
          self.start_row = attributes[:'StartRow']
      end
      if attributes.has_key?(:'EndColumn')
          self.end_column = attributes[:'EndColumn']
      end
      if attributes.has_key?(:'EndRow')
          self.end_row = attributes[:'EndRow']
      end
      if attributes.has_key?(:'ListColumns')
          self.list_columns = attributes[:'ListColumns']
      end
      if attributes.has_key?(:'ShowHeaderRow')
          self.show_header_row = attributes[:'ShowHeaderRow']
      end
      if attributes.has_key?(:'ShowTableStyleColumnStripes')
          self.show_table_style_column_stripes = attributes[:'ShowTableStyleColumnStripes']
      end
      if attributes.has_key?(:'ShowTableStyleFirstColumn')
          self.show_table_style_first_column = attributes[:'ShowTableStyleFirstColumn']
      end
      if attributes.has_key?(:'ShowTableStyleLastColumn')
          self.show_table_style_last_column = attributes[:'ShowTableStyleLastColumn']
      end
      if attributes.has_key?(:'ShowTableStyleRowStripes')
          self.show_table_style_row_stripes = attributes[:'ShowTableStyleRowStripes']
      end
      if attributes.has_key?(:'ShowTotals')
          self.show_totals = attributes[:'ShowTotals']
      end
      if attributes.has_key?(:'TableStyleName')
          self.table_style_name = attributes[:'TableStyleName']
      end
      if attributes.has_key?(:'TableStyleType')
          self.table_style_type = attributes[:'TableStyleType']
      end
      if attributes.has_key?(:'DataRange')
          self.data_range = attributes[:'DataRange']
      end
      if attributes.has_key?(:'DataSourceType')
          self.data_source_type = attributes[:'DataSourceType']
      end
      if attributes.has_key?(:'Comment')
          self.comment = attributes[:'Comment']
      end
      if attributes.has_key?(:'XmlMap')
          self.xml_map = attributes[:'XmlMap']
      end
      if attributes.has_key?(:'AlternativeText')
          self.alternative_text = attributes[:'AlternativeText']
      end
      if attributes.has_key?(:'AlternativeDescription')
          self.alternative_description = attributes[:'AlternativeDescription']
      end
      if attributes.has_key?(:'link')
          self.link = attributes[:'link']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @auto_filter.nil?
          invalid_properties.push("invalid value for 'auto_filter', auto_filter cannot be nil.")
      end
      if @display_name.nil?
          invalid_properties.push("invalid value for 'display_name', display_name cannot be nil.")
      end
      if @start_column.nil?
          invalid_properties.push("invalid value for 'start_column', start_column cannot be nil.")
      end
      if @start_row.nil?
          invalid_properties.push("invalid value for 'start_row', start_row cannot be nil.")
      end
      if @end_column.nil?
          invalid_properties.push("invalid value for 'end_column', end_column cannot be nil.")
      end
      if @end_row.nil?
          invalid_properties.push("invalid value for 'end_row', end_row cannot be nil.")
      end
      if @list_columns.nil?
          invalid_properties.push("invalid value for 'list_columns', list_columns cannot be nil.")
      end
      if @show_header_row.nil?
          invalid_properties.push("invalid value for 'show_header_row', show_header_row cannot be nil.")
      end
      if @show_table_style_column_stripes.nil?
          invalid_properties.push("invalid value for 'show_table_style_column_stripes', show_table_style_column_stripes cannot be nil.")
      end
      if @show_table_style_first_column.nil?
          invalid_properties.push("invalid value for 'show_table_style_first_column', show_table_style_first_column cannot be nil.")
      end
      if @show_table_style_last_column.nil?
          invalid_properties.push("invalid value for 'show_table_style_last_column', show_table_style_last_column cannot be nil.")
      end
      if @show_table_style_row_stripes.nil?
          invalid_properties.push("invalid value for 'show_table_style_row_stripes', show_table_style_row_stripes cannot be nil.")
      end
      if @show_totals.nil?
          invalid_properties.push("invalid value for 'show_totals', show_totals cannot be nil.")
      end
      if @table_style_name.nil?
          invalid_properties.push("invalid value for 'table_style_name', table_style_name cannot be nil.")
      end
      if @table_style_type.nil?
          invalid_properties.push("invalid value for 'table_style_type', table_style_type cannot be nil.")
      end
      if @data_range.nil?
          invalid_properties.push("invalid value for 'data_range', data_range cannot be nil.")
      end
      if @data_source_type.nil?
          invalid_properties.push("invalid value for 'data_source_type', data_source_type cannot be nil.")
      end
      if @comment.nil?
          invalid_properties.push("invalid value for 'comment', comment cannot be nil.")
      end
      if @xml_map.nil?
          invalid_properties.push("invalid value for 'xml_map', xml_map cannot be nil.")
      end
      if @alternative_text.nil?
          invalid_properties.push("invalid value for 'alternative_text', alternative_text cannot be nil.")
      end
      if @alternative_description.nil?
          invalid_properties.push("invalid value for 'alternative_description', alternative_description cannot be nil.")
      end
      if @link.nil?
          invalid_properties.push("invalid value for 'link', link cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @auto_filter.nil?
      return false if @display_name.nil?
      return false if @start_column.nil?
      return false if @start_row.nil?
      return false if @end_column.nil?
      return false if @end_row.nil?
      return false if @list_columns.nil?
      return false if @show_header_row.nil?
      return false if @show_table_style_column_stripes.nil?
      return false if @show_table_style_first_column.nil?
      return false if @show_table_style_last_column.nil?
      return false if @show_table_style_row_stripes.nil?
      return false if @show_totals.nil?
      return false if @table_style_name.nil?
      return false if @table_style_type.nil?
      return false if @data_range.nil?
      return false if @data_source_type.nil?
      return false if @comment.nil?
      return false if @xml_map.nil?
      return false if @alternative_text.nil?
      return false if @alternative_description.nil?
      return false if @link.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          auto_filter == o.auto_filter &&
          display_name == o.display_name &&
          start_column == o.start_column &&
          start_row == o.start_row &&
          end_column == o.end_column &&
          end_row == o.end_row &&
          list_columns == o.list_columns &&
          show_header_row == o.show_header_row &&
          show_table_style_column_stripes == o.show_table_style_column_stripes &&
          show_table_style_first_column == o.show_table_style_first_column &&
          show_table_style_last_column == o.show_table_style_last_column &&
          show_table_style_row_stripes == o.show_table_style_row_stripes &&
          show_totals == o.show_totals &&
          table_style_name == o.table_style_name &&
          table_style_type == o.table_style_type &&
          data_range == o.data_range &&
          data_source_type == o.data_source_type &&
          comment == o.comment &&
          xml_map == o.xml_map &&
          alternative_text == o.alternative_text &&
          alternative_description == o.alternative_description &&
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
      [ auto_filter , display_name , start_column , start_row , end_column , end_row , list_columns , show_header_row , show_table_style_column_stripes , show_table_style_first_column , show_table_style_last_column , show_table_style_row_stripes , show_totals , table_style_name , table_style_type , data_range , data_source_type , comment , xml_map , alternative_text , alternative_description , link ].hash
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
