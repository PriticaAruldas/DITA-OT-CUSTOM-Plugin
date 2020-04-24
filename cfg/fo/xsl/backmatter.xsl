<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                version="2.0">

<xsl:template name="createBackCoverContents">
        <fo:block-container use-attribute-sets="__backmatter__logo__container">
                <fo:block>
                <fo:external-graphic xsl:use-attribute-sets='__backmatter__logo'/>
                </fo:block>
        </fo:block-container>

         <fo:block-container text-align="center" start-indent="5mm" color="black">
                <fo:block>
                <xsl:choose>
                        <!-- set the organization name -->    
                        <xsl:when test="exists($pdfbase_authorinformation/descendant::*[contains(@class, ' xnal-d/organizationname ')])">
                                <fo:block xsl:use-attribute-sets="__backmatter__organizationname">
                                        <xsl:value-of>
                                                <xsl:apply-templates select="$pdfbase_authorinformation/descendant::*[contains(@class, ' xnal-d/organizationname ')]"/>
                                        </xsl:value-of>
                                </fo:block>
                        </xsl:when>
                        <xsl:otherwise>             
                                <fo:block xsl:use-attribute-sets="__backmatter__organizationname">
                                        <xsl:apply-templates select="$pdfbase_authorinformation/descendant::*[contains(@class, ' xnal-d/organizationname ')]" />
                                </fo:block>                                 
                        </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                         <!-- set the address -->     
                        <xsl:when test="exists($pdfbase_authorinformation/descendant::*[contains(@class, ' xnal-d/addressdetails ')])">
                                <fo:block xsl:use-attribute-sets="__backmatter__address">
                                        <xsl:value-of>
                                                <xsl:apply-templates select="$pdfbase_authorinformation/descendant::*[contains(@class, ' xnal-d/addressdetails ')]"/>
                                        </xsl:value-of>
                                </fo:block>     
                        </xsl:when> 

                        <xsl:otherwise>              
                                <fo:block xsl:use-attribute-sets="__backmatter__address">
                                        <xsl:apply-templates select="$pdfbase_authorinformation/descendant::*[contains(@class, ' xnal-d/addressdetails ')]"/>
                                </fo:block>                         
                        </xsl:otherwise>
                </xsl:choose>                                    
                </fo:block>
         </fo:block-container>
</xsl:template>

</xsl:stylesheet>


<!-- <fo:block xsl:use-attribute-sets="__backmatter__Contents">             -->
            <!-- Table with logo and product name. -->
            <!-- <fo:table>
		<fo:table-column column-number="1" column-width="160mm"/>
                <fo:table-column column-number="2" column-width="160mm"/>
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell text-align="center" start-indent="30mm">                          
                                        <fo:block>
                                            <fo:external-graphic xsl:use-attribute-sets='__backmatter__logo'/>
                                        </fo:block>                                
                                                                                

                                <fo:block-container start-indent="5mm" color="black">
                                        <fo:block>
                                        <xsl:choose>
                                                <xsl:when test="exists($pdfbase_authorinformation/descendant::*[contains(@class, ' xnal-d/organizationname ')])">
                                                        <fo:block xsl:use-attribute-sets="__backmatter__organizationname">
                                                                <xsl:value-of>
                                                                        <xsl:apply-templates select="$pdfbase_authorinformation/descendant::*[contains(@class, ' xnal-d/organizationname ')]/text"/>
                                                                </xsl:value-of>
                                                        </fo:block>
                                                </xsl:when>
                                                <xsl:otherwise> -->
                                                        <!-- set the organization name -->                           
                                                        <!-- <fo:block xsl:use-attribute-sets="__backmatter__organizationname">
                                                                <xsl:apply-templates select="$pdfbase_authorinformation/descendant::*[contains(@class, ' xnal-d/organizationname ')]/text" />
                                                        </fo:block>                                 
                                                </xsl:otherwise>
                                        </xsl:choose> -->


                                        <!-- <xsl:choose>
                                                <xsl:when test="exists($pdfbase_authorinformation/descendant::*[contains(@class, ' xnal-d/addressdetails ')])">
                                                        <fo:block xsl:use-attribute-sets="__backmatter__address">
                                                        <xsl:value-of>
                                                                <xsl:apply-templates select="$pdfbase_authorinformation/descendant::*[contains(@class, ' xnal-d/addressdetails ')]"/>
                                                        </xsl:value-of>
                                                         </fo:block>     
                                                </xsl:when> 

                                                <xsl:otherwise> -->
                                                <!-- set the address -->     
                                                        <!-- <fo:block xsl:use-attribute-sets="__backmatter__address">
                                                                <xsl:apply-templates select="$pdfbase_authorinformation/descendant::*[contains(@class, ' xnal-d/addressdetails ')]"/>
                                                        </fo:block>                         
                                                </xsl:otherwise>
                                        </xsl:choose>
                                    
                                        </fo:block>
                                </fo:block-container>                                                  

                        </fo:table-cell>
                        <fo:table-cell padding="1mm" text-align="left" color="white">

                        </fo:table-cell>
                    </fo:table-row>                    
                </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template> -->