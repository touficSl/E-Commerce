<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignAdmin.aspx.cs" Inherits="SignAdmin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 300px;
        }
            
        a {
            outline: none;
            text-decoration: underline;
            color: #CC0000;
        }
        </style>
</head>
<body>
    <form id="form2" runat="server">
    <div>
        <table style="width: 100%; height: 274px;">
            <tr>
                <td class="style1">
                    <asp:Image ID="Image2" runat="server" Height="183px" 
                        ImageUrl="~/Images/basket.jpg" Width="226px" />
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
                        Font-Size="XX-Large" ForeColor="#0066FF" Text="VERIFY ADMIN"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1"> &nbsp;</td>
                <td>
                    <table style="width: 62%; height: 127px; margin-top: 24px;">
                        <tr>
                            <td class="style2">
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
                                    Font-Size="Large" ForeColor="#0066FF" Text="Code"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="codetxt" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Button ID="verifybtn" runat="server" BackColor="#0066FF" Font-Bold="True" 
                                    Font-Italic="True" Font-Size="Large" ForeColor="White" 
                                    onclick="verify" style="height: 33px" Text="verify" Width="99px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style1"> 
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="72px" 
                        ImageUrl="~/Images/backbutton.gif" PostBackUrl="~/Home.aspx" Width="90px" 
                        onclick="ImageButton1_Click" />
                </td>
                <td>
                    <asp:Label ID="errorlbl" runat="server" Font-Size="Large" 
                        ForeColor="Red" Visible="False" Width="130px"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
