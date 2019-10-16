<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Finish Newsletter Subscription</title>
    </head>
    
    <body>
        <h1>Welcome To Our Newsletter!</h1>
        
        <% 
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String email = request.getParameter("email");
        String age = request.getParameter("age");   
        String frequency = request.getParameter("frequency");
        String accept = request.getParameter("accept");             
        %>
        
        <table border="1">
            <tr>
                <td><strong>Name: </strong></td>
                <td><%= name %></td>
            </tr>
            <tr>
                <td><strong>Surname: </strong></td>
                <td><%= surname %></td>
            </tr>
            <tr>
                <td><strong>Email: </strong></td>
                <td><%= email %></td>
            </tr>
            <tr>
                <td><strong>Age: </strong></td>
                <td><%= age %></td>
            </tr>
            <tr>
                <td><strong>Frequency: </strong></td>
                <td><%= frequency %></td>
            </tr>
            <tr>
                <td><strong>Accept our policy: </strong></td>
                <td><%= accept %></td>
            </tr>
        </table>
            
    </body>
</html>
