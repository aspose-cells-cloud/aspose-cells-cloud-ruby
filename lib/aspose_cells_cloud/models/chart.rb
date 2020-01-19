=begin
--------------------------------------------------------------------------------------------------------------------
Copyright (c) 2020 Aspose.Cells Cloud
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

  class Chart
    attr_accessor :link

    # Gets or sets the angle of the first pie-chart or doughnut-chart slice, in degrees (clockwise from vertical). Applies only to pie, 3-D pie, and doughnut charts, 0 to 360.
    attr_accessor :first_slice_angle

    # Returns a Floor object that represents the walls of a 3-D chart.             
    attr_accessor :floor

    # Gets and sets how to plot the empty cells.
    attr_accessor :plot_empty_cells_type

    # True if Microsoft Excel scales a 3-D chart so that it's closer in size to the equivalent 2-D chart. The RightAngleAxes property must be True.
    attr_accessor :auto_scaling

    # Gets and sets the builtin style.
    attr_accessor :style

    # Gets the chart's series axis.
    attr_accessor :series_axis

    # Gets the chart's Y axis.
    attr_accessor :value_axis

    # Gets or sets a value indicating whether the chart displays a data table.
    attr_accessor :show_data_table

    # Indicates whether the chart is a 3d chart.
    attr_accessor :is3_d

    # Gets the chart area in the worksheet
    attr_accessor :chart_area

    # Represents the elevation of the 3-D chart view, in degrees.
    attr_accessor :elevation

    attr_accessor :side_wall

    # Gets or sets a chart's type.
    attr_accessor :type

    # Gets the chart's title.
    attr_accessor :title

    # Returns a Walls object that represents the walls of a 3-D chart.
    attr_accessor :walls

    attr_accessor :back_wall

    # Represents the chart data table.
    attr_accessor :chart_data_table

    # Returns or sets the height of a 3-D chart as a percentage of the chart width (between 5 and 500 percent).
    attr_accessor :height_percent

    # Returns or sets the space between bar or column clusters, as a percentage of the bar or column width. The value of this property must be between 0 and 500.             
    attr_accessor :gap_width

    # Gets the chart legend.
    attr_accessor :legend

    # Represents the chartShape;
    attr_accessor :chart_object

    # Gets or sets a value indicating whether the chart displays a data table.
    attr_accessor :is_rectangular_cornered

    # Gets the chart's second X axis.
    attr_accessor :second_category_axis

    # Gets the chart's second Y axis.
    attr_accessor :second_value_axis

    # Represents the way the chart is attached to the cells below it.
    attr_accessor :placement

    # Gets and sets the name of the chart.
    attr_accessor :name

    # True if Microsoft Excel resizes the chart to match the size of the chart sheet window.
    attr_accessor :size_with_window

    # True if the chart axes are at right angles.Applies only for 3-D charts(except Column3D and 3-D Pie Charts).
    attr_accessor :right_angle_axes

    # Indicates whether only plot visible cells.
    attr_accessor :plot_visible_cells

    # Gets or sets a value indicating whether the chart legend will be displayed. Default is true.
    attr_accessor :show_legend

    # The source is the data of the pivotTable.If PivotSource is not empty ,the chart is PivotChart.
    attr_accessor :pivot_source

    # Represents the depth of a 3-D chart as a percentage of the chart width (between 20 and 2000 percent).
    attr_accessor :depth_percent

    # Gets and sets the printed chart size.
    attr_accessor :print_size

    # Gets or sets the distance between the data series in a 3-D chart, as a percentage of the marker width.The value of this property must be between 0 and 500.
    attr_accessor :gap_depth

    # Returns all drawing shapes in this chart.
    attr_accessor :shapes

    # True if gridlines are drawn two-dimensionally on a 3-D chart.
    attr_accessor :walls_and_gridlines2_d

    # Gets a SeriesCollection collection representing the data series in the chart.
    attr_accessor :n_series

    # Represents the rotation of the 3-D chart view (the rotation of the plot area around the z-axis, in degrees).
    attr_accessor :rotation_angle

    # Gets the chart's plot area which includes axis tick lables.
    attr_accessor :plot_area

    # Gets the chart's X axis. The property is read only
    attr_accessor :category_axis

    # Returns or sets the perspective for the 3-D chart view. Must be between 0 and 100.This property is ignored if the RightAngleAxes property is True.
    attr_accessor :perspective

    # Indicates whether hide the pivot chart field buttons only when the chart is PivotChart
    attr_accessor :hide_pivot_field_buttons

    # Represents the page setup description in this chart.
    attr_accessor :page_setup


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'link' => :'link',
        :'first_slice_angle' => :'FirstSliceAngle',
        :'floor' => :'Floor',
        :'plot_empty_cells_type' => :'PlotEmptyCellsType',
        :'auto_scaling' => :'AutoScaling',
        :'style' => :'Style',
        :'series_axis' => :'SeriesAxis',
        :'value_axis' => :'ValueAxis',
        :'show_data_table' => :'ShowDataTable',
        :'is3_d' => :'Is3D',
        :'chart_area' => :'ChartArea',
        :'elevation' => :'Elevation',
        :'side_wall' => :'SideWall',
        :'type' => :'Type',
        :'title' => :'Title',
        :'walls' => :'Walls',
        :'back_wall' => :'BackWall',
        :'chart_data_table' => :'ChartDataTable',
        :'height_percent' => :'HeightPercent',
        :'gap_width' => :'GapWidth',
        :'legend' => :'Legend',
        :'chart_object' => :'ChartObject',
        :'is_rectangular_cornered' => :'IsRectangularCornered',
        :'second_category_axis' => :'SecondCategoryAxis',
        :'second_value_axis' => :'SecondValueAxis',
        :'placement' => :'Placement',
        :'name' => :'Name',
        :'size_with_window' => :'SizeWithWindow',
        :'right_angle_axes' => :'RightAngleAxes',
        :'plot_visible_cells' => :'PlotVisibleCells',
        :'show_legend' => :'ShowLegend',
        :'pivot_source' => :'PivotSource',
        :'depth_percent' => :'DepthPercent',
        :'print_size' => :'PrintSize',
        :'gap_depth' => :'GapDepth',
        :'shapes' => :'Shapes',
        :'walls_and_gridlines2_d' => :'WallsAndGridlines2D',
        :'n_series' => :'NSeries',
        :'rotation_angle' => :'RotationAngle',
        :'plot_area' => :'PlotArea',
        :'category_axis' => :'CategoryAxis',
        :'perspective' => :'Perspective',
        :'hide_pivot_field_buttons' => :'HidePivotFieldButtons',
        :'page_setup' => :'PageSetup'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'link' => :'Link',
        :'first_slice_angle' => :'Integer',
        :'floor' => :'LinkElement',
        :'plot_empty_cells_type' => :'String',
        :'auto_scaling' => :'BOOLEAN',
        :'style' => :'Integer',
        :'series_axis' => :'LinkElement',
        :'value_axis' => :'LinkElement',
        :'show_data_table' => :'BOOLEAN',
        :'is3_d' => :'BOOLEAN',
        :'chart_area' => :'LinkElement',
        :'elevation' => :'Integer',
        :'side_wall' => :'LinkElement',
        :'type' => :'String',
        :'title' => :'LinkElement',
        :'walls' => :'LinkElement',
        :'back_wall' => :'LinkElement',
        :'chart_data_table' => :'LinkElement',
        :'height_percent' => :'Integer',
        :'gap_width' => :'Integer',
        :'legend' => :'LinkElement',
        :'chart_object' => :'LinkElement',
        :'is_rectangular_cornered' => :'BOOLEAN',
        :'second_category_axis' => :'LinkElement',
        :'second_value_axis' => :'LinkElement',
        :'placement' => :'String',
        :'name' => :'String',
        :'size_with_window' => :'BOOLEAN',
        :'right_angle_axes' => :'BOOLEAN',
        :'plot_visible_cells' => :'BOOLEAN',
        :'show_legend' => :'BOOLEAN',
        :'pivot_source' => :'String',
        :'depth_percent' => :'Integer',
        :'print_size' => :'String',
        :'gap_depth' => :'Integer',
        :'shapes' => :'LinkElement',
        :'walls_and_gridlines2_d' => :'BOOLEAN',
        :'n_series' => :'LinkElement',
        :'rotation_angle' => :'Integer',
        :'plot_area' => :'LinkElement',
        :'category_axis' => :'LinkElement',
        :'perspective' => :'Integer',
        :'hide_pivot_field_buttons' => :'BOOLEAN',
        :'page_setup' => :'LinkElement'
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

      if attributes.has_key?(:'FirstSliceAngle')
        self.first_slice_angle = attributes[:'FirstSliceAngle']
      end

      if attributes.has_key?(:'Floor')
        self.floor = attributes[:'Floor']
      end

      if attributes.has_key?(:'PlotEmptyCellsType')
        self.plot_empty_cells_type = attributes[:'PlotEmptyCellsType']
      end

      if attributes.has_key?(:'AutoScaling')
        self.auto_scaling = attributes[:'AutoScaling']
      end

      if attributes.has_key?(:'Style')
        self.style = attributes[:'Style']
      end

      if attributes.has_key?(:'SeriesAxis')
        self.series_axis = attributes[:'SeriesAxis']
      end

      if attributes.has_key?(:'ValueAxis')
        self.value_axis = attributes[:'ValueAxis']
      end

      if attributes.has_key?(:'ShowDataTable')
        self.show_data_table = attributes[:'ShowDataTable']
      end

      if attributes.has_key?(:'Is3D')
        self.is3_d = attributes[:'Is3D']
      end

      if attributes.has_key?(:'ChartArea')
        self.chart_area = attributes[:'ChartArea']
      end

      if attributes.has_key?(:'Elevation')
        self.elevation = attributes[:'Elevation']
      end

      if attributes.has_key?(:'SideWall')
        self.side_wall = attributes[:'SideWall']
      end

      if attributes.has_key?(:'Type')
        self.type = attributes[:'Type']
      end

      if attributes.has_key?(:'Title')
        self.title = attributes[:'Title']
      end

      if attributes.has_key?(:'Walls')
        self.walls = attributes[:'Walls']
      end

      if attributes.has_key?(:'BackWall')
        self.back_wall = attributes[:'BackWall']
      end

      if attributes.has_key?(:'ChartDataTable')
        self.chart_data_table = attributes[:'ChartDataTable']
      end

      if attributes.has_key?(:'HeightPercent')
        self.height_percent = attributes[:'HeightPercent']
      end

      if attributes.has_key?(:'GapWidth')
        self.gap_width = attributes[:'GapWidth']
      end

      if attributes.has_key?(:'Legend')
        self.legend = attributes[:'Legend']
      end

      if attributes.has_key?(:'ChartObject')
        self.chart_object = attributes[:'ChartObject']
      end

      if attributes.has_key?(:'IsRectangularCornered')
        self.is_rectangular_cornered = attributes[:'IsRectangularCornered']
      end

      if attributes.has_key?(:'SecondCategoryAxis')
        self.second_category_axis = attributes[:'SecondCategoryAxis']
      end

      if attributes.has_key?(:'SecondValueAxis')
        self.second_value_axis = attributes[:'SecondValueAxis']
      end

      if attributes.has_key?(:'Placement')
        self.placement = attributes[:'Placement']
      end

      if attributes.has_key?(:'Name')
        self.name = attributes[:'Name']
      end

      if attributes.has_key?(:'SizeWithWindow')
        self.size_with_window = attributes[:'SizeWithWindow']
      end

      if attributes.has_key?(:'RightAngleAxes')
        self.right_angle_axes = attributes[:'RightAngleAxes']
      end

      if attributes.has_key?(:'PlotVisibleCells')
        self.plot_visible_cells = attributes[:'PlotVisibleCells']
      end

      if attributes.has_key?(:'ShowLegend')
        self.show_legend = attributes[:'ShowLegend']
      end

      if attributes.has_key?(:'PivotSource')
        self.pivot_source = attributes[:'PivotSource']
      end

      if attributes.has_key?(:'DepthPercent')
        self.depth_percent = attributes[:'DepthPercent']
      end

      if attributes.has_key?(:'PrintSize')
        self.print_size = attributes[:'PrintSize']
      end

      if attributes.has_key?(:'GapDepth')
        self.gap_depth = attributes[:'GapDepth']
      end

      if attributes.has_key?(:'Shapes')
        self.shapes = attributes[:'Shapes']
      end

      if attributes.has_key?(:'WallsAndGridlines2D')
        self.walls_and_gridlines2_d = attributes[:'WallsAndGridlines2D']
      end

      if attributes.has_key?(:'NSeries')
        self.n_series = attributes[:'NSeries']
      end

      if attributes.has_key?(:'RotationAngle')
        self.rotation_angle = attributes[:'RotationAngle']
      end

      if attributes.has_key?(:'PlotArea')
        self.plot_area = attributes[:'PlotArea']
      end

      if attributes.has_key?(:'CategoryAxis')
        self.category_axis = attributes[:'CategoryAxis']
      end

      if attributes.has_key?(:'Perspective')
        self.perspective = attributes[:'Perspective']
      end

      if attributes.has_key?(:'HidePivotFieldButtons')
        self.hide_pivot_field_buttons = attributes[:'HidePivotFieldButtons']
      end

      if attributes.has_key?(:'PageSetup')
        self.page_setup = attributes[:'PageSetup']
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
          first_slice_angle == o.first_slice_angle &&
          floor == o.floor &&
          plot_empty_cells_type == o.plot_empty_cells_type &&
          auto_scaling == o.auto_scaling &&
          style == o.style &&
          series_axis == o.series_axis &&
          value_axis == o.value_axis &&
          show_data_table == o.show_data_table &&
          is3_d == o.is3_d &&
          chart_area == o.chart_area &&
          elevation == o.elevation &&
          side_wall == o.side_wall &&
          type == o.type &&
          title == o.title &&
          walls == o.walls &&
          back_wall == o.back_wall &&
          chart_data_table == o.chart_data_table &&
          height_percent == o.height_percent &&
          gap_width == o.gap_width &&
          legend == o.legend &&
          chart_object == o.chart_object &&
          is_rectangular_cornered == o.is_rectangular_cornered &&
          second_category_axis == o.second_category_axis &&
          second_value_axis == o.second_value_axis &&
          placement == o.placement &&
          name == o.name &&
          size_with_window == o.size_with_window &&
          right_angle_axes == o.right_angle_axes &&
          plot_visible_cells == o.plot_visible_cells &&
          show_legend == o.show_legend &&
          pivot_source == o.pivot_source &&
          depth_percent == o.depth_percent &&
          print_size == o.print_size &&
          gap_depth == o.gap_depth &&
          shapes == o.shapes &&
          walls_and_gridlines2_d == o.walls_and_gridlines2_d &&
          n_series == o.n_series &&
          rotation_angle == o.rotation_angle &&
          plot_area == o.plot_area &&
          category_axis == o.category_axis &&
          perspective == o.perspective &&
          hide_pivot_field_buttons == o.hide_pivot_field_buttons &&
          page_setup == o.page_setup
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [link, first_slice_angle, floor, plot_empty_cells_type, auto_scaling, style, series_axis, value_axis, show_data_table, is3_d, chart_area, elevation, side_wall, type, title, walls, back_wall, chart_data_table, height_percent, gap_width, legend, chart_object, is_rectangular_cornered, second_category_axis, second_value_axis, placement, name, size_with_window, right_angle_axes, plot_visible_cells, show_legend, pivot_source, depth_percent, print_size, gap_depth, shapes, walls_and_gridlines2_d, n_series, rotation_angle, plot_area, category_axis, perspective, hide_pivot_field_buttons, page_setup].hash
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
