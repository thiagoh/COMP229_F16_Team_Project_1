<%--
    Login.aspx
    COMP229 Assignment 1
    Thiago de Andrade Souza 300886181
    Edward Song 300915530
    Created on 2016-10-18
    Summary: This page is used to register a user
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="COMP229_F16_Team_Project_1.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">
        <!-- Main Container -->
        <div class="row content content-container-90">

            <div class="alert alert-danger" role="alert" ID="errorBox" runat="server">

            </div>

            <!-- Main Panel -->
            <div class="col-xs-6 col-xs-offset-3">
                <div class="panel">
                    <div class="panel-heading">Log In Credentials</div>

                    <div class="form-group">
                        <label for="email1">Email address</label>
                        <input runat="server" type="email" class="form-control" id="email1" placeholder="Email">
                    </div>
                    <div class="form-group">
                        <label for="password1">Password</label>
                        <input runat="server" type="password" class="form-control" id="password1" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <label for="password2">Password</label>
                        <input runat="server" type="password" class="form-control" id="password2" placeholder="Password Confirmation">
                        <asp:CompareValidator ErrorMessage="Your Passwords Must Match" Type="String" Operator="Equal" 
                            ControlToValidate="password2" runat="server"
                            ControlToCompare="password1" CssClass="label label-danger" />
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox">
                            Check me out
                        </label>
                    </div>
                    <div class="text-right">
                        <asp:Button runat="server" CssClass="btn btn-default" OnClick="registerUser" Text="Register" />
                    </div>
                </div>
            </div>
            <!-- ./Main Panel -->
        </div>
        <!-- ./Main Container -->
    </form>
</asp:Content>
