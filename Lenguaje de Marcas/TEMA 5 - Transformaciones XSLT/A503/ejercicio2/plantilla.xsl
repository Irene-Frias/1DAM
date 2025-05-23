<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    
    <xsl:template match="/">
        {
            "portatiles": [ <xsl:for-each select="pedido/portatiles/portatil"> 
                {
                    "peso": "<xsl:value-of select="peso"/>",
                    "ram": "<xsl:value-of select="ram"/>",
                    "disco": "<xsl:value-of select="disco"/>",
                    "precio": "<xsl:value-of select="precio"/>"
                } <xsl:if test="position() != last()">,</xsl:if>
            </xsl:for-each>
            ],
            "tablets": [ <xsl:for-each select="pedido/tablets/tablet"> 
                {
                    "plataforma": "<xsl:value-of select="plataforma"/>",
                    "memoria": "<xsl:value-of select="caracteristicas/memoria"/>",
                    "tamanio": "<xsl:value-of select="caracteristicas/tamanio"/>",
                    "bateria": "<xsl:value-of select="caracteristicas/bateria"/>"
                } <xsl:if test="position() != last()">,</xsl:if>
            </xsl:for-each>
            ]
        }
    </xsl:template>
    
</xsl:stylesheet>