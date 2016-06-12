<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="seating.aspx.cs" Inherits="user_seating" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Italic="True"></asp:Label>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp;
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Book Now" BackColor="#6699FF" ForeColor="#993366" /><br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<div style="text-align: left">
        <table width="70%">
            <tr>
                <td width="80%" style="height: 21px">
    
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                </td>
            </tr>
            <tr>
                <td style="height: 21px" >
                    <asp:PlaceHolder ID="PlaceHolder2"
        runat="server"></asp:PlaceHolder>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:PlaceHolder ID="PlaceHolder3" runat="server"></asp:PlaceHolder>
                </td>
            </tr>
            <tr>
                <td >
    <asp:PlaceHolder ID="PlaceHolder4" runat="server"></asp:PlaceHolder>
                </td>
            </tr>
            <tr>
                <td>
    <asp:PlaceHolder ID="PlaceHolder5" runat="server"></asp:PlaceHolder>
                </td>
            </tr>
            <tr>
                <td >
                </td>
            </tr>
        </table>
    </div>
    &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    &nbsp; &nbsp;
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <br />
    &nbsp;&nbsp;<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False"
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px"
        CellPadding="3" CellSpacing="2" Height="50px" HorizontalAlign="Center" Width="236px">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <Fields>
            <asp:BoundField DataField="bookid" HeaderText="Reservation Id" />
            <asp:BoundField DataField="uname" HeaderText="User Name" />
            <asp:BoundField DataField="tname" HeaderText="Theatre Name" />
            <asp:BoundField DataField="mname" HeaderText="Movie Name" />
            <asp:BoundField DataField="showdate" HeaderText="Show Date" />
            <asp:BoundField DataField="showtime" HeaderText="show Time" />
            <asp:BoundField DataField="nooftickets" HeaderText="No of Tickets" />
            <asp:BoundField DataField="seatno" HeaderText="Seat Nos" />
            <asp:BoundField DataField="totalcost" HeaderText="Cost Of Tickets" />
        </Fields>
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    </asp:DetailsView>
    <br />
    &nbsp;
    <div style="text-align:center">
        <asp:ImageButton ID="ImageButton1" ImageUrl="~/images/PayPal.gif" 
            runat="server" onclick="ImageButton1_Click" />
    </div>
    <br><br><br><br>
</asp:Content>

