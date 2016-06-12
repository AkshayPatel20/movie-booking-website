<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="viewmovie.aspx.cs" Inherits="Admin_viewmovie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="text-align: center">
        <table>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label1" runat="server" Text=" Movie Name" Font-Bold="True"></asp:Label></td>
                <td style="width: 137px">
                    <asp:DropDownList ID="movname" runat="server" AppendDataBoundItems="True" AutoPostBack="True" Font-Bold="True">
                        <asp:ListItem>Select Movie</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="movname"
                        ErrorMessage="*" InitialValue="Select Movie"></asp:RequiredFieldValidator></td>
                <td style="width: 100px">
                    </td>
                <td style="width: 100px">
                    <asp:Button ID="Button2" runat="server" Text="Delete" Font-Bold="True" OnClick="Button2_Click" /></td>
                <td style="width: 100px">
                    </td>
                <td style="width: 100px">
                </td>
            </tr>
        </table>
        </div>
    <br />
    <br />
    <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" GridLines="Both" HorizontalAlign="Center">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text="MovieName"></asp:Label>
            &#160; &#160; &#160;&#160;
            <asp:Label ID="Label4" runat="server" Text='<%# Eval("moviename") %>'></asp:Label><br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Movie Director"></asp:Label>: &#160;
            <asp:Label ID="movieimageLabel" runat="server" Text='<%# Eval("director") %>'></asp:Label><br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Actres"></asp:Label>
            &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160;
            <asp:Label ID="Label6" runat="server" Text='<%# Eval("movieactres") %>'></asp:Label><br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Movie Rating"></asp:Label>
            &#160; &#160; &#160;
            <asp:Label ID="Label8" runat="server" Text='<%# Eval("movierating") %>'></asp:Label><br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="112px" ImageUrl='<%# Eval("movieimage", "~/Admin/images/{0}") %>'
                Width="196px" /><br />
       </ItemTemplate>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    </asp:DataList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>"
        
    SelectCommand="SELECT [movieimage], [moviename], [director], [movieactres], [movierating] FROM [tblmovie] WHERE ([moviename] = @moviename)">
        <SelectParameters>
            <asp:ControlParameter ControlID="movname" Name="moviename" PropertyName="SelectedValue"
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

