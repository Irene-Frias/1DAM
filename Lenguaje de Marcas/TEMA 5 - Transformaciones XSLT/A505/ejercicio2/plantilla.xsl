<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <meta name="description" content="Lista de estudiantes y sus calificaciones"/>
                <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
                <link rel="stylesheet" href="estilos/estilo.css"/>
                <title>Estudiantes</title>
            </head>
            <body>
                <header>
                    <h1>Lista de estudiantes</h1>          
                </header>      
                
                
                <xsl:for-each select="estudiantes/estudiante">
                    
                <xsl:sort select="edad" data-type="number" order="descending" />
                <xsl:choose>
                    <xsl:when test="calificacion &gt; 9">    
                        <div class="recuadro-calificacion">                    
                            <tr>
                                <p>
                                    <span class="negrita">Nombre:</span>
                                    <xsl:value-of select="nombre"/>
                                </p>                        
                                <p>
                                    <span class="negrita">Edad:</span>
                                    <xsl:value-of select="edad"/>
                                </p>     
                                <p>
                                    <span class="negrita">Calificaci&#243;n:</span>
                                    <xsl:value-of select="calificacion"/>
                                </p>
                            </tr>
                        </div>
                    </xsl:when>
                    <xsl:otherwise>
                        <div class="recuadro">
                            <tr>
                                <p>
                                    <span class="negrita">Nombre:</span>
                                    <xsl:value-of select="nombre"/>
                                </p>                        
                                <p>
                                    <span class="negrita">Edad:</span>
                                    <xsl:value-of select="edad"/>
                                </p>     
                                <p>
                                    <span class="negrita">Calificaci&#243;n:</span>
                                    <xsl:value-of select="calificacion"/>
                                </p>
                            </tr>
                        </div>
                    </xsl:otherwise> 
                    </xsl:choose>
                    
                </xsl:for-each>                                             
                
                
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>