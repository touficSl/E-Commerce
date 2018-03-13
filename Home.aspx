<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        var image1 = new Image()
        image1.src = "images/image.jpg"
        var image2 = new Image()
        image2.src = "images/ecommerce1.jpg"
        var image3 = new Image()
        image3.src = "images/images.jpg"
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p align = "center">
    <img align="center" name="slide" src="Images/image.jpg" 
            style="height: 467px; width: 751px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
<script type="text/javascript">
    var step = 1;
    function slideit() {
        document.images.slide.src = eval("image" + step + ".src");
        if (step < 3)
            step++;
        else
            step = 1;
        setTimeout("slideit()", 2500);
    }
    slideit();
</script>
</asp:Content>

