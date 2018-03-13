<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
.maintbl
{
	width:100%;
}
.maintbl td 
{
	
}
.mytbl
{
	width:100%;
}
.mytbl td 
{
	padding-left:10px;
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:100%">
    <table class="maintbl">
    <tr>
    <td>
    <div style="width:40%">
        <img src="Images/register_button.png" 
            style="height: 262px; width:300px" />
    </div>
 </td>
 <td>
    <div id="su-details" 
        style="width: 80%">
         <table class="mytbl"  
            <tr>
                <th><asp:Label ID="lblfname" runat="server" Text="First Name : "></asp:Label></th>
                <td><asp:TextBox ID="txtfname" runat="server" MaxLength="50" TextMode="SingleLine" Width="120px" /></td>  
                <td><asp:RequiredFieldValidator ID="fnR" runat="server" ErrorMessage="First Name Required !" ControlToValidate="txtfname" ValidationGroup="add"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <th><asp:Label ID="lbllname" runat="server" Text="Last Name : "></asp:Label></th>
                <td><asp:TextBox ID="txtlname" runat="server" MaxLength="50" TextMode="SingleLine" Width="120px" /></td>
                <td><asp:RequiredFieldValidator ID="lnR" runat="server" ErrorMessage="Last Name Required !" ControlToValidate="txtlname" ValidationGroup="add"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <th><asp:Label ID="Label1" runat="server" Text="Email : "></asp:Label></th>
                <td><asp:TextBox ID="txtemail" runat="server" MaxLength="50" TextMode="SingleLine" Width="120px" /></td>
                <td><asp:RequiredFieldValidator ID="emR" runat="server" ErrorMessage="Email Required !" ControlToValidate="txtemail" ValidationGroup="add"></asp:RequiredFieldValidator></td>
                <td><asp:RegularExpressionValidator ID="emvalid" runat="server" ErrorMessage="Invalid Email !" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="add"></asp:RegularExpressionValidator> </td> 
            </tr>
            <tr>
                <th><asp:Label ID="lblusr" runat="server" Text="UserName : "></asp:Label></th>
                <td><asp:TextBox ID="txtusr" runat="server" MaxLength="50" TextMode="SingleLine" Width="120px" /></td>
                <td><asp:RequiredFieldValidator ID="userR" runat="server" ErrorMessage="UserName Required !" ControlToValidate="txtusr" ValidationGroup="add"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <th><asp:Label ID="lblpswd" runat="server" Text="Password : "></asp:Label></th>
                <td><asp:TextBox ID="txtpswd" runat="server" MaxLength="8" TextMode="Password" Width="120px"/></td>
                <td><asp:RequiredFieldValidator ID="passR" runat="server" ErrorMessage="Password Required !" ControlToValidate="txtpswd" ValidationGroup="add"></asp:RequiredFieldValidator></td>
                <td><asp:CompareValidator ID="cmppass" ControlToCompare="txtpswd" ControlToValidate="txtcpswd" ValidationGroup="add" runat="server" ErrorMessage="Your passwords do not match up !"></asp:CompareValidator></td>
            </tr>
            <tr>
                <th><asp:Label ID="lblcpswd" runat="server" Font-Names="MS Reference Sans Serif" Text="Confirm Password : "></asp:Label></th>
                <td><asp:TextBox ID="txtcpswd" runat="server" MaxLength="50" TextMode="Password" Width="120px" /></td>
               <td><asp:RequiredFieldValidator ID="cpassR" runat="server" ErrorMessage="Confirm Password Required !" ControlToValidate="txtcpswd" ValidationGroup="add"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <th><asp:Label ID="Label2" runat="server" Font-Names="MS Reference Sans Serif" Text="Addresse : "></asp:Label></th>
                <td><asp:TextBox ID="txtAddress" runat="server" MaxLength="50" TextMode="MultiLine" Width="120px" /></td>
                <td><asp:RequiredFieldValidator ID="addR" runat="server" ErrorMessage="Addresse Required !" ControlToValidate="txtAddress" ValidationGroup="add"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <th><asp:Label ID="Label3" runat="server" Font-Names="MS Reference Sans Serif" Text="Tel : "></asp:Label></th>
                <td><asp:TextBox ID="txttel" runat="server" MaxLength="50" TextMode="SingleLine" Width="120px" /></td>
               <td><asp:RequiredFieldValidator ID="telR" runat="server" ErrorMessage="Telephone Required !" ControlToValidate="txttel" ValidationGroup="add"></asp:RequiredFieldValidator></td>
            </tr>
            <tr> 
                <th></th>
                <td><asp:Button ID="SignUpButton" runat="server" Height="26px" OnClick="SignUpButton_Click" Text="Sign Up" ValidationGroup="add" /></td>
                <td><asp:Label ID="usexist" runat="server" Text="UserName already exists" Visible="false" ForeColor="Red"></asp:Label></td>
            </tr>
                <!-- <tr><td>
                    <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="add" runat="server" />
                    </td></tr>-->
        </table>
        <p>
            &nbsp;</p>
    </div></td>
    </tr>
    </table>
</div>
</asp:Content>

