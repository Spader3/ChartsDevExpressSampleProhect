   M S B A M L   `   `   `  ����I  EDevExpressTest, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:CandleStick2DChartCandleStick2DChart  5   	        CandleStick2DChart.Window1   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v20.1, Version=20.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   c _DevExpress.Xpf.Charts.v20.1, Version=20.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxc4http://schemas.devexpress.com/winfx/2008/xaml/charts  5   	   ,local clr-namespace:CandleStick2DChart  5   	     � Title$  Window1��5   	   $	��350��5   	   $	��620��6    � DataContext 5      '   !CandleStick2DChart.ChartViewModel  5	   
   .��5      �  � RowDefinitions 5   
   �� 5      6   �� 5      6    � ColumnDefinitions 5   
   �� 5      6!   �� 5      6!   .+�5   
   (  "DevExpress.Xpf.Charts.ChartControl  -   5        $��chartControl1��5      $��0��60   $��0��6@    5        5         Diagram. 5      '  !DevExpress.Xpf.Charts.XYDiagram2D     EnableAxisXNavigation .    EnableAxisYNavigation .    NavigationOptions 5      -  'DevExpress.Xpf.Charts.NavigationOptions  5         AxisXMaxZoomPercent$
 2000Q�5      	   AxisYMaxZoomPercent$
	 2000Q�5      #  DevExpress.Xpf.Charts.Diagram
   Series.
 5      /  )DevExpress.Xpf.Charts.CandleStickSeries2D  "  DevExpress.Xpf.Charts.Series   ArgumentScaleType$ DateTime=�6*      ArgumentDataMember$
 Date��5!   *   -  'DevExpress.Xpf.Charts.FinancialSeries2D   OpenValueDataMember$
 Open��5"   *      HighValueDataMember$
 High��5#   *      LowValueDataMember$	 Low��5$   *      CloseValueDataMember$ Close��5%   *      LabelsVisibility .  $	  DevExpress.Xpf.Charts.XYSeries 	  Brush$ Green��5'   *      
DataSource 5    *   �� *Data+   ReductionOptions 5)      1
  +DevExpress.Xpf.Charts.ReductionStockOptions
  5*       
  	ColorMode$ OpenToCloseValue=�64      FillMode$ FilledOnReduction=�5+   4    
  Level$ 
CloseValue=�5,   4    
  Brush$	 Red��5-   4      Model 5/      2  ,DevExpress.Xpf.Charts.ThinCandleStick2DModel  50      52         AxisX 53      #  DevExpress.Xpf.Charts.AxisX2D  54      $  DevExpress.Xpf.Charts.AxisBase   Label 55      %  DevExpress.Xpf.Charts.AxisLabel  56         TextPattern$ 
{A:MMMM d}��6,      DateTimeScaleOptions 58      9  3DevExpress.Xpf.Charts.AutomaticDateTimeScaleOptions  59      ?  9DevExpress.Xpf.Charts.DateTimeAggregationScaleOptionsBase   SkipRangesWithoutPoints . 6@   5;         AxisY 5=      #  DevExpress.Xpf.Charts.AxisY2D  5>         DevExpress.Xpf.Charts.Axis    
WholeRange  5?      !  DevExpress.Xpf.Charts.Range  5@      !   AlwaysShowZeroLevel! .  6(   5B      5D      5E        5F   
   -   5        $��chartControl2��5F      $��1��60   $��0��6@    5G        5H      
 5I      (  "DevExpress.Xpf.Charts.LineSeries2D  5J      "   DisplayName$" First Series��6/   #   MarkerVisible# .  $   	LineStyle$ 5K   "   %  DevExpress.Xpf.Charts.LineStyle  5L   &   %   	Thickness$% 4��64   &   Points& 5N   "   '  !DevExpress.Xpf.Charts.SeriesPoint  5O   &   '   Argument$' A��66   (   Value$( 1Q�6C     5P   &   $' B��66   $( 3Q�6C     5Q   &   $' C��66   $( 7Q�6C     5R   &   $' D��66   $( 4Q�6C   5T        5U      $" Second Series��6/   # .  $ 5V   "     5W   &   $% 4��64   & 5Y   "     5Z   &   $' A��66   $( 2Q�6C     5[   &   $' B��66   $( 2Q�6C     5\   &   $' C��66   $( 5Q�6C     5]   &   $' D��66   $( 4Q�6C   5_      5a      )   Legend) 5c      "  DevExpress.Xpf.Charts.Legend  5d      5f        5g   
   -   5        $��chartControl3��5g      $��0��60   $��1��6@   . 5h         .  .  5j        5k      $
 2000Q�5l      $
	 2000Q�5m      .
 5o      )  #DevExpress.Xpf.Charts.StockSeries2D  $ DateTime=�6$   $
 Date��5q   $   $
 Open��5r   $   $
 High��5s   $   $	 Low��5t   $   $ Close��5u   $    .   5p   $   �� *Data+*   Label* 5w      '  !DevExpress.Xpf.Charts.SeriesLabel  5x      +   TextPattern$
+ {HV}��6*   ,   Model, 5z      ,  &DevExpress.Xpf.Charts.FlatStock2DModel  5{       5}      
  5~      $ 
CloseValue=�64   $ OpenToCloseValue=�5   4   5�       5�        5�       5�        5�      $ 	{A:MMM d}��6,    5�      6  0DevExpress.Xpf.Charts.ManualDateTimeScaleOptions  5�      -   AutoGrid- .  .   GridSpacing$. 1Q�5�   =   5�       5�        5�        5�        5�      ! .  6(   5�      5�      5�      5�      5�      