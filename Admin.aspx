<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


            .style4
        {
            width: 168px;
            height: 187px;
        }
        
        a {
            outline: none;
            text-decoration: underline;
            color: #CC0000;
        }

            .style5
        {
            height: 187px;
        }
        .style1
        {
            width: 168px;
        }
        
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%; height: 721px;">
            <tr>
                <td class="style4">
                    <asp:Image ID="Image2" runat="server" Height="183px" 
                        ImageUrl="~/Images/basket.jpg" Width="226px" />
                    <br />
                    <asp:Menu ID="Menu1" runat="server">
                        <Items>
                            <asp:MenuItem Text="Menu_Reports" Value="Menu">
                                <asp:MenuItem Text="Report_Orders_By_User" Value="Report_Orders" 
                                    NavigateUrl="~/Reports/Report_Order_User.aspx"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/Reports/Report_Article.aspx" 
                                    Text="Report_Articles" Value="Report_Articles"></asp:MenuItem>
                                <asp:MenuItem Text="Report_Sales_In_Year" Value="Report_Sales_In_Year" 
                                    NavigateUrl="~/Reports/Report_Economic.aspx">
                                </asp:MenuItem>
                            </asp:MenuItem>
                        </Items>
                    </asp:Menu>
                    <br />
                    <br />
                </td>
                <td class="style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LogoutLinkButton" runat="server" 
                        OnClick="Logout">Logout</asp:LinkButton>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Labelwelcome" runat="server" Font-Bold="True" Font-Italic="True" 
                        Font-Size="XX-Large" ForeColor="#0066FF" Text = "Welcome Admin"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
           
                            <asp:Label ID="lblcategory0" 
                        Text = "Select a Category to see her articles" runat="server" Font-Bold="True" 
                                Font-Italic="True" Font-Size="X-Large" ForeColor="#0066FF" />
                        &nbsp;:&nbsp;
                            <asp:DropDownList AutoPostBack="True" ID="Cmbuart" 
                        ForeColor="#0066FF" runat="server"  Font-Size="X-Large" 
                        onselectedindexchanged="Cmbuart_SelectedIndexChanged" >
                            </asp:DropDownList>
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

    <asp:TemplateField HeaderText = "Name Product     " >
    <ItemTemplate>
        <asp:Label ID="lblarticleNameProd0" runat="server"
        Text='<%# Eval("articleNameProd")%>'></asp:Label>
    </ItemTemplate>
    </asp:TemplateField>


    <asp:TemplateField   HeaderText = "Price($)      ">
    <ItemTemplate>
        <asp:Label ID="lblprice0" runat="server"
                Text='<%# Eval("price")%>'></asp:Label>
    </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField   HeaderText = "Name Category" Visible="false">
    <ItemTemplate>
        <asp:Label ID="lblcategoryName1" runat="server"
                Text='<%# Eval("categoryName")%>'></asp:Label>
    </ItemTemplate>

</asp:TemplateField>

   <asp:TemplateField   HeaderText = "categoryID" Visible="false">
    <ItemTemplate>
        <asp:Label ID="lblcategoryID" runat="server"
                Text='<%# Eval("categoryID")%>'></asp:Label>
    </ItemTemplate> 
</asp:TemplateField>

    <asp:TemplateField   HeaderText = "Size     " >
    <ItemTemplate>
        <asp:Label ID="lblsymbole0" runat="server"
                Text='<%# Eval("symbole")%>' ></asp:Label>
    </ItemTemplate>
</asp:TemplateField>

    <asp:TemplateField   HeaderText = "Gender" >
    <ItemTemplate>
        <asp:Label ID="lblgender" runat="server"
                Text='<%# Eval("genre")%>' ></asp:Label>
    </ItemTemplate>
</asp:TemplateField>

   <asp:TemplateField   HeaderText = "Initial Quantity Article      " >
    <ItemTemplate>
        <asp:Label ID="lbliQuantity" runat="server"
                Text='<%# Eval("QuantityInStock")%>' ></asp:Label>
    </ItemTemplate>
</asp:TemplateField>

   <asp:TemplateField   HeaderText = "Remaining Quantity Article      " >
    <ItemTemplate>
        <asp:Label ID="lblQuantity" runat="server"
                Text='<%# Eval("QuantityRest")%>' ></asp:Label>
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

                    <br />
                    <br />
                    <br />
                    <table>
                        <tr>
                            <th><asp:Label ID="Label4" 
                        Text = "Insert Item" runat="server" Font-Bold="True" 
                                Font-Italic="True" Font-Size="X-Large" ForeColor="#0066FF" /></th>
                        </tr>
                        <tr>
                            <td>
                                article Name Product :
                            </td>  
                            <td>
                                <asp:TextBox ID="nameProd" runat="server" Width="100" Height="16"/>
                                <asp:RequiredFieldValidator ID="reqval" runat="server" ControlToValidate="nameProd" Text="nameProd is required !" ValidationGroup="add"></asp:RequiredFieldValidator>
                            </td>  
                        </tr>
                        <tr>
                            <td>
                                Path Picture :
                            </td>  
                            <td>
                                <asp:TextBox ID="pathPic" runat="server" Width="100" Height="16"/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="pathPic" Text="nameProd is required !" ValidationGroup="add"></asp:RequiredFieldValidator>         
                            </td>  
                        </tr>
                        <tr>
                            <td>
                                Price :
                            </td>  
                            <td>
                                <asp:TextBox ID="price" runat="server" Width="100" Height="16"/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="price" Text="nameProd is required !" ValidationGroup="add"></asp:RequiredFieldValidator>         
                            </td>  
                        </tr>
                        <tr>
                            <td>
                                Catergory Name :
                            </td> 
                            <td>
                                <asp:DropDownList ID="Catergories" runat="server" DataSourceID="SqlDataSource1" 
                                    DataTextField="categoryName" DataValueField="categoryName"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:connection %>" 
                                    SelectCommand="SELECT DISTINCT [categoryName] FROM [Category]">
                                </asp:SqlDataSource>
                            </td>  
                        </tr>
                        <tr>
                            <td>
                                Gender :
                            </td> 
                            <td>
                                <asp:DropDownList ID="cmbgenres" runat="server" ></asp:DropDownList>
                                
                        </tr>
                        <tr>
                            <td>
                                Quantity :
                            </td>  
                            <td>
                                <asp:TextBox ID="Qtity" runat="server" Width="100" Height="16"/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Qtity" Text="nameProd is required !" ValidationGroup="add"></asp:RequiredFieldValidator>                               
                            </td>  
                        </tr>
                        <tr>
                            <td>
                                Size :
                            </td>  
                            <td>
                                <asp:DropDownList ID="cmbSize" runat="server" />
                                
                            </td>  
                        </tr>
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton1" runat="server" ValidationGroup="add" Height="49px" ImageUrl="~/Images/add-address.png" Width="53px" OnClick="addItem"/>
                            <td>
                                <asp:Label ID="mess" runat="server" ForeColor="Green" Visible="false"/>  
                        </tr>  
                    </table>
                    <br />
                    <br />
                            <asp:Label ID="lblcategory" 
                        Text = "Select a Username to see his Basket Order" runat="server" Font-Bold="True" 
                                Font-Italic="True" Font-Size="X-Large" ForeColor="#0066FF" />
                        &nbsp;:&nbsp;
                            <asp:DropDownList AutoPostBack="True" ID="Cmbuser" 
                        ForeColor="#0066FF" runat="server"  Font-Size="X-Large" 
                        onselectedindexchanged="Cmbuserbasketorder_SelectedIndexChanged">
                            </asp:DropDownList>
                        <br />
                    <br />


        
<asp:GridView ID="grdOrdersuser" runat="server"
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

            <asp:TemplateField HeaderText = "Price of Command  ($)  " >
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
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
