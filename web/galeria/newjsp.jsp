<%-- 
    Document   : newjsp
    Created on : Nov 21, 2018, 3:19:15 PM
    Author     : apolu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String url1 = "https://www.google.com/maps/embed/v1/view?key=AIzaSyAFYxvo5TP9xd0W98qM0aSSP1KE5iNNcq0&center=10.39972,-75.51444&zoom=18&maptype=satellite";
        
        %>
        <h1>Hello World!</h1>
        
        
        
        
        <iframe
          class="mapa"
  
  frameborder="0" style="border:0"
  src=<%out.print(url1);%> allowfullscreen>
</iframe>
    </body>
</html>
