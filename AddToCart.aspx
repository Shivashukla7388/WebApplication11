<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="WebApplication11.E_CommercePages.AddToCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#3333CC" Text="Online Shopping Point"></asp:Label>
            <br />
            <br />
            Products in Cart&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#FF9900"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" Style="margin-left:140px;" NavigateUrl="~/E-CommercePages/DisplayPage.aspx">Continue Shopping !!!!</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnClear" runat="server" Height="26px" OnClick="BtnClear_Click" Style="border-radius:30px; margin-left:150px;" Text="Clear Cart" Width="122px" />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Height="397px" OnRowDeleting="GridView1_RowDeleting" ShowFooter="True" Width="941px">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="S.No" />
                    <asp:BoundField DataField="productid" HeaderText="Product ID">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="productimage" ItemStyle-Height="150px" ItemStyle-Width="150px" HeaderText ="Product Image">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:ImageField>
                    <asp:BoundField DataField="productname" HeaderText="Product Name">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="price" HeaderText="Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="quantity" HeaderText="Quantity">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" Height="70px" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
