<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Orders.aspx.cs" Inherits="Orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
    Font-Size="XX-Large" ForeColor="#0066FF" Text="Orders"></asp:Label>
<br />


        
<asp:GridView ID="grdOrders" runat="server"
            AutoGenerateColumns="False"
         GridLines="None"
                EmptyDataText="No orders" CellPadding="4" 
        EnableModelValidation="True" ForeColor="#333333">

<AlternatingRowStyle BackColor="White" ForeColor="#284775" />

<Columns>

    <asp:TemplateField HeaderText = "Image" >
    <ItemTemplate>
<img alt="Image article" width="100px" height="100px" src='<%# Eval("picture") %>' />
    </ItemTemplate>
    </asp:TemplateField>


        <asp:TemplateField HeaderText = "Date of Command     " >
    <ItemTemplate>
        <asp:Label ID="lbldate" runat="server"
        Text='<%# Eval("date")%>'></asp:Label>
    </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText = "Date of Payment Command     " >
    <ItemTemplate>
        <asp:Label ID="lbldatepayment" runat="server"
        Text='<%# Eval("dateValidated")%>'></asp:Label>
    </ItemTemplate>
    </asp:TemplateField>

            <asp:TemplateField HeaderText = "Quantity Articles     " >
    <ItemTemplate>
        <asp:Label ID="lblnumberC" runat="server"
        Text='<%# Eval("numberC")%>'></asp:Label>
    </ItemTemplate>
    </asp:TemplateField>

            <asp:TemplateField HeaderText = "Price of Command    " >
    <ItemTemplate>
        <asp:Label ID="lbldtotalPriceC" runat="server"
        Text='<%# Eval("totalPriceC")%>'></asp:Label>
    </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField HeaderText = "Name of Product     " >
    <ItemTemplate>
        <asp:Label ID="lblarticleNameProd" runat="server"
        Text='<%# Eval("articleNameProd")%>'></asp:Label>
    </ItemTemplate>
    </asp:TemplateField>


    <asp:TemplateField   HeaderText = "Price of Article ($)      ">
    <ItemTemplate>
        <asp:Label ID="lblprice" runat="server"
                Text='<%# Eval("price")%>'></asp:Label>
    </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField   HeaderText = "Name Category">
    <ItemTemplate>
        <asp:Label ID="lblcategoryName" runat="server"
                Text='<%# Eval("categoryName")%>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>


    <asp:TemplateField   HeaderText = "Size     " >
    <ItemTemplate>
        <asp:Label ID="lblsymbole" runat="server"
                Text='<%# Eval("symbole")%>' ></asp:Label>
    </ItemTemplate>
</asp:TemplateField>

    <asp:TemplateField   HeaderText = "Gender" >
    <ItemTemplate>
        <asp:Label ID="lblgenderDesc" runat="server"
                Text='<%# Eval("genre")%>' ></asp:Label>
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
                    </s
<br />
<br />
                    </asp:Content>

