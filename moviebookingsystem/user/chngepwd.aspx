<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="chngepwd.aspx.cs" Inherits="user_chngepwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="text-align: left">
        <br />
        <br />
        <br />
        <table width="70%">
            <tr>
                <td  >
                    <asp:Label ID="Label1" runat="server" Text="Old Password" Font-Bold="True"></asp:Label></td>
                <td >
                    <asp:TextBox ID="txtopwd" runat="server" TextMode="Password"></asp:TextBox></td>
                <td >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtopwd"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td  >
                    <asp:Label ID="Label2" runat="server" Text="New Password" Font-Bold="True"></asp:Label></td>
                <td >
                    <asp:TextBox ID="npwd" runat="server" TextMode="Password"></asp:TextBox></td>
                <td >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="npwd"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td  >
                    <asp:Label ID="Label3" runat="server" Text="Confirm Password" Font-Bold="True"></asp:Label></td>
                <td >
                    <asp:TextBox ID="txtcnfrm" runat="server" TextMode="Password"></asp:TextBox></td>
                <td >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcnfrm"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td >
                </td>
                <td >
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Font-Bold="True" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server"></asp:Label></td>
            </tr>
        </table>
        <br />
        <br />
    </div>

</asp:Content>

