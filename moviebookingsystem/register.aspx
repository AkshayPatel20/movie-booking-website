<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Register</title>


    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />

    <script language="javascript" type="text/javascript">

    </script>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   
       

 <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
 <div class="container-fluid">

<a class="navbar-brand" href="#"><img src="images/IMG-20150401-WA0003.jpg"
 style="height: 45px; width: 236px; top: 2px; line-height: normal; position: absolute; z-index: auto;" /></a>
  
  <div class="navbar-header navbar-right">
  <ul class="nav navbar-nav" nav-tabs>
  <li><a href="index.aspx">Home</a></li>
  <li><a href="aboutus.html">About us</a></li>
  <li><a href="register.aspx">Register</a></li>
    <li><a href="Login.aspx">Admin Login</a></li>
  <li><a href="booking.aspx">Booking</a></li>
  </ul>
  </div>
  </div>
  
</nav>
<br><br>
<br><br>



<div class=" container">

<div class=" row">


<div class =" col-md-8">


 <div class="panel panel-default">
 <div class="panel-heading">
  <h3 class="panel-title">Complete Your Registration Details</h3>
 </div>


<div class=" panel-body">

 
      <strong>Email Id : </strong>&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="emailid" runat="server"></asp:TextBox>
      
      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="emailid"
         ErrorMessage="Enter Your Email Address" CssClass="style1"></asp:RequiredFieldValidator>
      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="emailid"
         ErrorMessage="Enter Correct Id" 
          ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
          CssClass="style1"></asp:RegularExpressionValidator>
         <br/>

         <br/>
      <strong>Username : </strong><asp:TextBox ID="username" runat="server"></asp:TextBox>

      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username"
                        ErrorMessage="Enter Your Username" CssClass="style1"></asp:RequiredFieldValidator>
    
 

  <br/> <br/>
  


      <strong>Password : 
     </strong> 
     <asp:TextBox ID="Password" TextMode="Password" runat="server"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password"
                        ErrorMessage="Create Your Password" CssClass="style1"></asp:RequiredFieldValidator></td>
   
      <br />
   
  <br/> 


  
      <strong>Phone No. :</strong><asp:TextBox ID="PhoneNo" runat="server"></asp:TextBox>
       
       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="PhoneNo"
           ErrorMessage="Enter Your Phone Number" CssClass="style1"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
          runat="server" ControlToValidate="PhoneNo"
             ErrorMessage="Enter 10 digits only" ValidationExpression="\d{10}" 
          CssClass="style1"></asp:RegularExpressionValidator>
<br/><br/>
      <strong>Age : 
       </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Age" runat="server"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Age"
      ErrorMessage="Enter Your Age" CssClass="style1"></asp:RequiredFieldValidator>
      <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Age"
            ErrorMessage="Enter 18-90" MaximumValue="90" MinimumValue="18" 
          Type="Integer" CssClass="style1"></asp:RangeValidator>
  

  <br/><br/>
  
    <asp:Label ID="Label1" runat="server" Text="Country"></asp:Label>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Width="300px" Height="30px">
          <asp:ListItem>Select Your country</asp:ListItem>
          <asp:ListItem>India</asp:ListItem>
          <asp:ListItem>Pakistan</asp:ListItem>
          <asp:ListItem>China</asp:ListItem>
          <asp:ListItem>Nepal</asp:ListItem>
      </asp:DropDownList>



   
      <br />



   
   <br>

    

    <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:RadioButton ID="RadioButton1" Checked="true" Text="Male" GroupName="g1" runat="server"/>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton2" GroupName="g1" Text="Female" runat="server"/>
      




  <br>

  <div class=" form-inline">
 <div class="checkbox">
        <label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="checkbox" class=" col-md-offset-2" required>  I accept terms and conditions
        </label>
      </div>
  </div>

</div>



 <div class="panel-footer" style="overflow:hidden;text-align:right;">
    <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      
        <asp:Button ID="Button1" runat="server" Text="Register" 
            onclick="Button1_Click" />

        <input id="Reset1" type="reset" value="Reset" />
    </div>
  </div>  
  </div>



  </div>



</div>

<div class=" col-md-3">

    <img src="fast_and_furious_7_poster_desing_by_fographics_by_j2torino-d77yf9w.jpg" class=" img-rounded col-md-offset-0" height="400px" width="400px" />


</div>




</div>




</div>


<div class=" container">

    <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="ads.xml" />


</div>



</br>



<div class="navbar navbar-inverse">
    <div class=" container-fluid">
    <p class="navbar-text pull-left">&copy; 2015 AP Cinema - Your Favorite movie booking Website!. All rights reserved.</p>
    </div>

</div>






    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"> </script>
    
 
    <script src="js/bootstrap.min.js" type="text/javascript"></script>

    </form>
</body>
</html>
