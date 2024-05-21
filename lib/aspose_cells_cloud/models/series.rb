=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Seriesrb.cs">
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

  class Series
        #Represents the background area of Series object.            
        attr_accessor :area
        #Gets or sets the 3D shape type used with the 3-D bar or column chart.            
        attr_accessor :bar3_d_shape_type
        #Represents border of Series object.            
        attr_accessor :border
        #Gets or sets the scale factor for bubbles in the specified chart group.                         It can be an integer value from 0 (zero) to 300,                         corresponding to a percentage of the default size.                        Applies only to bubble charts.            
        attr_accessor :bubble_scale
        #Gets or sets the bubble sizes values of the chart series.            
        attr_accessor :bubble_sizes
        #Gets the number of the data values.            
        attr_accessor :count_of_data_values
        #Represents the DataLabels object for the specified ASeries.            
        attr_accessor :data_labels
        #Gets the series's name that displays on the chart graph.            
        attr_accessor :display_name
        #Returns or sets the size of the hole in a doughnut chart group.                         The hole size is expressed as a percentage of the chart size, between 10 and 90 percent.            
        attr_accessor :doughnut_hole_size
        #Returns a  object that represents the down bars on a line chart.                        Applies only to line charts.            
        attr_accessor :down_bars
        #Returns a  object that represents the drop lines for a series on the line chart or area chart.                        Applies only to line chart or area charts.            
        attr_accessor :drop_lines
        #The distance of an open pie slice from the center of the pie chart is expressed as a percentage of the pie diameter.            
        attr_accessor :explosion
        #Gets or sets the angle of the first pie-chart or doughnut-chart slice, in degrees (clockwise from vertical).                         Applies only to pie, 3-D pie, and doughnut charts, 0 to 360.            
        attr_accessor :first_slice_angle
        #Returns or sets the space between bar or column clusters, as a percentage of the bar or column width.                        The value of this property must be between 0 and 500.            
        attr_accessor :gap_width
        #True if the series has a three-dimensional appearance.                         Applies only to bubble charts.            
        attr_accessor :has3_d_effect
        #True if the chart has drop lines.                        Applies only to line chart or area charts.            
        attr_accessor :has_drop_lines
        #True if the line chart has high-low lines.                          Applies only to line charts.            
        attr_accessor :has_hi_lo_lines
        #True if the series has leader lines.            
        attr_accessor :has_leader_lines
        #True if a radar chart has category axis labels. Applies only to radar charts.            
        attr_accessor :has_radar_axis_labels
        #True if a stacked column chart or bar chart has series lines or                        if a Pie of Pie chart or Bar of Pie chart has connector lines between the two sections.                         Applies only to stacked column charts, bar charts, Pie of Pie charts, or Bar of Pie charts.            
        attr_accessor :has_series_lines
        #True if a line chart has up and down bars.                        Applies only to line charts.            
        attr_accessor :has_up_down_bars
        #Returns a HiLoLines object that represents the high-low lines for a series on a line chart.                         Applies only to line charts.            
        attr_accessor :hi_lo_lines
        #Indicates whether the threshold value is automatic.            
        attr_accessor :is_auto_split
        #Represents if the color of points is varied.                         The chart must contain only one series.            
        attr_accessor :is_color_varied
        #Represents leader lines on a chart. Leader lines connect data labels to data points.                         This object isn’t a collection; there’s no object that represents a single leader line.            
        attr_accessor :leader_lines
        #Gets the legend entry according to this series.            
        attr_accessor :legend_entry
        #Gets the marker.            
        attr_accessor :marker
        #Gets or sets the name of the data series.            
        attr_accessor :name
        #Specifies how bars and columns are positioned.                        Can be a value between – 100 and 100.                         Applies only to 2-D bar and 2-D column charts.            
        attr_accessor :overlap
        #Indicates if this series is plotted on second value axis.            
        attr_accessor :plot_on_second_axis
        #Gets the collection of points in a series in a chart.            
        attr_accessor :points
        #Returns or sets the size of the secondary section of either a pie of pie chart or a bar of pie chart,                         as a percentage of the size of the primary pie.                        Can be a value from 5 to 200.            
        attr_accessor :second_plot_size
        #Returns a SeriesLines object that represents the series lines for a stacked bar chart or a stacked column chart.                        Applies only to stacked bar and stacked column charts.            
        attr_accessor :series_lines
        #True if the series has a shadow.            
        attr_accessor :shadow
        #True if negative bubbles are shown for the chart group. Valid only for bubble charts.            
        attr_accessor :show_negative_bubbles
        #Gets or sets what the bubble size represents on a bubble chart.            
        attr_accessor :size_represents
        #Represents curve smoothing.                         True if curve smoothing is turned on for the line chart or scatter chart.                        Applies only to line and scatter connected by lines charts.            
        attr_accessor :smooth
        #Returns or sets a value that how to determine which data points are in the second pie or bar on a pie of pie or bar of                        pie chart.            
        attr_accessor :split_type
        #Returns or sets a value that shall be used to determine which data points are in the second pie or bar on                        a pie of pie or bar of pie chart.            
        attr_accessor :split_value
        #Returns an object that represents a collection of all the trendlines for the series.            
        attr_accessor :trend_lines
        #Gets or sets a data series' type.            
        attr_accessor :type
        #Returns an DropBars object that represents the up bars on a line chart.                        Applies only to line charts.            
        attr_accessor :up_bars
        #Represents the data of the chart series.            
        attr_accessor :values
        #Represents X direction error bar of the series.            
        attr_accessor :x_error_bar
        #Represents the x values of the chart series.            
        attr_accessor :x_values
        #Represents Y direction error bar of the series.            
        attr_accessor :y_error_bar
        #            
        attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'area' => :'Area',
        :'bar3_d_shape_type' => :'Bar3DShapeType',
        :'border' => :'Border',
        :'bubble_scale' => :'BubbleScale',
        :'bubble_sizes' => :'BubbleSizes',
        :'count_of_data_values' => :'CountOfDataValues',
        :'data_labels' => :'DataLabels',
        :'display_name' => :'DisplayName',
        :'doughnut_hole_size' => :'DoughnutHoleSize',
        :'down_bars' => :'DownBars',
        :'drop_lines' => :'DropLines',
        :'explosion' => :'Explosion',
        :'first_slice_angle' => :'FirstSliceAngle',
        :'gap_width' => :'GapWidth',
        :'has3_d_effect' => :'Has3DEffect',
        :'has_drop_lines' => :'HasDropLines',
        :'has_hi_lo_lines' => :'HasHiLoLines',
        :'has_leader_lines' => :'HasLeaderLines',
        :'has_radar_axis_labels' => :'HasRadarAxisLabels',
        :'has_series_lines' => :'HasSeriesLines',
        :'has_up_down_bars' => :'HasUpDownBars',
        :'hi_lo_lines' => :'HiLoLines',
        :'is_auto_split' => :'IsAutoSplit',
        :'is_color_varied' => :'IsColorVaried',
        :'leader_lines' => :'LeaderLines',
        :'legend_entry' => :'LegendEntry',
        :'marker' => :'Marker',
        :'name' => :'Name',
        :'overlap' => :'Overlap',
        :'plot_on_second_axis' => :'PlotOnSecondAxis',
        :'points' => :'Points',
        :'second_plot_size' => :'SecondPlotSize',
        :'series_lines' => :'SeriesLines',
        :'shadow' => :'Shadow',
        :'show_negative_bubbles' => :'ShowNegativeBubbles',
        :'size_represents' => :'SizeRepresents',
        :'smooth' => :'Smooth',
        :'split_type' => :'SplitType',
        :'split_value' => :'SplitValue',
        :'trend_lines' => :'TrendLines',
        :'type' => :'Type',
        :'up_bars' => :'UpBars',
        :'values' => :'Values',
        :'x_error_bar' => :'XErrorBar',
        :'x_values' => :'XValues',
        :'y_error_bar' => :'YErrorBar',
        :'link' => :'link'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'area' => :'Area',
        :'bar3_d_shape_type' => :'String',
        :'border' => :'Line',
        :'bubble_scale' => :'Integer',
        :'bubble_sizes' => :'String',
        :'count_of_data_values' => :'Integer',
        :'data_labels' => :'DataLabels',
        :'display_name' => :'String',
        :'doughnut_hole_size' => :'Integer',
        :'down_bars' => :'DropBars',
        :'drop_lines' => :'Line',
        :'explosion' => :'Integer',
        :'first_slice_angle' => :'Integer',
        :'gap_width' => :'Integer',
        :'has3_d_effect' => :'BOOLEAN',
        :'has_drop_lines' => :'BOOLEAN',
        :'has_hi_lo_lines' => :'BOOLEAN',
        :'has_leader_lines' => :'BOOLEAN',
        :'has_radar_axis_labels' => :'BOOLEAN',
        :'has_series_lines' => :'BOOLEAN',
        :'has_up_down_bars' => :'BOOLEAN',
        :'hi_lo_lines' => :'Line',
        :'is_auto_split' => :'BOOLEAN',
        :'is_color_varied' => :'BOOLEAN',
        :'leader_lines' => :'Line',
        :'legend_entry' => :'LegendEntry',
        :'marker' => :'Marker',
        :'name' => :'String',
        :'overlap' => :'Integer',
        :'plot_on_second_axis' => :'BOOLEAN',
        :'points' => :'LinkElement',
        :'second_plot_size' => :'Integer',
        :'series_lines' => :'Line',
        :'shadow' => :'BOOLEAN',
        :'show_negative_bubbles' => :'BOOLEAN',
        :'size_represents' => :'String',
        :'smooth' => :'BOOLEAN',
        :'split_type' => :'String',
        :'split_value' => :'Float',
        :'trend_lines' => :'Trendlines',
        :'type' => :'String',
        :'up_bars' => :'DropBars',
        :'values' => :'String',
        :'x_error_bar' => :'ErrorBar',
        :'x_values' => :'String',
        :'y_error_bar' => :'ErrorBar',
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
      if attributes.has_key?(:'Bar3DShapeType')
          self.bar3_d_shape_type = attributes[:'Bar3DShapeType']
      end
      if attributes.has_key?(:'Border')
          self.border = attributes[:'Border']
      end
      if attributes.has_key?(:'BubbleScale')
          self.bubble_scale = attributes[:'BubbleScale']
      end
      if attributes.has_key?(:'BubbleSizes')
          self.bubble_sizes = attributes[:'BubbleSizes']
      end
      if attributes.has_key?(:'CountOfDataValues')
          self.count_of_data_values = attributes[:'CountOfDataValues']
      end
      if attributes.has_key?(:'DataLabels')
          self.data_labels = attributes[:'DataLabels']
      end
      if attributes.has_key?(:'DisplayName')
          self.display_name = attributes[:'DisplayName']
      end
      if attributes.has_key?(:'DoughnutHoleSize')
          self.doughnut_hole_size = attributes[:'DoughnutHoleSize']
      end
      if attributes.has_key?(:'DownBars')
          self.down_bars = attributes[:'DownBars']
      end
      if attributes.has_key?(:'DropLines')
          self.drop_lines = attributes[:'DropLines']
      end
      if attributes.has_key?(:'Explosion')
          self.explosion = attributes[:'Explosion']
      end
      if attributes.has_key?(:'FirstSliceAngle')
          self.first_slice_angle = attributes[:'FirstSliceAngle']
      end
      if attributes.has_key?(:'GapWidth')
          self.gap_width = attributes[:'GapWidth']
      end
      if attributes.has_key?(:'Has3DEffect')
          self.has3_d_effect = attributes[:'Has3DEffect']
      end
      if attributes.has_key?(:'HasDropLines')
          self.has_drop_lines = attributes[:'HasDropLines']
      end
      if attributes.has_key?(:'HasHiLoLines')
          self.has_hi_lo_lines = attributes[:'HasHiLoLines']
      end
      if attributes.has_key?(:'HasLeaderLines')
          self.has_leader_lines = attributes[:'HasLeaderLines']
      end
      if attributes.has_key?(:'HasRadarAxisLabels')
          self.has_radar_axis_labels = attributes[:'HasRadarAxisLabels']
      end
      if attributes.has_key?(:'HasSeriesLines')
          self.has_series_lines = attributes[:'HasSeriesLines']
      end
      if attributes.has_key?(:'HasUpDownBars')
          self.has_up_down_bars = attributes[:'HasUpDownBars']
      end
      if attributes.has_key?(:'HiLoLines')
          self.hi_lo_lines = attributes[:'HiLoLines']
      end
      if attributes.has_key?(:'IsAutoSplit')
          self.is_auto_split = attributes[:'IsAutoSplit']
      end
      if attributes.has_key?(:'IsColorVaried')
          self.is_color_varied = attributes[:'IsColorVaried']
      end
      if attributes.has_key?(:'LeaderLines')
          self.leader_lines = attributes[:'LeaderLines']
      end
      if attributes.has_key?(:'LegendEntry')
          self.legend_entry = attributes[:'LegendEntry']
      end
      if attributes.has_key?(:'Marker')
          self.marker = attributes[:'Marker']
      end
      if attributes.has_key?(:'Name')
          self.name = attributes[:'Name']
      end
      if attributes.has_key?(:'Overlap')
          self.overlap = attributes[:'Overlap']
      end
      if attributes.has_key?(:'PlotOnSecondAxis')
          self.plot_on_second_axis = attributes[:'PlotOnSecondAxis']
      end
      if attributes.has_key?(:'Points')
          self.points = attributes[:'Points']
      end
      if attributes.has_key?(:'SecondPlotSize')
          self.second_plot_size = attributes[:'SecondPlotSize']
      end
      if attributes.has_key?(:'SeriesLines')
          self.series_lines = attributes[:'SeriesLines']
      end
      if attributes.has_key?(:'Shadow')
          self.shadow = attributes[:'Shadow']
      end
      if attributes.has_key?(:'ShowNegativeBubbles')
          self.show_negative_bubbles = attributes[:'ShowNegativeBubbles']
      end
      if attributes.has_key?(:'SizeRepresents')
          self.size_represents = attributes[:'SizeRepresents']
      end
      if attributes.has_key?(:'Smooth')
          self.smooth = attributes[:'Smooth']
      end
      if attributes.has_key?(:'SplitType')
          self.split_type = attributes[:'SplitType']
      end
      if attributes.has_key?(:'SplitValue')
          self.split_value = attributes[:'SplitValue']
      end
      if attributes.has_key?(:'TrendLines')
          self.trend_lines = attributes[:'TrendLines']
      end
      if attributes.has_key?(:'Type')
          self.type = attributes[:'Type']
      end
      if attributes.has_key?(:'UpBars')
          self.up_bars = attributes[:'UpBars']
      end
      if attributes.has_key?(:'Values')
          self.values = attributes[:'Values']
      end
      if attributes.has_key?(:'XErrorBar')
          self.x_error_bar = attributes[:'XErrorBar']
      end
      if attributes.has_key?(:'XValues')
          self.x_values = attributes[:'XValues']
      end
      if attributes.has_key?(:'YErrorBar')
          self.y_error_bar = attributes[:'YErrorBar']
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
      if @bar3_d_shape_type.nil?
          invalid_properties.push("invalid value for 'bar3_d_shape_type', bar3_d_shape_type cannot be nil.")
      end
      if @border.nil?
          invalid_properties.push("invalid value for 'border', border cannot be nil.")
      end
      if @bubble_scale.nil?
          invalid_properties.push("invalid value for 'bubble_scale', bubble_scale cannot be nil.")
      end
      if @bubble_sizes.nil?
          invalid_properties.push("invalid value for 'bubble_sizes', bubble_sizes cannot be nil.")
      end
      if @count_of_data_values.nil?
          invalid_properties.push("invalid value for 'count_of_data_values', count_of_data_values cannot be nil.")
      end
      if @data_labels.nil?
          invalid_properties.push("invalid value for 'data_labels', data_labels cannot be nil.")
      end
      if @display_name.nil?
          invalid_properties.push("invalid value for 'display_name', display_name cannot be nil.")
      end
      if @doughnut_hole_size.nil?
          invalid_properties.push("invalid value for 'doughnut_hole_size', doughnut_hole_size cannot be nil.")
      end
      if @down_bars.nil?
          invalid_properties.push("invalid value for 'down_bars', down_bars cannot be nil.")
      end
      if @drop_lines.nil?
          invalid_properties.push("invalid value for 'drop_lines', drop_lines cannot be nil.")
      end
      if @explosion.nil?
          invalid_properties.push("invalid value for 'explosion', explosion cannot be nil.")
      end
      if @first_slice_angle.nil?
          invalid_properties.push("invalid value for 'first_slice_angle', first_slice_angle cannot be nil.")
      end
      if @gap_width.nil?
          invalid_properties.push("invalid value for 'gap_width', gap_width cannot be nil.")
      end
      if @has3_d_effect.nil?
          invalid_properties.push("invalid value for 'has3_d_effect', has3_d_effect cannot be nil.")
      end
      if @has_drop_lines.nil?
          invalid_properties.push("invalid value for 'has_drop_lines', has_drop_lines cannot be nil.")
      end
      if @has_hi_lo_lines.nil?
          invalid_properties.push("invalid value for 'has_hi_lo_lines', has_hi_lo_lines cannot be nil.")
      end
      if @has_leader_lines.nil?
          invalid_properties.push("invalid value for 'has_leader_lines', has_leader_lines cannot be nil.")
      end
      if @has_radar_axis_labels.nil?
          invalid_properties.push("invalid value for 'has_radar_axis_labels', has_radar_axis_labels cannot be nil.")
      end
      if @has_series_lines.nil?
          invalid_properties.push("invalid value for 'has_series_lines', has_series_lines cannot be nil.")
      end
      if @has_up_down_bars.nil?
          invalid_properties.push("invalid value for 'has_up_down_bars', has_up_down_bars cannot be nil.")
      end
      if @hi_lo_lines.nil?
          invalid_properties.push("invalid value for 'hi_lo_lines', hi_lo_lines cannot be nil.")
      end
      if @is_auto_split.nil?
          invalid_properties.push("invalid value for 'is_auto_split', is_auto_split cannot be nil.")
      end
      if @is_color_varied.nil?
          invalid_properties.push("invalid value for 'is_color_varied', is_color_varied cannot be nil.")
      end
      if @leader_lines.nil?
          invalid_properties.push("invalid value for 'leader_lines', leader_lines cannot be nil.")
      end
      if @legend_entry.nil?
          invalid_properties.push("invalid value for 'legend_entry', legend_entry cannot be nil.")
      end
      if @marker.nil?
          invalid_properties.push("invalid value for 'marker', marker cannot be nil.")
      end
      if @name.nil?
          invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end
      if @overlap.nil?
          invalid_properties.push("invalid value for 'overlap', overlap cannot be nil.")
      end
      if @plot_on_second_axis.nil?
          invalid_properties.push("invalid value for 'plot_on_second_axis', plot_on_second_axis cannot be nil.")
      end
      if @points.nil?
          invalid_properties.push("invalid value for 'points', points cannot be nil.")
      end
      if @second_plot_size.nil?
          invalid_properties.push("invalid value for 'second_plot_size', second_plot_size cannot be nil.")
      end
      if @series_lines.nil?
          invalid_properties.push("invalid value for 'series_lines', series_lines cannot be nil.")
      end
      if @shadow.nil?
          invalid_properties.push("invalid value for 'shadow', shadow cannot be nil.")
      end
      if @show_negative_bubbles.nil?
          invalid_properties.push("invalid value for 'show_negative_bubbles', show_negative_bubbles cannot be nil.")
      end
      if @size_represents.nil?
          invalid_properties.push("invalid value for 'size_represents', size_represents cannot be nil.")
      end
      if @smooth.nil?
          invalid_properties.push("invalid value for 'smooth', smooth cannot be nil.")
      end
      if @split_type.nil?
          invalid_properties.push("invalid value for 'split_type', split_type cannot be nil.")
      end
      if @split_value.nil?
          invalid_properties.push("invalid value for 'split_value', split_value cannot be nil.")
      end
      if @trend_lines.nil?
          invalid_properties.push("invalid value for 'trend_lines', trend_lines cannot be nil.")
      end
      if @type.nil?
          invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end
      if @up_bars.nil?
          invalid_properties.push("invalid value for 'up_bars', up_bars cannot be nil.")
      end
      if @values.nil?
          invalid_properties.push("invalid value for 'values', values cannot be nil.")
      end
      if @x_error_bar.nil?
          invalid_properties.push("invalid value for 'x_error_bar', x_error_bar cannot be nil.")
      end
      if @x_values.nil?
          invalid_properties.push("invalid value for 'x_values', x_values cannot be nil.")
      end
      if @y_error_bar.nil?
          invalid_properties.push("invalid value for 'y_error_bar', y_error_bar cannot be nil.")
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
      return false if @bar3_d_shape_type.nil?
      return false if @border.nil?
      return false if @bubble_scale.nil?
      return false if @bubble_sizes.nil?
      return false if @count_of_data_values.nil?
      return false if @data_labels.nil?
      return false if @display_name.nil?
      return false if @doughnut_hole_size.nil?
      return false if @down_bars.nil?
      return false if @drop_lines.nil?
      return false if @explosion.nil?
      return false if @first_slice_angle.nil?
      return false if @gap_width.nil?
      return false if @has3_d_effect.nil?
      return false if @has_drop_lines.nil?
      return false if @has_hi_lo_lines.nil?
      return false if @has_leader_lines.nil?
      return false if @has_radar_axis_labels.nil?
      return false if @has_series_lines.nil?
      return false if @has_up_down_bars.nil?
      return false if @hi_lo_lines.nil?
      return false if @is_auto_split.nil?
      return false if @is_color_varied.nil?
      return false if @leader_lines.nil?
      return false if @legend_entry.nil?
      return false if @marker.nil?
      return false if @name.nil?
      return false if @overlap.nil?
      return false if @plot_on_second_axis.nil?
      return false if @points.nil?
      return false if @second_plot_size.nil?
      return false if @series_lines.nil?
      return false if @shadow.nil?
      return false if @show_negative_bubbles.nil?
      return false if @size_represents.nil?
      return false if @smooth.nil?
      return false if @split_type.nil?
      return false if @split_value.nil?
      return false if @trend_lines.nil?
      return false if @type.nil?
      return false if @up_bars.nil?
      return false if @values.nil?
      return false if @x_error_bar.nil?
      return false if @x_values.nil?
      return false if @y_error_bar.nil?
      return false if @link.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          area == o.area &&
          bar3_d_shape_type == o.bar3_d_shape_type &&
          border == o.border &&
          bubble_scale == o.bubble_scale &&
          bubble_sizes == o.bubble_sizes &&
          count_of_data_values == o.count_of_data_values &&
          data_labels == o.data_labels &&
          display_name == o.display_name &&
          doughnut_hole_size == o.doughnut_hole_size &&
          down_bars == o.down_bars &&
          drop_lines == o.drop_lines &&
          explosion == o.explosion &&
          first_slice_angle == o.first_slice_angle &&
          gap_width == o.gap_width &&
          has3_d_effect == o.has3_d_effect &&
          has_drop_lines == o.has_drop_lines &&
          has_hi_lo_lines == o.has_hi_lo_lines &&
          has_leader_lines == o.has_leader_lines &&
          has_radar_axis_labels == o.has_radar_axis_labels &&
          has_series_lines == o.has_series_lines &&
          has_up_down_bars == o.has_up_down_bars &&
          hi_lo_lines == o.hi_lo_lines &&
          is_auto_split == o.is_auto_split &&
          is_color_varied == o.is_color_varied &&
          leader_lines == o.leader_lines &&
          legend_entry == o.legend_entry &&
          marker == o.marker &&
          name == o.name &&
          overlap == o.overlap &&
          plot_on_second_axis == o.plot_on_second_axis &&
          points == o.points &&
          second_plot_size == o.second_plot_size &&
          series_lines == o.series_lines &&
          shadow == o.shadow &&
          show_negative_bubbles == o.show_negative_bubbles &&
          size_represents == o.size_represents &&
          smooth == o.smooth &&
          split_type == o.split_type &&
          split_value == o.split_value &&
          trend_lines == o.trend_lines &&
          type == o.type &&
          up_bars == o.up_bars &&
          values == o.values &&
          x_error_bar == o.x_error_bar &&
          x_values == o.x_values &&
          y_error_bar == o.y_error_bar &&
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
      [ area , bar3_d_shape_type , border , bubble_scale , bubble_sizes , count_of_data_values , data_labels , display_name , doughnut_hole_size , down_bars , drop_lines , explosion , first_slice_angle , gap_width , has3_d_effect , has_drop_lines , has_hi_lo_lines , has_leader_lines , has_radar_axis_labels , has_series_lines , has_up_down_bars , hi_lo_lines , is_auto_split , is_color_varied , leader_lines , legend_entry , marker , name , overlap , plot_on_second_axis , points , second_plot_size , series_lines , shadow , show_negative_bubbles , size_represents , smooth , split_type , split_value , trend_lines , type , up_bars , values , x_error_bar , x_values , y_error_bar , link ].hash
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
