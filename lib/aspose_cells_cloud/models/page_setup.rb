=begin
--------------------------------------------------------------------------------------------------------------------
Copyright (c) 2021 Aspose.Cells Cloud
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
--------------------------------------------------------------------------------------------------------------------

=end

require 'date'

module AsposeCellsCloud
  # excel print page setting
  class PageSetup
    attr_accessor :link

    # True means that the header/footer of the first page is different with other pages.
    attr_accessor :is_hf_diff_first

    # Represents the number of pages wide the worksheet will be scaled to when it's printed.
    attr_accessor :fit_to_pages_wide

    # Represents the print quality.
    attr_accessor :print_quality

    # Represents if the sheet will be printed without graphics.
    attr_accessor :print_draft

    # Represents the first page number that will be used when this sheet is printed.
    attr_accessor :first_page_number

    # Represents the size of the paper.
    attr_accessor :paper_size

    # Represents the way comments are printed with the sheet.
    attr_accessor :print_comments

    # Specifies the type of print error displayed.
    attr_accessor :print_errors

    # Represent if the sheet is printed centered vertically.
    attr_accessor :center_vertically

    # If this property is False, the FitToPagesWide and FitToPagesTall properties control how the worksheet is scaled.
    attr_accessor :is_percent_scale

    # Represents if elements of the document will be printed in black and white. True/False
    attr_accessor :black_and_white

    # Represents the columns that contain the cells to be repeated on the left side of each page.
    attr_accessor :print_title_columns

    # Indicates whether header and footer margins are aligned with the page margins.Only applies for Excel 2007.
    attr_accessor :is_hf_align_margins

    # Represents the range to be printed.
    attr_accessor :print_area

    # Represents the distance from the bottom of the page to the footer, in unit of centimeters.
    attr_accessor :footer_margin

    # Represents the size of the left margin, in unit of centimeters.
    attr_accessor :left_margin

    # Represent if the sheet is printed centered horizontally.
    attr_accessor :center_horizontally

    # Represents the distance from the top of the page to the header, in unit of centimeters.
    attr_accessor :header_margin

    # Represents the size of the top margin, in unit of centimeters.
    attr_accessor :top_margin

    # Represents the page footor.
    attr_accessor :footer

    # Represents the number of pages tall the worksheet will be scaled to when it's printed.
    attr_accessor :fit_to_pages_tall

    # Indicates whether header and footer are scaled with document scaling.Only applies for Excel 2007. 
    attr_accessor :is_hf_scale_with_doc

    # Represents if row and column headings are printed with this page.
    attr_accessor :print_headings

    # Represents the scaling factor in percent. It should be between 10 and 400.
    attr_accessor :zoom

    # Represents the rows that contain the cells to be repeated at the top of each page.
    attr_accessor :print_title_rows

    # Represents the order that Microsoft Excel uses to number pages when printing a large worksheet.
    attr_accessor :order

    # Get and sets number of copies to print.
    attr_accessor :print_copies

    # Represents page print orientation.
    attr_accessor :orientation

    # Represents the size of the right margin, in unit of centimeters.
    attr_accessor :right_margin

    # Represents if cell gridlines are printed on the page.
    attr_accessor :print_gridlines

    # Indicates whether the first the page number is automatically assigned.
    attr_accessor :is_auto_first_page_number

    # Represents the page header.
    attr_accessor :header

    # True means that the header/footer of the odd pages is different with odd pages.
    attr_accessor :is_hf_diff_odd_even

    # Represents the size of the bottom margin, in unit of centimeters.
    attr_accessor :bottom_margin


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'link' => :'link',
        :'is_hf_diff_first' => :'IsHFDiffFirst',
        :'fit_to_pages_wide' => :'FitToPagesWide',
        :'print_quality' => :'PrintQuality',
        :'print_draft' => :'PrintDraft',
        :'first_page_number' => :'FirstPageNumber',
        :'paper_size' => :'PaperSize',
        :'print_comments' => :'PrintComments',
        :'print_errors' => :'PrintErrors',
        :'center_vertically' => :'CenterVertically',
        :'is_percent_scale' => :'IsPercentScale',
        :'black_and_white' => :'BlackAndWhite',
        :'print_title_columns' => :'PrintTitleColumns',
        :'is_hf_align_margins' => :'IsHFAlignMargins',
        :'print_area' => :'PrintArea',
        :'footer_margin' => :'FooterMargin',
        :'left_margin' => :'LeftMargin',
        :'center_horizontally' => :'CenterHorizontally',
        :'header_margin' => :'HeaderMargin',
        :'top_margin' => :'TopMargin',
        :'footer' => :'Footer',
        :'fit_to_pages_tall' => :'FitToPagesTall',
        :'is_hf_scale_with_doc' => :'IsHFScaleWithDoc',
        :'print_headings' => :'PrintHeadings',
        :'zoom' => :'Zoom',
        :'print_title_rows' => :'PrintTitleRows',
        :'order' => :'Order',
        :'print_copies' => :'PrintCopies',
        :'orientation' => :'Orientation',
        :'right_margin' => :'RightMargin',
        :'print_gridlines' => :'PrintGridlines',
        :'is_auto_first_page_number' => :'IsAutoFirstPageNumber',
        :'header' => :'Header',
        :'is_hf_diff_odd_even' => :'IsHFDiffOddEven',
        :'bottom_margin' => :'BottomMargin'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'link' => :'Link',
        :'is_hf_diff_first' => :'BOOLEAN',
        :'fit_to_pages_wide' => :'Integer',
        :'print_quality' => :'Integer',
        :'print_draft' => :'BOOLEAN',
        :'first_page_number' => :'Integer',
        :'paper_size' => :'String',
        :'print_comments' => :'String',
        :'print_errors' => :'String',
        :'center_vertically' => :'BOOLEAN',
        :'is_percent_scale' => :'BOOLEAN',
        :'black_and_white' => :'BOOLEAN',
        :'print_title_columns' => :'String',
        :'is_hf_align_margins' => :'BOOLEAN',
        :'print_area' => :'String',
        :'footer_margin' => :'Float',
        :'left_margin' => :'Float',
        :'center_horizontally' => :'BOOLEAN',
        :'header_margin' => :'Float',
        :'top_margin' => :'Float',
        :'footer' => :'Array<PageSection>',
        :'fit_to_pages_tall' => :'Integer',
        :'is_hf_scale_with_doc' => :'BOOLEAN',
        :'print_headings' => :'BOOLEAN',
        :'zoom' => :'Integer',
        :'print_title_rows' => :'String',
        :'order' => :'String',
        :'print_copies' => :'Integer',
        :'orientation' => :'String',
        :'right_margin' => :'Float',
        :'print_gridlines' => :'BOOLEAN',
        :'is_auto_first_page_number' => :'BOOLEAN',
        :'header' => :'Array<PageSection>',
        :'is_hf_diff_odd_even' => :'BOOLEAN',
        :'bottom_margin' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'link')
        self.link = attributes[:'link']
      end

      if attributes.has_key?(:'IsHFDiffFirst')
        self.is_hf_diff_first = attributes[:'IsHFDiffFirst']
      end

      if attributes.has_key?(:'FitToPagesWide')
        self.fit_to_pages_wide = attributes[:'FitToPagesWide']
      end

      if attributes.has_key?(:'PrintQuality')
        self.print_quality = attributes[:'PrintQuality']
      end

      if attributes.has_key?(:'PrintDraft')
        self.print_draft = attributes[:'PrintDraft']
      end

      if attributes.has_key?(:'FirstPageNumber')
        self.first_page_number = attributes[:'FirstPageNumber']
      end

      if attributes.has_key?(:'PaperSize')
        self.paper_size = attributes[:'PaperSize']
      end

      if attributes.has_key?(:'PrintComments')
        self.print_comments = attributes[:'PrintComments']
      end

      if attributes.has_key?(:'PrintErrors')
        self.print_errors = attributes[:'PrintErrors']
      end

      if attributes.has_key?(:'CenterVertically')
        self.center_vertically = attributes[:'CenterVertically']
      end

      if attributes.has_key?(:'IsPercentScale')
        self.is_percent_scale = attributes[:'IsPercentScale']
      end

      if attributes.has_key?(:'BlackAndWhite')
        self.black_and_white = attributes[:'BlackAndWhite']
      end

      if attributes.has_key?(:'PrintTitleColumns')
        self.print_title_columns = attributes[:'PrintTitleColumns']
      end

      if attributes.has_key?(:'IsHFAlignMargins')
        self.is_hf_align_margins = attributes[:'IsHFAlignMargins']
      end

      if attributes.has_key?(:'PrintArea')
        self.print_area = attributes[:'PrintArea']
      end

      if attributes.has_key?(:'FooterMargin')
        self.footer_margin = attributes[:'FooterMargin']
      end

      if attributes.has_key?(:'LeftMargin')
        self.left_margin = attributes[:'LeftMargin']
      end

      if attributes.has_key?(:'CenterHorizontally')
        self.center_horizontally = attributes[:'CenterHorizontally']
      end

      if attributes.has_key?(:'HeaderMargin')
        self.header_margin = attributes[:'HeaderMargin']
      end

      if attributes.has_key?(:'TopMargin')
        self.top_margin = attributes[:'TopMargin']
      end

      if attributes.has_key?(:'Footer')
        if (value = attributes[:'Footer']).is_a?(Array)
          self.footer = value
        end
      end

      if attributes.has_key?(:'FitToPagesTall')
        self.fit_to_pages_tall = attributes[:'FitToPagesTall']
      end

      if attributes.has_key?(:'IsHFScaleWithDoc')
        self.is_hf_scale_with_doc = attributes[:'IsHFScaleWithDoc']
      end

      if attributes.has_key?(:'PrintHeadings')
        self.print_headings = attributes[:'PrintHeadings']
      end

      if attributes.has_key?(:'Zoom')
        self.zoom = attributes[:'Zoom']
      end

      if attributes.has_key?(:'PrintTitleRows')
        self.print_title_rows = attributes[:'PrintTitleRows']
      end

      if attributes.has_key?(:'Order')
        self.order = attributes[:'Order']
      end

      if attributes.has_key?(:'PrintCopies')
        self.print_copies = attributes[:'PrintCopies']
      end

      if attributes.has_key?(:'Orientation')
        self.orientation = attributes[:'Orientation']
      end

      if attributes.has_key?(:'RightMargin')
        self.right_margin = attributes[:'RightMargin']
      end

      if attributes.has_key?(:'PrintGridlines')
        self.print_gridlines = attributes[:'PrintGridlines']
      end

      if attributes.has_key?(:'IsAutoFirstPageNumber')
        self.is_auto_first_page_number = attributes[:'IsAutoFirstPageNumber']
      end

      if attributes.has_key?(:'Header')
        if (value = attributes[:'Header']).is_a?(Array)
          self.header = value
        end
      end

      if attributes.has_key?(:'IsHFDiffOddEven')
        self.is_hf_diff_odd_even = attributes[:'IsHFDiffOddEven']
      end

      if attributes.has_key?(:'BottomMargin')
        self.bottom_margin = attributes[:'BottomMargin']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          link == o.link &&
          is_hf_diff_first == o.is_hf_diff_first &&
          fit_to_pages_wide == o.fit_to_pages_wide &&
          print_quality == o.print_quality &&
          print_draft == o.print_draft &&
          first_page_number == o.first_page_number &&
          paper_size == o.paper_size &&
          print_comments == o.print_comments &&
          print_errors == o.print_errors &&
          center_vertically == o.center_vertically &&
          is_percent_scale == o.is_percent_scale &&
          black_and_white == o.black_and_white &&
          print_title_columns == o.print_title_columns &&
          is_hf_align_margins == o.is_hf_align_margins &&
          print_area == o.print_area &&
          footer_margin == o.footer_margin &&
          left_margin == o.left_margin &&
          center_horizontally == o.center_horizontally &&
          header_margin == o.header_margin &&
          top_margin == o.top_margin &&
          footer == o.footer &&
          fit_to_pages_tall == o.fit_to_pages_tall &&
          is_hf_scale_with_doc == o.is_hf_scale_with_doc &&
          print_headings == o.print_headings &&
          zoom == o.zoom &&
          print_title_rows == o.print_title_rows &&
          order == o.order &&
          print_copies == o.print_copies &&
          orientation == o.orientation &&
          right_margin == o.right_margin &&
          print_gridlines == o.print_gridlines &&
          is_auto_first_page_number == o.is_auto_first_page_number &&
          header == o.header &&
          is_hf_diff_odd_even == o.is_hf_diff_odd_even &&
          bottom_margin == o.bottom_margin
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [link, is_hf_diff_first, fit_to_pages_wide, print_quality, print_draft, first_page_number, paper_size, print_comments, print_errors, center_vertically, is_percent_scale, black_and_white, print_title_columns, is_hf_align_margins, print_area, footer_margin, left_margin, center_horizontally, header_margin, top_margin, footer, fit_to_pages_tall, is_hf_scale_with_doc, print_headings, zoom, print_title_rows, order, print_copies, orientation, right_margin, print_gridlines, is_auto_first_page_number, header, is_hf_diff_odd_even, bottom_margin].hash
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
