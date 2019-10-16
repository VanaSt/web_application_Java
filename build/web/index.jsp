<!DOCTYPE html>

<html>
    <head>
        <title>Newsletter Subscription Form</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    
    <body>
        <h1>Subscribe To Our Newsletter!</h1>
        
        <form action="page2.jsp" method="post">
            <table>
                <tr>
                    <td><strong>Name: </strong></td>
                    <td><input type="text" name="name" size="30"/></td>
                </tr>
                <tr>
                    <td><strong>Surname: </strong></td>
                    <td><input type="text" name="surname" size="30"/></td>
                </tr>
                <tr>
                    <td><strong>Email: </strong></td>
                    <td><input type="text" name="email" size="30"/></td>
                </tr>
                <tr>
                    <td><strong>Age: </strong></td>
                    <td><input type="text" name="age" size="3"/></td> 
                </tr>
            </table>
            <br/>
            <input type="submit" value="Submit"/><br/><br/>
            <input type="reset" value="Clear"/>
        </form>
        
    </body>
</html>
