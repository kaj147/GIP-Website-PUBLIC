using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GIP_Website.Interfaces
{

    public enum Color
    {
        Rood,
        Groen,
        Blauw
    }

    public abstract class ConvertColor
    {
        public static Color ConvertStringToColor(string color)
        {
            return (Color)Enum.Parse(typeof(Color), color);
        }
    }
    
}