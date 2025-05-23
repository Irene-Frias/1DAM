<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <meta name="description" content="Ciclos formativos del IES"/>
                <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
                <link rel="stylesheet" href="estilos/estilo.css"/>
                <title>Ciclos</title>
            </head>
            <body>
                <header>
                    <h1>Ciclos del <xsl:value-of select="ies/@nombre"/></h1>               
                </header>

                <table>
                    <tr>
                        <td class="negrita">Nombre del ciclo</td>                        
                        <td class="negrita">A&#241;o</td>
                    </tr>
                    
                    <xsl:for-each select="ies/ciclos/ciclo">
                        <xsl:sort select="nombre"/>
                        <tr>
                            <xsl:if test="grado = 'Superior'">
                                <td class="grado-superior">
                                    <xsl:value-of select="nombre"/>
                                </td>
                                <td class="grado-superior anyo">
                                    <xsl:value-of select="decretoTitulo/@anio"/>
                                </td>
                            </xsl:if>
                            <xsl:if test="grado = 'Medio'">
                                <td class="grado-medio">
                                    <xsl:value-of select="nombre"/>
                                </td>
                                <td class="grado-medio anyo">
                                    <xsl:value-of select="decretoTitulo/@anio"/>
                                </td>
                            </xsl:if>
                        </tr>
                    </xsl:for-each>
                </table>   
                  
            </body>
            
        </html>
    </xsl:template>
    
</xsl:stylesheet>