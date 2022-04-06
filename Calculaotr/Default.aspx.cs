using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculaotr
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private int GetCollectionCountNYear(int _n, int _volumn, float _effect)
        {
            double percent = (100 - _effect) * _effect / 100 / Math.Pow(_n + 1, 1.75);
            int volume = Convert.ToInt32(_volumn * percent / 100); 
            return volume;
        }
        private int GetSalesVolumeNYear(int _n, int _volumn, float _rate) 
        {
            int volume = Convert.ToInt32(_volumn * Math.Pow(1 + _rate/100, _n));
            return volume;
        }

        protected void evaluateBtn_Click(object sender, EventArgs e)
        {
            int timeY = int.Parse(time.Value);
            int volumeY = int.Parse(annual.Value);
            float growthRate = float.Parse(rate.Value);
            float effect = float.Parse(systemE.Value);
            int total = 0;
            int totalN = 0;
            string symbol = string.Empty;
            LiteralControl literalControl = new LiteralControl();

            for (int i = 0; i < timeY; i++)
            {
                int volumeNY = GetSalesVolumeNYear(i, volumeY, growthRate); //calculate sales volume of year N 
                totalN = Convert.ToInt32(volumeNY * effect / 100);
                string result = string.Empty;
                result = $"Return volumn from Year {i + 1} sales: {totalN} + ";

                if (i == timeY - 1)
                    result = $"Return volumn from Year {i + 1} sales: <b>{totalN}</b>";

                for (int j = 1; j < timeY - i; j++)
                {
                    int collect = GetCollectionCountNYear(j, volumeNY, effect); //calculate number of collections in year N 
                    symbol = j == (timeY - i - 1) ? "" : "+";
                    result += $"{collect} {symbol} ";
                    totalN += collect;
                    if (j == timeY - i - 1)
                        result += $"= <b>{totalN}</b><br>";
                }

                literalControl = new LiteralControl(result);
                resultDiv.Controls.Add(literalControl);
                total += totalN;
            }
            literalControl = new LiteralControl($"<br><b>Total:</b> {total} units");
            resultDiv.Controls.Add(literalControl);
        }
    }
}