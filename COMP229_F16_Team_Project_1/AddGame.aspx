<%--
    AddGame.aspx
    COMP229 Team Project 1 - Game Tracker
    Thiago de Andrade Souza 300886181
    Edward Song 300915530
    Created on 2016-10-05
    Summary: This page allows an authorized user to add a new game to the database
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddGame.aspx.cs" Inherits="COMP229_F16_Team_Project_1.AddGame" %>

<%@ Import Namespace="COMP229_F16_Team_Project_1" %>
<%@ Import Namespace="COMP229_F16_Team_Project_1.Models" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">

        <!-- Main Container -->
        <div class="row content content-container-90">

            <div class="col-xs-12 col-md-12">

                <div class="panel">
                    <div class="panel-heading">Game General Info</div>

                    <div class="form-group">
                        <label for="title">Title</label>
                        <input runat="server" type="text" class="form-control" id="Text1" placeholder="Game title">
                    </div>

                    <div class="form-group">
                        <label for="description">Description</label>
                        <input runat="server" type="text" class="form-control" id="Text2" placeholder="Game description">
                    </div>
                </div>

            </div>

            <!-- Left Panel -->
            <div class="col-xs-12 col-sm-6">
                <div class="panel">
                    <div class="panel-heading">Home Team Info</div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">Team 1</label>
                        <select name="team1Id">
                            <option value="">Select a valid Team</option>
                            <% foreach (var team1 in teams1) { %>
                            <option value="<%=team1.ID %>"><%=team1.name %></option>
                            <% } %>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="score1">Score</label>
                        <input runat="server" type="text" class="form-control" id="score1" placeholder="Score of Team1">
                    </div>
                </div>
            </div>
            <!-- ./Left Panel -->

            <!-- Right Panel -->
            <div class="col-xs-12 col-sm-6">
                <div class="panel">
                    <div class="panel-heading">Away Team Info</div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">Team 2</label>
                        <select name="team2Id">
                            <option value="">Select a valid Team</option>
                             <% foreach (var team2 in teams2) { %>
                            <option value="<%=team2.ID %>"><%=team2.name %></option>
                            <% } %>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="score2">Score</label>
                        <input runat="server" type="text" class="form-control" id="score2" placeholder="Score of Team2">
                    </div>
                </div>
            </div>
            <!-- ./Right Panel -->

            <div class="col-xs-12 col-md-12">
                <div class="text-right">
                    <asp:Button runat="server" CssClass="btn btn-default" OnClick="addGame_click" Text="Login"></asp:Button>
                </div>
            </div>
        </div>
    </form>

</asp:Content>
