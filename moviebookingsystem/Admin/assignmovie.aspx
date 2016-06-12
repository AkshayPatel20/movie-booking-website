<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="assignmovie.aspx.cs" Inherits="Admin_assignmovie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div style="text-align: center">
        <table>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Movie Name"></asp:Label></td>
                <td style="width: 100px">
                    <asp:DropDownList ID="mname" runat="server" Font-Bold="True" AppendDataBoundItems="True">
                        <asp:ListItem>selectmovie</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="mname"
                        ErrorMessage="*" InitialValue="selectmovie"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Theatre Name"></asp:Label></td>
                <td style="width: 100px">
                    <asp:DropDownList ID="tname" runat="server" Font-Bold="True" AppendDataBoundItems="True">
                        <asp:ListItem>Select theatre</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tname"
                        ErrorMessage="*" InitialValue="Select theatre"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 21px;">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="DateAvilable"></asp:Label></td>
                <td style="width: 100px; height: 21px;">
                   <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp;
                <a href="javascript:NewCal('<%=TextBox1.ClientID %>','mmddyyyy')"> <img src="../images/cal.gif" height="20" width="20" alt='Pick a date'/></a></td>
                <td style="width: 100px; height: 21px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 21px">
                    <asp:TextBox ID="TextBox2" runat="server" Visible="false"></asp:TextBox>
                </td>
                <td style="width: 100px; height: 21px">
                </td>
                <td style="width: 100px; height: 21px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Button ID="assignmov" runat="server" Font-Bold="True" Text="Assign" OnClick="assignmov_Click" /></td>
                <td style="width: 100px">
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" Text="View" PostBackUrl="~/Admin/Viewassign.aspx" CausesValidation="False" /></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 21px;">
                </td>
                <td style="width: 100px; height: 21px;">
                </td>
                <td style="width: 100px; height: 21px;">
                </td>
            </tr>
        </table>
    </div>


</asp:Content>

