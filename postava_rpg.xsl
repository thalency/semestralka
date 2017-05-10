<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : postava_rpg.xsl
    Created on : 9. května 2017, 21:35
    Author     : jakubhejny-macbook
    Description:
        Purpose of transformation follows.
-->


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="/">
        {
        
        "Postava": [
        <xsl:for-each select="create/postava/popis">
            <xsl:sort select="jmeno" order="ascending"/>
            {
            "jmeno":"<xsl:value-of select="jmeno" />",
            "pohlavi":"<xsl:value-of select="pohlavi" />"  
            }<xsl:if test="position() !=last()">,</xsl:if>
        </xsl:for-each>  
        ]
        }
    </xsl:template>
</xsl:stylesheet>