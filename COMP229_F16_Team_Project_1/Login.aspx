<%--
    Login.aspx
    COMP229 Assignment 1
    Thiago H 300xxxxxx
    Edward Song 300915530
    Created on 2016-10-05
    Summary: Users can authenticate themselves using a username and password on this page. Also doubles as the registration page.
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="COMP229_F16_Team_Project_1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Main Container -->
    <div class="row content content-container-90">
        <!-- Main Panel -->
        <div class="col-xs-6 col-xs-offset-3">
            <div class="panel">
                <div class="panel-heading">Log In Credentials</div>

                <form>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                  </div>
                  <div class="checkbox">
                    <label>
                      <input type="checkbox"> Check me out
                    </label>
                  </div>
                  <button type="submit" class="btn btn-default">Submit</button>
                </form>
            </div>
        </div> <!-- ./Main Panel -->
    </div> <!-- ./Main Container -->
</asp:Content>
