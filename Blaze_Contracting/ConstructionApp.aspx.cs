using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blaze_Contracting
{
  public partial class ConstructionApp : System.Web.UI.Page
  {
    public static double cost = 0;
    public static double labor = 0;//cost per square foot
    public double totalCost = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
      if (PckTypeButton.SelectedIndex == 0)
      {
        Panel2.Visible = true;
      }
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
      totalCost = 0;
      TotalPriceOutput.Text = totalCost.ToString();
      if (PckTypeButton.SelectedIndex == 1)  //Premium
      {

        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = true;

        foreach (ListItem box in CheckBoxList1.Items)
        {
          box.Selected = false;
        }

      }
      else if (PckTypeButton.SelectedIndex == 0)  //Standard
      {
        Panel2.Visible = true;
        Panel1.Visible = false;
        Panel3.Visible = true;

        foreach (ListItem box in CheckBoxList3.Items)
        {
          box.Selected = false;
        }
      }
      else
      {
        return;

      }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      double pricePerSqFt = CalculateTotalCostPerSqFt();
      int totalSqFt = int.Parse(DropDownList1.SelectedValue);
      double totalPrice = pricePerSqFt * totalSqFt;
      //TotalPriceOutput.Text = totalPrice.ToString();
      TotalPriceOutput.Text = String.Format("{0:C}", totalPrice);



    }

    private double CalculateTotalCostPerSqFt()
    {
      totalCost = 0;
      if (CheckBoxList1.Visible && !CheckBoxList3.Visible)
      {
        labor = 2.10;

        foreach (ListItem item in CheckBoxList1.Items)
        {

          if (item.Selected)
          {
            switch (item.Value)
            {
              case "Traditional Grey":
                cost = 0;
                break;
              case "5 Bag Finish":
                cost = 1.85;
                totalCost += cost;
                break;
              case "Broom or Smooth Finish":
                cost = .50;
                totalCost += cost;
                break;
              case "Bordered Edge":
                cost = .25;
                totalCost += cost;
                break;
              case "Saw Cut":
                cost = .25;
                totalCost += cost;
                break;
              default:
                break;

            }
          }

        }
        return totalCost + labor;
      }
      else if (CheckBoxList3.Visible && !CheckBoxList1.Visible)
      {
        labor = 2.25;

        foreach (ListItem thing in CheckBoxList3.Items)
        {

          if (thing.Selected)
          {
            switch (thing.Value)
            {
              case "Colored Concrete":
                cost = .75;
                totalCost += cost;
                break;
              case "6 Bag Finish":
                cost = 2.30;
                totalCost += cost;
                break;
              case "Hand Trial Finish":
                cost = .55;
                totalCost += cost;
                break;
              case "Texture Stamped":
                cost = 2.65;
                totalCost += cost;
                break;
              case "Bordered":
                cost = .25;
                totalCost += cost;
                break;
              case "Jointed":
                cost = .50;
                totalCost += cost;
                break;
              case "Permanent Seal Coat":
                cost = .30;
                totalCost += cost;
                break;
              default:
                break;

            }
          }

        }
        //return totalCost;
        return totalCost + labor;
      }
      else
      {
        return 0;
      }

    }
  }
}