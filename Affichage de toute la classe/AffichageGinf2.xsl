<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Affichage des élèves ingénieurs</title>
            </head>
            <body>
                
                <table style="table-layout: fixed;">
                    <tbody>
                        <tr>
                            <td style="width: 6cm;">
                                <xsl:if test="//logoUae">
                                    <div>
                                        <img 
                                            src="logoUae.png" 
                                            alt="Logo Uae"
                                            style="width: 3.1cm; height: 3.6cm; object-fit: contain;"
                                        />
                                    </div>
                                </xsl:if>
                            </td>
                            <td style="width: 40cm; height: 4cm;">
                                <div style="font-family: Roboto; font-size: 35px; color: #02306E; text-align: center; margin-top: 1cm; text-decoration: underline;">
                                    Relevé de Notes
                                </div>
                                <div style="font-family: Roboto; font-size: 35px; color: #02306E; text-align: center; margin-top: 0.2cm; margin-bottom: -0.05cm;">
                                      <xsl:value-of select="//classe"/>
                                </div>
                                <div style="font-family: Roboto; font-size: 35px; color: #02306E; text-align: center; margin-bottom: -0.05cm;">
                                    Année Scolaire :  <xsl:value-of select="//annee"/>
                                </div>
                            </td>
                            
                            <td style="width: 6cm;">
                                <xsl:if test="//logoEnsa">
                                    <div style="margin-left: 1cm; margin-top: 0.6cm;">
                                        <img 
                                            src="ensat.png" 
                                            alt="Logo Ensa"
                                            style="width: 4.3cm; height: 2.5cm; object-fit: contain;"
                                        />
                                    </div>
                                </xsl:if>
                            </td>    
                        </tr>
                    </tbody>
                </table>
            <table style="table-layout: fixed; width: 100%;">
                    <thead>
                        
                        <tr style="border-width: 1px; border-style: solid; background-color: #93C4FF;">
                            <th style="width: 1.5cm;">
                                <div style="font-size: 13px; color: #02306E; margin-top: 0.5cm; margin-bottom: 0.5cm; text-align: center;">
                                    CNE
                                </div>
                            </th>
                            <th style="width: 2cm;">
                                <div style="font-size: 13px; color: #02306E; margin-top: 0.5cm; margin-bottom: 0.5cm; text-align: center;">
                                    Nom
                                </div>
                            </th>
                            <th style="width: 2cm;">
                                <div style="font-size: 13px; color: #02306E; margin-top: 0.5cm; margin-bottom: 0.5cm; text-align: center;">
                                    Prénom
                                </div>
                            </th>
                            <th style="width: 1.25cm;">
                                <div style="font-size: 13px; color: #02306E; margin-top: 0.5cm; margin-bottom: 0.5cm; text-align: center;">
                                    <xsl:value-of select="//Module[1]/@code"/>
                                </div>
                            </th>
                            <th style="width: 1.25cm;">
                                <div style="font-size: 13px; color: #02306E; margin-top: 0.5cm; margin-bottom: 0.5cm; text-align: center;">
                                    <xsl:value-of select="//Module[2]/@code"/>
                                </div>
                            </th>
                            <th style="width: 1.25cm;">
                                <div style="font-size: 13px; color: #02306E; margin-top: 0.5cm; margin-bottom: 0.5cm; text-align: center;">
                                    <xsl:value-of select="//Module[3]/@code"/>
                                </div>
                            </th>
                            <th style="width: 1.25cm;">
                                <div style="font-size: 13px; color: #02306E; margin-top: 0.5cm; margin-bottom: 0.5cm; text-align: center;">
                                    <xsl:value-of select="//Module[4]/@code"/>
                                </div>
                            </th>
                            <th style="width: 1.25cm;">
                                <div style="font-size: 13px; color: #02306E; margin-top: 0.5cm; margin-bottom: 0.5cm; text-align: center;">
                                    <xsl:value-of select="//Module[5]/@code"/>
                                </div>
                            </th>
                            <th style="width: 1.25cm;">
                                <div style="font-size: 13px; color: #02306E; margin-top: 0.5cm; margin-bottom: 0.5cm; text-align: center;">
                                    <xsl:value-of select="//Module[6]/@code"/>
                                </div>
                            </th>
                            <th style="width: 1.25cm;">
                                <div style="font-size: 13px; color: #02306E; margin-top: 0.5cm; margin-bottom: 0.5cm; text-align: center;">
                                    <xsl:value-of select="//Module[7]/@code"/>
                                </div>
                            </th>
                            <th style="width: 1.25cm;">
                                <div style="font-size: 13px; color: #02306E; margin-top: 0.5cm; margin-bottom: 0.5cm; text-align: center;">
                                    <xsl:value-of select="//Module[8]/@code"/>
                                </div>
                            </th>
                            <th style="width: 1.25cm;">
                                <div style="font-size: 13px; color: #02306E; margin-top: 0.5cm; margin-bottom: 0.5cm; text-align: center;">
                                    <xsl:value-of select="//Module[9]/@code"/>
                                </div>
                            </th>
                            <th style="width: 1.25cm;">
                                <div style="font-size: 13px; color: #02306E; margin-top: 0.5cm; margin-bottom: 0.5cm; text-align: center;">
                                    <xsl:value-of select="//Module[10]/@code"/>
                                </div>
                            </th>
                            <th style="width: 1.25cm;">
                                <div style="font-size: 13px; color: #02306E; margin-top: 0.5cm; margin-bottom: 0.5cm; text-align: center;">
                                    <xsl:value-of select="//Module[11]/@code"/>
                                </div>
                            </th>
                            <th style="width: 1.25cm;">
                                <div style="font-size: 13px; color: #02306E; margin-top: 0.5cm; margin-bottom: 0.5cm; text-align: center;">
                                    <xsl:value-of select="//Module[12]/@code"/>
                                </div>
                            </th>
                            
                            <th style="width: 1.25cm;">
                                <div style="font-size: 13px; color: #02306E; margin-top: 0.5cm; margin-bottom: 0.5cm; text-align: center;">
                                    Moyenne S1
                                </div>
                            </th>
                            <th style="width: 1.25cm;">
                                <div style="font-size: 13px; color: #02306E; margin-top: 0.5cm; margin-bottom: 0.5cm; text-align: center;">
                                    Moyenne S2
                                </div>
                            </th>
                            <th style="width: 1.5cm;">
                                <div style="font-size: 13px; color: #02306E; margin-top: 0.5cm; margin-bottom: 0.5cm; text-align: center;">
                                    Moyenne Générale
                                </div>
                            </th>
                        </tr>
                    </thead>
                <tbody>
                    
                    <!-- Cellule pour CNE -->
                    <td style="width: 1.5cm; height: 0.5cm; border-width: 1px; ">
                        <xsl:for-each select="//Etudiant">
                            <div style="width: 1.9cm; height: 0.5cm; font-size: 10px; color: #000000; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid;">
                                <xsl:value-of select="CNE"/>
                            </div>
                        </xsl:for-each>
                    </td>
                    
                    <!-- Cellule pour Prénom et Nom -->
                    <td style="width: 2cm; height: 0.5cm; border-width: 1px;">
                        <xsl:for-each select="//Etudiant">
                            <div style="width: 2.5cm; height: 0.5cm; font-size: 10px; color: #000000; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid;">
                                <xsl:value-of select="Nom"/>
                            </div>
                        </xsl:for-each>
                    </td>
                    <td style="width: 2cm; height: 0.5cm; border-width: 1px;">
                        <xsl:for-each select="//Etudiant">
                            <div style="width: 2.5cm; height: 0.5cm; font-size: 10px; color: #000000; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid;">
                                <xsl:value-of select="Prenom"/>
                            </div>
                        </xsl:for-each>
                    </td>
                    <!-- Cellules pour les notes GINF31, GINF32, GINF33 -->
                    <td style="width: 1.25cm; height: 0.5cm; border-width: 1px; ">
                        <xsl:for-each select="//Etudiant/Notes">
                            
                            <xsl:variable name="noteValue" select="GINF31" />
                            <xsl:choose>
                                <xsl:when test="$noteValue &lt; 8">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background: #f54e31;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>   
                                </xsl:when>
                                <xsl:when test="$noteValue &gt;= 8 and $noteValue &lt;= 12">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #FCB773;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>
                                </xsl:when>
                                <xsl:when test="$noteValue &gt;= 12 and $noteValue &lt;= 16">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #47FF2D;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>   
                                </xsl:when>
                                <xsl:otherwise>
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #EDC531;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>  
                                </xsl:otherwise>
                            </xsl:choose>
                            
                        </xsl:for-each>
                    </td>
                    
                    <td style="width: 1.25cm; height: 0.5cm; border-width: 1px;">
                        <xsl:for-each select="//Etudiant/Notes">
                            <xsl:variable name="noteValue" select="GINF32" />
                            <xsl:choose>
                                <xsl:when test="$noteValue &lt; 8">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background: #f54e31;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>   
                                </xsl:when>
                                <xsl:when test="$noteValue &gt;= 8 and $noteValue &lt;= 12">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #FCB773;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>
                                </xsl:when>
                                <xsl:when test="$noteValue &gt;= 12 and $noteValue &lt;= 16">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #47FF2D;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>   
                                </xsl:when>
                                <xsl:otherwise>
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #EDC531;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>  
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                    </td>
                    
                    <td style="width: 1.25cm; height: 0.5cm; border-width: 1px; ">
                        <xsl:for-each select="//Etudiant/Notes">
                            <xsl:variable name="noteValue" select="GINF33" />
                            <xsl:choose>
                                <xsl:when test="$noteValue &lt; 8">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background: #f54e31;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>   
                                </xsl:when>
                                <xsl:when test="$noteValue &gt;= 8 and $noteValue &lt;= 12">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #FCB773;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>
                                </xsl:when>
                                <xsl:when test="$noteValue &gt;= 12 and $noteValue &lt;= 16">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #47FF2D;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>   
                                </xsl:when>
                                <xsl:otherwise>
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #EDC531;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>  
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                    </td>
                    <td style="width: 1.25cm; height: 0.5cm; border-width: 1px; ">
                        <xsl:for-each select="//Etudiant/Notes">
                            <xsl:variable name="noteValue" select="GINF34" />
                            <xsl:choose>
                                <xsl:when test="$noteValue &lt; 8">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background: #f54e31;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>   
                                </xsl:when>
                                <xsl:when test="$noteValue &gt;= 8 and $noteValue &lt;= 12">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #FCB773;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>
                                </xsl:when>
                                <xsl:when test="$noteValue &gt;= 12 and $noteValue &lt;= 16">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #47FF2D;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>   
                                </xsl:when>
                                <xsl:otherwise>
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #EDC531;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>  
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                    </td>
                    <td style="width: 1.25cm; height: 0.5cm; border-width: 1px; ">
                        <xsl:for-each select="//Etudiant/Notes">
                            <xsl:variable name="noteValue" select="GINF35" />
                            <xsl:choose>
                                <xsl:when test="$noteValue &lt; 8">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background: #f54e31;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>   
                                </xsl:when>
                                <xsl:when test="$noteValue &gt;= 8 and $noteValue &lt;= 12">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #FCB773;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>
                                </xsl:when>
                                <xsl:when test="$noteValue &gt;= 12 and $noteValue &lt;= 16">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #47FF2D;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>   
                                </xsl:when>
                                <xsl:otherwise>
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #EDC531;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>  
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                    </td>
                    <td style="width: 1.25cm; height: 0.5cm; border-width: 1px;">
                        <xsl:for-each select="//Etudiant/Notes">
                            <xsl:variable name="noteValue" select="GINF36" />
                            <xsl:choose>
                                <xsl:when test="$noteValue &lt; 8">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background: #f54e31;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>   
                                </xsl:when>
                                <xsl:when test="$noteValue &gt;= 8 and $noteValue &lt;= 12">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #FCB773;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>
                                </xsl:when>
                                <xsl:when test="$noteValue &gt;= 12 and $noteValue &lt;= 16">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #47FF2D;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>   
                                </xsl:when>
                                <xsl:otherwise>
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #EDC531;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>  
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                    </td>
                    <td style="width: 1.25cm; height: 0.5cm; border-width: 1px; ">
                        <xsl:for-each select="//Etudiant/Notes">
                            <xsl:variable name="noteValue" select="GINF41" />
                            <xsl:choose>
                                <xsl:when test="$noteValue &lt; 8">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background: #f54e31;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>   
                                </xsl:when>
                                <xsl:when test="$noteValue &gt;= 8 and $noteValue &lt;= 12">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #FCB773;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>
                                </xsl:when>
                                <xsl:when test="$noteValue &gt;= 12 and $noteValue &lt;= 16">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #47FF2D;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>   
                                </xsl:when>
                                <xsl:otherwise>
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #EDC531;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>  
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                    </td>
                    <td style="width: 1.25cm; height: 0.5cm; border-width: 1px; ">
                        <xsl:for-each select="//Etudiant/Notes">
                            <xsl:variable name="noteValue" select="GINF42" />
                            <xsl:choose>
                                <xsl:when test="$noteValue &lt; 8">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background: #f54e31;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>   
                                </xsl:when>
                                <xsl:when test="$noteValue &gt;= 8 and $noteValue &lt;= 12">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #FCB773;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>
                                </xsl:when>
                                <xsl:when test="$noteValue &gt;= 12 and $noteValue &lt;= 16">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #47FF2D;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>   
                                </xsl:when>
                                <xsl:otherwise>
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #EDC531;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>  
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                    </td>
                    <td style="width: 1.25cm; height: 0.5cm; border-width: 1px; ">
                        <xsl:for-each select="//Etudiant/Notes">
                            <xsl:variable name="noteValue" select="GINF43" />
                            <xsl:choose>
                                <xsl:when test="$noteValue &lt; 8">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background: #f54e31;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>   
                                </xsl:when>
                                <xsl:when test="$noteValue &gt;= 8 and $noteValue &lt;= 12">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #FCB773;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>
                                </xsl:when>
                                <xsl:when test="$noteValue &gt;= 12 and $noteValue &lt;= 16">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #47FF2D;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>   
                                </xsl:when>
                                <xsl:otherwise>
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #EDC531;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>  
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                    </td>
                    <td style="width: 1.25cm; height: 0.5cm; border-width: 1px; ">
                        <xsl:for-each select="//Etudiant/Notes">
                            <xsl:variable name="noteValue" select="GINF44" />
                            <xsl:choose>
                                <xsl:when test="$noteValue &lt; 8">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background: #f54e31;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>   
                                </xsl:when>
                                <xsl:when test="$noteValue &gt;= 8 and $noteValue &lt;= 12">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #FCB773;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>
                                </xsl:when>
                                <xsl:when test="$noteValue &gt;= 12 and $noteValue &lt;= 16">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #47FF2D;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>   
                                </xsl:when>
                                <xsl:otherwise>
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #EDC531;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>  
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                    </td>
                    <td style="width: 1.25cm; height: 0.5cm; border-width: 1px; ">
                        <xsl:for-each select="//Etudiant/Notes">
                            <xsl:variable name="noteValue" select="GINF45" />
                            <xsl:choose>
                                <xsl:when test="$noteValue &lt; 8">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background: #f54e31;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>   
                                </xsl:when>
                                <xsl:when test="$noteValue &gt;= 8 and $noteValue &lt;= 12">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #FCB773;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>
                                </xsl:when>
                                <xsl:when test="$noteValue &gt;= 12 and $noteValue &lt;= 16">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #47FF2D;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>   
                                </xsl:when>
                                <xsl:otherwise>
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #EDC531;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>  
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                    </td>
                    <td style="width: 1.25cm; height: 0.5cm; border-width: 1px;">
                        <xsl:for-each select="//Etudiant/Notes">
                            <xsl:variable name="noteValue" select="GINF46" />
                            <xsl:choose>
                                <xsl:when test="$noteValue &lt; 8">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background: #f54e31;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>   
                                </xsl:when>
                                <xsl:when test="$noteValue &gt;= 8 and $noteValue &lt;= 12">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #FCB773;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>
                                </xsl:when>
                                <xsl:when test="$noteValue &gt;= 12 and $noteValue &lt;= 16">
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #47FF2D;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>   
                                </xsl:when>
                                <xsl:otherwise>
                                    <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid; background-color: #EDC531;">
                                        <xsl:value-of select="$noteValue"/>
                                    </div>  
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                    </td>
                    
                    
                    <!-- Cellule pour les moyennes -->
                    <td style="width: 1.25cm; height: 0.5cm; border-width: 1px; ">
                        <xsl:for-each select="//Notes">                           
                            <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; color: #000000; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid;">
                                <xsl:variable name="sum" select="sum(*[starts-with(name(), 'GINF3')])"/>
                                <xsl:value-of select="format-number($sum div 6,'#.##')"/>
                            </div>
                        </xsl:for-each>
                    </td>
                    
                    <td style="width: 1.25cm; height: 0.5cm; border-width: 1px; ">
                        <xsl:for-each select="//Notes">
                            <div style="width: 1.6cm; height: 0.5cm; font-size: 10px; color: #000000; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid;">
                                <xsl:variable name="sum" select="sum(*[starts-with(name(), 'GINF4')])"/>
                                <xsl:value-of select="format-number($sum div 6,'#.##')"/>
                            </div>
                        </xsl:for-each>
                    </td>
                    <td style="width: 1.5cm; height: 0.5cm; border-width: 1px; ">
                        <xsl:for-each select="//Notes">
                            <div style="width: 1.9cm; height: 0.5cm; font-size: 10px; color: #000000; padding-top: 0.6cm; padding-bottom: 0.6cm; text-align: center; border-width: 1px; border-style: solid;">
                                <xsl:variable name="sum" select="sum(*[starts-with(name(), 'GINF')])"/>
                                <xsl:value-of select="format-number($sum div 12,'#.##')"/>
                            </div>
                        </xsl:for-each>
                    </td>
                   
                   
                </tbody>
              </table> 
            </body>
        </html>
        
     
    </xsl:template>
</xsl:stylesheet>