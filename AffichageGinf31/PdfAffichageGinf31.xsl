<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="2.0">
    <xsl:template match="/" >
       <fo:root>
           <fo:layout-master-set>
               <fo:simple-page-master master-name="A4" margin-top="0.2cm"   margin-bottom="0.2cm"
                   margin-left="1cm"  margin-right="0.5cm">
                   <fo:region-body />
                   <fo:region-before extent="3.0cm"/>
               </fo:simple-page-master>
           </fo:layout-master-set>
           <fo:page-sequence master-reference="A4">
               <fo:flow flow-name="xsl-region-body">
                   <!-- TOP BAR -->
                   <fo:table table-layout="fixed">
                       <fo:table-column column-width="5cm"/>
                       <fo:table-column column-width="10cm"/>
                       <fo:table-column column-width="7cm"/>
                       <fo:table-body>
                           <fo:table-row>
                               <fo:table-cell width="5cm" >
                                   <xsl:if test="//logoUae">
                                       <fo:block >
                                           <fo:external-graphic 
                                               src="logoUae.png" 
                                               content-height="scale-to-fit"
                                               content-width="scale-to-fit"
                                               width="3.1cm"
                                               height="3.6cm"
                                               scaling="non-uniform"
                                           />
                                       </fo:block>
                                   </xsl:if>
                               </fo:table-cell>
                               <fo:table-cell width="10cm" height="4cm">
                                   
                                   <fo:block font-family="Roboto" font-size="35px" color="#02306E" text-align="center"  margin-top="1cm" margin-bottom="-0.02cm" text-decoration="underline" >
                                       Affichage Module GINF31
                                   </fo:block>
                                   <fo:block font-family="Roboto" font-size="20px" color="#02306E" text-align="center" margin-top="-0.02cm" margin-bottom="-0.02cm" >
                                       <xsl:value-of select="//classe"/>
                                   </fo:block>
                                   <fo:block font-family="Roboto" font-size="15px" color="#02306E" text-align="center"  margin-bottom="-0.02cm" >
                                       <xsl:value-of select="//annee"/>
                                   </fo:block>
                                   
                               </fo:table-cell>
                               <fo:table-cell width="5cm" >
                                   <xsl:if test="//logoEnsa">
                                       <fo:block margin-left="0.6cm" margin-top="0.6cm">
                                           <fo:external-graphic 
                                               src="logoEnsat.png" 
                                               content-height="scale-to-fit"
                                               content-width="scale-to-fit"
                                               width="4.3cm"
                                               height="2.5cm"
                                               scaling="non-uniform"
                                               
                                               
                                               
                                           />
                                       </fo:block>
                                   </xsl:if>
                               </fo:table-cell>
                           </fo:table-row>
                       </fo:table-body>
                       
                   </fo:table>
                   --------------------------------------------------------------------------------------------------
                   <!-- Releve de notes en tableau -->
                   <!-- 1 ere ligne -->
                   <fo:table table-layout="fixed">
                       
                       <fo:table-column column-width="4.5cm" border-width="1px" border-style="solid"/>
                       <fo:table-column column-width="5.5cm" border-width="1px" border-style="solid"/>
                       <fo:table-column column-width="5.5cm" border-width="1px" border-style="solid"/>
                       <fo:table-column column-width="3cm" border-width="1px" border-style="solid"/>
                       <fo:table-column column-width="3cm" border-width="1px" border-style="solid"/>
                       <fo:table-column column-width="3cm" border-width="1px" border-style="solid"/>
                       
                       <fo:table-header  >
                           
                           <fo:table-row border-width="1px" border-style="solid" >
                               
                               <fo:table-cell width="4.5cm" >
                                   <fo:block font-size="15px" color="#02306E"  margin-top="0.3cm" margin-bottom="0.3cm" text-align="center" margin-left="0.2cm">
                                       CNE
                                   </fo:block>
                               </fo:table-cell>
                               
                               <fo:table-cell width="5cm" >
                                   <fo:block font-size="15px" color="#02306E" margin-left="0.2cm" margin-top="0.3cm" margin-bottom="0.3cm" text-align="center">
                                       Nom
                                   </fo:block>
                               </fo:table-cell>
                               
                               <fo:table-cell width="5cm" >
                                   <fo:block font-size="15px" color="#02306E" margin-left="0.2cm" margin-top="0.3cm" margin-bottom="0.3cm" text-align="center">
                                      Prenom
                                   </fo:block>
                               </fo:table-cell>
                               
                               <fo:table-cell width="3cm" >
                                   <fo:block font-size="15px" color="#02306E" margin-left="0.2cm" margin-top="0.3cm" margin-bottom="0.3cm" text-align="center">
                                       JAVA 2/3% du module
                                   </fo:block>
                               </fo:table-cell>
                               
                               <fo:table-cell width="3cm" >
                                   <fo:block font-size="15px" color="#02306E" margin-left="0.2cm" margin-top="0.3cm" margin-bottom="0.3cm" text-align="center">
                                     XML 1/3% du module
                                   </fo:block>
                               </fo:table-cell>
                               
                               <fo:table-cell width="3cm" >
                                   <fo:block font-size="15px" color="#02306E" margin-left="0.2cm" margin-top="0.3cm" margin-bottom="0.3cm" text-align="center" >
                                       Moyenne
                                   </fo:block>
                               </fo:table-cell>
                              
                               
                           </fo:table-row>
                       </fo:table-header>
                   
                   ---------------------------------------------------------------------------------------------------------------------------------------
                   <!-- body Table -->
                       <fo:table-body>
                           
                           <fo:table-row >
                               <fo:table-cell width="2.6cm" height="6cm" border-width="1px" border-style="solid" >
                                   <xsl:for-each select="//Note">
                                       <fo:block 
                                           width="2.6cm"
                                           height="6cm" font-size="12px"
                                           color="#000000"
                                           text-align="center"
                                           padding-top="0.2cm"
                                           padding-bottom="0.3cm"
                                           border-width="1px" border-style="solid">
                                           <xsl:value-of select="CNE"/>
                                       </fo:block>
                                   </xsl:for-each>
                               </fo:table-cell>     
                               
                               <fo:table-cell width="4cm" height="2cm" border-width="1px" border-style="solid" >
                                   <xsl:for-each select="//Note">
                                       <fo:block 
                                           width="4.2cm"
                                           height="1cm" font-size="12px"
                                           color="#000000"
                                           text-align="center"
                                           padding-top="0.2cm"
                                           padding-bottom="0.3cm"
                                           border-width="1px" border-style="solid">
                                           <xsl:value-of select="Nom"/>
                                       </fo:block>
                                   </xsl:for-each>
                               </fo:table-cell>   
                               <fo:table-cell width="4cm" height="2cm" border-width="1px" border-style="solid" >
                                   <xsl:for-each select="//Note">
                                       <fo:block 
                                           width="4.2cm"
                                           height="1cm" font-size="12px"
                                           color="#000000"
                                           text-align="center"
                                           padding-top="0.2cm"
                                           padding-bottom="0.3cm"
                                           border-width="1px" border-style="solid">
                                           <xsl:value-of select="Prenom"/>
                                       </fo:block>
                                       
                                   </xsl:for-each>
                                   
                               </fo:table-cell>
                               
                               <fo:table-cell width="2.7cm" height="2cm" border-width="1px" border-style="solid" >
                                   <xsl:for-each select="//Note">
                                       <fo:block 
                                           width="2.7cm"
                                           height="1cm" font-size="12px"
                                           color="#000000"
                                           text-align="center"
                                           padding-top="0.2cm"
                                           padding-bottom="0.3cm"
                                           border-width="1px" border-style="solid">
                                           <xsl:value-of select="JAVA"/>
                                       </fo:block>
                                   </xsl:for-each>
                               </fo:table-cell>  
                               
                               <fo:table-cell width="2.7cm" height="2cm" border-width="1px" border-style="solid" >
                                   <xsl:for-each select="//Note">
                                       <fo:block 
                                           width="2.7cm"
                                           height="1cm" font-size="12px"
                                           color="#000000"
                                           text-align="center"
                                           padding-top="0.2cm"
                                           padding-bottom="0.3cm"
                                           border-width="1px" border-style="solid">
                                           <xsl:value-of select="XML"/>
                                       </fo:block>
                                   </xsl:for-each>
                               </fo:table-cell>  
                               <fo:table-cell width="2.7cm" height="2cm" border-width="1px" border-style="solid" >
                                   <xsl:for-each select="//Note">
                                       
                                           
                                           <xsl:variable name="java" select="JAVA"/>
                                           <xsl:variable name="xml" select="XML"/>
                                           <xsl:variable name="moy" select="(($java * 2) + $xml) div 3"/>
                                           <xsl:choose>
                                               <xsl:when test="$moy &lt; 8">
                                                   <fo:block background-color="#f54e31" 
                                                       width="2.7cm"
                                                       height="1cm" font-size="12px"
                                                       color="#000000"
                                                       text-align="center"
                                                       padding-top="0.2cm"
                                                       padding-bottom="0.3cm"
                                                       border-width="1px" border-style="solid">
                                                       <xsl:value-of select="format-number($moy, '#.##')"/>
                                                   </fo:block>
                                               </xsl:when>
                                               <xsl:when test="$moy &gt;= 8 and $moy &lt; 12">
                                                   <fo:block background-color="#FCB773"
                                                       width="2.7cm"
                                                       height="1cm" font-size="12px"
                                                       color="#000000"
                                                       text-align="center"
                                                       padding-top="0.2cm"
                                                       padding-bottom="0.3cm"
                                                       border-width="1px" border-style="solid">
                                                       <xsl:value-of select="format-number($moy, '#.##')"/>
                                                   </fo:block>
                                               </xsl:when>
                                               <xsl:when test="$moy &gt;= 12 and $moy &lt; 16">
                                                   <fo:block background-color="#47FF2D"
                                                       width="2.7cm"
                                                       height="1cm" font-size="12px"
                                                       color="#000000"
                                                       text-align="center"
                                                       padding-top="0.2cm"
                                                       padding-bottom="0.3cm"
                                                       border-width="1px" border-style="solid">
                                                       <xsl:value-of select="format-number($moy, '#.##')"/>
                                                   </fo:block>
                                               </xsl:when>
                                               <xsl:when test="$moy &gt;= 16">
                                                   <fo:block background-color="#EDC531"
                                                       width="2.7cm"
                                                       height="1cm" font-size="12px"
                                                       color="#000000"
                                                       text-align="center"
                                                       padding-top="0.2cm"
                                                       padding-bottom="0.3cm"
                                                       border-width="1px" border-style="solid">
                                                       <xsl:value-of select="format-number($moy, '#.##')"/>
                                                   </fo:block>
                                               </xsl:when>
                                               <xsl:otherwise>
                                                   <!-- Gérer autre cas si nécessaire -->
                                               </xsl:otherwise>
                                           </xsl:choose>
                                   </xsl:for-each>
                               </fo:table-cell>
                               
                               
                           </fo:table-row>
                          
                           
                       </fo:table-body>
                   </fo:table>
                   
                   
                   
               </fo:flow>
           </fo:page-sequence>
       </fo:root> 
       
        
    </xsl:template>
    
</xsl:stylesheet>