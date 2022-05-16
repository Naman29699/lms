<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="LibMan.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
       $(document).ready(function () {

           //$(document).ready(function () {
           //$('.table').DataTable();
           // });

           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
           //$('.table1').DataTable();
       });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




<div class="container-fluid">
<div class="row">
<div class="col-md-5">
<div class="card">
<div class="card-body">



<div class="row">
<div class="col">
<center>
<img src="imgs/generaluser.png" width="100px" />
</center>
</div>
</div>



<div class="row">
<div class="col">
<center>
<h4>Your Profile</h4>
<span>Account Status - </span>
<asp:Label class="badge rounded-pill bg-info text-dark"
ID="Label1" runat="server" Text="Your status"></asp:Label>
</center>
</div>
</div>



<div class="row">
<div class="col">
<hr />
</div>
</div>



<div class="row">
<div class="col-md-6">
<label>Full Name</label>
<div class="form-group">
<asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name" ></asp:TextBox>
</div> <br />
</div>
<div class="col-md-6">
<label>Date of Birth</label>
<div class="form-group form-label">
<asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date of Birth" TextMode="Date"></asp:TextBox>
</div>
</div>
</div>



<div class="row">
<div class="col-md-6">
<label>Contact Number</label>
<div class="form-group">
<asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact Number" TextMode="Number"></asp:TextBox>
</div> <br />
</div>
<div class="col-md-6">
<label>Email ID</label>
<div class="form-group form-label">
<asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
</div>
</div>
</div>



<div class="row">
<div class="col-md-4">
<label>State</label>
<div class="form-group">
<asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
<asp:ListItem Text="Select" Value="Select"/>
<asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh"/>
<asp:ListItem Text="Arunachar Pradesh" Value="Arunachar Pradesh"/>
<asp:ListItem Text="Delhi" Value="Delhi"/>
<asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh"/>



</asp:DropDownList>
</div> <br />
</div>

<div class="col-md-4">
<label>City</label>
<div class="form-group">
<asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="City"></asp:TextBox>
</div> <br />
</div>
<div class="col-md-4">
<label>Pincode</label>
<div class="form-group form-label">
<asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
</div>
</div>
</div>



<div class="row">
<div class="col">
<label>Full Address</label>
<div class="form-group">
<asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Enter full address" TextMode="MultiLine" Rows="2"></asp:TextBox>
</div> <br />
</div>
</div>
<br />

<div class="row">
<div class="col">
<center>
<span class="badge rounded-pill bg-info">Login Credentials</span>
</center>
</div>
</div>
<br />



<div class="row">
<div class="col-md-4">
<label>User ID</label>
<div class="form-group">
<asp:TextBox class="form-control" ID="TextBox8" runat="server"
placeholder="User ID" ReadOnly="True"></asp:TextBox>
</div> <br />
</div>
<div class="col-md-4">
<label>Old Password</label>
<div class="form-group form-label">
<asp:TextBox CssClass="form-control" ID="TextBox9" runat="server"
placeholder="Password" TextMode="Password" ReadOnly="True"></asp:TextBox>
</div>
</div>
<div class="col-md-4">
<label>New Password</label>
<div class="form-group form-label">
<asp:TextBox CssClass="form-control" ID="TextBox20" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
</div>
</div>
</div>



<div class="row">
<div class="col">
<center>
<div class="form-group form-label">
<asp:Button class="btn btn-lg btn-primary" ID="Button1"
runat="server" Text="Update" OnClick="Button1_Click" />
</div>
</center>

</div>
</div>



</div>
</div>



<a href="homepage.aspx"><< Back to Home</a> <br /> <br />
</div>



<div class="col-md-7">
<div class="card">
<div class="card-body">



<div class="row">
<div class="col">
<center>
<img src="imgs/books1.png" width="100px" />
</center>
</div>
</div>



<div class="row">
<div class="col">
<center>
<h4>Your Issued Books</h4>

<asp:Label class="badge rounded-pill bg-info text-dark"
ID="Label2" runat="server" Text="Your books info"></asp:Label>
</center>
</div>
</div>



<div class="row">
<div class="col">
<hr />
</div>
</div>



<div class="row">
<div class="col">
<asp:GridView class="table table-striped table-bordered"
ID="GridView1" runat="server"></asp:GridView>
</div>
</div>





</div>
</div>



</div>
</div>
</div>



</asp:Content>