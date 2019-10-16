<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Newsletter Subscription Form</title>
    </head>
    
    <body>
        <h1>Your Information:</h1>
        
       <% 
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String email = request.getParameter("email");
        String age = request.getParameter("age");                 
        %>
        
        <table>
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
        </table><br/>
        
        <% 

            String error = new String();
			int agge = 0;
			boolean valid = false;
			
			if (name.isEmpty()){
				error = "Empty Name!";
				valid = true;
				out.println("<br>" + error);
			}
			if (surname.isEmpty()){
				error = "Empty Surname!";
				valid = true;
				out.println("<br>" + error);
			}
			if (email.isEmpty()){
				error = "Empty Email!";
				valid = true;
				out.println("<br>" + error);
			}
                            else if
                                (!email.contains("@")){
                                error = "Email should be of the format: xxxx@xxxx !";
                                valid = true;
                                out.println("<br>" + error);
                                }
			if (age.isEmpty()){
				error = "Empty Age!";
				valid = true;
				out.println("<br>" + error);
			}
                            else {
				try {
                                    agge = Integer.parseInt(age);

				} catch (NumberFormatException e) {
                                    error = "Age should be a number!";
                                    valid = true;
                                    out.println("<br>" + error);
				}
                            if (agge < 18) {
				error = "Age should be over 18!";
				valid = true;
				out.println("<br>" + error);
				}
			}
                    
        if (valid == true) {
            out.println("<br/><a href='index.jsp' >Back to Registration Form!</a>");
        }                

        if (valid == false) {
            session.setAttribute("name", name);
            session.setAttribute("surname", surname);
            session.setAttribute("email", email);
            session.setAttribute("age", age);

        %>
        
        
        <form action="page3.jsp" method="post">

            <strong>Newsletter frequency: </strong>
                <select name="frequency">
                    <option value="Every Week">Every Week</option>
                    <option value="Every Month">Every Month</option>
                    <option value="Every Two Months">Every Two Months</option>
                </select><br/>
            
            <strong>Accept our policy: </strong>
                <input type="checkbox" name="accept" checked="checked"/><br/>
        
           
            <input type="hidden" name="name" value=<%=request.getParameter("name")%> />
            <input type="hidden" name="surname" value=<%=request.getParameter("surname")%> />
            <input type="hidden" name="email" value=<%=request.getParameter("email")%> />
            <input type="hidden" name="age" value=<%=request.getParameter("age")%> />
            <br/>
            <input type="submit" value="Submit"/>

        </form>
            
    </body>
</html>

<% } %>

