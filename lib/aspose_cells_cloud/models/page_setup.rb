=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PageSetuprb.cs">
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

  class PageSetup
        #            
        attr_accessor :black_and_white
        #            
        attr_accessor :bottom_margin
        #            
        attr_accessor :center_horizontally
        #            
        attr_accessor :center_vertically
        #            
        attr_accessor :first_page_number
        #            
        attr_accessor :fit_to_pages_tall
        #            
        attr_accessor :fit_to_pages_wide
        #            
        attr_accessor :footer_margin
        #            
        attr_accessor :header_margin
        #            
        attr_accessor :is_auto_first_page_number
        #            
        attr_accessor :is_hf_align_margins
        #            
        attr_accessor :is_hf_diff_first
        #            
        attr_accessor :is_hf_diff_odd_even
        #            
        attr_accessor :is_hf_scale_with_doc
        #            
        attr_accessor :is_percent_scale
        #            
        attr_accessor :left_margin
        #            
        attr_accessor :order
        #            
        attr_accessor :orientation
        #            
        attr_accessor :paper_size
        #            
        attr_accessor :print_area
        #            
        attr_accessor :print_comments
        #            
        attr_accessor :print_copies
        #            
        attr_accessor :print_draft
        #            
        attr_accessor :print_errors
        #            
        attr_accessor :print_gridlines
        #            
        attr_accessor :print_headings
        #            
        attr_accessor :print_quality
        #            
        attr_accessor :print_title_columns
        #            
        attr_accessor :print_title_rows
        #            
        attr_accessor :right_margin
        #            
        attr_accessor :top_margin
        #            
        attr_accessor :zoom
        #            
        attr_accessor :header
        #            
        attr_accessor :footer
        #            
        attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'black_and_white' => :'BlackAndWhite',
        :'bottom_margin' => :'BottomMargin',
        :'center_horizontally' => :'CenterHorizontally',
        :'center_vertically' => :'CenterVertically',
        :'first_page_number' => :'FirstPageNumber',
        :'fit_to_pages_tall' => :'FitToPagesTall',
        :'fit_to_pages_wide' => :'FitToPagesWide',
        :'footer_margin' => :'FooterMargin',
        :'header_margin' => :'HeaderMargin',
        :'is_auto_first_page_number' => :'IsAutoFirstPageNumber',
        :'is_hf_align_margins' => :'IsHFAlignMargins',
        :'is_hf_diff_first' => :'IsHFDiffFirst',
        :'is_hf_diff_odd_even' => :'IsHFDiffOddEven',
        :'is_hf_scale_with_doc' => :'IsHFScaleWithDoc',
        :'is_percent_scale' => :'IsPercentScale',
        :'left_margin' => :'LeftMargin',
        :'order' => :'Order',
        :'orientation' => :'Orientation',
        :'paper_size' => :'PaperSize',
        :'print_area' => :'PrintArea',
        :'print_comments' => :'PrintComments',
        :'print_copies' => :'PrintCopies',
        :'print_draft' => :'PrintDraft',
        :'print_errors' => :'PrintErrors',
        :'print_gridlines' => :'PrintGridlines',
        :'print_headings' => :'PrintHeadings',
        :'print_quality' => :'PrintQuality',
        :'print_title_columns' => :'PrintTitleColumns',
        :'print_title_rows' => :'PrintTitleRows',
        :'right_margin' => :'RightMargin',
        :'top_margin' => :'TopMargin',
        :'zoom' => :'Zoom',
        :'header' => :'Header',
        :'footer' => :'Footer',
        :'link' => :'link'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'black_and_white' => :'BOOLEAN',
        :'bottom_margin' => :'Float',
        :'center_horizontally' => :'BOOLEAN',
        :'center_vertically' => :'BOOLEAN',
        :'first_page_number' => :'Integer',
        :'fit_to_pages_tall' => :'Integer',
        :'fit_to_pages_wide' => :'Integer',
        :'footer_margin' => :'Float',
        :'header_margin' => :'Float',
        :'is_auto_first_page_number' => :'BOOLEAN',
        :'is_hf_align_margins' => :'BOOLEAN',
        :'is_hf_diff_first' => :'BOOLEAN',
        :'is_hf_diff_odd_even' => :'BOOLEAN',
        :'is_hf_scale_with_doc' => :'BOOLEAN',
        :'is_percent_scale' => :'BOOLEAN',
        :'left_margin' => :'Float',
        :'order' => :'String',
        :'orientation' => :'String',
        :'paper_size' => :'String',
        :'print_area' => :'String',
        :'print_comments' => :'String',
        :'print_copies' => :'Integer',
        :'print_draft' => :'BOOLEAN',
        :'print_errors' => :'String',
        :'print_gridlines' => :'BOOLEAN',
        :'print_headings' => :'BOOLEAN',
        :'print_quality' => :'Integer',
        :'print_title_columns' => :'String',
        :'print_title_rows' => :'String',
        :'right_margin' => :'Float',
        :'top_margin' => :'Float',
        :'zoom' => :'Integer',
        :'header' => :'Array<PageSection>',
        :'footer' => :'Array<PageSection>',
        :'link' => :'Link'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'BlackAndWhite')
          self.black_and_white = attributes[:'BlackAndWhite']
      end
      if attributes.has_key?(:'BottomMargin')
          self.bottom_margin = attributes[:'BottomMargin']
      end
      if attributes.has_key?(:'CenterHorizontally')
          self.center_horizontally = attributes[:'CenterHorizontally']
      end
      if attributes.has_key?(:'CenterVertically')
          self.center_vertically = attributes[:'CenterVertically']
      end
      if attributes.has_key?(:'FirstPageNumber')
          self.first_page_number = attributes[:'FirstPageNumber']
      end
      if attributes.has_key?(:'FitToPagesTall')
          self.fit_to_pages_tall = attributes[:'FitToPagesTall']
      end
      if attributes.has_key?(:'FitToPagesWide')
          self.fit_to_pages_wide = attributes[:'FitToPagesWide']
      end
      if attributes.has_key?(:'FooterMargin')
          self.footer_margin = attributes[:'FooterMargin']
      end
      if attributes.has_key?(:'HeaderMargin')
          self.header_margin = attributes[:'HeaderMargin']
      end
      if attributes.has_key?(:'IsAutoFirstPageNumber')
          self.is_auto_first_page_number = attributes[:'IsAutoFirstPageNumber']
      end
      if attributes.has_key?(:'IsHFAlignMargins')
          self.is_hf_align_margins = attributes[:'IsHFAlignMargins']
      end
      if attributes.has_key?(:'IsHFDiffFirst')
          self.is_hf_diff_first = attributes[:'IsHFDiffFirst']
      end
      if attributes.has_key?(:'IsHFDiffOddEven')
          self.is_hf_diff_odd_even = attributes[:'IsHFDiffOddEven']
      end
      if attributes.has_key?(:'IsHFScaleWithDoc')
          self.is_hf_scale_with_doc = attributes[:'IsHFScaleWithDoc']
      end
      if attributes.has_key?(:'IsPercentScale')
          self.is_percent_scale = attributes[:'IsPercentScale']
      end
      if attributes.has_key?(:'LeftMargin')
          self.left_margin = attributes[:'LeftMargin']
      end
      if attributes.has_key?(:'Order')
          self.order = attributes[:'Order']
      end
      if attributes.has_key?(:'Orientation')
          self.orientation = attributes[:'Orientation']
      end
      if attributes.has_key?(:'PaperSize')
          self.paper_size = attributes[:'PaperSize']
      end
      if attributes.has_key?(:'PrintArea')
          self.print_area = attributes[:'PrintArea']
      end
      if attributes.has_key?(:'PrintComments')
          self.print_comments = attributes[:'PrintComments']
      end
      if attributes.has_key?(:'PrintCopies')
          self.print_copies = attributes[:'PrintCopies']
      end
      if attributes.has_key?(:'PrintDraft')
          self.print_draft = attributes[:'PrintDraft']
      end
      if attributes.has_key?(:'PrintErrors')
          self.print_errors = attributes[:'PrintErrors']
      end
      if attributes.has_key?(:'PrintGridlines')
          self.print_gridlines = attributes[:'PrintGridlines']
      end
      if attributes.has_key?(:'PrintHeadings')
          self.print_headings = attributes[:'PrintHeadings']
      end
      if attributes.has_key?(:'PrintQuality')
          self.print_quality = attributes[:'PrintQuality']
      end
      if attributes.has_key?(:'PrintTitleColumns')
          self.print_title_columns = attributes[:'PrintTitleColumns']
      end
      if attributes.has_key?(:'PrintTitleRows')
          self.print_title_rows = attributes[:'PrintTitleRows']
      end
      if attributes.has_key?(:'RightMargin')
          self.right_margin = attributes[:'RightMargin']
      end
      if attributes.has_key?(:'TopMargin')
          self.top_margin = attributes[:'TopMargin']
      end
      if attributes.has_key?(:'Zoom')
          self.zoom = attributes[:'Zoom']
      end
      if attributes.has_key?(:'Header')
          self.header = attributes[:'Header']
      end
      if attributes.has_key?(:'Footer')
          self.footer = attributes[:'Footer']
      end
      if attributes.has_key?(:'link')
          self.link = attributes[:'link']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @black_and_white.nil?
          invalid_properties.push("invalid value for 'black_and_white', black_and_white cannot be nil.")
      end
      if @bottom_margin.nil?
          invalid_properties.push("invalid value for 'bottom_margin', bottom_margin cannot be nil.")
      end
      if @center_horizontally.nil?
          invalid_properties.push("invalid value for 'center_horizontally', center_horizontally cannot be nil.")
      end
      if @center_vertically.nil?
          invalid_properties.push("invalid value for 'center_vertically', center_vertically cannot be nil.")
      end
      if @first_page_number.nil?
          invalid_properties.push("invalid value for 'first_page_number', first_page_number cannot be nil.")
      end
      if @fit_to_pages_tall.nil?
          invalid_properties.push("invalid value for 'fit_to_pages_tall', fit_to_pages_tall cannot be nil.")
      end
      if @fit_to_pages_wide.nil?
          invalid_properties.push("invalid value for 'fit_to_pages_wide', fit_to_pages_wide cannot be nil.")
      end
      if @footer_margin.nil?
          invalid_properties.push("invalid value for 'footer_margin', footer_margin cannot be nil.")
      end
      if @header_margin.nil?
          invalid_properties.push("invalid value for 'header_margin', header_margin cannot be nil.")
      end
      if @is_auto_first_page_number.nil?
          invalid_properties.push("invalid value for 'is_auto_first_page_number', is_auto_first_page_number cannot be nil.")
      end
      if @is_hf_align_margins.nil?
          invalid_properties.push("invalid value for 'is_hf_align_margins', is_hf_align_margins cannot be nil.")
      end
      if @is_hf_diff_first.nil?
          invalid_properties.push("invalid value for 'is_hf_diff_first', is_hf_diff_first cannot be nil.")
      end
      if @is_hf_diff_odd_even.nil?
          invalid_properties.push("invalid value for 'is_hf_diff_odd_even', is_hf_diff_odd_even cannot be nil.")
      end
      if @is_hf_scale_with_doc.nil?
          invalid_properties.push("invalid value for 'is_hf_scale_with_doc', is_hf_scale_with_doc cannot be nil.")
      end
      if @is_percent_scale.nil?
          invalid_properties.push("invalid value for 'is_percent_scale', is_percent_scale cannot be nil.")
      end
      if @left_margin.nil?
          invalid_properties.push("invalid value for 'left_margin', left_margin cannot be nil.")
      end
      if @order.nil?
          invalid_properties.push("invalid value for 'order', order cannot be nil.")
      end
      if @orientation.nil?
          invalid_properties.push("invalid value for 'orientation', orientation cannot be nil.")
      end
      if @paper_size.nil?
          invalid_properties.push("invalid value for 'paper_size', paper_size cannot be nil.")
      end
      if @print_area.nil?
          invalid_properties.push("invalid value for 'print_area', print_area cannot be nil.")
      end
      if @print_comments.nil?
          invalid_properties.push("invalid value for 'print_comments', print_comments cannot be nil.")
      end
      if @print_copies.nil?
          invalid_properties.push("invalid value for 'print_copies', print_copies cannot be nil.")
      end
      if @print_draft.nil?
          invalid_properties.push("invalid value for 'print_draft', print_draft cannot be nil.")
      end
      if @print_errors.nil?
          invalid_properties.push("invalid value for 'print_errors', print_errors cannot be nil.")
      end
      if @print_gridlines.nil?
          invalid_properties.push("invalid value for 'print_gridlines', print_gridlines cannot be nil.")
      end
      if @print_headings.nil?
          invalid_properties.push("invalid value for 'print_headings', print_headings cannot be nil.")
      end
      if @print_quality.nil?
          invalid_properties.push("invalid value for 'print_quality', print_quality cannot be nil.")
      end
      if @print_title_columns.nil?
          invalid_properties.push("invalid value for 'print_title_columns', print_title_columns cannot be nil.")
      end
      if @print_title_rows.nil?
          invalid_properties.push("invalid value for 'print_title_rows', print_title_rows cannot be nil.")
      end
      if @right_margin.nil?
          invalid_properties.push("invalid value for 'right_margin', right_margin cannot be nil.")
      end
      if @top_margin.nil?
          invalid_properties.push("invalid value for 'top_margin', top_margin cannot be nil.")
      end
      if @zoom.nil?
          invalid_properties.push("invalid value for 'zoom', zoom cannot be nil.")
      end
      if @header.nil?
          invalid_properties.push("invalid value for 'header', header cannot be nil.")
      end
      if @footer.nil?
          invalid_properties.push("invalid value for 'footer', footer cannot be nil.")
      end
      if @link.nil?
          invalid_properties.push("invalid value for 'link', link cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @black_and_white.nil?
      return false if @bottom_margin.nil?
      return false if @center_horizontally.nil?
      return false if @center_vertically.nil?
      return false if @first_page_number.nil?
      return false if @fit_to_pages_tall.nil?
      return false if @fit_to_pages_wide.nil?
      return false if @footer_margin.nil?
      return false if @header_margin.nil?
      return false if @is_auto_first_page_number.nil?
      return false if @is_hf_align_margins.nil?
      return false if @is_hf_diff_first.nil?
      return false if @is_hf_diff_odd_even.nil?
      return false if @is_hf_scale_with_doc.nil?
      return false if @is_percent_scale.nil?
      return false if @left_margin.nil?
      return false if @order.nil?
      return false if @orientation.nil?
      return false if @paper_size.nil?
      return false if @print_area.nil?
      return false if @print_comments.nil?
      return false if @print_copies.nil?
      return false if @print_draft.nil?
      return false if @print_errors.nil?
      return false if @print_gridlines.nil?
      return false if @print_headings.nil?
      return false if @print_quality.nil?
      return false if @print_title_columns.nil?
      return false if @print_title_rows.nil?
      return false if @right_margin.nil?
      return false if @top_margin.nil?
      return false if @zoom.nil?
      return false if @header.nil?
      return false if @footer.nil?
      return false if @link.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          black_and_white == o.black_and_white &&
          bottom_margin == o.bottom_margin &&
          center_horizontally == o.center_horizontally &&
          center_vertically == o.center_vertically &&
          first_page_number == o.first_page_number &&
          fit_to_pages_tall == o.fit_to_pages_tall &&
          fit_to_pages_wide == o.fit_to_pages_wide &&
          footer_margin == o.footer_margin &&
          header_margin == o.header_margin &&
          is_auto_first_page_number == o.is_auto_first_page_number &&
          is_hf_align_margins == o.is_hf_align_margins &&
          is_hf_diff_first == o.is_hf_diff_first &&
          is_hf_diff_odd_even == o.is_hf_diff_odd_even &&
          is_hf_scale_with_doc == o.is_hf_scale_with_doc &&
          is_percent_scale == o.is_percent_scale &&
          left_margin == o.left_margin &&
          order == o.order &&
          orientation == o.orientation &&
          paper_size == o.paper_size &&
          print_area == o.print_area &&
          print_comments == o.print_comments &&
          print_copies == o.print_copies &&
          print_draft == o.print_draft &&
          print_errors == o.print_errors &&
          print_gridlines == o.print_gridlines &&
          print_headings == o.print_headings &&
          print_quality == o.print_quality &&
          print_title_columns == o.print_title_columns &&
          print_title_rows == o.print_title_rows &&
          right_margin == o.right_margin &&
          top_margin == o.top_margin &&
          zoom == o.zoom &&
          header == o.header &&
          footer == o.footer &&
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
      [ black_and_white , bottom_margin , center_horizontally , center_vertically , first_page_number , fit_to_pages_tall , fit_to_pages_wide , footer_margin , header_margin , is_auto_first_page_number , is_hf_align_margins , is_hf_diff_first , is_hf_diff_odd_even , is_hf_scale_with_doc , is_percent_scale , left_margin , order , orientation , paper_size , print_area , print_comments , print_copies , print_draft , print_errors , print_gridlines , print_headings , print_quality , print_title_columns , print_title_rows , right_margin , top_margin , zoom , header , footer , link ].hash
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
