<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%> <%@ page
import="java.io.*,java.util.*,java.sql.*"%> <%@ page
import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>BuyMe</title>
    <style>
    	
      .topnav {
        overflow: hidden;
        background-color: white;
      }
      /* Style the links inside the navigation bar */
      .topnav a {
        float: left;
        display: block;
        color: black;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
        font-size: 17px;
      }
      /* Change the color of links on hover */
      .topnav a:hover {
        background-color: #ddd;
        color: black;
      }
      /* Style the "active" element to highlight the current page */
      .topnav a.active {
        background-color: #2196f3;
        color: white;
      }
      /* Style the search box inside the navigation bar */
      .topnav input[type="text"] {
        float: right;
        padding: 6px;
        border: none;
        margin-top: 8px;
        margin-right: 16px;
        font-size: 17px;
      }
      /* When the screen is less than 600px wide, stack the links and the search field vertically instead of horizontally */
      @media screen and (max-width: 600px) {
        .topnav a,
        .topnav input[type="text"] {
          float: none;
          display: block;
          text-align: left;
          width: 100%;
          margin: 0;
          padding: 14px;
        }
        .topnav input[type="text"] {
          border: 1px solid ##000000;
        }
      }
      body,
      html {
        height: 100%;
        width: 100%;
        margin-top:0;
      }
      .topnav{
      	margin:0;
      }
      .fullwidth {
        display: flex;
        flex-direction: column;
        height: 100%;
      }
      .row {
        flex: 1;
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center center;
      }
      .container {
        width: 100%;
        height: 100%;
        margin-left: 6px;
      }
      .toppane {
        height: 33.33%;
        width: 100%;
        float: left;
        border-collapse: collapse;
      }
      .middlepane {
        height: 33.33%;
        width: 100%;
        float: left;
        border-collapse: collapse;
      }
      .bottompane {
        height: 33.33%;
        width: 100%;
        position: relative;
        float: right;
        border-collapse: collapse;
      }

      #submit {
        border-style: initial;
        text-decoration: none;
        background-color: rgb(46, 45, 45);
        color: rgb(241, 239, 239);
        border-radius: 15px;
        padding: 0.2rem 0.5rem;
      }
    </style>
  </head>

  <body>
    <div class="topnav">
      <a class="active" href="#home">Home</a>
      <a href="CreateAuction.jsp">Create Auction</a>
      <a href="Alerts.jsp">Alerts</a>
      <a href="ViewAuctions.jsp"> View Available Auctions</a>
      <input type="text" placeholder="Search.." />
      <a href="Logout.jsp">Logout</a>
    </div>
    <div class="container">
      <div class="toppane">
        <h2>My Auctions</h2>
      </div>
      <div class="middlepane">
        <h2>Auction History</h2>
      </div>
      <div class="bottompane">
        <h2>Bid History</h2>

        <form method="POST" action="BidHistory.jsp">
          <p>
            Sort by Auction id:
            <input type="text" name="auction" id="auction" />
          	<input type="submit" value="Submit" id="submit" />
          </p>
        </form>
      </div>
    </div>
  </body>
</html>