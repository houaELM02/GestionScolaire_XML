<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="2.0">
    
    <xsl:template match="/">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="A4" margin-top="0.4cm" margin-bottom="0.2cm"
                    margin-left="0.5cm" margin-right="0.5cm">
                    <fo:region-body />
                    <fo:region-before extent="3.0cm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="A4">
                <fo:flow flow-name="xsl-region-body">
                    <!-- TOP BAR -->
                    <fo:table table-layout="fixed">
                        <fo:table-column column-width="4cm"/>
                        <fo:table-column column-width="8cm"/>
                        <fo:table-column column-width="5cm"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell width="4cm" >
                                    <xsl:if test="//logoUae">
                                        <fo:block>
                                            <fo:external-graphic 
                                                src="logoUae.png" 
                                                content-height="scale-to-fit"
                                                content-width="scale-to-fit"
                                                width="2.6cm"
                                                height="2cm"
                                                scaling="non-uniform"
                                            />
                                        </fo:block>
                                    </xsl:if>
                                </fo:table-cell>
                                <fo:table-cell width="10cm" height="2cm">
                                    <fo:block font-family="Arial" font-size="25px"
                                        color="#02306E" text-align="center" margin-top="0.5cm" margin-bottom="0.1cm"
                                        letter-spacing="0.01cm" word-spacing="0.1cm" text-decoration="underline" font-weight="bold" > 
                                        RELEVE DE NOTES ET RESULTAS
                                        
                                    </fo:block>
       
                                    <fo:block font-family="Roboto" font-size="15px" text-align="center"  margin-bottom="0.2cm">
                                       Annee Universitaire    <xsl:value-of select="//annee"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell width="5cm" >
                                    <xsl:if test="//logoEnsa">
                                        <fo:block margin-left="2cm">
                                            <fo:external-graphic 
                                                src="logoEnsat.png" 
                                                content-height="scale-to-fit"
                                                content-width="scale-to-fit"
                                                width="4.3cm"
                                                height="2cm"
                                                scaling="non-uniform"
                                            />
                                        </fo:block>
                                    </xsl:if>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
              
                                 
                                    <fo:block  margin-left="1cm" font-family="Arial" font-size="14px"
                                        color="#000000" text-align="left" margin-bottom ="0.2cm" margin-top="0.2cm" font-weight="bold"
                                        >
                                        <fo:inline>
                                            <xsl:value-of select="/Releve/nom"/>
                                        </fo:inline>
                                        <fo:inline>&#160;</fo:inline> <!-- Ajoute un espace entre le nom et le prénom -->
                                        <fo:inline>
                                            <xsl:value-of select="/Releve/prenom"/>
                                        </fo:inline>
                                    </fo:block>
                                    <fo:block  margin-left="1cm" font-family="Arial" font-size="12px"
                                        color="#000000" text-align="left" margin-bottom ="0.2cm" margin-top="0.02cm" 
                                        >
                                        <fo:inline>
                                            CNE :
                                        </fo:inline>
                                        <fo:inline>&#160;</fo:inline> <!-- Ajoute un espace entre le nom et le prénom -->
                                        <fo:inline>
                                            <xsl:value-of select="/Releve/CNE"/>
                                        </fo:inline>
                                    </fo:block>
                                    <fo:block  margin-left="1cm" font-family="Arial" font-size="12px"
                                        color="#000000" text-align="left" margin-bottom ="0.2cm" margin-top="0.02cm" 
                                        >
                                        <fo:inline>
                                            inscrit en  
                                        </fo:inline>
                                        <fo:inline>&#160;</fo:inline> <!-- Ajoute un espace entre le nom et le prénom -->
                                        <fo:inline  font-size="14px" font-weight="bold" >
                                            <xsl:value-of select="/Releve/classe"/>
                                        </fo:inline>
                                      
                                    </fo:block>
                                    <fo:block  margin-left="1cm" font-family="Arial" font-size="13px"
                                        color="#000000" text-align="left" margin-bottom ="0.4cm" margin-top="0.02cm" 
                                        >
                                       a obtenu les notes suivantes :
                                    </fo:block>
                   
                    <fo:table table-layout="fixed">
                        
                        <fo:table-column column-width="2.5cmcm" border-width="1px" border-style="solid"/>
                        <fo:table-column column-width="5.5cm" border-width="1px" border-style="solid"/>
                        <fo:table-column column-width="2.5cm" border-width="1px" border-style="solid"/>
                        <fo:table-column column-width="2.5cm" border-width="1px" border-style="solid"/>
                        <fo:table-column column-width="5.5cm" border-width="1px" border-style="solid"/>
                        <fo:table-column column-width="2.5cm" border-width="1px" border-style="solid"/>
                        
                        <fo:table-header  >
                            
                            <fo:table-row border-width="1px"  height="1.2cm" border-style="solid"  >
                                
                                <fo:table-cell width="2.5cm" height="0.3cm">
                                    <fo:block  font-size="15px" color="#02306E" margin-top="0.3cm" margin-bottom="0.2cm" text-align="center" margin-left="0.2cm" font-weight="bold">
                                        Code Module
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell width="5.5cm" height="0.4cm">
                                    <fo:block  font-size="15px" color="#02306E" margin-left="0.2cm" margin-top="0.3cm" margin-bottom="0.2cm" text-align="center" font-weight="bold">
                                        Designation Module
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell width="2.5cm" height="0.4cm" >
                                    <fo:block   font-size="15px" color="#02306E" margin-left="0.2cm" margin-top="0.3cm" margin-bottom="0.2cm" text-align="center" font-weight="bold">
                                        Note/20
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell width="2.5cm" height="0.4cm" >
                                    <fo:block font-size="15px" color="#02306E" margin-left="0.2cm" margin-top="0.3cm" margin-bottom="0.2cm" text-align="center" font-weight="bold">
                                        Année Module
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell width="5.5cm" height="0.4cm" >
                                    <fo:block   font-size="15px" color="#02306E" margin-left="0.2cm" margin-top="0.3cm" margin-bottom="0.2cm" text-align="center" font-weight="bold">
                                        Désignation matière
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell width="2.5cm" height="0.4cm" >
                                    <fo:block    font-size="15px" color="#02306E" margin-left="0.2cm" margin-top="0.3cm" margin-bottom="0.2cm" text-align="center" font-weight="bold" >
                                        Note/20
                                    </fo:block>
                                </fo:table-cell>
                                
                                
                            </fo:table-row>
                        </fo:table-header>
                        <fo:table-body>
                            
                            <fo:table-row >
                                <fo:table-cell
                                    width="2.3cm" height="1.5cm" border-width="1px" border-style="solid"  font-weight="bold">
                                    <xsl:for-each select="//Module/codeModule">
                                        <fo:block 
                                            width="2.3cm"
                                            height="0.5cm" font-size="12px"
                                            color="#000000"
                                            text-align="center"
                                            padding-top="0.6cm"
                                            padding-bottom="0.6cm"
                                            border-width="1px" border-style="solid">
                                        <xsl:value-of select="@c"/>
                                    </fo:block>
                                    </xsl:for-each>
                                </fo:table-cell>
                                <fo:table-cell width="5.3cm" height="1.5cm" border-width="1px" border-style="solid" >
                                    <xsl:for-each select="//Module">
                                        <fo:block 
                                            width="5.5cm"
                                            height="0.5cm" font-size="12px"
                                            color="#000000"
                                            text-align="center"
                                            padding-top="0.6cm"
                                            padding-bottom="0.6cm"
                                            border-width="1px" border-style="solid">
                                            <xsl:value-of select="designationModule"/>
                                        </fo:block>
                                    </xsl:for-each>
                                </fo:table-cell> 
                                <fo:table-cell
                                    width="2.3cm" height="1.5cm" border-width="1px" border-style="solid" >
                                    <xsl:for-each select="//Matieres">
                                        <fo:block 
                                            width="2.3cm"
                                            height="0.5cm" font-size="12px"
                                            color="#000000"
                                            text-align="center"
                                            padding-top="0.6cm"
                                            padding-bottom="0.6cm"
                                            border-width="1px" border-style="solid">
                                            <xsl:value-of select="format-number(avg(Matiere/NoteMatiere),'#.###')"/>
                                        </fo:block>
                                    </xsl:for-each>
                                </fo:table-cell>
                                <fo:table-cell width="2.3cm" height="1.5cm" border-width="1px" border-style="solid" >
                                    <xsl:for-each select="//Module/codeModule">
                                        <fo:block 
                                            width="2.3cm"
                                            height="0.5cm" font-size="12px"
                                            color="#000000"
                                            text-align="center"
                                            padding-top="0.6cm"
                                            padding-bottom="0.6cm"
                                            border-width="1px" border-style="solid">
                                            <xsl:value-of select="/Releve/annee"/>
                                        </fo:block>
                                    </xsl:for-each>
                                </fo:table-cell> 
                                
                                <fo:table-cell width="5.3cm" height="1.5cm" border-width="1px" border-style="solid" >
                                        <fo:block 
                                            width="5.5cm"
                                            height="0.2cm" font-size="12px"
                                            color="#000000"
                                            text-align="center"
                                            padding-top="0.2cm"
                                            padding-bottom="0.2cm"
                                            border-width="1px" border-style="solid">
                                            <xsl:value-of select="/Releve/Modules/Module[1]/Matieres/Matiere[1]/DesignationMatiere"/>
                                        </fo:block>
                                        <fo:block 
                                            width="5.5cm"
                                            height="0.2cm" font-size="12px"
                                            color="#000000"
                                            text-align="center"
                                            padding-top="0.2cm"
                                            padding-bottom="0.25cm"
                                            border-width="1px" border-style="solid">
                                            <xsl:value-of select="/Releve/Modules/Module[1]/Matieres/Matiere[2]/DesignationMatiere"/>
                                        </fo:block>
                                    <fo:block 
                                        width="5.5cm"
                                        height="0.2cm" font-size="12px"
                                        color="#000000"
                                        text-align="center"
                                        padding-top="0.09cm"
                                        padding-bottom="0.09cm"
                                        border-width="1px" border-style="solid">
                                        <xsl:value-of select="/Releve/Modules/Module[2]/Matieres/Matiere[1]/DesignationMatiere"/>
                                    </fo:block>
                                    <fo:block 
                                        width="5.5cm"
                                        height="0.2cm" font-size="12px"
                                        color="#000000"
                                        text-align="center"
                                        padding-top="0.09cm"
                                        padding-bottom="0.09cm"
                                        border-width="1px" border-style="solid">
                                        <xsl:value-of select="/Releve/Modules/Module[2]/Matieres/Matiere[2]/DesignationMatiere"/>
                                    </fo:block>
                                    <fo:block 
                                        width="5.5cm"
                                        height="0.2cm" font-size="12px"
                                        color="#000000"
                                        text-align="center"
                                        padding-top="0.09cm"
                                        padding-bottom="0.07cm"
                                        border-width="1px" border-style="solid">
                                        <xsl:value-of select="/Releve/Modules/Module[2]/Matieres/Matiere[3]/DesignationMatiere"/>
                                    </fo:block>
                                    <fo:block 
                                        width="5.5cm"
                                        height="0.2cm" font-size="12px"
                                        color="#000000"
                                        text-align="center"
                                        padding-top="0.18cm"
                                        padding-bottom="0.2cm"
                                        border-width="1px" border-style="solid">
                                        <xsl:value-of select="/Releve/Modules/Module[3]/Matieres/Matiere[1]/DesignationMatiere"/>
                                    </fo:block>
                                    <fo:block 
                                        width="5.5cm"
                                        height="0.2cm" font-size="12px"
                                        color="#000000"
                                        text-align="center"
                                        padding-top="0.2cm"
                                        padding-bottom="0.25cm"
                                        border-width="1px" border-style="solid">
                                        <xsl:value-of select="/Releve/Modules/Module[3]/Matieres/Matiere[2]/DesignationMatiere"/>
                                    </fo:block>
                                    <fo:block 
                                        width="5.5cm"
                                        height="0.2cm" font-size="12px"
                                        color="#000000"
                                        text-align="center"
                                        padding-top="0.09cm"
                                        padding-bottom="0.09cm"
                                        border-width="1px" border-style="solid">
                                        <xsl:value-of select="/Releve/Modules/Module[4]/Matieres/Matiere[1]/DesignationMatiere"/>
                                    </fo:block>
                                    <fo:block 
                                        width="5.5cm"
                                        height="0.2cm" font-size="12px"
                                        color="#000000"
                                        text-align="center"
                                        padding-top="0.09cm"
                                        padding-bottom="0.08cm"
                                        border-width="1px" border-style="solid">
                                        <xsl:value-of select="/Releve/Modules/Module[4]/Matieres/Matiere[2]/DesignationMatiere"/>
                                    </fo:block>
                                    <fo:block 
                                        width="5.5cm"
                                        height="0.2cm" font-size="12px"
                                        color="#000000"
                                        text-align="center"
                                        padding-top="0.09cm"
                                        padding-bottom="0.08cm"
                                        border-width="1px" border-style="solid">
                                        <xsl:value-of select="/Releve/Modules/Module[4]/Matieres/Matiere[3]/DesignationMatiere"/>
                                    </fo:block>
                                    <fo:block 
                                        width="5.5cm"
                                        height="0.2cm" font-size="12px"
                                        color="#000000"
                                        text-align="center"
                                        padding-top="0.18cm"
                                        padding-bottom="0.2cm"
                                        border-width="1px" border-style="solid">
                                        <xsl:value-of select="/Releve/Modules/Module[5]/Matieres/Matiere[1]/DesignationMatiere"/>
                                    </fo:block>
                                    <fo:block 
                                        width="5.5cm"
                                        height="0.2cm" font-size="12px"
                                        color="#000000"
                                        text-align="center"
                                        padding-top="0.2cm"
                                        padding-bottom="0.25cm"
                                        border-width="1px" border-style="solid">
                                        <xsl:value-of select="/Releve/Modules/Module[5]/Matieres/Matiere[2]/DesignationMatiere"/>
                                    </fo:block>
                                    <fo:block 
                                        width="5.5cm"
                                        height="0.2cm" font-size="12px"
                                        color="#000000"
                                        text-align="center"
                                        padding-top="0.09cm"
                                        padding-bottom="0.09cm"
                                        border-width="1px" border-style="solid">
                                        <xsl:value-of select="/Releve/Modules/Module[6]/Matieres/Matiere[1]/DesignationMatiere"/>
                                    </fo:block>
                                    <fo:block 
                                        width="5.5cm"
                                        height="0.2cm" font-size="12px"
                                        color="#000000"
                                        text-align="center"
                                        padding-top="0.09cm"
                                        padding-bottom="0.08cm"
                                        border-width="1px" border-style="solid">
                                        <xsl:value-of select="/Releve/Modules/Module[6]/Matieres/Matiere[2]/DesignationMatiere"/>
                                    </fo:block>
                                    <fo:block 
                                        width="5.5cm"
                                        height="0.2cm" font-size="12px"
                                        color="#000000"
                                        text-align="center"
                                        padding-top="0.09cm"
                                        padding-bottom="0.09cm"
                                        border-width="1px" border-style="solid">
                                        <xsl:value-of select="/Releve/Modules/Module[6]/Matieres/Matiere[3]/DesignationMatiere"/>
                                    </fo:block>
                                    <fo:block 
                                        width="5.5cm"
                                        height="0.2cm" font-size="12px"
                                        color="#000000"
                                        text-align="center"
                                        padding-top="0.18cm"
                                        padding-bottom="0.2cm"
                                        border-width="1px" border-style="solid">
                                        <xsl:value-of select="/Releve/Modules/Module[7]/Matieres/Matiere[1]/DesignationMatiere"/>
                                    </fo:block>
                                    <fo:block 
                                        width="5.5cm"
                                        height="0.2cm" font-size="12px"
                                        color="#000000"
                                        text-align="center"
                                        padding-top="0.2cm"
                                        padding-bottom="0.25cm"
                                        border-width="1px" border-style="solid">
                                        <xsl:value-of select="/Releve/Modules/Module[7]/Matieres/Matiere[2]/DesignationMatiere"/>
                                    </fo:block>
                                    <fo:block 
                                        width="5.5cm"
                                        height="0.2cm" font-size="12px"
                                        color="#000000"
                                        text-align="center"
                                        padding-top="0.09cm"
                                        padding-bottom="0.09cm"
                                        border-width="1px" border-style="solid">
                                        <xsl:value-of select="/Releve/Modules/Module[8]/Matieres/Matiere[1]/DesignationMatiere"/>
                                    </fo:block>
                                    <fo:block 
                                        width="5.5cm"
                                        height="0.2cm" font-size="12px"
                                        color="#000000"
                                        text-align="center"
                                        padding-top="0.09cm"
                                        padding-bottom="0.08cm"
                                        border-width="1px" border-style="solid">
                                        <xsl:value-of select="/Releve/Modules/Module[8]/Matieres/Matiere[2]/DesignationMatiere"/>
                                    </fo:block>
                                    <fo:block 
                                        width="5.5cm"
                                        height="0.2cm" font-size="12px"
                                        color="#000000"
                                        text-align="center"
                                        padding-top="0.09cm"
                                        padding-bottom="0.09cm"
                                        border-width="1px" border-style="solid">
                                        <xsl:value-of select="/Releve/Modules/Module[8]/Matieres/Matiere[3]/DesignationMatiere"/>
                                    </fo:block>
                                    <fo:block 
                                        width="5.5cm"
                                        height="0.2cm" font-size="12px"
                                        color="#000000"
                                        text-align="center"
                                        padding-top="0.09cm"
                                        padding-bottom="0.09cm"
                                        border-width="1px" border-style="solid">
                                        <xsl:value-of select="/Releve/Modules/Module[9]/Matieres/Matiere[1]/DesignationMatiere"/>
                                    </fo:block>
                                    <fo:block 
                                        width="5.5cm"
                                        height="0.2cm" font-size="12px"
                                        color="#000000"
                                        text-align="center"
                                        padding-top="0.09cm"
                                        padding-bottom="0.08cm"
                                        border-width="1px" border-style="solid">
                                        <xsl:value-of select="/Releve/Modules/Module[9]/Matieres/Matiere[2]/DesignationMatiere"/>
                                    </fo:block>
                                    <fo:block 
                                        width="5.5cm"
                                        height="0.2cm" font-size="12px"
                                        color="#000000"
                                        text-align="center"
                                        padding-top="0.09cm"
                                        padding-bottom="0.09cm"
                                        border-width="1px" border-style="solid">
                                        <xsl:value-of select="/Releve/Modules/Module[9]/Matieres/Matiere[3]/DesignationMatiere"/>
                                    </fo:block>
                                    <fo:block 
                                        width="5.5cm"
                                        height="0.2cm" font-size="12px"
                                        color="#000000"
                                        text-align="center"
                                        padding-top="0.18cm"
                                        padding-bottom="0.2cm"
                                        border-width="1px" border-style="solid">
                                        <xsl:value-of select="/Releve/Modules/Module[10]/Matieres/Matiere[1]/DesignationMatiere"/>
                                    </fo:block>
                                    <fo:block 
                                        width="5.5cm"
                                        height="0.2cm" font-size="12px"
                                        color="#000000"
                                        text-align="center"
                                        padding-top="0.2cm"
                                        padding-bottom="0.25cm"
                                        border-width="1px" border-style="solid">
                                        <xsl:value-of select="/Releve/Modules/Module[10]/Matieres/Matiere[2]/DesignationMatiere"/>
                                    </fo:block>
                                    <fo:block 
                                        width="5.5cm"
                                        height="0.2cm" font-size="12px"
                                        color="#000000"
                                        text-align="center"
                                        padding-top="0.18cm"
                                        padding-bottom="0.2cm"
                                        border-width="1px" border-style="solid">
                                        <xsl:value-of select="/Releve/Modules/Module[11]/Matieres/Matiere[1]/DesignationMatiere"/>
                                    </fo:block>
                                    <fo:block 
                                        width="5.5cm"
                                        height="0.2cm" font-size="12px"
                                        color="#000000"
                                        text-align="center"
                                        padding-top="0.2cm"
                                        padding-bottom="0.25cm"
                                        border-width="1px" border-style="solid">
                                        <xsl:value-of select="/Releve/Modules/Module[11]/Matieres/Matiere[2]/DesignationMatiere"/>
                                    </fo:block>
                                    <fo:block 
                                        width="5.5cm"
                                        height="0.2cm" font-size="12px"
                                        color="#000000"
                                        text-align="center"
                                        padding-top="0.09cm"
                                        padding-bottom="0.09cm"
                                        border-width="1px" border-style="solid">
                                        <xsl:value-of select="/Releve/Modules/Module[12]/Matieres/Matiere[1]/DesignationMatiere"/>
                                    </fo:block>
                                    <fo:block 
                                        width="5.5cm"
                                        height="0.2cm" font-size="12px"
                                        color="#000000"
                                        text-align="center"
                                        padding-top="0.09cm"
                                        padding-bottom="0.08cm"
                                        border-width="1px" border-style="solid">
                                        <xsl:value-of select="/Releve/Modules/Module[12]/Matieres/Matiere[2]/DesignationMatiere"/>
                                    </fo:block>
                                    <fo:block 
                                        width="5.5cm"
                                        height="0.2cm" font-size="12px"
                                        color="#000000"
                                        text-align="center"
                                        padding-top="0.09cm"
                                        padding-bottom="0.09cm"
                                        border-width="1px" border-style="solid">
                                        <xsl:value-of select="/Releve/Modules/Module[12]/Matieres/Matiere[3]/DesignationMatiere"/>
                                    </fo:block>
                                   
                                </fo:table-cell> 
                                 <fo:table-cell width="2.3cm" height="1.5cm" border-width="1px" border-style="solid" >
                                        <fo:block 
                                            width="2.3cm"
                                            height="0.2cm" font-size="12px"
                                            color="#000000"
                                            text-align="center"
                                            padding-top="0.2cm"
                                            padding-bottom="0.2cm"
                                            border-width="1px" border-style="solid">
                                            <xsl:value-of select="/Releve/Modules/Module[1]/Matieres/Matiere[1]/NoteMatiere"/>
                                        </fo:block>
                                        <fo:block 
                                            width="2.3cm"
                                            height="0.2cm" font-size="12px"
                                            color="#000000"
                                            text-align="center"
                                            padding-top="0.2cm"
                                            padding-bottom="0.25cm"
                                            border-width="1px" border-style="solid">
                                            <xsl:value-of select="/Releve/Modules/Module[1]/Matieres/Matiere[2]/NoteMatiere"/>
                                        </fo:block>
                                     <fo:block 
                                         width="2.3cm"
                                         height="0.2cm" font-size="12px"
                                         color="#000000"
                                         text-align="center"
                                         padding-top="0.09cm"
                                         padding-bottom="0.09cm"
                                         border-width="1px" border-style="solid">
                                         <xsl:value-of select="/Releve/Modules/Module[2]/Matieres/Matiere[1]/NoteMatiere"/>
                                     </fo:block>
                                     <fo:block 
                                         width="2.3cm"
                                         height="0.2cm" font-size="12px"
                                         color="#000000"
                                         text-align="center"
                                         padding-top="0.09cm"
                                         padding-bottom="0.09cm"
                                         border-width="1px" border-style="solid">
                                         <xsl:value-of select="/Releve/Modules/Module[2]/Matieres/Matiere[2]/NoteMatiere"/>
                                     </fo:block>
                                     <fo:block 
                                         width="2.3cm"
                                         height="0.2cm" font-size="12px"
                                         color="#000000"
                                         text-align="center"
                                         padding-top="0.09cm"
                                         padding-bottom="0.07cm"
                                         border-width="1px" border-style="solid">
                                         <xsl:value-of select="/Releve/Modules/Module[2]/Matieres/Matiere[3]/NoteMatiere"/>
                                     </fo:block>
                                     <fo:block 
                                         width="2.3cm"
                                         height="0.2cm" font-size="12px"
                                         color="#000000"
                                         text-align="center"
                                         padding-top="0.18cm"
                                         padding-bottom="0.2cm"
                                         border-width="1px" border-style="solid">
                                         <xsl:value-of select="/Releve/Modules/Module[3]/Matieres/Matiere[1]/NoteMatiere"/>
                                     </fo:block>
                                     <fo:block 
                                         width="2.3cm"
                                         height="0.2cm" font-size="12px"
                                         color="#000000"
                                         text-align="center"
                                         padding-top="0.2cm"
                                         padding-bottom="0.25cm"
                                         border-width="1px" border-style="solid">
                                         <xsl:value-of select="/Releve/Modules/Module[3]/Matieres/Matiere[2]/NoteMatiere"/>
                                     </fo:block>
                                     <fo:block 
                                         width="2.3cm"
                                         height="0.2cm" font-size="12px"
                                         color="#000000"
                                         text-align="center"
                                         padding-top="0.09cm"
                                         padding-bottom="0.09cm"
                                         border-width="1px" border-style="solid">
                                         <xsl:value-of select="/Releve/Modules/Module[4]/Matieres/Matiere[1]/NoteMatiere"/>
                                     </fo:block>
                                     <fo:block 
                                         width="2.3cm"
                                         height="0.2cm" font-size="12px"
                                         color="#000000"
                                         text-align="center"
                                         padding-top="0.09cm"
                                         padding-bottom="0.08cm"
                                         border-width="1px" border-style="solid">
                                         <xsl:value-of select="/Releve/Modules/Module[4]/Matieres/Matiere[2]/NoteMatiere"/>
                                     </fo:block>
                                     <fo:block 
                                         width="2.3cm"
                                         height="0.2cm" font-size="12px"
                                         color="#000000"
                                         text-align="center"
                                         padding-top="0.09cm"
                                         padding-bottom="0.08cm"
                                         border-width="1px" border-style="solid">
                                         <xsl:value-of select="/Releve/Modules/Module[4]/Matieres/Matiere[3]/NoteMatiere"/>
                                     </fo:block>
                                     <fo:block 
                                         width="2.3cm"
                                         height="0.2cm" font-size="12px"
                                         color="#000000"
                                         text-align="center"
                                         padding-top="0.18cm"
                                         padding-bottom="0.2cm"
                                         border-width="1px" border-style="solid">
                                         <xsl:value-of select="/Releve/Modules/Module[5]/Matieres/Matiere[1]/NoteMatiere"/>
                                     </fo:block>
                                     <fo:block 
                                         width="2.3cm"
                                         height="0.2cm" font-size="12px"
                                         color="#000000"
                                         text-align="center"
                                         padding-top="0.2cm"
                                         padding-bottom="0.25cm"
                                         border-width="1px" border-style="solid">
                                         <xsl:value-of select="/Releve/Modules/Module[5]/Matieres/Matiere[2]/NoteMatiere"/>
                                     </fo:block>
                                     <fo:block 
                                         width="2.3cm"
                                         height="0.2cm" font-size="12px"
                                         color="#000000"
                                         text-align="center"
                                         padding-top="0.09cm"
                                         padding-bottom="0.09cm"
                                         border-width="1px" border-style="solid">
                                         <xsl:value-of select="/Releve/Modules/Module[6]/Matieres/Matiere[1]/NoteMatiere"/>
                                     </fo:block>
                                     <fo:block 
                                         width="2.3cm"
                                         height="0.2cm" font-size="12px"
                                         color="#000000"
                                         text-align="center"
                                         padding-top="0.09cm"
                                         padding-bottom="0.08cm"
                                         border-width="1px" border-style="solid">
                                         <xsl:value-of select="/Releve/Modules/Module[6]/Matieres/Matiere[2]/NoteMatiere"/>
                                     </fo:block>
                                     <fo:block 
                                         width="2.3cm"
                                         height="0.2cm" font-size="12px"
                                         color="#000000"
                                         text-align="center"
                                         padding-top="0.09cm"
                                         padding-bottom="0.09cm"
                                         border-width="1px" border-style="solid">
                                         <xsl:value-of select="/Releve/Modules/Module[6]/Matieres/Matiere[3]/NoteMatiere"/>
                                     </fo:block>
                                     <fo:block 
                                         width="2.3cm"
                                         height="0.2cm" font-size="12px"
                                         color="#000000"
                                         text-align="center"
                                         padding-top="0.18cm"
                                         padding-bottom="0.2cm"
                                         border-width="1px" border-style="solid">
                                         <xsl:value-of select="/Releve/Modules/Module[7]/Matieres/Matiere[1]/NoteMatiere"/>
                                     </fo:block>
                                     <fo:block 
                                         width="2.3cm"
                                         height="0.2cm" font-size="12px"
                                         color="#000000"
                                         text-align="center"
                                         padding-top="0.2cm"
                                         padding-bottom="0.25cm"
                                         border-width="1px" border-style="solid">
                                         <xsl:value-of select="/Releve/Modules/Module[7]/Matieres/Matiere[2]/NoteMatiere"/>
                                     </fo:block>
                                     <fo:block 
                                         width="2.3cm"
                                         height="0.2cm" font-size="12px"
                                         color="#000000"
                                         text-align="center"
                                         padding-top="0.09cm"
                                         padding-bottom="0.09cm"
                                         border-width="1px" border-style="solid">
                                         <xsl:value-of select="/Releve/Modules/Module[8]/Matieres/Matiere[1]/NoteMatiere"/>
                                     </fo:block>
                                     <fo:block 
                                         width="2.3cm"
                                         height="0.2cm" font-size="12px"
                                         color="#000000"
                                         text-align="center"
                                         padding-top="0.09cm"
                                         padding-bottom="0.08cm"
                                         border-width="1px" border-style="solid">
                                         <xsl:value-of select="/Releve/Modules/Module[8]/Matieres/Matiere[2]/NoteMatiere"/>
                                     </fo:block>
                                     <fo:block 
                                         width="2.3cm"
                                         height="0.2cm" font-size="12px"
                                         color="#000000"
                                         text-align="center"
                                         padding-top="0.09cm"
                                         padding-bottom="0.09cm"
                                         border-width="1px" border-style="solid">
                                         <xsl:value-of select="/Releve/Modules/Module[8]/Matieres/Matiere[3]/NoteMatiere"/>
                                     </fo:block>
                                     <fo:block 
                                         width="2.3cm"
                                         height="0.2cm" font-size="12px"
                                         color="#000000"
                                         text-align="center"
                                         padding-top="0.09cm"
                                         padding-bottom="0.09cm"
                                         border-width="1px" border-style="solid">
                                         <xsl:value-of select="/Releve/Modules/Module[9]/Matieres/Matiere[1]/NoteMatiere"/>
                                     </fo:block>
                                     <fo:block 
                                         width="2.3cm"
                                         height="0.2cm" font-size="12px"
                                         color="#000000"
                                         text-align="center"
                                         padding-top="0.09cm"
                                         padding-bottom="0.08cm"
                                         border-width="1px" border-style="solid">
                                         <xsl:value-of select="/Releve/Modules/Module[9]/Matieres/Matiere[2]/NoteMatiere"/>
                                     </fo:block>
                                     <fo:block 
                                         width="2.3cm"
                                         height="0.2cm" font-size="12px"
                                         color="#000000"
                                         text-align="center"
                                         padding-top="0.09cm"
                                         padding-bottom="0.09cm"
                                         border-width="1px" border-style="solid">
                                         <xsl:value-of select="/Releve/Modules/Module[9]/Matieres/Matiere[3]/NoteMatiere"/>
                                     </fo:block>
                                     <fo:block 
                                         width="2.3cm"
                                         height="0.2cm" font-size="12px"
                                         color="#000000"
                                         text-align="center"
                                         padding-top="0.18cm"
                                         padding-bottom="0.2cm"
                                         border-width="1px" border-style="solid">
                                         <xsl:value-of select="/Releve/Modules/Module[10]/Matieres/Matiere[1]/NoteMatiere"/>
                                     </fo:block>
                                     <fo:block 
                                         width="2.3cm"
                                         height="0.2cm" font-size="12px"
                                         color="#000000"
                                         text-align="center"
                                         padding-top="0.2cm"
                                         padding-bottom="0.25cm"
                                         border-width="1px" border-style="solid">
                                         <xsl:value-of select="/Releve/Modules/Module[10]/Matieres/Matiere[2]/NoteMatiere"/>
                                     </fo:block>
                                     <fo:block 
                                         width="2.3cm"
                                         height="0.2cm" font-size="12px"
                                         color="#000000"
                                         text-align="center"
                                         padding-top="0.18cm"
                                         padding-bottom="0.2cm"
                                         border-width="1px" border-style="solid">
                                         <xsl:value-of select="/Releve/Modules/Module[11]/Matieres/Matiere[1]/NoteMatiere"/>
                                     </fo:block>
                                     <fo:block 
                                         width="2.3cm"
                                         height="0.2cm" font-size="12px"
                                         color="#000000"
                                         text-align="center"
                                         padding-top="0.2cm"
                                         padding-bottom="0.25cm"
                                         border-width="1px" border-style="solid">
                                         <xsl:value-of select="/Releve/Modules/Module[11]/Matieres/Matiere[2]/NoteMatiere"/>
                                     </fo:block>
                                     <fo:block 
                                         width="2.3cm"
                                         height="0.2cm" font-size="12px"
                                         color="#000000"
                                         text-align="center"
                                         padding-top="0.09cm"
                                         padding-bottom="0.09cm"
                                         border-width="1px" border-style="solid">
                                         <xsl:value-of select="/Releve/Modules/Module[12]/Matieres/Matiere[1]/NoteMatiere"/>
                                     </fo:block>
                                     <fo:block 
                                         width="2.3cm"
                                         height="0.2cm" font-size="12px"
                                         color="#000000"
                                         text-align="center"
                                         padding-top="0.09cm"
                                         padding-bottom="0.08cm"
                                         border-width="1px" border-style="solid">
                                         <xsl:value-of select="/Releve/Modules/Module[12]/Matieres/Matiere[2]/NoteMatiere"/>
                                     </fo:block>
                                     <fo:block 
                                         width="2.3cm"
                                         height="0.2cm" font-size="12px"
                                         color="#000000"
                                         text-align="center"
                                         padding-top="0.09cm"
                                         padding-bottom="0.09cm"
                                         border-width="1px" border-style="solid">
                                         <xsl:value-of select="/Releve/Modules/Module[12]/Matieres/Matiere[3]/NoteMatiere"/>
                                     </fo:block>
                                   
                                </fo:table-cell> 
                            </fo:table-row>
                         
                        </fo:table-body>
                    </fo:table>
             
             
             
                    <fo:table table-layout="fixed">
                        <fo:table-column column-width="9.9cm" border-width="1px" border-style="solid"/>
                        <fo:table-column column-width="6cm" border-width="1px" border-style="solid"/>
                        <fo:table-column column-width="5.9cm" border-width="1px" border-style="solid"/>
                        <fo:table-body>
                            <fo:table-row height="0.4cm" border-style="solid" >
                                <fo:table-cell width="9.9cm" background-color="#BDBDBD" border-style="solid" >
                                    <fo:block font-size="15px" text-align="center" color="black"  margin-top="0.2cm" >
                                        Résultat :
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell width="5cm"  background-color="#BDBDBD" border-style="solid" >
                                    <fo:block font-size="15px" text-align="center" color="black"  margin-top="0.2cm"   >
                                        <xsl:value-of select="avg(//Matiere/NoteMatiere)"/>        
                                    </fo:block>
                                    
                                </fo:table-cell>
                                <fo:table-cell width="4.9cm" background-color="#48D053" border-style="solid" >
                                    <fo:block  font-size="15px" text-align="center" color="black"   margin-top="0.2cm"  >
                                       Admis
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                        
                    </fo:table>
                    <fo:block  margin-left="1cm" font-family="Arial" font-size="14px"
                        color="#000000" text-align="left" margin-bottom ="0.6cm" margin-top="0.2cm" font-weight="bold"
                        >Le Directeur</fo:block>
                    <fo:block  margin-left="1cm" font-family="Arial" font-size="12px"
                        color="#000000" text-align="left" margin-bottom ="0.02cm" margin-top="0.4cm" 
                        >Avis important : Il ne peut etre délivré qu'un seul exemplaire du présent relevé de note.Aucun duplica ne sera fourni.
                    </fo:block>
               
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template> 
</xsl:stylesheet>
