<%--
    AddTeam.aspx
    COMP229 Team Project 1 - Game Tracker
    Thiago de Andrade Souza 300886181
    Edward Song 300915530
    Created on 2016-10-18
    Summary: This page allows an authorized user to add a new team to the database
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EditTeam.aspx.cs" Inherits="COMP229_F16_Team_Project_1.AddTeam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">

        <!-- Main Container -->
        <div class="row content content-container-90">

            <div class="col-xs-12 col-md-12">

                <div class="row" id="preview">
                    <div class="col-xs-12 col-md-6 col-md-offset-3">
                        <div class="thumbnail">
                            <img id="logoPreview" src="/Assets/img/img-placeholder-2.png" />
                            <div class="caption">
                                <h3 id="namePreview">Team Name</h3>
                                <p id="descriptionPreview">Team Story</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="panel">
                    <div class="panel-heading">Team General Info</div>

                    <div class="form-group">
                        <label for="title">Name</label>
                        <input runat="server" type="text" class="form-control name" id="name" placeholder="Team name">
                    </div>

                    <div class="form-group">
                        <label for="description">Description</label>
                        <input runat="server" type="text" class="form-control description" id="description" placeholder="Team description">
                    </div>

                    <div class="form-group">
                        <label for="description">Logo</label>
                        <input runat="server" type="text" class="form-control logoPath" id="logoPath" placeholder="Team url logo">
                    </div>
                </div>
            </div>

            <div class="col-xs-12 col-md-12">
                <div class="text-right">
                    <asp:Button runat="server" CssClass="btn btn-default" OnClick="cancel_Click" Text="Cancel"></asp:Button>
                    <asp:Button runat="server" CssClass="btn btn-default" OnClick="addTeam_click" Text="Add Team" ID="editButton"></asp:Button>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="scripts" runat="server">
    <script src="/Scripts/add-team.js"></script>
</asp:Content>
