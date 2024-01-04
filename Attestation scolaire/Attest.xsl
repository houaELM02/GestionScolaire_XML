<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:ins="http://GINF2Inscription.org"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">
    <xsl:template match="ins:att">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
                <fo:layout-master-set>
                    <fo:simple-page-master master-name="A4">
                        <fo:region-body/>
                    </fo:simple-page-master>
                </fo:layout-master-set>
                <fo:page-sequence master-reference="A4" width="21cm" height="29.7">
                    <fo:flow flow-name="xsl-region-body">
                        <!-- TOP BAR -->    
                        <fo:table table-layout="fixed">
                            <fo:table-column column-width="8.5cm"/>
                            <fo:table-column column-width="5cm"/>
                            <fo:table-column column-width="8.5cm"/>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell width="8.5cm" height="3cm" margin-right="0.6cm">
                                        <fo:block font-family="Roboto" font-size="19px" color="#02306E" text-align="center" margin-top="0.5cm" margin-bottom="0.1cm" >
                                            <xsl:value-of select="ins:royaumefr"/>
                                        </fo:block>
                                        <fo:block font-family="Roboto" font-size="19px" color="#02306E" text-align="center"  margin-bottom="0.1cm">
                                            <xsl:value-of select="ins:nameUaefr"/>
                                        </fo:block>
                                        <fo:block font-family="Roboto" font-size="19px" color="#02306E" text-align="center"  margin-bottom="0.1cm">
                                            <xsl:value-of select="ins:nameSchoolfr"/>
                                        </fo:block>
                                        <fo:block font-family="Roboto" font-size="19px" color="#02306E" text-align="center"  margin-bottom="0.1cm">
                                            <xsl:value-of select="ins:villeSchoolfr"/>
                                        </fo:block>
                                        <fo:block font-family="Roboto" font-size="19px" color="#02306E" text-align="center"  margin-bottom="-0.15cm" text-decoration="underline">
                                            <xsl:value-of select="ins:servicefr"/>
                                        </fo:block>
                                        <fo:block  text-align="center"  margin-bottom="0.1cm">
                                            <fo:instream-foreign-object>
                                                <svg width="85" height="12" viewBox="0 0 85 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <g filter="url(#filter0_di)">
                                                        <line x1="4.99667" y1="1" x2="80.0033" y2="1" stroke="#013172"/>
                                                    </g>
                                                    <rect x="16" y="2" width="55" height="10" fill="#013172"/>
                                                    <defs>
                                                        <filter id="filter0_di" x="0.996666" y="0.5" width="83.0067" height="9" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
                                                            <feFlood flood-opacity="0" result="BackgroundImageFix"/>
                                                            <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"/>
                                                            <feOffset dy="4"/>
                                                            <feGaussianBlur stdDeviation="2"/>
                                                            <feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.25 0"/>
                                                            <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow"/>
                                                            <feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow" result="shape"/>
                                                            <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha"/>
                                                            <feOffset dy="4"/>
                                                            <feGaussianBlur stdDeviation="2"/>
                                                            <feComposite in2="hardAlpha" operator="arithmetic" k2="-1" k3="1"/>
                                                            <feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.25 0"/>
                                                            <feBlend mode="normal" in2="shape" result="effect2_innerShadow"/>
                                                        </filter>
                                                    </defs>
                                                </svg>
                                                
                                            </fo:instream-foreign-object>
                                        </fo:block>
                                       </fo:table-cell>
                                    
                                    <fo:table-cell width="4cm" >
                                        <xsl:if test="ins:logoEnsa">
                                            <fo:block margin-top="0.1cm" margin-left="-0.43cm">
                                                <fo:external-graphic 
                                                    src="ensa.png" 
                                                    content-height="scale-to-fit"
                                                    content-width="scale-to-fit"
                                                    width="6cm"
                                                    height="3cm"
                                                    scaling="non-uniform"
                                                />
                                            </fo:block>
                                        </xsl:if>
                                    </fo:table-cell>
                                    
                                    
                                    <fo:table-cell width="9.5cm" height="3cm" margin-right="-1.2cm">
                                        
                                        <fo:block font-family="Arial" font-size="24px"
                                            color="#02306E" text-align="center" margin-top="0.35cm" margin-bottom="0.03cm">                                       
                                            <xsl:value-of select="ins:royaumeAr"/>
                                          </fo:block>
                                        
                                        <fo:block font-family="Arial" font-size="24px"
                                            color="#02306E" text-align="center"  margin-bottom="0.03cm">
                                            <xsl:value-of select="ins:nameUaeAr"/>
                                        </fo:block>
                                       
                                        <fo:block font-family="Arial" font-size="24px"
                                            color="#02306E" text-align="center"  margin-bottom="0.03cm" >
                                            <xsl:value-of select="ins:nameSchoolAr"/>
                                        </fo:block>
                                        <fo:block font-family="Arial" font-size="24px"
                                            color="#02306E" text-align="center" margin-bottom="-0.15cm"  
                                            >
                                            <xsl:value-of select="ins:villeSchoolAr"/>
                                        </fo:block>
                                       
                                        <fo:block font-family="Arial" font-size="19px"
                                            color="#02306E" text-align="center" margin-bottom="-0.15cm"  text-decoration="underline" 
                                            >
                                            <xsl:value-of select="ins:serviceAr"/>
                                        </fo:block>
                                        
                                        <fo:block  text-align="center"  >
                                            <fo:instream-foreign-object>
                                                <svg width="85" height="12" viewBox="0 0 85 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <g filter="url(#filter0_di)">
                                                        <line x1="4.99667" y1="1" x2="80.0033" y2="1" stroke="#013172"/>
                                                    </g>
                                                    <rect x="16" y="2" width="55" height="10" fill="#013172"/>
                                                    <defs>
                                                        <filter id="filter0_di" x="0.996666" y="0.5" width="83.0067" height="9" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
                                                            <feFlood flood-opacity="0" result="BackgroundImageFix"/>
                                                            <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"/>
                                                            <feOffset dy="4"/>
                                                            <feGaussianBlur stdDeviation="2"/>
                                                            <feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.25 0"/>
                                                            <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow"/>
                                                            <feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow" result="shape"/>
                                                            <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha"/>
                                                            <feOffset dy="4"/>
                                                            <feGaussianBlur stdDeviation="2"/>
                                                            <feComposite in2="hardAlpha" operator="arithmetic" k2="-1" k3="1"/>
                                                            <feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.25 0"/>
                                                            <feBlend mode="normal" in2="shape" result="effect2_innerShadow"/>
                                                        </filter>
                                                    </defs>
                                                </svg>
                                                
                                            </fo:instream-foreign-object>
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        
                        
                        <!-- Titre -->    
                        <fo:table table-layout="fixed">
                            <fo:table-column column-width="21cm" />
                            
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-family="Arial" font-size="34px"
                                            color="#02306E" text-align="center" margin-top="3cm" 
                                            letter-spacing="0.01cm" word-spacing="0.1cm" text-decoration="underline"
                                            >
                                            <xsl:value-of select="ins:title"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                            </fo:table-body>
                        </fo:table>
                            
                        <!-- BODY -->    
                        <fo:table table-layout="fixed">
                            <fo:table-column column-width="21cm"/>
                            <fo:table-column column-width="21cm"/>
                            <fo:table-column column-width="21cm"/>
                            
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell  >
                                        
                                        
                                        <fo:block font-family="Arial" font-size="12px"
                                            color="#000000"  margin-bottom ="0.5cm" margin-left="2cm" margin-top="2cm"
                                            >
                                            <xsl:value-of select="ins:body/ins:header"/>
                                        </fo:block>
                                        
                                        
                                        
                                        <fo:block font-family="Arial" font-size="12px"
                                            color="#011632"  margin-bottom ="0.5cm" margin-left="2cm"
                                            
                                            >
                                            Mademoiselle <fo:inline font-weight="bold" ><xsl:value-of select="ins:body/ins:infoEtudiant/ins:nom"/></fo:inline>
                                        </fo:block>
                                        
                                        <fo:block font-family="Arial" font-size="12px"
                                            color="#000000"   margin-bottom ="0.5cm" margin-left="2cm"
                                            >
                                            Numéro de la carte d'identité nationales :   <xsl:value-of select="ins:body/ins:infoEtudiant/ins:nom/@cin"/>
                                        </fo:block>
                                        <fo:block font-family="Arial" font-size="12px"
                                            color="#000000"   margin-bottom ="0.5cm" margin-left="2cm"
                                            >
                                            Code national de l'étudiant :    <xsl:value-of select="ins:body/ins:infoEtudiant/ins:nom/[@cne]"/>
                                        </fo:block>
                                        
                                        <fo:block font-family="Arial" font-size="12px"
                                            color="#000000"  margin-bottom ="0.5cm" margin-left="2cm"
                                            >
                                            <xsl:value-of select="ins:body/ins:infoEtudiant/ins:naissance"/>
                                        </fo:block>
                                        
                                        <fo:block font-family="Arial" font-size="12px"
                                            color="#011632"  margin-top ="0.5cm" margin-left="2cm"
                                            
                                            >
                                             Poursuit ses études à l' Ecole Nationale des Sciences Appliquées de Tanger pour l'année universitaire <xsl:value-of select="ins:body/ins:infoEtudiant/ins:anneeu"/>
                                        </fo:block>
                                        
                                        <fo:block font-family="Arial" font-size="12px"
                                            color="#011632"  margin-top ="0.5cm" margin-left="2cm"
                                            
                                            >
                                            
                                            <fo:inline text-decoration="underline">Diplôme : </fo:inline>  <xsl:value-of select="ins:body/ins:infoEtudiant/ins:diplome"/>
                                        </fo:block>
                                        
                                        <fo:block font-family="Arial" font-size="12px"
                                            color="#000000"  margin-top ="0.5cm" margin-left="2cm"
                                            >
                                            <fo:inline text-decoration="underline"> Filière : </fo:inline>  <xsl:value-of select="ins:body/ins:infoEtudiant/ins:filiere"/>
                                            
                                        </fo:block>
                                        
                                        <fo:block font-family="Arial" font-size="12px"
                                            color="#000000"  margin-top ="0.5cm" margin-left="2cm"
                                            >
                                            <fo:inline text-decoration="underline"> Année : </fo:inline><xsl:value-of select="ins:body/ins:infoEtudiant/ins:annee"/>
                                            
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <!-- 2nd Part -->
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-family="Arial" font-size="12px"
                                            color="#000000" margin-left="12cm" margin-top="0.5cm" 
                                            >
                                            <xsl:value-of select="ins:body/ins:date"/>
                                        </fo:block>
                                        <fo:block font-family="Arial" font-size="12px"
                                            color="#000000" margin-left="13cm" margin-top="0.5cm" 
                                            >
                                            <xsl:value-of select="ins:body/ins:Signature"/>
                                        </fo:block>
                                        <fo:block font-family="Arial" font-size="12px"
                                            color="#000000" margin-left="16cm" margin-top="1.5cm" 
                                            >
                                            <fo:inline text-decoration="underline"><xsl:value-of select="ins:body/ins:CodeApogeName"/></fo:inline><xsl:value-of select="ins:body/ins:CodeApoge"/>
                                        </fo:block>
                                        
                                        <fo:block margin-top ="-0.5cm"   >
                                            <fo:instream-foreign-object>
                                                <svg  width="210mm" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <line x1="0" y1="50%" x2="100%" y2="50%" style="stroke:black;stroke-width:1" />
                                                </svg>
                                                </fo:instream-foreign-object>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                
                                <fo:table-row >
                                    <fo:table-cell   >
                                        
                                        <fo:block font-family="Arial" font-size="12px"  
                                            color="#000000" margin-bottom="0.1cm"  margin-left="17cm" margin-top="-0.5cm">                                       
                                            <fo:inline text-decoration="underline" direction="rtl"> العنوان :</fo:inline> <xsl:value-of select="ins:footer/ins:nameSchoolAr"/> 
                                        </fo:block>
                                        
                                        <fo:block font-family="Arial" font-size="12px" color="#000000"    margin-bottom="0.1cm" margin-left="17.2cm">
                                            <xsl:value-of select="ins:footer/ins:AddresseAr"/>
                                        </fo:block>
                                        <fo:block font-family="Arial" font-size="12px" color="#000000"    margin-bottom="0.1cm" margin-left="15.9cm">
                                            <xsl:value-of select="ins:footer/ins:telAr"/>  <xsl:value-of select="ins:footer/ins:faxAr"/> 
                                        </fo:block>
                                        
                                    </fo:table-cell>
                                    <fo:table-cell  >
                                        <fo:block font-family="Arial" font-size="12px"
                                            color="#000000" margin-left="-20.5cm"   margin-top="-0.5cm"
                                            >
                                            <fo:inline text-decoration="underline" >Adresse :     </fo:inline><xsl:value-of select="ins:footer/ins:Addresse"/>
                                            
                                            <fo:block font-family="Arial" font-size="12px" color="#000000"    margin-top="0.1cm" margin-bottom="0.1cm" margin-left="1.2cm">
                                                <xsl:value-of select="ins:footer/ins:site"/>
                                            </fo:block>
                                            <fo:block font-family="Arial" font-size="12px" color="#000000"    margin-bottom="0.1cm" margin-left="1.2cm">
                                                Tel : <xsl:value-of select="ins:footer/ins:tel"/>  FAX : <xsl:value-of select="ins:footer/ins:fax"/>
                                            </fo:block>
                                        </fo:block>
                                       </fo:table-cell>
                                </fo:table-row>
                               
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block margin-top ="-0.5cm"   >
                                            <fo:instream-foreign-object>
                                                <svg  width="210mm" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <line x1="0" y1="50%" x2="100%" y2="50%" style="stroke:black;stroke-width:1" />
                                                </svg>
                                            </fo:instream-foreign-object>
                                        </fo:block>
                                        <!--==============FOOTERBAS============-->
                                        <fo:block  font-family="Arial" font-size="12px" color="#000000" text-align="center" margin-top="-0.5cm" >
                                            <xsl:value-of select="ins:footer/ins:avis"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                </fo:table-row>
                                
                                
                                   
                              
                                
                            </fo:table-body>
                        </fo:table>
                        <!--==================================-->
        
        
                    </fo:flow>
                </fo:page-sequence>
        </fo:root>
    </xsl:template>
    
</xsl:stylesheet>