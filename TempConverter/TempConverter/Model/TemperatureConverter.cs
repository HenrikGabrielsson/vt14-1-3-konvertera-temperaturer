using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TempConverter.Model
{
    public static class TemperatureConverter
    {
        //Från C till F
        public static int CelsiusToFahrenheit(int degreesC)
        {
            return (int)Math.Round(degreesC * 1.8 + 32);
        }

        //Från F till C
        public static int FahrenheitToCelsius(int degreesF)
        {
            return (int)Math.Round((degreesF - 32) * (5.0/9.0));
        }
    }
}