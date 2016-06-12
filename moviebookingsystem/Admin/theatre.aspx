<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="theatre.aspx.cs" Inherits="Admin_theatre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="text-align: center">
        <br />
        <br />
        <br />
        <table width="50%">
            <tr>
                <td style="width: 108px; text-align: left">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Theatre Name" Width="135px"></asp:Label></td>
                <td style="width: 158px" >
                    <asp:TextBox ID="txttname" runat="server"></asp:TextBox></td>
                <td style="width: 44px" >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txttname"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 108px; text-align: left" >
                    <asp:Label ID="Label2" runat="server" Text="Theatre Address" Width="147px" Font-Bold="True"></asp:Label></td>
                <td style="width: 158px" >
                    <asp:TextBox ID="txttaddress" runat="server"></asp:TextBox></td>
                <td style="width: 44px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txttaddress"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 108px; text-align: left" >
                    <asp:Label ID="Label3" runat="server" Text="Theatre Size" Font-Bold="True" Width="122px"></asp:Label></td>
                <td style="width: 158px" >
                    <asp:TextBox ID="txttsize" runat="server"></asp:TextBox></td>
                <td style="width: 44px" >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txttsize"
                        ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txttsize"
                        ErrorMessage="Enter correct val" MaximumValue="150" MinimumValue="30" Type="Integer"></asp:RangeValidator></td>
            </tr>
            <tr>
                <td style="width: 108px; text-align: left" >
                    <asp:Label ID="Label4" runat="server" Text="ticket cost" Font-Bold="True" Width="107px"></asp:Label></td>
                <td style="width: 158px" >
                    <asp:TextBox ID="txttcost" runat="server"></asp:TextBox></td>
                <td style="width: 44px" >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txttcost"
                        ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Enter 50-150"
                        MaximumValue="150" MinimumValue="50" Type="Integer" ControlToValidate="txttcost" Width="104px"></asp:RangeValidator></td>
            </tr>
            <tr>
                <td style="width: 108px; text-align: left" >
                    <asp:Label ID="Label5" runat="server" Text="Theatre Manager" Font-Bold="True" Width="126px"></asp:Label></td>
                <td style="width: 158px" >
                    <asp:TextBox ID="txttmanager" runat="server"></asp:TextBox></td>
                <td style="width: 44px" >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txttmanager"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 108px" >
                </td>
                <td style="width: 158px" >
                </td>
                <td style="width: 44px" >
                </td>
            </tr>
            <tr>
                <td style="width: 108px; text-align: left;" >
                    <asp:Button ID="sub" runat="server" Text="Submit" Font-Bold="True" OnClick="sub_Click" />
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                </td>
                <td style="width: 158px" >
                    <asp:Button ID="clear" runat="server" Text="Clear" CausesValidation="False" Font-Bold="True" OnClick="clear_Click" /></td>
                <td style="width: 44px" >
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" NavigateUrl="~/Admin/viewtheatre.aspx">View</asp:HyperLink></td>
            </tr>
        </table>
    </div>

</asp:Content>

