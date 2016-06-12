<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="movies.aspx.cs" Inherits="Admin_movies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div style="text-align: center">
            <br />
            <table>
                <tr>
                    <td style="width: 100px">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Movie Name" Width="150px"></asp:Label></td>
                    <td style="width: 100px; text-align: left">
                        <asp:TextBox ID="txtmname" runat="server" AutoPostBack="True" OnTextChanged="txtmname_TextChanged"></asp:TextBox></td>
                    <td style="width: 100px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtmname"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Movie Director" Width="118px"></asp:Label></td>
                    <td style="width: 100px; text-align: left">
                        <asp:TextBox ID="txtmdir" runat="server"></asp:TextBox></td>
                    <td style="width: 100px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmdir"
                            ErrorMessage="*"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Actres" Width="106px"></asp:Label></td>
                    <td style="width: 100px; text-align: left">
                        <asp:TextBox ID="txtactres" runat="server"></asp:TextBox></td>
                    <td style="width: 100px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtactres"
                            ErrorMessage="*"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Movie Rating" Width="155px"></asp:Label></td>
                    <td style="width: 100px; text-align: left">
                        <asp:TextBox ID="txtmrating" runat="server"></asp:TextBox></td>
                    <td style="width: 100px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtmrating"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtmrating"
                            ErrorMessage="Enter 0 - 5" MaximumValue="5.0" MinimumValue="0.0" Type="Double"></asp:RangeValidator></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Movie Image" Width="152px"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:FileUpload ID="FileUpload1" runat="server" /></td>
                    <td style="width: 100px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="FileUpload1"
                            ErrorMessage="*"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        &nbsp;<asp:Button ID="add" runat="server" Font-Bold="True" OnClick="add_Click" Text="Add"
                            Width="67px" /></td>
                    <td style="width: 100px">
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" NavigateUrl="~/Admin/viewmovie.aspx">View</asp:HyperLink></td>
                    <td style="width: 100px">
                        <asp:Button ID="clear" runat="server" CausesValidation="False" Font-Bold="True" Text="Clear" OnClick="clear_Click" /></td>
                </tr>
            </table>
        </div>

</asp:Content>

