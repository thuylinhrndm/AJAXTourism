<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    
    <xsl:template match="/">
        <html>
            <head>
                <title>Tourism</title> 
                <link rel="stylesheet" type="text/css" href="tourism.css" />
                <script type="text/javascript" src="ajaxScript.js">
               
                </script>
                
            </head>
            
            <body style="font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px">
                <center>
                    <img src="img/banner.gif" alt="Tourism" height="400" width="1000"/>  
                </center>
                <div id="followUs">
                    <a href="https://www.facebook.com/" target="_blank">
                        <img src="img/facebook.jpeg" alt="facebookLogo" height="30" width="40" />
                    </a> 
                    <a href="https://twitter.com/" target="_blank" >
                        <img src="img/twitter.png" alt="twitterLogo" height="30" width="40" />
                    </a> 
                    <a href="https://instagram.com/" target="_blank" >
                        <img src="img/instagram.jpeg" alt="instagramLogo" height="30" width="40" />
                    </a> 
                </div>
                <center>
                    <div id="hader">
                        <br />
                        <p align="center">
                            <a href="TourismHome">Home</a> 
                        </p>
                        <h1>Welcome to Tourism Site</h1>
                       
                      
                    </div>    
    
                    <hr/> 
                    <table width = "1000"> 
                        <tr>
                            <td style="text-align:justify; margin: 5px;" colspan = "4">The Tourism Site offers a wealth of specialist experience in tourism, with clients ranging from international bodies and national and local government to tourism enterprises, heritage and environmental agencies and local communities.
                                Our mission is to combine innovative ideas and realistic solutions, with the principles of sustainable tourism at their heart.
                                On this site you can find deeply interested in cultural and spiritual events in different country aroud the world, choosing your tours and taking part in different events will be one of the best ways to enjoy your holiday.
                            </td>
                            <br/>
                            
                        </tr>
                        <tr height="30" align="center">
                            <td id="vietnamDesc"> </td>
                            <td id="omanDesc"> </td>
                            <td id="irelandDesc"> </td>
                            <td id="singaporeDesc"> </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="VietNam">
                                    <img src="img/Halong-Bay-Vietnam.jpg" onmouseover="getData('document/vietnam.txt','vietnamDesc')" onmouseout="document.getElementById('vietnamDesc').innerHTML=' '"/>
                                </a>
                            </td>
                            <td>
                                <a href="Oman">
                                    <img src="img/oman.jpg" onmouseover="getData('document/oman.txt','omanDesc')" onmouseout="document.getElementById('omanDesc').innerHTML=' '"/>
                                </a> 
                            </td>
                            <td>
                                <a href="Ireland">
                                    <img src="img/ireland.jpg" onmouseover="getData('document/ireland.txt','irelandDesc')" onmouseout="document.getElementById('irelandDesc').innerHTML=' '"/>
                                </a> 

                            </td>
                            <td>
                                <img src="img/singapore-city.jpg" onmouseover="getData('document/singapore.txt','singaporeDesc')" onmouseout="document.getElementById('singaporeDesc').innerHTML=' '"/>
                            </td> 
                        </tr> 
                        
                    </table>

                    <xsl:apply-templates select="*"/>
                    <br/>
                    <hr/>
                        
                    <div id="footer">
                        <a href="TourismHome">
                            Home
                        </a>|
                        <a href="VietNamExist">
                            VietNam
                        </a>|
                        <a href="Oman">
                            Oman
                        </a>|
                        <a href="Ireland">
                            Ireland
                        </a>
                       
                        <br/>
                        <br/>
                        Copyright © 2013 Tourism,National collage of Ireland
                        <br/>
                        <br/>
                     
                    </div>
                   
              
                </center>
               
            </body>
        </html>
    </xsl:template>
     
</xsl:transform>
