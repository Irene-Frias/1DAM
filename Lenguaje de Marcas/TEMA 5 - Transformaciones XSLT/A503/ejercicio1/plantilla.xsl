<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    
    <xsl:template match="/">
        {
            "nombre": "<xsl:value-of select="tienda/nombre"/>",
            "telefono": "<xsl:value-of select="tienda/telefono"/>",
            "productos": [ <xsl:for-each select="tienda/producto"> 
                {
                    "codigo": "<xsl:value-of select="codigo"/>",
                    "cantidad": "<xsl:value-of select="cantidad"/>",
                    "articulo": "<xsl:value-of select="articulo"/>"  
                } <xsl:if test="position() != last()">,</xsl:if>
            </xsl:for-each>
            ]
        }
    </xsl:template>
    
</xsl:stylesheet>