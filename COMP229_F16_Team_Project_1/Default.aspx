<%--
    Default.aspx
    COMP229 Team Project 1 - Game Tracker
    Thiago de Andrade Souza 300886181
    Edward Song 300915530
    Created on 2016-10-05
    Summary: Landing page of the website
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="COMP229_F16_Team_Project_1.Default" %>

<%@ Import Namespace="COMP229_F16_Team_Project_1" %>
<%@ Import Namespace="COMP229_F16_Team_Project_1.Models" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Main Container -->
    <div class="row">

        <div class="col-xs-12 col-md-offset-2 col-md-4">
            <% if (lastGame != null) { %>
            <div class="panel landing-score-panel">
                <div class="row scorebox" style="border: 0;" data-toggle="modal" data-target="#modal-game-<%=lastGame.ID %>">
                    <div class="col-xs-5 col-md-5">
                        <div class="thumbnail">
                            <img src="<%=lastGame.team1.logoPath %>" alt="Team 1 Logo" />
                            <div class="caption">
                                <h3><%=lastGame.team1Score %></h3>
                                <p><%=lastGame.team1.name%></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-2 col-md-2 vs">VS</div>
                    <div class="col-xs-5 col-md-5">
                        <div class="thumbnail">
                            <img src="<%=lastGame.team2.logoPath %>" alt="Team 2 Logo" />
                            <div class="caption">
                                <h3><%=lastGame.team2Score %></h3>
                                <p><%=lastGame.team2.name%></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 landing-score-text">
                        <h2><%=lastGame.mainTitle %></h2>
                        <p>
                            <%=lastGame.description%>
                        </p>
                    </div>
                </div>
            </div>

            <div class="modal fade" role="dialog" id="modal-game-<%=lastGame.ID %>">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h2><%=lastGame.mainTitle %></h2>
                        </div>
                        <div class="modal-body">

                            <div class="scorebox" style="border: 0;">
                                <div class="col-xs-5 col-md-5">
                                    <div class="thumbnail">
                                        <img src="<%=lastGame.team1.logoPath %>" alt="Team 1 Logo" />
                                        <div class="caption">
                                            <h3><%=lastGame.team1Score %></h3>
                                            <p><%=lastGame.team1.name%></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-2 col-md-2 vs">VS</div>
                                <div class="col-xs-5 col-md-5">
                                    <div class="thumbnail">
                                        <img src="<%=lastGame.team2.logoPath %>" alt="Team 2 Logo" />
                                        <div class="caption">
                                            <h3><%=lastGame.team2Score %></h3>
                                            <p><%=lastGame.team2.name%></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <p>
                                <%=lastGame.description%>
                            </p>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->

            <%} %>
        </div>
        <!-- /.Left Panel -->

        <!-- Right Panel -->
        <div class="col-xs-12 col-md-4">
            <div class="panel landing-score-panel">
                <% foreach (var game in otherGames) { %>
                <div class="scorebox" data-toggle="modal" data-target="#modal-game-<%=game.ID %>">
                    <div class="col-xs-4">
                        <h1><%=game.team1Score %></h1>
                        <%=game.team1.name %>
                    </div>
                    <div class="col-xs-4 vs">VS</div>
                    <div class="col-xs-4">
                        <h1><%=game.team2Score %></h1>
                        <%=game.team2.name %>
                    </div>
                </div>

                <div class="modal fade" role="dialog" id="modal-game-<%=game.ID %>">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h2><%=game.mainTitle %></h2>
                            </div>
                            <div class="modal-body">

                                <div class="scorebox" style="border: 0;">
                                    <div class="col-xs-5 col-md-5">
                                        <div class="thumbnail">
                                            <img src="<%=game.team1.logoPath %>" alt="Team 1 Logo" />
                                            <div class="caption">
                                                <h3><%=game.team1Score %></h3>
                                                <p><%=game.team1.name%></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-2 col-md-2 vs">VS</div>
                                    <div class="col-xs-5 col-md-5">
                                        <div class="thumbnail">
                                            <img src="<%=game.team2.logoPath %>" alt="Team 2 Logo" />
                                            <div class="caption">
                                                <h3><%=game.team2Score %></h3>
                                                <p><%=game.team2.name%></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <p>
                                    <%=game.description%>
                                </p>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
                <% } %>
            </div>
        </div>
        <!-- /.Right Panel -->
    </div>
    <!-- /.Content Container -->

    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <h1>The League Teams are...</h1>

            <% 
                for (var i = 0; i < allTeams.Count(); i++) {
                    var team = allTeams[i];
            %>
            <div class="col-md-3">
                <div class="thumbnail">
                    <img src="<%=team.logoPath %>" alt="Team 2 Logo" style="height:130px;" />
                    <div class="caption">
                        <h3><%=team.name %></h3>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
    </div>


</asp:Content>
