<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .c1{
        text-align: center;
    }
    .c2{
    	margin-top:-10px;
    }
        .style4
        {
            height: 44px;
            width: 192px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td class="style4">
                <table>
                    <tr>
                        <th>
                            <asp:Label ID="lblcategory" Text = "Categories" runat="server" Font-Bold="True" 
                                Font-Italic="True" Font-Size="X-Large" ForeColor="#0066FF" />
                        </th>
                        <th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th>
                        <th>
                            <asp:Label ID="lblGender" Text = "Genders" runat="server" Font-Bold="True" 
                                Font-Italic="True" Font-Size="X-Large" ForeColor="#0066FF" />
                        </th>
                        <th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th>
                        <th>
                            <asp:Label ID="lblSymboleSizes" Text = "Size" runat="server" Font-Bold="True" 
                                Font-Italic="True" Font-Size="X-Large" ForeColor="#0066FF" />
                        </th>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td>    
                            <asp:DropDownList AutoPostBack="True" ID="CmbCategory" ForeColor="#0066FF" 
                                runat="server" Font-Size="X-Large" 
                                onselectedindexchanged="CmbCategory_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                         <th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th>
                        <td>
                            <asp:DropDownList AutoPostBack="True" ID="CmbGender" ForeColor="#0066FF" 
                                runat="server"  Font-Size="X-Large" 
                                onselectedindexchanged="CmbGender_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th>
                        <td>
                            <asp:DropDownList AutoPostBack="True" ID="CmbSymboleSizes" ForeColor="#0066FF" 
                                runat="server"  Font-Size="X-Large" 
                                onselectedindexchanged="CmbSymboleSizes_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                     </tr>
                </table>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
   </table>


    <br />
    <br />


        
<asp:GridView ID="grdCategory" runat="server"
            AutoGenerateColumns="False"
         GridLines="None"
                EmptyDataText="No articles" CellPadding="4" 
        EnableModelValidation="True" ForeColor="#333333">

<AlternatingRowStyle BackColor="White" ForeColor="#284775" />

<Columns>

    <asp:TemplateField HeaderText = "Image" >
    <ItemTemplate>
<img alt="Image article" width="100px" height="100px" src='<%# Eval("picture") %>' />
    </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField HeaderText = "ID" visible="false">
    <ItemTemplate>
        <asp:Label ID="lblarticleID" runat="server"
        Text='<%# Eval("articleID")%>'></asp:Label>
    </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField HeaderText = "Name Product     " >
    <ItemTemplate>
        <asp:Label ID="lblarticleNameProd" runat="server"
        Text='<%# Eval("articleNameProd")%>'></asp:Label>
    </ItemTemplate>
    </asp:TemplateField>


    <asp:TemplateField   HeaderText = "Price($)      ">
    <ItemTemplate>
        <asp:Label ID="lblprice" runat="server"
                Text='<%# Eval("price")%>'></asp:Label>
    </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField   HeaderText = "Name Category" Visible="false">
    <ItemTemplate>
        <asp:Label ID="lblcategoryName" runat="server"
                Text='<%# Eval("categoryName")%>'></asp:Label>
    </ItemTemplate>

</asp:TemplateField>

   <asp:TemplateField   HeaderText = "categoryID" Visible="false">
    <ItemTemplate>
        <asp:Label ID="lblcategoryID" runat="server"
                Text='<%# Eval("categoryID")%>'></asp:Label>
    </ItemTemplate> 
</asp:TemplateField>

    <asp:TemplateField   HeaderText = "Remaining Quantity      ">
    <ItemTemplate>
        <asp:Label ID="lblQuantityRest" runat="server"
                Text='<%# Eval("QuantityRest")%>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>

    <asp:TemplateField   HeaderText = "Size     " >
    <ItemTemplate>
        <asp:Label ID="lblsymbole" runat="server"
                Text='<%# Eval("symbole")%>' ></asp:Label>
    </ItemTemplate>
</asp:TemplateField>

    <asp:TemplateField   HeaderText = "Gender" Visible="false" >
    <ItemTemplate>
        <asp:Label ID="lblgenderDesc" runat="server"
                Text='<%# Eval("genre")%>' Visible="false"></asp:Label>
    </ItemTemplate>
</asp:TemplateField>

   <asp:TemplateField   HeaderText = "Quantity      " >
    <ItemTemplate>
        <asp:TextBox ID="txtquant" Text="1" runat="server" Width="30px"></asp:TextBox>
    </ItemTemplate>
</asp:TemplateField>

 <asp:TemplateField>
    <ItemTemplate>
        <asp:ImageButton ID="ImageButton1" CommandArgument='<%# Eval("articleID")%>' OnClick="insertCmd" Width="30px" Height="30px" ImageUrl="Images/shopping_add_basket.png" runat="server" />
        <asp:Label ID="cmdwasInsert" runat="server" Text="" ForeColor="Green" Visible="false"></asp:Label>
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
</asp:Content>

