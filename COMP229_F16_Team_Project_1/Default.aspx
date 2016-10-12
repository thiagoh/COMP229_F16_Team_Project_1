<%--
    Default.aspx
    COMP229 Team Project 1 - Game Tracker
    Thiago de Andrade Souza 300886181
    Edward Song 300915530
    Created on 2016-10-05
    Summary: Landing page of the website
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="COMP229_F16_Team_Project_1.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Main Container -->
    <div class="row content content-container-90">

        <!-- Left Panel -->
        <div class="col-xs-12 col-sm-6">
            <div class="panel landing-score-panel">
                <div class="scorebox">
                    <div class="col-xs-4">
                        <h1>5</h1>
                        TORONTO
                    </div>
                    <div class="col-xs-4 vs">VS</div>
                    <div class="col-xs-4">
                        <h1>2</h1>
                        BALTIMORE
                    </div>
                </div>
                <div class="landing-score-text">
                    <h2>Encarnacion sinks O's with walk-off</h2>
                    <p>
                        Edwin Encarnacion hit a three-run, walk-off home run in the 11th inning as the Blue Jays topped the Orioles in the AL Wild Card Game, 
                    sending them to the ALDS and a date against the Rangers.
                    </p>
                </div>
            </div>
        </div>
        <!-- /.Left Panel -->


        <!-- Right Panel -->
        <div class="col-xs-12 col-sm-6">
            <div class="panel landing-score-panel">
                <div class="scorebox">
                    <div class="col-xs-4">
                        <h1>5</h1>
                        TORONTO
                    </div>
                    <div class="col-xs-4 vs">VS</div>
                    <div class="col-xs-4">
                        <h1>2</h1>
                        BALTIMORE
                    </div>
                </div>
                <div class="scorebox">
                    <div class="col-xs-4">
                        <h1>5</h1>
                        TORONTO
                    </div>
                    <div class="col-xs-4 vs">VS</div>
                    <div class="col-xs-4">
                        <h1>2</h1>
                        BALTIMORE
                    </div>
                </div>
                <div class="scorebox">
                    <div class="col-xs-4">
                        <h1>5</h1>
                        TORONTO
                    </div>
                    <div class="col-xs-4 vs">VS</div>
                    <div class="col-xs-4">
                        <h1>2</h1>
                        BALTIMORE
                    </div>
                </div>
                <div class="scorebox">
                    <div class="col-xs-4">
                        <h1>5</h1>
                        TORONTO
                    </div>
                    <div class="col-xs-4 vs">VS</div>
                    <div class="col-xs-4">
                        <h1>2</h1>
                        BALTIMORE
                    </div>
                </div>
            </div>
        </div>
        <!-- /.Right Panel -->
    </div>
    <!-- /.Content Container -->

    <div class="row">
        <div class="col-md-4 col-md-offset-4">

            <h1>Teams in the database</h1>

            <ul>
                <% foreach (var team in teams) { %>
                <li><%= team.name %></li>
                <% } %>
            </ul>
        </div>
    </div>


</asp:Content>
