<?xml version="1.0" encodin="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                version="2.0">

<xsl:template name="createFrontCoverContents">
 <!-- set the title -->
 <fo:block xsl:use-attribute-sets="__frontmatter__title">
  <xsl:choose>
   <xsl:when test="$map/*[contains(@class,' topic/title ')][1]">
    <xsl:apply-templates select="$map/*[contains(@class,' topic/title ')][1]"/>
      </xsl:when>
      <xsl:when test="$map//*[contains(@class,' bookmap/mainbooktitle ')][1]">
        <xsl:apply-templates select="$map//*[contains
                                       (@class,' bookmap/mainbooktitle ')][1]"/>
      </xsl:when>
      <xsl:when test="//*[contains(@class, ' map/map ')]/@title">
        <xsl:value-of select="//*[contains(@class, ' map/map ')]/@title"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="/descendant::*[contains
           (@class, ' topic/topic ')][1]/*[contains(@class, ' topic/title ')]"/>
   </xsl:otherwise>
  </xsl:choose>
 </fo:block>
    
 <!-- set the subtitle -->
 <xsl:apply-templates select="$map//*[contains
                                          (@class,' bookmap/booktitlealt ')]"/>
 <fo:block xsl:use-attribute-sets="__frontmatter__owner">
  <xsl:apply-templates select="$map//*[contains(@class,' bookmap/bookmeta ')]"/>
 </fo:block>
  
 <!-- Load the image logo -->
  <fo:block text-align="center" width="100%">
   <fo:external-graphic
      src="url({concat($artworkPrefix, 
                          'Configuration/OpenTopic/cfg/common/artwork/MetaperceptLogo.png')})"
    />
  </fo:block>
 </xsl:template>

</xsl:stylesheet>