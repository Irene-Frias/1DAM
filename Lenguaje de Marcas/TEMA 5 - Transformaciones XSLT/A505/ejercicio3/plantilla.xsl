<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8"/>

    <xsl:template match="/">
        <html>
            <head>
                <meta lang="es"/>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <meta name="description" content="width-device-view-port"/>
                <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
                <link rel="stylesheet" href="estilos/estilo.css"/>
                <title>Lista de pel&#237;culas</title>
            </head>
            <body>
                <header>
                    <h1>Lista de pel&#237;culas</h1>
                </header>

                <div class="contenedor">
                    <xsl:for-each select="peliculas/pelicula">
                        <xsl:sort select="anio" data-type="number" order="descending"/>

                        <xsl:choose>
                            <xsl:when test="duracion &gt; 150">
                                <div class="recuadro-azul">
                                    <h2><xsl:value-of select="titulo"/></h2>
                                    <p><span class="negrita">G&#233;nero:</span> <xsl:value-of select="genero"/></p>
                                    <p><span class="negrita">A&#241;o:</span> <xsl:value-of select="anio"/></p>
                                    <p><span class="negrita">Duraci&#243;n:</span> <xsl:value-of select="duracion"/></p>
                                </div>
                            </xsl:when>
                            <xsl:otherwise>
                                <div class="recuadro">
                                    <h2><xsl:value-of select="titulo"/></h2>
                                    <p><span class="negrita">G&#233;nero:</span> <xsl:value-of select="genero"/></p>
                                    <p><span class="negrita">A&#241;o:</span> <xsl:value-of select="anio"/></p>
                                    <p><span class="negrita">Duraci&#243;n:</span> <xsl:value-of select="duracion"/></p>
                                </div>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </div>
            </body>
            
        </html>
    </xsl:template>
    
</xsl:stylesheet>