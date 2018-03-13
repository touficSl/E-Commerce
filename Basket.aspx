<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Basket.aspx.cs" Inherits="Basket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 293px;
        }
        .style4
        {
            width: 217px;
        }
        .style5
        {
            width: 451px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
    Font-Size="XX-Large" ForeColor="#0066FF" Text="My Basket"></asp:Label>
    <br />
    <br />
    <br />

<table>
<tr>  
    <td>
        <table style="width:100%;">
            <tr>
                <td class="style4">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" 
                        Font-Size="X-Large" ForeColor="#0066FF" Text="Total Price :"></asp:Label>
                </td>
                <td class="style5">
                    <asp:Label ID="totallbl" runat="server" Font-Bold="True" Font-Italic="True" 
                        Font-Size="X-Large" ForeColor="#FF6600">0</asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="totallbl0" runat="server" Font-Bold="True" Font-Italic="True" 
                        Font-Size="X-Large" ForeColor="#FF6600">$</asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
        <asp:Label ID="DPlbl" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="X-Large" ForeColor="#0033CC" Height="70px" Text="Delivery Place" 
                        Width="307px"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="txtAdd" runat="server"></asp:TextBox>

                    <asp:Label ID="Label2" runat="server"  Visible="False"></asp:Label>
                </td>
                <td>
     <asp:ImageButton ID="commitimg" runat="server"  OnClick="updateLastBasket" 
            Height="121px" ImageUrl="~/Images/Commit-Icon.png" Width="134px"/>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>

    </td>
    <td class="style3">
        &nbsp;</td>
</tr>
<tr>
    <td>    
<asp:GridView ID="grdOrderBasket" runat="server"
            AutoGenerateColumns="False"
         GridLines="None"
                EmptyDataText="No articles in basket" CellPadding="4" 
        EnableModelValidation="True" ForeColor="#333333">

<AlternatingRowStyle BackColor="White" ForeColor="#284775" />

<Columns>

    <asp:TemplateField HeaderText = "Image    " >
    <ItemTemplate>
<img alt="Image article" width="100px" height="100px" src='<%# Eval("picture") %>' />
    </ItemTemplate>
    </asp:TemplateField>

            <asp:TemplateField   HeaderText = "bid" Visible="false">
    <ItemTemplate>
        <asp:Label ID="lblbid" runat="server"
                Text='<%# Eval("basketID")%>' Visible="false"></asp:Label>
    </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField HeaderText = "Date Command      " >
    <ItemTemplate>
        <asp:Label ID="lbldate" runat="server"
        Text='<%# Eval("date")%>'></asp:Label>
    </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField HeaderText = "Name Product     " >
    <ItemTemplate>
        <asp:Label ID="lblarticleNameProd" runat="server"
        Text='<%# Eval("articleNameProd")%>'></asp:Label>
    </ItemTemplate>
    </asp:TemplateField>


    <asp:TemplateField   HeaderText = "Price of article($)      ">
    <ItemTemplate>
        <asp:Label ID="lblprice" runat="server"
                Text='<%# Eval("price")%>'></asp:Label>
    </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField   HeaderText = "Qtity" Visible="false">
    <ItemTemplate>
        <asp:Label ID="lblQtity" runat="server"
                Text='<%# Eval("QuantityRest")%>' Visible="false"></asp:Label>
    </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField   HeaderText = "Name Category      " >
    <ItemTemplate>
        <asp:Label ID="lblcategoryName" runat="server"
                Text='<%# Eval("categoryName")%>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>

     <asp:TemplateField HeaderText = "articleid" Visible="false">
    <ItemTemplate>
        <asp:Label ID="lblarticleid" runat="server"
        Text='<%# Eval("articleID")%>' Visible="false"></asp:Label>
    </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField   HeaderText = "Size     " >
    <ItemTemplate>
        <asp:Label ID="lblsymbole" runat="server"
                Text='<%# Eval("symbole")%>' ></asp:Label>
    </ItemTemplate>
</asp:TemplateField>

    <asp:TemplateField   HeaderText = "Gender      "  >
    <ItemTemplate>
        <asp:Label ID="lblgenderDesc" runat="server"
                Text='<%# Eval("genre")%>' ></asp:Label>
    </ItemTemplate>
</asp:TemplateField>

<asp:TemplateField   HeaderText = "Quantity      "  >
    <ItemTemplate>
        <asp:Label ID="lblnumberC" runat="server"
                Text='<%# Eval("numberC")%>' ></asp:Label>
    </ItemTemplate>
</asp:TemplateField>

    <asp:TemplateField   HeaderText = "Price of Command ($)      ">
    <ItemTemplate>
        <asp:Label ID="lbltotalcprice" runat="server"
                Text='<%# Eval("totalPriceC")%>'></asp:Label>
    </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField   HeaderText = "cid" Visible="false">
    <ItemTemplate>
        <asp:Label ID="lblcid" runat="server" Visible="false"
                Text='<%# Eval("commandID")%>' ></asp:Label>
    </ItemTemplate>
    </asp:TemplateField>

 <asp:TemplateField>
    <ItemTemplate>
        <asp:ImageButton ID="ImageButton1" CommandArgument='<%# Eval("commandID")%>' OnClick="deleteCmd" Width="30px" Height="30px" ImageUrl="Images/shopping_remove_basket.png" runat="server" />
        <asp:Label ID="cmdwasInsert" runat="server" Text="" ForeColor="Green" Visible="false" ></asp:Label>
    </ItemTemplate>
</asp:TemplateField>


</Columns>

                 <EditRowStyle BackColor="#999999" />
                 <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                 <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                 <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />

</asp:GridView>
</td>
<td class="style3">
    <asp:Image ID="Image1" runat="server" Height="423px" 
        ImageUrl="~/Images/bigstock-d-white-people-with-info-icon-34221209.jpg" 
        Width="285px" />
</td>
</tr>
</table>
    <br />
    </asp:Content>

