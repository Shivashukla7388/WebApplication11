<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayPage.aspx.cs" Inherits="WebApplication11.E_CommercePages.DisplayPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 210px;
        }
        .auto-style2 {
            height: 29px;
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" style="margin-left:600px;" Text ="Online Shopping Platform"></asp:Label>
            <br />
        </div>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="True" style="margin-left:670px;" ForeColor="Red" Text="Lets Do Some Shopping!!!"></asp:Label>
        <br />
        <br />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Products in Cart   &nbsp;&nbsp; <asp:Label ID="Label3" runat="server" Font-Bold="True"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" style="margin-left:400px;" NavigateUrl ="~/E-CommercePages/AddToCart.aspx">Move To Cart</asp:HyperLink>
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" style="margin-left:400px;" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" GridLines="Both" Width="774px" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <ItemTemplate>
                <br />
                <table border="1" class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label4" runat="server" Text="ProductID"></asp:Label>
                            &nbsp;<asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("ProductID") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProductImage")%>' Height="170px" Width="170px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Price
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Quantity
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/addtocart.jpg" height="70px" Width="150px"  CommandArgument ='<%#Eval("ProductID")%>' CommandName="addtocart"/>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KeyideasConnectionString %>" SelectCommand="SELECT * FROM [Productdetail]"></asp:SqlDataSource>
        <br />
    </form>
</body>
</html>
