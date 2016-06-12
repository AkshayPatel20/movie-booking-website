<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="viewtheatre.aspx.cs" Inherits="Admin_viewtheatre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="text-align: left ">
        
            <table>
                <tr>
                    <td style="width: 100px">
                        <asp:Label ID="Label1" runat="server" Text="Theatre Name"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True" Font-Bold="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem>Select theatre</asp:ListItem>
                        </asp:DropDownList></td>
                    <td style="width: 100px">
                        <asp:Button ID="Button1" runat="server" Text="View All" CausesValidation="False" OnClick="Button1_Click" /></td>
                    <td style="width: 100px">
                        <asp:Button ID="updat" runat="server" Text="Update" OnClick="updat_Click" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1"
                            ErrorMessage="*" InitialValue="Select theatre"></asp:RequiredFieldValidator></td>
                </tr>
            </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow"
            BorderColor="Tan" BorderWidth="1px" CellPadding="12" ForeColor="Black" GridLines="Horizontal" CaptionAlign="Left">
            <FooterStyle BackColor="Tan" />
            <Columns>
                <asp:BoundField DataField="tname" HeaderText="Name" />
                <asp:BoundField DataField="tmanager" HeaderText="Manager" />
                <asp:BoundField DataField="ttcost" HeaderText="Ticketcost" />
                <asp:BoundField DataField="taddress" HeaderText="Address" />
                <asp:BoundField DataField="tsize" HeaderText="Theatre Capacity" />
            </Columns>
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:GridView>
        
    <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both" HorizontalAlign="Left" CaptionAlign="Left"  >
        <ItemTemplate>
            <asp:Label ID="Label2" runat="server" Text="Thatre Name"></asp:Label>
            
            <asp:Label ID="Label3" runat="server" Text='<%#Eval("tname")%>'></asp:Label>
            
            <asp:Label ID="Label4" runat="server" Text="Theatre Manager"></asp:Label>
            
            <asp:Label ID="Label5" runat="server" Text='<%#Eval("tmanager") %>'></asp:Label>
            
            <asp:Label ID="Label6" runat="server" Text="Theatre Capacity"></asp:Label>
            
            <asp:Label ID="Label7" runat="server" Text='<%#Eval("tsize") %>'></asp:Label>
            
            <asp:Label ID="Label8" runat="server" Text="Theatre Address"></asp:Label>
            
            <asp:Label ID="Label9" runat="server" Text='<%#Eval("taddress") %>'></asp:Label>
            
            <asp:Label ID="Label10" runat="server" Text="Ticket Cost"></asp:Label>
            
            <asp:Label ID="Label11" runat="server" Text='<%#Eval("ttcost") %>'></asp:Label>
            </ItemTemplate>
       
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    
    </asp:DataList>
        
    </div>

</asp:Content>

