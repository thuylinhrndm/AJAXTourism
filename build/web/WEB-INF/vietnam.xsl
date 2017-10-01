<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : oman.xsl
    Created on : November 14, 2013, 4:44 PM
    Author     : THUYLINH
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:include href="tourisminclude.xsl"/>
  

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="*">   
        <xsl:apply-templates select="country"/>
   	
    </xsl:template>
    
    <xsl:template match="//country[1]">
        <html>
            <head>
                <title>vietnam.xsl</title>
                <script src="js/prototype.js" type="text/javascript"></script> 
                <script src="js/scriptaculous.js?load=effects,controls" type="text/javascript"></script>
            
            </head>
            <body>
                
            </body>
        </html>
        
        <table width = "1000">
            <tr height="80">
                <td>
                    <b>
                        <xsl:value-of select="name"/>
                    </b>
                </td>
            </tr>
            <tr>
                <td>
                    <xsl:value-of select="overview"/>
                </td>
            </tr>
            <tr>
                <td>
                    <table>
                        <tr>
                            <td>
                                <xsl:element name="img">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="map"/>
                                    </xsl:attribute>
                                </xsl:element>
                            </td>
                            <td style="text-align:justify;"> 
                                <b>Population:</b> 
                                <xsl:value-of select="statistics/population"/>
                                <br/>
                                <b>Capital city:</b> 
                                <xsl:value-of select="statistics/capitalCity"/>
                                <br/>
                                <b>Location:</b>
                                <br/>
                                <xsl:value-of select="geography/location"/>
                                <br/>
                                <b>Climate:</b>
                                <br/>
                                <ul>
                                    <li>
                                        <xsl:value-of select="geography/climate/north"/>
                                    </li>
                                    <li>
                                        <xsl:value-of select="geography/climate/central"/>
                                    </li>
                                    <li>
                                        <xsl:value-of select="geography/climate/south"/>
                                    </li>
                                </ul>
                                <b>Culture:</b>
                                <br/>
                                <xsl:value-of select="culture/introduction"/>
                                <br/>
                               
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            
            <tr>
                <td>  
                    <b>Festivals:</b>
                    <table>
                        <tr>
                            <td>
                                <div id="lunar" style="display:none; width:500px; height:550px; text-align:justify;">
                                    <div style="width:470px; float:left;">
                            
                                        <b>Name: </b>
                                        <xsl:value-of select="culture/festivals/festival[1]/name" />
                                        <br/>
                                        <br/>
                                        <b>Meaning: </b>
                                        <xsl:value-of select="culture/festivals/festival[1]/meaning" />
                                        <br/>
                                        <br/>
                                        <br/>
                                     
                                        <img src="img/newyear.jpg" alt="lunar" height="297" width="438"/> 
                                        <br/>
                                        <br/>
                                       
                                        <b>Time: </b>
                                        <xsl:value-of select="culture/festivals/festival[1]/time" />
                                        <br/>
                                        <br/>
                                        <b>Events: </b>
                                        <ol>                                          
                                            <li>                             
                                                <xsl:value-of select="culture/festivals/festival[1]/events/event[1]"/>
                                            </li>
                                            <li>                             
                                                <xsl:value-of select="culture/festivals/festival[1]/events/event[2]"/>
                                            </li>
                                            <li>                             
                                                <xsl:value-of select="culture/festivals/festival[1]/events/event[3]"/>
                                            </li>
                                        </ol>
                                        <div>
                                            <a href="#VietNamDesc" onclick="getData('document/vietnamInformation.txt','VietNamDesc')">More History of Lunar Festival</a>
                                            <br/><br/>
                                            <div id="VietNamDesc" style="text-align:justify"></div>
                                        </div>
                                    </div>
                                </div>
                                <div style="width:470px; float:left;">
                     
                                    <a href="#" onclick="Effect.SlideDown('lunar'); return false;">Lunar New Year (Tet)</a>
                                    <br/>
                                    <a href="#" onclick="$('lunar').hide(); return false;">Hide</a>
                       
                                </div>
                            </td>
                        
                            <td>
                      
                                <div id="autumn" style="display:none; width:500px; height:550px; text-align:justify;">
                                    <div style="width:470px; float:right;">
                                        <b>Name: </b>
                                        <xsl:value-of select="culture/festivals/festival[2]/name" />
                                        <br/>
                                        <br/>
                                        <b>Meaning:</b>
                                        <xsl:value-of select="culture/festivals/festival[2]/meaning" />
                                        <br/>
                                        <br/>
                                        <img src="img/nid_autumn.jpg" alt="autumn" height="297" width="420"/> 
                                        <br/>
                                        <br/>
                                        <b>Time: </b>
                                        <xsl:value-of select="culture/festivals/festival[2]/time" />
                                        <br/>
                                        <br/>
                                        <b>Events: </b>
                                        <ol>                                          
                                            <li>                             
                                                <xsl:value-of select="culture/festivals/festival[2]/events/event[1]"/>
                                            </li>
                                            <li>                             
                                                <xsl:value-of select="culture/festivals/festival[2]/events/event[2]"/>
                                            </li>
                                            <li>                             
                                                <xsl:value-of select="culture/festivals/festival[2]/events/event[3]"/>
                                            </li>
                                        </ol> 
                                        <div>
                                            <a href="#AutumnFestival" onclick="getData('document/autumn.txt','AutumnFestival')">More History of Mid-Autumn Festival</a>
                                            <br/><br/>
                                            <div id="AutumnFestival" style="text-align:justify"></div>
                                        </div>
                                    </div>
                                </div>
                                <div style="width:470px; float:right;">
                        
                                    <a href="#" onclick="Effect.SlideDown('autumn'); return false;">Autumn</a>
                       
                                    <br/>
                                    <a href="#" onclick="$('autumn').hide(); return false;">Hide</a>
                                </div>
             
                            </td>
                        </tr>
                    </table>        
                </td>
                
                    
                
            </tr>
        </table>
  
    </xsl:template>

</xsl:stylesheet>
