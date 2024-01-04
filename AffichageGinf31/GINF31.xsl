<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Affichage du Module </title>
            </head>
            <body>
                
                <table style="table-layout: fixed;">
                    <tbody>
                        <tr>
                            <td style="width: 8cm;">
                                <xsl:if test="//logoUae">
                                    <div>
                                        <img 
                                            src="logoUae.png" 
                                            alt="Logo Uae"
                                            style="width: 5.2cm; height: 4cm; object-fit: contain;"
                                        />
                                    </div>
                                </xsl:if>
                            </td>
                            <td style="width: 40cm; height: 4cm;">
                                <div style="font-family: Roboto; font-size: 25px; color: #02306E; text-align: center; margin-top: 1cm; text-decoration: underline;">
                                    Affichage du Module Programmation Orientée Objet : Java et XML
                                </div>
                                <div style="font-family: Roboto; font-size: 20px; color: #02306E; text-align: center; margin-top: 0.2cm; margin-bottom: -0.05cm;">
                                      <xsl:value-of select="//classe"/>
                                </div>
                                <div style="font-family: Roboto; font-size: 15px; color: #02306E; text-align: center; margin-bottom: -0.05cm;">
                                    Année Scolaire :  <xsl:value-of select="//annee"/>
                                </div>
                            </td>
                            
                            <td style="width: 8cm;">
                                <xsl:if test="//logoEnsa">
                                    <div style="margin-left: 1cm; margin-top: 0.6cm;">
                                        <img 
                                            src="logoEnsat.png" 
                                            alt="Logo Ensa"
                                            style="width: 5.2cm; height: 3.8cm; object-fit: contain;"
                                        />
                                    </div>
                                </xsl:if>
                            </td>    
                        </tr>
                    </tbody>
                </table>
            <table style="table-layout: fixed; width: 100%;">
                    <thead>
                        
                        <tr style="border-width: 1px;border-style: solid; background-color: #93C4FF; ">
                            <th style="width: 1.5cm;">
                                <div style="font-size: 13px; color: #02306E; margin-top: 0.4cm; margin-bottom: 0.4cm; text-align: center;">
                                    CNE
                                </div>
                            </th>
                            <th style="width: 2cm;">
                                <div style="font-size: 13px; color: #02306E; margin-top: 0.4cm; margin-bottom: 0.4cm; text-align: center;">
                                    Nom
                                </div>
                            </th>
                            <th style="width: 2cm;">
                                <div style="font-size: 13px; color: #02306E;margin-top: 0.4cm; margin-bottom: 0.4cm; text-align: center;">
                                    Prénom
                                </div>
                            </th>
                            <th style="width: 1.5cm;">
                                <div style="font-size: 13px; color: #02306E; margin-top: 0.4cm; margin-bottom: 0.4cm; text-align: center;">
                                    Java 2/3 du Module
                                </div>
                            </th>
                            <th style="width: 1.5cm;">
                                <div style="font-size: 13px; color: #02306E; margin-top: 0.4cm; margin-bottom: 0.4cm; text-align: center;">
                                    XML 1/3 du Module
                                </div>
                            </th>
                            <th style="width: 1.5cm;">
                                <div style="font-size: 13px; color: #02306E; margin-top: 0.4cm; margin-bottom: 0.4cm; text-align: center;">
                                    Moyenne 
                                </div>
                            </th>
                            <th style="width: 2cm;">
                                <div style="font-size: 13px; color: #02306E; margin-top: 0.4cm; margin-bottom: 0.4cm; text-align: center;">
                                    Decision
                                </div>
                            </th>
                        </tr>
                    </thead>
                <tbody>
                    
                    <!-- Cellule pour CNE -->
                    <td style="width: 1.5cm; height: 3cm; border-width: 1px; ">
                        <xsl:for-each select="//Note">
                            <div style="width: 3.9cm; height:  0.008cm ; font-size: 10px; color: #000000; padding-top: 0.3cm;padding-bottom: 0.4cm; text-align: center; border-width: 1px; border-style: solid;">
                                <xsl:value-of select="CNE"/>
                            </div>
                        </xsl:for-each>
                    </td>
             
                    <td style="width: 2cm; height: 3cm; border-width: 1px;">
                        <xsl:for-each select="//Note">
                            <div style="width: 5.1cm; height:  0.008cm ; font-size: 10px; color: #000000; padding-top: 0.3cm; padding-bottom: 0.4cm; text-align: center; border-width: 1px; border-style: solid;">
                                <xsl:value-of select="Nom"/>
                            </div>
                        </xsl:for-each>
                    </td>
                    <td style="width: 2cm; height: 3cm; border-width: 1px;">
                        <xsl:for-each select="//Note">
                            <div style="width: 5.1cm; height:  0.008cm ; font-size: 10px; color: #000000; padding-top: 0.3cm; padding-bottom: 0.4cm; text-align: center; border-width: 1px; border-style: solid;">
                                <xsl:value-of select="Prenom"/>
                            </div>
                        </xsl:for-each>
                        </td>
                    <td style="width: 1.5cm; height: 3cm; border-width: 1px;">
                        <xsl:for-each select="//Note">
                            <div style="width:  3.9cm; height: 0.008cm ;font-size: 10px; color: #000000; padding-top: 0.3cm; padding-bottom: 0.4cm; text-align: center; border-width: 1px; border-style: solid;">
                                <xsl:value-of select="JAVA"/>
                            </div>
                        </xsl:for-each>
                        </td>
                    <td style="width: 1.5cm; height: 3cm; border-width: 1px;">
                        <xsl:for-each select="//Note">
                            <div style="width: 3.9cm; height:  0.008cm ; font-size: 10px; color: #000000; padding-top: 0.3cm; padding-bottom: 0.4cm; text-align: center; border-width: 1px; border-style: solid;">
                                <xsl:value-of select="XML"/>
                            </div>
                        </xsl:for-each>
                    </td>
                   
                    
                    <td style="width: 1.5cm; border-width: 1px; ">
                        <xsl:for-each select="//Note">
                            
                                <xsl:variable name="java" select="JAVA"/>
                                <xsl:variable name="xml" select="XML"/>
                                <xsl:variable name="moy" select="(($java * 2) + $xml) div 3 "/>
                                
                                    <xsl:choose>
                                        <xsl:when test="$moy &lt; 8">
                                            <div style="width:  3.9cm; height: 0.008cm ;font-size: 10px; color: #000000; padding-top: 0.3cm; padding-bottom: 0.4cm; text-align: center; border-width: 1px; border-style: solid; background: #f54e31;">
                                                <xsl:value-of select="format-number($moy, '#.##')"/>
                                            </div>   
                                        </xsl:when>
                                        <xsl:when test="$moy &gt;= 8 and $moy &lt; 12">
                                            <div style="width:  3.9cm; height: 0.008cm ;font-size: 10px; color: #000000; padding-top: 0.3cm;padding-bottom: 0.4cm; text-align: center; border-width: 1px; border-style: solid; border-width: 1px; border-style: solid; background: #FCB773;">
                                                <xsl:value-of select="format-number($moy, '#.##')"/>
                                            </div>
                                        </xsl:when>
                                        <xsl:when test="$moy &gt;= 12 and $moy &lt; 16">
                                            <div style="width:  3.9cm; height: 0.008cm ;font-size: 10px; color: #000000;padding-top: 0.3cm; padding-bottom: 0.4cm; text-align: center; border-width: 1px; border-style: solid; background: #47FF2D;">
                                                <xsl:value-of select="format-number($moy, '#.##')"/>
                                            </div>
                                        </xsl:when>
                                        <xsl:when test="$moy &gt;= 16">
                                            <div style="width:  3.9cm; height: 0.008cm ;font-size: 10px; color: #000000;padding-top: 0.3cm;padding-bottom: 0.4cm; text-align: center; border-width: 1px; border-style: solid; background: #EDC531;">
                                                <xsl:value-of select="format-number($moy, '#.##')"/>
                                            </div></xsl:when>
                                        <xsl:otherwise>
                               
                                        </xsl:otherwise>
                                    </xsl:choose>
                           
             
                    
                        </xsl:for-each>
                    </td>
                    <td style="width: 2cm; height: 4cm; border-width: 1px;">
                        <xsl:for-each select="//Note">
                            <xsl:variable name="java" select="JAVA"/>
                            <xsl:variable name="xml" select="XML"/>
                            <xsl:variable name="moy" select="(($java * 2) + $xml) div 3"/>
                            
                            <xsl:choose>
                                <xsl:when test="$moy &lt; 8">
                                    <div style="width: 5.1cm; height:  0.008cm ; font-size: 10px; color: #000000; padding-top: 0.3cm; padding-bottom: 0.4cm; text-align: center; border-width: 1px; border-style: solid;">
                                        <xsl:value-of select="'Non Validé'"/>
                                    </div>
                                </xsl:when>
                                
                                <xsl:when test="$moy &gt;= 8 and $moy &lt; 12">
                                    <div style="width: 5.1cm; height:  0.008cm ; font-size: 10px; color: #000000;padding-top: 0.3cm; padding-bottom: 0.4cm; text-align: center; border-width: 1px; border-style: solid;">
                                        <xsl:value-of select="'Rattrapage'"/>
                                    </div></xsl:when>
                                <xsl:when test="$moy &gt;= 12">
                                    <div style="width: 5.1cm; height:  0.008cm ; font-size: 10px; color: #000000; padding-top: 0.3cm; padding-bottom: 0.4cm; text-align: center; border-width: 1px; border-style: solid;">
                                        <xsl:value-of select="'Validé'"/>
                                    </div>
                                    </xsl:when>
                                <xsl:otherwise>Texte par défaut</xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                    </td>
                    
           
                   
                </tbody>
              </table> 
            </body>
        </html>
        
     
    </xsl:template>
</xsl:stylesheet>