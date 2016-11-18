<%-- 
    Document   : index
    Created on : 15-nov-2016, 16:31:48
    Author     : marvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="validacion.validacionDNI" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>validar DNI</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
       
        <form action="" method="post">
            <fieldset>
                <legend>Validacion DNI</legend>
            
            <a>Letra</a>
            <input type="text" name="letra" required/>
            
            <input class="btn btn-success" type="submit" name="ok" value="validar"/>
            </fieldset>
        </form>
       
        <%
            //validar dni
            
            if(request.getParameter("ok") != null)
            {
                
                String dni=request.getParameter("letra");
                Boolean result;
                
                validacionDNI validardni = new validacionDNI();
                
                result=validardni.validar(dni);
                
                if(result)
                {
                out.println("<div class='alert alert-success col-sm-3'>valido</div>");
                }
                else{
                out.println("<div class='alert alert-danger col-sm-3'> no valido</div>");
                }
  
            }
       
        %>
        
    </body>
</html>
