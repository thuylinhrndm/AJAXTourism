<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:include href="tourisminclude.xsl"/>
    
    <xsl:template match="*">   
        <xsl:apply-templates select="country"/>
   	
    </xsl:template>
     
    
    <xsl:template match="country[1]">
        <p align="center">
            <xsl:element name="a">
                <xsl:attribute name="href">Country?name=<xsl:value-of select="name"/>
                </xsl:attribute>
                <xsl:value-of select="name"/>
            </xsl:element> 
            
        </p>
                          
    </xsl:template>
    <xsl:template match="country[2]">
        <p align="center">
            <xsl:element name="a">
                <xsl:attribute name="href">Country?name=<xsl:value-of select="name"/>
                </xsl:attribute>
                <xsl:value-of select="name"/>
            </xsl:element> 
            
        </p>
                          
    </xsl:template>
    <xsl:template match="country[3]">
        <p align="center">
            <xsl:element name="a">
                <xsl:attribute name="href">Country?name=<xsl:value-of select="name"/>
                </xsl:attribute>
                <xsl:value-of select="name"/>
            </xsl:element> 
            
        </p>
                          
    </xsl:template>
  
</xsl:transform>