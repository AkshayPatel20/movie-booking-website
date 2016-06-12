<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="user_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>"
        SelectCommand="SELECT theatrename FROM [tbassignmovie] where moviename=@mov">
        <SelectParameters>
            <asp:QueryStringParameter Name="mov" QueryStringField="mov" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <div style="text-align: left">
        <table>
            <tr>
                <td style="width: 137px">
                    <asp:Label ID="Label2" runat="server" Text="Select Date"></asp:Label></td>
                <td style="width: 100px">
                    <asp:DropDownList ID="dat" runat="server" AppendDataBoundItems="True">
                        <asp:ListItem>Select Date</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="dat"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 137px">
                    <asp:Label ID="Label3" runat="server" Text="Select Theatre"></asp:Label></td>
                <td style="width: 100px">
                    <asp:DropDownList ID="tname" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource1"
                        DataTextField="theatrename" DataValueField="theatrename">
                        <asp:ListItem>Select Theatre</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tname"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 137px; height: 24px;">
                    <asp:Label ID="Label4" runat="server" Text="Select Show"></asp:Label></td>
                <td style="width: 100px; height: 24px;">
                    <asp:DropDownList ID="showtime" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                        <asp:ListItem>Select Show</asp:ListItem>
                        <asp:ListItem>9:10 AM</asp:ListItem>
                        <asp:ListItem>12:10 PM</asp:ListItem>
                        <asp:ListItem>3:10 PM</asp:ListItem>
                        <asp:ListItem>6:10 PM</asp:ListItem>
                        <asp:ListItem>9:10 PM</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 100px; height: 24px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="showtime"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr >
                
                <td style="width: 100px">
                    <asp:DropDownList Visible="false" ID="tickts" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 100px">
                </td>
            </tr>

            <tr>
                <td>
                    Enter Email Address :
                    <asp:TextBox ID="emailid" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="emailid"
         ErrorMessage="Enter Your Email Address" CssClass="style1"></asp:RequiredFieldValidator>
      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="emailid"
         ErrorMessage="Enter Correct Id" 
          ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
          CssClass="style1"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Book" />
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click"
                        Text="Back" PostBackUrl="~/Booking.aspx" /><br />
        <br />
        <br />
        <br />
        <br />
    </div>
                    <br />
    <br />


</asp:Content>

