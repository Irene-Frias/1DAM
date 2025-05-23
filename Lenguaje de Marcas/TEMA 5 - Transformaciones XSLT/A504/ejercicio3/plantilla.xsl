<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <head>
                <meta lang="es"></meta>
                <meta charset="UTF-8"></meta>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
                <meta name="description" content="width-device-view-port"></meta>
                <meta http-equiv="X-UA-Compatible" content="ie=edge"></meta>
                <link rel="stylesheet" href="estilos/estilo.css"></link>
                <title>Libros</title>
            </head>
            <body>
                <header>
                    <h1>Libros</h1>               
                </header>
                
                <br/>
                
                <table>
                    <tr>
                        <td class="negrita">Titulo</td>                        
                        <td class="negrita">Autor(es)</td>
                        <td class="negrita">Editor(es)</td>
                    </tr>
                    
                    <xsl:for-each select="bib/libro">
                        <tr>
                            <xsl:choose>
                                <xsl:when test="precio &gt; 100">
                                    <td class="letras-rojo">
                                        <xsl:value-of select="titulo"/> 
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td>
                                        <xsl:value-of select="titulo"/> 
                                    </td>
                                </xsl:otherwise>
                            </xsl:choose>    
                            
                            <td>
                                <xsl:for-each select="autor">
                                    <xsl:value-of select="apellido"/>
                                    <xsl:text>, </xsl:text>
                                    <xsl:value-of select="nombre"/>&#160;
                                </xsl:for-each>
                            </td>
                            
                            <xsl:choose>
                                <xsl:when test="editor">
                                    <xsl:for-each select="editor">
                                        <td>
                                            <xsl:value-of select="nombre"/>&#160;
                                            <xsl:value-of select="apellido"/>&#160;
                                            (<xsl:value-of select="afiliacion"/>)    
                                        </td> 
                                    </xsl:for-each>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td>
                                        <p>&#160;</p>
                                    </td>
                                </xsl:otherwise>
                            </xsl:choose> 
                        </tr>
                        
                    </xsl:for-each>                                                                 
                </table>     
                                              
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>