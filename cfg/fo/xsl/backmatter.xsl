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
                        <xsl:when test="exists($authorinfo/descendant::*[contains(@class, ' xnal-d/organizationname ')])">
                                <fo:block xsl:use-attribute-sets="__backmatter__organizationname">
                                        <xsl:value-of>
                                                <xsl:apply-templates select="$authorinfo/descendant::*[contains(@class, ' xnal-d/organizationname ')]"/>
                                        </xsl:value-of>
                                </fo:block>
                        </xsl:when>
                        <xsl:otherwise>             
                                <fo:block xsl:use-attribute-sets="__backmatter__organizationname">
                                        <xsl:apply-templates select="$authorinfo/descendant::*[contains(@class, ' xnal-d/organizationname ')]" />
                                </fo:block>                                 
                        </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                         <!-- set the address -->     
                        <xsl:when test="exists($authorinfo/descendant::*[contains(@class, ' xnal-d/addressdetails ')])">
                                <fo:block xsl:use-attribute-sets="__backmatter__address">
                                        <xsl:value-of>
                                                <xsl:apply-templates select="$authorinfo/descendant::*[contains(@class, ' xnal-d/addressdetails ')]"/>
                                        </xsl:value-of>
                                </fo:block>     
                        </xsl:when> 

                        <xsl:otherwise>              
                                <fo:block xsl:use-attribute-sets="__backmatter__address">
                                        <xsl:apply-templates select="$authorinfo/descendant::*[contains(@class, ' xnal-d/addressdetails ')]"/>
                                </fo:block>                         
                        </xsl:otherwise>
                </xsl:choose>                                    
                </fo:block>
         </fo:block-container>
</xsl:template>

</xsl:stylesheet>


