<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ticketcancel.aspx.cs" Inherits="user_ticketcancel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp;&nbsp;<br />
    <br />
    <div style="text-align: left">
        <table>
            <tr>
                <td >
                    <asp:Label ID="Label1" runat="server" Text="Enter Booking No" Font-Bold="True" Width="174px"></asp:Label></td>
                <td >
                    <asp:TextBox ID="txtrno" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtrno"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td >
                    <asp:Label ID="Label2" runat="server" Text="Enter User Name " Width="138px" Font-Bold="True"></asp:Label></td>
                <td >
                    <asp:TextBox ID="txtuname" runat="server"></asp:TextBox></td>
                <td >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtuname"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td >
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
            </tr>
            <tr>
                <td >
                </td>
                <td >
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="True" OnClick="Button1_Click"
                        Text="Cancel" /></td>
                <td >
                    <asp:Label ID="Label3" runat="server"></asp:Label></td>
            </tr>
        </table>
    </div>


</asp:Content>

