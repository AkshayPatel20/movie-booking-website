<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="Viewassign.aspx.cs" Inherits="Admin_Viewassign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="text-align: center">
        <table>
            <tr>
                <td style="width: 100px; height: 24px">
                    <asp:Label ID="Label1" runat="server" Text="Movie Name"></asp:Label></td>
                <td style="width: 100px; height: 24px">
                    <asp:DropDownList ID="movname" runat="server" AppendDataBoundItems="True">
                        <asp:ListItem>select</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="movname"
                        ErrorMessage="*" InitialValue="select" ValidationGroup="t"></asp:RequiredFieldValidator></td>
                <td style="width: 100px; height: 24px">
                    <asp:Label ID="Label2" runat="server" Text="Theatre Name"></asp:Label></td>
                <td style="width: 100px; height: 24px">
                    <asp:DropDownList ID="tname" runat="server" AppendDataBoundItems="True">
                        <asp:ListItem>select</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tname"
                        ErrorMessage="*" InitialValue="select" ValidationGroup="m"></asp:RequiredFieldValidator></td>
                <td style="width: 207px; height: 24px">
                    <asp:Button ID="Button1" runat="server" Text="Search" ValidationGroup="t" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="Searchmov" ValidationGroup="m" OnClick="Button2_Click" /></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 24px">
                </td>
                <td style="width: 100px; height: 24px">
                </td>
                <td style="width: 100px; height: 24px">
                </td>
                <td style="width: 100px; height: 24px">
                </td>
                <td style="width: 207px; height: 24px">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="viewall" /></td>
            </tr>
        </table>
    </div>
    &nbsp; &nbsp;
    <asp:GridView ID="GridView3" runat="server">
    </asp:GridView>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#E7E7FF"
        BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" HorizontalAlign="Center">
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <AlternatingRowStyle BackColor="#F7F7F7" />
    </asp:GridView>
    <asp:GridView ID="GridView2" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84"
        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" HorizontalAlign="Center">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    </asp:GridView>

</asp:Content>

