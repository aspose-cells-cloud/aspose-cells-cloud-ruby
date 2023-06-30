=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Chartrb.cs">
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

  class Chart
        #            
        attr_accessor :auto_scaling
        #            
        attr_accessor :back_wall
        #            
        attr_accessor :category_axis
        #            
        attr_accessor :chart_area
        #            
        attr_accessor :chart_data_table
        #            
        attr_accessor :chart_object
        #            
        attr_accessor :depth_percent
        #            
        attr_accessor :elevation
        #            
        attr_accessor :first_slice_angle
        #            
        attr_accessor :floor
        #            
        attr_accessor :gap_depth
        #            
        attr_accessor :gap_width
        #            
        attr_accessor :height_percent
        #            
        attr_accessor :hide_pivot_field_buttons
        #            
        attr_accessor :is3_d
        #            
        attr_accessor :is_rectangular_cornered
        #            
        attr_accessor :legend
        #            
        attr_accessor :name
        #            
        attr_accessor :n_series
        #            
        attr_accessor :page_setup
        #            
        attr_accessor :perspective
        #            
        attr_accessor :pivot_source
        #            
        attr_accessor :placement
        #            
        attr_accessor :plot_area
        #            
        attr_accessor :plot_empty_cells_type
        #            
        attr_accessor :plot_visible_cells
        #            
        attr_accessor :print_size
        #            
        attr_accessor :right_angle_axes
        #            
        attr_accessor :rotation_angle
        #            
        attr_accessor :second_category_axis
        #            
        attr_accessor :second_value_axis
        #            
        attr_accessor :series_axis
        #            
        attr_accessor :shapes
        #            
        attr_accessor :show_data_table
        #            
        attr_accessor :show_legend
        #            
        attr_accessor :side_wall
        #            
        attr_accessor :size_with_window
        #            
        attr_accessor :style
        #            
        attr_accessor :title
        #            
        attr_accessor :type
        #            
        attr_accessor :value_axis
        #            
        attr_accessor :walls
        #            
        attr_accessor :walls_and_gridlines2_d
        #            
        attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'auto_scaling' => :'AutoScaling',
        :'back_wall' => :'BackWall',
        :'category_axis' => :'CategoryAxis',
        :'chart_area' => :'ChartArea',
        :'chart_data_table' => :'ChartDataTable',
        :'chart_object' => :'ChartObject',
        :'depth_percent' => :'DepthPercent',
        :'elevation' => :'Elevation',
        :'first_slice_angle' => :'FirstSliceAngle',
        :'floor' => :'Floor',
        :'gap_depth' => :'GapDepth',
        :'gap_width' => :'GapWidth',
        :'height_percent' => :'HeightPercent',
        :'hide_pivot_field_buttons' => :'HidePivotFieldButtons',
        :'is3_d' => :'Is3D',
        :'is_rectangular_cornered' => :'IsRectangularCornered',
        :'legend' => :'Legend',
        :'name' => :'Name',
        :'n_series' => :'NSeries',
        :'page_setup' => :'PageSetup',
        :'perspective' => :'Perspective',
        :'pivot_source' => :'PivotSource',
        :'placement' => :'Placement',
        :'plot_area' => :'PlotArea',
        :'plot_empty_cells_type' => :'PlotEmptyCellsType',
        :'plot_visible_cells' => :'PlotVisibleCells',
        :'print_size' => :'PrintSize',
        :'right_angle_axes' => :'RightAngleAxes',
        :'rotation_angle' => :'RotationAngle',
        :'second_category_axis' => :'SecondCategoryAxis',
        :'second_value_axis' => :'SecondValueAxis',
        :'series_axis' => :'SeriesAxis',
        :'shapes' => :'Shapes',
        :'show_data_table' => :'ShowDataTable',
        :'show_legend' => :'ShowLegend',
        :'side_wall' => :'SideWall',
        :'size_with_window' => :'SizeWithWindow',
        :'style' => :'Style',
        :'title' => :'Title',
        :'type' => :'Type',
        :'value_axis' => :'ValueAxis',
        :'walls' => :'Walls',
        :'walls_and_gridlines2_d' => :'WallsAndGridlines2D',
        :'link' => :'link'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'auto_scaling' => :'BOOLEAN',
        :'back_wall' => :'LinkElement',
        :'category_axis' => :'LinkElement',
        :'chart_area' => :'LinkElement',
        :'chart_data_table' => :'LinkElement',
        :'chart_object' => :'LinkElement',
        :'depth_percent' => :'Integer',
        :'elevation' => :'Integer',
        :'first_slice_angle' => :'Integer',
        :'floor' => :'LinkElement',
        :'gap_depth' => :'Integer',
        :'gap_width' => :'Integer',
        :'height_percent' => :'Integer',
        :'hide_pivot_field_buttons' => :'BOOLEAN',
        :'is3_d' => :'BOOLEAN',
        :'is_rectangular_cornered' => :'BOOLEAN',
        :'legend' => :'LinkElement',
        :'name' => :'String',
        :'n_series' => :'LinkElement',
        :'page_setup' => :'LinkElement',
        :'perspective' => :'Integer',
        :'pivot_source' => :'String',
        :'placement' => :'String',
        :'plot_area' => :'LinkElement',
        :'plot_empty_cells_type' => :'String',
        :'plot_visible_cells' => :'BOOLEAN',
        :'print_size' => :'String',
        :'right_angle_axes' => :'BOOLEAN',
        :'rotation_angle' => :'Integer',
        :'second_category_axis' => :'LinkElement',
        :'second_value_axis' => :'LinkElement',
        :'series_axis' => :'LinkElement',
        :'shapes' => :'LinkElement',
        :'show_data_table' => :'BOOLEAN',
        :'show_legend' => :'BOOLEAN',
        :'side_wall' => :'LinkElement',
        :'size_with_window' => :'BOOLEAN',
        :'style' => :'Integer',
        :'title' => :'LinkElement',
        :'type' => :'String',
        :'value_axis' => :'LinkElement',
        :'walls' => :'LinkElement',
        :'walls_and_gridlines2_d' => :'BOOLEAN',
        :'link' => :'Link'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'AutoScaling')
          self.auto_scaling = attributes[:'AutoScaling']
      end
      if attributes.has_key?(:'BackWall')
          self.back_wall = attributes[:'BackWall']
      end
      if attributes.has_key?(:'CategoryAxis')
          self.category_axis = attributes[:'CategoryAxis']
      end
      if attributes.has_key?(:'ChartArea')
          self.chart_area = attributes[:'ChartArea']
      end
      if attributes.has_key?(:'ChartDataTable')
          self.chart_data_table = attributes[:'ChartDataTable']
      end
      if attributes.has_key?(:'ChartObject')
          self.chart_object = attributes[:'ChartObject']
      end
      if attributes.has_key?(:'DepthPercent')
          self.depth_percent = attributes[:'DepthPercent']
      end
      if attributes.has_key?(:'Elevation')
          self.elevation = attributes[:'Elevation']
      end
      if attributes.has_key?(:'FirstSliceAngle')
          self.first_slice_angle = attributes[:'FirstSliceAngle']
      end
      if attributes.has_key?(:'Floor')
          self.floor = attributes[:'Floor']
      end
      if attributes.has_key?(:'GapDepth')
          self.gap_depth = attributes[:'GapDepth']
      end
      if attributes.has_key?(:'GapWidth')
          self.gap_width = attributes[:'GapWidth']
      end
      if attributes.has_key?(:'HeightPercent')
          self.height_percent = attributes[:'HeightPercent']
      end
      if attributes.has_key?(:'HidePivotFieldButtons')
          self.hide_pivot_field_buttons = attributes[:'HidePivotFieldButtons']
      end
      if attributes.has_key?(:'Is3D')
          self.is3_d = attributes[:'Is3D']
      end
      if attributes.has_key?(:'IsRectangularCornered')
          self.is_rectangular_cornered = attributes[:'IsRectangularCornered']
      end
      if attributes.has_key?(:'Legend')
          self.legend = attributes[:'Legend']
      end
      if attributes.has_key?(:'Name')
          self.name = attributes[:'Name']
      end
      if attributes.has_key?(:'NSeries')
          self.n_series = attributes[:'NSeries']
      end
      if attributes.has_key?(:'PageSetup')
          self.page_setup = attributes[:'PageSetup']
      end
      if attributes.has_key?(:'Perspective')
          self.perspective = attributes[:'Perspective']
      end
      if attributes.has_key?(:'PivotSource')
          self.pivot_source = attributes[:'PivotSource']
      end
      if attributes.has_key?(:'Placement')
          self.placement = attributes[:'Placement']
      end
      if attributes.has_key?(:'PlotArea')
          self.plot_area = attributes[:'PlotArea']
      end
      if attributes.has_key?(:'PlotEmptyCellsType')
          self.plot_empty_cells_type = attributes[:'PlotEmptyCellsType']
      end
      if attributes.has_key?(:'PlotVisibleCells')
          self.plot_visible_cells = attributes[:'PlotVisibleCells']
      end
      if attributes.has_key?(:'PrintSize')
          self.print_size = attributes[:'PrintSize']
      end
      if attributes.has_key?(:'RightAngleAxes')
          self.right_angle_axes = attributes[:'RightAngleAxes']
      end
      if attributes.has_key?(:'RotationAngle')
          self.rotation_angle = attributes[:'RotationAngle']
      end
      if attributes.has_key?(:'SecondCategoryAxis')
          self.second_category_axis = attributes[:'SecondCategoryAxis']
      end
      if attributes.has_key?(:'SecondValueAxis')
          self.second_value_axis = attributes[:'SecondValueAxis']
      end
      if attributes.has_key?(:'SeriesAxis')
          self.series_axis = attributes[:'SeriesAxis']
      end
      if attributes.has_key?(:'Shapes')
          self.shapes = attributes[:'Shapes']
      end
      if attributes.has_key?(:'ShowDataTable')
          self.show_data_table = attributes[:'ShowDataTable']
      end
      if attributes.has_key?(:'ShowLegend')
          self.show_legend = attributes[:'ShowLegend']
      end
      if attributes.has_key?(:'SideWall')
          self.side_wall = attributes[:'SideWall']
      end
      if attributes.has_key?(:'SizeWithWindow')
          self.size_with_window = attributes[:'SizeWithWindow']
      end
      if attributes.has_key?(:'Style')
          self.style = attributes[:'Style']
      end
      if attributes.has_key?(:'Title')
          self.title = attributes[:'Title']
      end
      if attributes.has_key?(:'Type')
          self.type = attributes[:'Type']
      end
      if attributes.has_key?(:'ValueAxis')
          self.value_axis = attributes[:'ValueAxis']
      end
      if attributes.has_key?(:'Walls')
          self.walls = attributes[:'Walls']
      end
      if attributes.has_key?(:'WallsAndGridlines2D')
          self.walls_and_gridlines2_d = attributes[:'WallsAndGridlines2D']
      end
      if attributes.has_key?(:'link')
          self.link = attributes[:'link']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @auto_scaling.nil?
          invalid_properties.push("invalid value for 'auto_scaling', auto_scaling cannot be nil.")
      end
      if @back_wall.nil?
          invalid_properties.push("invalid value for 'back_wall', back_wall cannot be nil.")
      end
      if @category_axis.nil?
          invalid_properties.push("invalid value for 'category_axis', category_axis cannot be nil.")
      end
      if @chart_area.nil?
          invalid_properties.push("invalid value for 'chart_area', chart_area cannot be nil.")
      end
      if @chart_data_table.nil?
          invalid_properties.push("invalid value for 'chart_data_table', chart_data_table cannot be nil.")
      end
      if @chart_object.nil?
          invalid_properties.push("invalid value for 'chart_object', chart_object cannot be nil.")
      end
      if @depth_percent.nil?
          invalid_properties.push("invalid value for 'depth_percent', depth_percent cannot be nil.")
      end
      if @elevation.nil?
          invalid_properties.push("invalid value for 'elevation', elevation cannot be nil.")
      end
      if @first_slice_angle.nil?
          invalid_properties.push("invalid value for 'first_slice_angle', first_slice_angle cannot be nil.")
      end
      if @floor.nil?
          invalid_properties.push("invalid value for 'floor', floor cannot be nil.")
      end
      if @gap_depth.nil?
          invalid_properties.push("invalid value for 'gap_depth', gap_depth cannot be nil.")
      end
      if @gap_width.nil?
          invalid_properties.push("invalid value for 'gap_width', gap_width cannot be nil.")
      end
      if @height_percent.nil?
          invalid_properties.push("invalid value for 'height_percent', height_percent cannot be nil.")
      end
      if @hide_pivot_field_buttons.nil?
          invalid_properties.push("invalid value for 'hide_pivot_field_buttons', hide_pivot_field_buttons cannot be nil.")
      end
      if @is3_d.nil?
          invalid_properties.push("invalid value for 'is3_d', is3_d cannot be nil.")
      end
      if @is_rectangular_cornered.nil?
          invalid_properties.push("invalid value for 'is_rectangular_cornered', is_rectangular_cornered cannot be nil.")
      end
      if @legend.nil?
          invalid_properties.push("invalid value for 'legend', legend cannot be nil.")
      end
      if @name.nil?
          invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end
      if @n_series.nil?
          invalid_properties.push("invalid value for 'n_series', n_series cannot be nil.")
      end
      if @page_setup.nil?
          invalid_properties.push("invalid value for 'page_setup', page_setup cannot be nil.")
      end
      if @perspective.nil?
          invalid_properties.push("invalid value for 'perspective', perspective cannot be nil.")
      end
      if @pivot_source.nil?
          invalid_properties.push("invalid value for 'pivot_source', pivot_source cannot be nil.")
      end
      if @placement.nil?
          invalid_properties.push("invalid value for 'placement', placement cannot be nil.")
      end
      if @plot_area.nil?
          invalid_properties.push("invalid value for 'plot_area', plot_area cannot be nil.")
      end
      if @plot_empty_cells_type.nil?
          invalid_properties.push("invalid value for 'plot_empty_cells_type', plot_empty_cells_type cannot be nil.")
      end
      if @plot_visible_cells.nil?
          invalid_properties.push("invalid value for 'plot_visible_cells', plot_visible_cells cannot be nil.")
      end
      if @print_size.nil?
          invalid_properties.push("invalid value for 'print_size', print_size cannot be nil.")
      end
      if @right_angle_axes.nil?
          invalid_properties.push("invalid value for 'right_angle_axes', right_angle_axes cannot be nil.")
      end
      if @rotation_angle.nil?
          invalid_properties.push("invalid value for 'rotation_angle', rotation_angle cannot be nil.")
      end
      if @second_category_axis.nil?
          invalid_properties.push("invalid value for 'second_category_axis', second_category_axis cannot be nil.")
      end
      if @second_value_axis.nil?
          invalid_properties.push("invalid value for 'second_value_axis', second_value_axis cannot be nil.")
      end
      if @series_axis.nil?
          invalid_properties.push("invalid value for 'series_axis', series_axis cannot be nil.")
      end
      if @shapes.nil?
          invalid_properties.push("invalid value for 'shapes', shapes cannot be nil.")
      end
      if @show_data_table.nil?
          invalid_properties.push("invalid value for 'show_data_table', show_data_table cannot be nil.")
      end
      if @show_legend.nil?
          invalid_properties.push("invalid value for 'show_legend', show_legend cannot be nil.")
      end
      if @side_wall.nil?
          invalid_properties.push("invalid value for 'side_wall', side_wall cannot be nil.")
      end
      if @size_with_window.nil?
          invalid_properties.push("invalid value for 'size_with_window', size_with_window cannot be nil.")
      end
      if @style.nil?
          invalid_properties.push("invalid value for 'style', style cannot be nil.")
      end
      if @title.nil?
          invalid_properties.push("invalid value for 'title', title cannot be nil.")
      end
      if @type.nil?
          invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end
      if @value_axis.nil?
          invalid_properties.push("invalid value for 'value_axis', value_axis cannot be nil.")
      end
      if @walls.nil?
          invalid_properties.push("invalid value for 'walls', walls cannot be nil.")
      end
      if @walls_and_gridlines2_d.nil?
          invalid_properties.push("invalid value for 'walls_and_gridlines2_d', walls_and_gridlines2_d cannot be nil.")
      end
      if @link.nil?
          invalid_properties.push("invalid value for 'link', link cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @auto_scaling.nil?
      return false if @back_wall.nil?
      return false if @category_axis.nil?
      return false if @chart_area.nil?
      return false if @chart_data_table.nil?
      return false if @chart_object.nil?
      return false if @depth_percent.nil?
      return false if @elevation.nil?
      return false if @first_slice_angle.nil?
      return false if @floor.nil?
      return false if @gap_depth.nil?
      return false if @gap_width.nil?
      return false if @height_percent.nil?
      return false if @hide_pivot_field_buttons.nil?
      return false if @is3_d.nil?
      return false if @is_rectangular_cornered.nil?
      return false if @legend.nil?
      return false if @name.nil?
      return false if @n_series.nil?
      return false if @page_setup.nil?
      return false if @perspective.nil?
      return false if @pivot_source.nil?
      return false if @placement.nil?
      return false if @plot_area.nil?
      return false if @plot_empty_cells_type.nil?
      return false if @plot_visible_cells.nil?
      return false if @print_size.nil?
      return false if @right_angle_axes.nil?
      return false if @rotation_angle.nil?
      return false if @second_category_axis.nil?
      return false if @second_value_axis.nil?
      return false if @series_axis.nil?
      return false if @shapes.nil?
      return false if @show_data_table.nil?
      return false if @show_legend.nil?
      return false if @side_wall.nil?
      return false if @size_with_window.nil?
      return false if @style.nil?
      return false if @title.nil?
      return false if @type.nil?
      return false if @value_axis.nil?
      return false if @walls.nil?
      return false if @walls_and_gridlines2_d.nil?
      return false if @link.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          auto_scaling == o.auto_scaling &&
          back_wall == o.back_wall &&
          category_axis == o.category_axis &&
          chart_area == o.chart_area &&
          chart_data_table == o.chart_data_table &&
          chart_object == o.chart_object &&
          depth_percent == o.depth_percent &&
          elevation == o.elevation &&
          first_slice_angle == o.first_slice_angle &&
          floor == o.floor &&
          gap_depth == o.gap_depth &&
          gap_width == o.gap_width &&
          height_percent == o.height_percent &&
          hide_pivot_field_buttons == o.hide_pivot_field_buttons &&
          is3_d == o.is3_d &&
          is_rectangular_cornered == o.is_rectangular_cornered &&
          legend == o.legend &&
          name == o.name &&
          n_series == o.n_series &&
          page_setup == o.page_setup &&
          perspective == o.perspective &&
          pivot_source == o.pivot_source &&
          placement == o.placement &&
          plot_area == o.plot_area &&
          plot_empty_cells_type == o.plot_empty_cells_type &&
          plot_visible_cells == o.plot_visible_cells &&
          print_size == o.print_size &&
          right_angle_axes == o.right_angle_axes &&
          rotation_angle == o.rotation_angle &&
          second_category_axis == o.second_category_axis &&
          second_value_axis == o.second_value_axis &&
          series_axis == o.series_axis &&
          shapes == o.shapes &&
          show_data_table == o.show_data_table &&
          show_legend == o.show_legend &&
          side_wall == o.side_wall &&
          size_with_window == o.size_with_window &&
          style == o.style &&
          title == o.title &&
          type == o.type &&
          value_axis == o.value_axis &&
          walls == o.walls &&
          walls_and_gridlines2_d == o.walls_and_gridlines2_d &&
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
      [ auto_scaling , back_wall , category_axis , chart_area , chart_data_table , chart_object , depth_percent , elevation , first_slice_angle , floor , gap_depth , gap_width , height_percent , hide_pivot_field_buttons , is3_d , is_rectangular_cornered , legend , name , n_series , page_setup , perspective , pivot_source , placement , plot_area , plot_empty_cells_type , plot_visible_cells , print_size , right_angle_axes , rotation_angle , second_category_axis , second_value_axis , series_axis , shapes , show_data_table , show_legend , side_wall , size_with_window , style , title , type , value_axis , walls , walls_and_gridlines2_d , link ].hash
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
