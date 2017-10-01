<%-- 
    Document   : index
    Created on : Nov 13, 2013, 11:15:35 AM
    Author     : THUYLINH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="tex/css" href="toursim.css" />
        <title>JSP Page</title>
        <script type="text/javascript" src="ajaxScript.js">
               
        </script>
        

 
      
    </head>
    <body>
    <center>
        <form action="TourismHome">
            <h1>Welcome to the Tourism Site!</h1>
            <table width="1000">
                <tr>
                    <td height="30" align="center" id="londonDesc"></td>
                    <td align="center" id="washingtonDesc"></td>
                    <td align="center" id="egyptDesc"></td>
                    <td align="center" id="dubaiDesc"></td>
                    <td align="center" id="parisDesc"></td>
                </tr>
                <tr>
                    <td><img src="img/city-of-London.jpg" onmouseover="getData('document/london.txt','londonDesc')" onmouseout="document.getElementById('londonDesc').innerHTML=' '"/></td>
                    <td><img src="img/washington.jpg" onmouseover="getData('document/washington.txt','washingtonDesc')" onmouseout="document.getElementById('washingtonDesc').innerHTML=' '"/></td>
                    <td><img src="img/egypt.jpg" onmouseover="getData('document/egypt.txt','egyptDesc')" onmouseout="document.getElementById('egyptDesc').innerHTML=' '"/></td>
                    <td><img src="img/dubai-tourism.jpg" onmouseover="getData('document/dubai.txt','dubaiDesc')" onmouseout="document.getElementById('dubaiDesc').innerHTML=' '"/></td>
                    <td><img src="img/paris.jpg" onmouseover="getData('document/paris.txt','parisDesc')" onmouseout="document.getElementById('parisDesc').innerHTML=' '"/></td>
                </tr>
                
            </table>
            <br/><br/>
            <input type="Submit" value ="Enter">
        </form>
    </center>
    
         
 
</body>
</html>
