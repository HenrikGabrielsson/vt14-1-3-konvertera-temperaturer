using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TempConverter.Model;

namespace TempConverter
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ConvertButton_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                int startTemp = int.Parse(StartTempTextBox.Text);
                int endTemp = int.Parse(EndTempTextBox.Text);
                int stepTemp = int.Parse(TempStepTextBox.Text);

                //Tabellhuvud 
                TableHeaderRow theader = new TableHeaderRow();
                TempTable.Rows.Add(theader);

                TableHeaderCell th = new TableHeaderCell();
                theader.Cells.Add(th);

                if(CeltoFahrRadio.Checked)
                {
                    th.Text = "Celsius";
                    
                    th = new TableHeaderCell();
                    theader.Cells.Add(th);
                    th.Text = "Fahrenheit";
                }
                else
                {
                    th.Text = "Fahrenheit";

                    th = new TableHeaderCell();
                    theader.Cells.Add(th);
                    th.Text = "Celsius";
                }


                //Loopen skriver ut temperaturerna i tabellen tills temperaturen har nått sluttemperaturen
                //i ökar med stegen som användaren angav
                for (int i = startTemp; i <= endTemp; i += stepTemp)
                {
                    //ny rad i tabellen
                    TableRow tr = new TableRow();
                    TempTable.Rows.Add(tr);

                    //cell 1 i raden med den okonverterade temperaturen.
                    TableCell td = new TableCell();
                    tr.Cells.Add(td);
                    td.Text = String.Format("{0}", i);

                    //cell 2 i raden med den konverterade temperaturen.
                    td = new TableCell();
                    tr.Cells.Add(td);

                    //kollar vad användaren vill konvertera till/från och anropar lämplig metod för att fylla cellen.
                    if (CeltoFahrRadio.Checked)
                    {
                        td.Text = String.Format("{0}", TemperatureConverter.CelsiusToFahrenheit(i));
                    }

                    else
                    {
                        td.Text = String.Format("{0}", TemperatureConverter.FahrenheitToCelsius(i));
                    }

                    //om den sista temperaturen inte kommer med i tabellen så läggs den till här
                    if (i != endTemp && i + stepTemp > endTemp)
                    {
                        tr = new TableRow();
                        TempTable.Rows.Add(tr);

                        td = new TableCell();
                        tr.Cells.Add(td);
                        td.Text = String.Format("{0}", endTemp);

                        td = new TableCell();
                        tr.Cells.Add(td);
                        if (CeltoFahrRadio.Checked)
                        {
                            td.Text = String.Format("{0}", TemperatureConverter.CelsiusToFahrenheit(endTemp));
                        }

                        else
                        {
                            td.Text = String.Format("{0}", TemperatureConverter.FahrenheitToCelsius(endTemp));
                        }

                    }
                }

                //visa tabell
                TempTable.Visible = true;
            }    
        }
    }
}
