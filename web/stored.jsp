<%-- 
    Document   : stored
    Created on : Oct 5, 2014, 12:41:44 PM
    Author     : Marta
--%>
<%@ page language="java" import="java.util.*"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*"%>
<%@ page import="java.io.File"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.Blob"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.BatchUpdateException"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="resources/style/mstyle.css" type="text/css"/>
        <title>Podsumowanie zapisania danych</title>
    </head>
    <!-- Laczenie z baza i zapisowanie START -->
   
    <%
      //pobieram do kodu z post http parametry
      String imie          = (String)request.getParameter("i");  
      String nazwisko      = (String)request.getParameter("n");
      String email      = (String)request.getParameter("e_m");
      String plec      = (String)request.getParameter("p");
      String wojewodztwo      = (String)request.getParameter("woj");
      //Tworze polaczenie
      Class.forName("org.apache.derby.jdbc.ClientDriver");
      
      Connection con = DriverManager.getConnection
      ("jdbc:derby://localhost:1527/users","app","app");
      
      //Tworze zapytanie do zapisu SQL 
      PreparedStatement updateemp = con.prepareStatement
      ("insert into UDATA values(?, ?, ?, ?, ?)");
      
      // Uaktualniam zapytanie o dane
      updateemp.setString(1, imie);
      updateemp.setString(2, nazwisko);
      updateemp.setString(3, email);
      updateemp.setString(4, plec);
      updateemp.setString(5, wojewodztwo);
      
      /*updateemp.setString(3, email);
      updateemp.setString(4, płeć);
      updateemp.setString(5, województwo);*/
      
      updateemp.executeUpdate();
      /*
      Statement stmt = con.createStatement();
      String query = "select * from UDATA";
      ResultSet rs =  stmt.executeQuery(query);
      System.out.println("Id Name    Job");
      while (rs.next()) {
         String name = rs.getString("IMIE");
         System.out.println( "  " + name);
      }
       */
%>
  <!-- Laczenie z baza i zapisowanie STOP -->
  
    <body class="tlo0">
        <div class="tlo1">
        <h1 class="nag_h1">Zapisano pomyślnie w bazie</h1>
    </body>
    <table>
                <tr>
                    <td>Imię:</td>
                    <td class="td_con">${param.i}</td>
                </tr>
                <tr>
                    <td>Nazwisko:</td>
                    <td class="td_con">${param.n}</td>
                </tr>
                <tr>
                    <td>E-mail:</td>
                    <td class="td_con">${param.e_m}</td>
                </tr>
                <tr>
                    <td>Płeć:</td>
                    <td class="td_con">${param.p}</td>
                </tr>
                <tr>
                    <td>Województwo:</td>
                    <td class="td_con">${param.woj}</td>
                </tr>
            </table>
    <form action="index.html">
                <input type="submit" value="Dodaj kolejnego użytkownika"/>
    </form>
</div>
    </body>
</html>
