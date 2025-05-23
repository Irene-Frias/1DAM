<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <head>
                <meta lang="es"/>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <meta name="description" content="width-device-view-port"/>
                <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
                <link rel="stylesheet" href="estilos/estilo.css"/>
                <title>plantilla.xsl</title>
            </head>
            <body>
                <header>
                    <h1>Lista de empleados</h1>          
                </header>      
                        
                <br/>
                
                <table>
                    <tr>
                        <td class="negrita">Nombre</td>                        
                        <td class="negrita">Puesto</td>     
                        <td class="negrita">Departamento</td>             
                        <td class="negrita">Salario</td>  
                        <td class="negrita">Antiguedad</td> 
                    </tr>
                    
                    <xsl:for-each select="empresa/empleado">
                        
                        <xsl:sort select="nombre" data-type="text" order="ascending"/>
                        
                        <xsl:choose>
                            <xsl:when test="antiguedad &gt; 5">
                                <tr>
                                    <td class="fondo-verde">
                                        <xsl:value-of select="nombre"/>                             
                                    </td>                             
                                    <td class="fondo-verde">
                                        <xsl:value-of select="puesto"/>   
                                    </td>
                                    <td class="fondo-verde">
                                        <xsl:value-of select="departamento"/> 
                                    </td>
                                    <td class="fondo-verde texto-derch">
                                        <xsl:value-of select="salario"/> 
                                    </td>
                                    <td class="fondo-verde texto-derch">
                                        <xsl:value-of select="antiguedad"/> 
                                    </td>
                                </tr>
                            </xsl:when>
                            <xsl:otherwise>
                                <tr>
                                    <td>
                                        <xsl:value-of select="nombre"/>                             
                                    </td>                             
                                    <td>
                                        <xsl:value-of select="puesto"/>   
                                    </td>
                                    <td>
                                        <xsl:value-of select="departamento"/> 
                                    </td>
                                    <td class="texto-derch">
                                        <xsl:value-of select="salario"/> 
                                    </td>
                                    <td class="texto-derch">
                                        <xsl:value-of select="antiguedad"/> 
                                    </td>
                                </tr>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>                                             
                </table>
                
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>