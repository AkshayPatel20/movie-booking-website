<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="Admin_AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
   <marquee>Hello Admin</marquee>
 
 <asp:DataList id="DataList1" runat="server" RepeatDirection="Horizontal" HorizontalAlign="Left">
     
        <ItemTemplate>
        <a href="#"  title="<%# String.Format("{0}",Eval("moviename")) %>">

    <asp:Image ID="Image1" runat="server" Height="145px" Width="226px" ImageUrl='<%# String.Format("../images/{0}",Eval("movieimage")) %>' />               </a>
        </ItemTemplate>
        
    </asp:DataList>
  
    
   
</asp:Content>

