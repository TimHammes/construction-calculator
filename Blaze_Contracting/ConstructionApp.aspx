<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConstructionApp.aspx.cs" Inherits="Blaze_Contracting.ConstructionApp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

      <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:BundleReference runat="server" Path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">

        <asp:ScriptManager runat="server">
            <Scripts>
                <%--To learn more about bundling scripts in ScriptManager see https://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Framework Scripts--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
                <%--Site Scripts--%>
            </Scripts>
        </asp:ScriptManager>
        <div class="col-lg-6" style="text-align: center; text-decoration-line: underline;">
            <h2 class="title">Packages</h2>
        </div>
        <div class="col-lg-6" style="text-align: center; text-decoration-line: underline;">

            <h2>Slab Dimensions & Quantities</h2>
        </div>
        <div style="padding-left: 120px;">
            <asp:RadioButtonList ID="PckTypeButton" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Width="200px">
                <asp:ListItem Selected="true">Standard</asp:ListItem>
                <asp:ListItem>Premium</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div style="height: 348px;">
            <div class="col-lg-6">





                <asp:Panel ID="Panel1" runat="server" Visible="False" Width="462px" CssClass="panel-mine">

                    <div>
                        <table class="table-condensed table-bordered ">
                            <tr>
                                <th style="text-align: center; border: solid thin black; background-color: mediumseagreen" class="auto-style1">Premium Concrete (Material Included)</th>
                                <th style="text-align: center; border: solid thin black; background-color: mediumseagreen" class="auto-style8">Price Per Sq Ft</th>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    <asp:CheckBoxList ID="CheckBoxList3" runat="server" AutoPostBack="True">
                                        <asp:ListItem>Colored Concrete</asp:ListItem>
                                        <asp:ListItem Selected="True" Enabled="false">6 Bag Finish</asp:ListItem>
                                        <asp:ListItem>Hand Trial Finish</asp:ListItem>
                                        <asp:ListItem>Texture Stamped</asp:ListItem>
                                        <asp:ListItem>Bordered</asp:ListItem>
                                        <asp:ListItem>Jointed</asp:ListItem>
                                        <asp:ListItem>Permanent Seal Coat</asp:ListItem>
                                        <asp:ListItem Selected="True" Enabled="false">Labor</asp:ListItem>
                                    </asp:CheckBoxList>
                                </td>
                                <td class="auto-style8">
                                    <table class="auto-style7 table-bordered">
                                        <tr>
                                            <td class="td-mine1">
                                                <asp:Label ID="Label3" runat="server" Text=".75" CssClass="label-mine" Height="27px"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td-mine1">
                                                <asp:Label ID="Label4" runat="server" Text="2.30" CssClass="label-mine" Height="27px"></asp:Label></td>

                                        </tr>
                                        <tr>
                                            <td class="td-mine1">
                                                <asp:Label ID="Label5" runat="server" Text=".55" CssClass="label-mine" Height="27px"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td class="td-mine1">
                                                <asp:Label ID="Label13" runat="server" Text="2.65" CssClass="label-mine" Height="27px"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td class="td-mine1">
                                                <asp:Label ID="Label7" runat="server" Text=".25" CssClass="label-mine" Height="27px"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td class="td-mine1">
                                                <asp:Label ID="Label8" runat="server" Text=".50" CssClass="label-mine" Height="27px"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td class="td-mine1">
                                                <asp:Label ID="Label9" runat="server" Text=".30" CssClass="label-mine" Height="27px"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td class="td-mine1">
                                                <asp:Label ID="Label10" runat="server" Text="2.25" CssClass="label-mine" Height="27px"></asp:Label>
                                            </td>
                                        </tr>

                                    </table>
                                </td>

                            </tr>





                        </table>

                    </div>

                </asp:Panel>

                <asp:Panel ID="Panel2" runat="server" Visible="False" Width="459px" CssClass="panel-mine">
                    <div>
                        <table class="table-condensed table-bordered ">
                            <tr>
                                <th style="text-align: center; border: solid thin black; background-color: darkorange" class="auto-style1">Standard Package (Material Included)</th>
                                <th style="text-align: center; border: solid thin black; background-color: darkorange" class="auto-style6">Price Per Sq Ft</th>
                            </tr>
                            <tr>
                                <td>
                                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" Width="296px">
                                        <asp:ListItem>Traditional Grey</asp:ListItem>
                                        <asp:ListItem>5 Bag Finish</asp:ListItem>
                                        <asp:ListItem>Broom or Smooth Finish</asp:ListItem>
                                        <asp:ListItem>Bordered Edge</asp:ListItem>
                                        <asp:ListItem>Saw Cut</asp:ListItem>
                                        <asp:ListItem Selected="True" Enabled="false">Labor</asp:ListItem>
                                    </asp:CheckBoxList>
                                </td>
                                <td style="text-align: right" class="auto-style6">
                                    <table class="auto-style7 table-bordered">
                                        <tr>
                                            <td class="td-mine2">
                                                <asp:Label ID="Label15" runat="server" Text="N/A" CssClass="label-mine" Height="27px"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td-mine2">
                                                <asp:Label ID="Label1" runat="server" Text="1.85" CssClass="label-mine" Height="27px"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td-mine2">
                                                <asp:Label ID="Label2" runat="server" Text=".50" CssClass="label-mine" Height="27px"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td-mine2">

                                                <asp:Label ID="Label6" runat="server" Text=".25" CssClass="label-mine" Height="27px"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td-mine2">
                                                <asp:Label ID="Label11" runat="server" Text=".25" CssClass="label-mine" Height="27px"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td-mine2">
                                                <asp:Label ID="Label12" runat="server" Text="2.10" CssClass="label-mine" Height="27px"></asp:Label>
                                            </td>
                                        </tr>



                                    </table>


                                </td>
                            </tr>

                        </table>
                    </div>
                </asp:Panel>
            </div>
            <div class="col-lg-6">
                <asp:Panel ID="Panel3" runat="server" CssClass="panel-mine">
                    <table>

                        <tr>
                            <th style="text-align: center; border: solid thin black; background-color: cornflowerblue; width: 65px;">Depth</th>
                            <th style="text-align: center; border: solid thin black; background-color: cornflowerblue; width: 75px;">Yards</th>
                            <th style="text-align: center; border: solid thin black; background-color: cornflowerblue; width: 99px;">Square Ft.</th>
                        </tr>
                        <tr style="border: 1px solid black;">

                            <td style="width: 65px; text-align: center; border-right: 1px solid black; text-align: center;">6 inch
                            </td>
                            <td style="border-right: 1px solid black; padding: 0px;">
                                <table style="margin: auto">
                                    <tbody>
                                        <tr class="tr-mine">
                                            <td>5 Yards</td>
                                        </tr>
                                        <tr class="tr-mine">
                                            <td>10 Yards</td>
                                        </tr>
                                        <tr class="tr-mine">
                                            <td>15 Yards</td>
                                        </tr>
                                    </tbody>

                                </table>
                            </td>

                            <td style="width: 99px; text-align: center;">
                                <table style="margin: auto">
                                    <tbody>
                                        <tr class="tr-mine">
                                            <td>270</td>
                                        </tr>
                                        <tr class="tr-mine">
                                            <td>540</td>
                                        </tr>
                                        <tr class="tr-mine">
                                            <td>810</td>
                                        </tr>
                                    </tbody>

                                </table>
                            </td>

                        </tr>
                        <tr style="border: 1px solid black">
                            <td style="width: 65px; text-align: center; border-right: 1px solid black;">4 inch
                            </td>
                            <td style="border-right: 1px solid black;">
                                <table style="margin: auto;">
                                    <tbody>
                                        <tr class="tr-mine">
                                            <td>5 Yards</td>
                                        </tr>
                                        <tr class="tr-mine">
                                            <td>10 Yards</td>
                                        </tr>

                                    </tbody>

                                </table>
                            </td>

                            <td style="width: 99px; text-align: center;">
                                <table style="margin: auto">
                                    <tbody>
                                        <tr class="tr-mine">
                                            <td>400</td>
                                        </tr>
                                        <tr class="tr-mine">
                                            <td>800</td>
                                        </tr>

                                    </tbody>

                                </table>
                            </td>
                        </tr>
                        <tr style="border: 1px solid black;">
                            <td style="width: 65px; text-align: center; border-right: 1px solid black;">3 inch
                            </td>
                            <td style="border-right: 1px solid black; text-align: center;">10 Yards
                            </td>

                            <td style="width: 99px; text-align: center;">1000
                            </td>
                        </tr>
                    </table>
                    <asp:Label ID="Label16" runat="server" Text="Select Your Square Footage" CssClass="" Font-Size="Medium" ForeColor="#3366FF"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>270</asp:ListItem>
                        <asp:ListItem>540</asp:ListItem>
                        <asp:ListItem>810</asp:ListItem>
                        <asp:ListItem>400</asp:ListItem>
                        <asp:ListItem>800</asp:ListItem>
                        <asp:ListItem>1000</asp:ListItem>
                    </asp:DropDownList>
                </asp:Panel>

            </div>
        </div>
        <div class="col-lg-12" style="text-align: center; margin-top: 20px; background-color: lightgrey; padding-top: 5px;">

            <asp:Button ID="Button1" runat="server" Text="Calculate " OnClick="Button1_Click" />

            <br />
            <asp:Label ID="TotalPriceOutput" runat="server" BackColor="White" BorderColor="#33CC33" BorderStyle="Solid" Height="25px" Width="80px"></asp:Label>
        </div>
    </form>
</body>
</html>
