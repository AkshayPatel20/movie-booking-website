<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userhome.aspx.cs" Inherits="user_userhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <div>
    <asp:DataList id="DataList1" runat="server" RepeatDirection="Horizontal" HorizontalAlign="Left">
        
      <ItemTemplate>

        <a href ="Default2.aspx?mov=<%# String.Format("{0}",Eval("moviename")) %>" title="<%# String.Format("{0}",Eval("moviename")) %>">

            <asp:Image ID="Image1" runat="server" Height="145px" Width="226px" ImageUrl='<%# String.Format("../images/{0}",Eval("movieimage")) %>' />  
                         </a>
                        
       </ItemTemplate>
       
    </asp:DataList>
    </div>
    
   <div>
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" NavigateUrl="~/user/chngepwd.aspx">Change Password</asp:HyperLink>
    </div>

</asp:Content>

