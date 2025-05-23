<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <meta name="description" content="Libros de Mario Vargas Llosa"/>
                <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
                <link rel="stylesheet" href="estilos/estilo.css"/>
                <title>Libros</title>
            </head>
            <body>
                <header>
                    <h1>Obras de <xsl:value-of select="biblioteca/libro/autor"/></h1>               
                </header>
                
                <br/>
                
                <ul>
                    <xsl:for-each select="biblioteca/libro">
                        <xsl:sort select="titulo"/>
                        <xsl:if test="autor = 'Mario Vargas Llosa'">
                            <li class="negrita">
                                <xsl:value-of select="titulo"/>
                            </li>
                        </xsl:if>
                    </xsl:for-each>
                </ul>
                               
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>