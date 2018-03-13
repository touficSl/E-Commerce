<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
.c1
{
	height:50%;
}
    .style3
    {
        width: 31px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:ScriptManager ID="ScriptManager2" runat="server">
        </asp:ScriptManager>
    </p>
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            <table border="0" cellpadding="0" cellspacing="0" style="padding-left: 10em;" 
                width="532">
                <tr>
                    <td height="24" style="font-family: 'Myriad Pro'; font-size: 16px; text-align: left;
                        padding-left: 24px;" width="100%">
                        <img src="Images/image1.jpg" border="0" 
                            style="height: 102px; width: 495px" />
                    </td>
                </tr>
                <tr>
                    <td height="32" width="100%">
                    </td>
                </tr>
                <tr>
                    <td style="font-family: 'Myriad Pro'; font-size: 16px; text-align: justify; padding-left: 34px;
                        line-height: 25PX;">
                        <b>Al Fanar, Facing Lebanese University,<br />
                            Chedid Center , Second Floor</b><br />
                        <br />
                        <b>MOB: </b>&nbsp; &nbsp; +961 3 333333<br />
                        <b>TEL: </b>&nbsp; &nbsp; &nbsp; +961 1 111222<br />
                        <b>FAX: </b>&nbsp; &nbsp; &nbsp; +961 1 111333<br />
                        <b>E-MAIL: &nbsp; </b><a href="mailto:info@clothesecommerce.com" 
                            style="text-decoration: none; color: #ef251b; cursor: pointer;" target="_blank">
                        info@clothesecommerce.com</a>
                    </td>
                </tr>
                <tr>
                    <td height="30" width="100%">
                    </td>
                </tr>
                <tr>
                    <td height="2" style="padding-left: 8px;" width="100%">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <img src="Images/3027774_orig.jpg" border="0" style="height: 226px; width: 407px" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
                            Font-Size="Large" ForeColor="#0066FF" Text="CONTACT FORM "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td width="532">
                        <table border="0" cellpadding="0" cellspacing="0" width="532">
                            <form action="http://localhost:52885/contact_us.php" method="post" name="form2" 
                            onsubmit="return validateform2(this);">
                            <tr>
                                <td width="25">
                                    &nbsp;
                                </td>
                                <td width="225">
                                    Name:
                                </td>
                                <td width="22">
                                </td>
                                <td width="250">
                                    Message:
                                </td>
                            </tr>
                            <tr>
                                <td width="25">
                                    &nbsp;
                                </td>
                                <td width="225">
                                    <asp:TextBox ID="NameTextBox" runat="server" />
                                </td>
                                <td width="22">
                                </td>
                                <td rowspan="5" width="250">
                                    <asp:TextBox ID="message" runat="server" Height="92px" TextMode="MultiLine" 
                                        Width="245px" />
                                </td>
                            </tr>
                            <tr>
                                <td width="25">
                                    &nbsp;
                                </td>
                                <td width="225">
                                    Email:
                                </td>
                                <td width="22">
                                </td>
                            </tr>
                            <tr>
                                <td width="25">
                                    &nbsp;
                                </td>
                                <td width="225">
                                    <asp:TextBox ID="emailtxt" runat="server" />
                                    <asp:Label ID = "erroremail" runat="server" Text="*" ForeColor="red" Visible="false"/>
                                </td>
                                <td width="22">
                                </td>
                            </tr>
                            <tr>
                                <td width="25">
                                </td>
                                <td width="225">
                                    Mobile:
                                </td>
                                <td width="22">
                                </td>
                            </tr>
                            <tr>
                                <td width="25">
                                    &nbsp;
                                </td>
                                <td width="225">
                                    <input type="text" name="phone" value="" id="phone" />
                                </td>
                                <td width="22">
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="4" height="10">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="sentmsglbl" runat="server" ForeColor="#33CC33" 
                                        Text="Message is sended !" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="4" height="30">
                                    <table border="0" cellpadding="0" cellspacing="0" height="30%" width="100%">
                                        <tr>
                                            <td class="style3">
                                                &nbsp;&nbsp; &nbsp;</td>
                                            <td height="28px" style="text-align: left;" width="90">
                                                <input type="reset" name="reset" value="CLEAR" style="border-style: none; border-color: inherit; border-width: 0px; width: 60px; height: 27px;
                                                        background-image: url('http://localhost:52885/images/send_01.jpg'); cursor: pointer; font-family: 'Myriad Pro';
                                                        font-size: 15px; text-align: center; color: #666666; font-weight: bold;" />
                                                <td width="55">
                                                    <asp:Button ID="btnemail" runat="server" OnClick="SendEmail"  ValidationGroup="verifyemail" 
                                                        Style="border-style: none; border-color: inherit; border-width: 0px; width: 60px; height: 27px; background-image: url('http://localhost:52885/images/send_03.jpg'); cursor: pointer; font-family: 'Myriad Pro'; font-size: 15px; text-align: center; color: #666666; font-weight: bold;" 
                                                        Text="SEND" />
                                                </td>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4" height="24" style="padding-left: 25px; font-family: 'Myriad Pro';
                                    font-size: 13px; color: #1a1a1a; text-align: left;">
                                </td>
                            </tr>
                            </form>
                        </table>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

