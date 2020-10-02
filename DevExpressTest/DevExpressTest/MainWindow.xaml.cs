using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Windows;
using System.Xml.Serialization;

namespace CandleStick2DChart
{
    public partial class Window1 : Window
    {
        public Window1()
        {
            InitializeComponent();
        }
       
    }
    public class ChartViewModel
    {
        public ObservableCollection<DataPoint> Data { get; private set; }

        public ChartViewModel()
        {
            Random random = new Random();
            Data = new ObservableCollection<DataPoint> ();
            for(int i = 0; i < 10000; i++)
            {

                var time = new DateTime(2019, 1, 1).AddMinutes(i);
                Data.Add(new DataPoint(time, random.Next(24,33), random.Next(24, 33), random.Next(24, 33), random.Next(24, 33)));
            }

        }
    }
    public class DataPoint
    {
        public DateTime Date { get; set; }
        public double Open { get; set; }
        public double High { get; set; }
        public double Low { get; set; }
        public double Close { get; set; }
        public DataPoint(DateTime arg, double open, double high, double low, double close)
        {
            this.Date = arg;
            this.Open = open;
            this.High = high;
            this.Low = low;
            this.Close = close;
        }
    }
}