<%--
    Login.aspx
    COMP229 Assignment 1
    Thiago de Andrade Souza 300886181
    Edward Song 300915530
    Created on 2016-10-05
    Summary: Users can authenticate themselves using a username and password on this page. Also doubles as the registration page.
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="COMP229_F16_Team_Project_1.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <!-- Main Container -->
        <div class="row content content-container-90">
            <div class="alert alert-danger" role="alert" id="errorBox" runat="server"></div>

            <!-- Main Panel -->
            <div class="col-xs-6 col-xs-offset-3">
                <div class="panel">
                    <div class="panel-heading">Log In Credentials</div>

                    <div class="form-group">
                        <label for="email">Email address</label>
                        <input type="email" class="form-control" id="email" placeholder="Email" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" id="password" placeholder="Password" runat="server" />
                    </div>
                    <div class="text-right">
                        <asp:Button runat="server" CssClass="btn btn-default" OnClick="LoginButton_Click" Text="Login"></asp:Button>
                    </div>
                </div>
            </div>
            <!-- ./Main Panel -->
        </div>
        <!-- ./Main Container -->
    </form>
</asp:Content>
