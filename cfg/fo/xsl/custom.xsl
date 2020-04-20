<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:ot-placeholder="http://suite-sol.com/namespaces/ot-placeholder" version="2.0">

  <xsl:import href="static-content.xsl"/>
  <xsl:import href="commons.xsl"/>
  <xsl:import href="fo-dl-as-dl.xsl"/>
  <xsl:import href="preface.xsl"/>
  <xsl:import href="layout-master.xsl"/>
  <xsl:import href="list.xsl"/>
  <xsl:import href="table.xsl"/>
  <xsl:import href="backmatter.xsl"/>
  
  <xsl:template name="createFrontCoverContents">

	 <fo:block-container xsl:use-attribute-sets='__frontmatter__logo__container'>
			<fo:block>
				<fo:external-graphic xsl:use-attribute-sets='__frontmatter__logo'/>
			</fo:block>
		</fo:block-container>

    <!-- set the title -->
    <fo:block xsl:use-attribute-sets="__frontmatter__title">
      <xsl:choose>
        <xsl:when test="$map/*[contains(@class,' topic/title ')][1]">
          <xsl:apply-templates select="$map/*[contains(@class,' topic/title ')][1]"/>
        </xsl:when>
        <xsl:when test="$map//*[contains(@class,' bookmap/mainbooktitle ')][1]">
          <xsl:apply-templates select="$map//*[contains(@class,' bookmap/mainbooktitle ')][1]"/>
        </xsl:when>
        <xsl:when test="//*[contains(@class, ' map/map ')]/@title">
          <xsl:value-of select="//*[contains(@class, ' map/map ')]/@title"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="/descendant::*[contains(@class, ' topic/topic ')][1]/*[contains(@class, ' topic/title ')]"/>
        </xsl:otherwise>
      </xsl:choose>
    </fo:block>
    <!-- set the subtitle -->
    <xsl:apply-templates select="$map//*[contains(@class,' bookmap/booktitlealt ')]"/>
    <fo:block xsl:use-attribute-sets="__frontmatter__owner">
      <xsl:apply-templates select="$map//*[contains(@class,' bookmap/bookmeta ')]"/>
    </fo:block>
  </xsl:template>
</xsl:stylesheet>