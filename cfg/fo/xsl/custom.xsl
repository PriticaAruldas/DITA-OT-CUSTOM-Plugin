<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                version="2.0">
  <!-- Move figure title to top and description to bottom -->
  <xsl:template match="*[contains(@class,' topic/fig ')]">
    <fo:block xsl:use-attribute-sets="fig">
      <xsl:call-template name="commonattributes"/>
      <xsl:if test="not(@id)">
        <xsl:attribute name="id">
          <xsl:call-template name="get-id"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:apply-templates select="*[contains(@class,' topic/title ')]"/>
      <xsl:apply-templates select="*[not(contains(@class,' topic/title ') or contains(@class,' topic/desc '))]"/>
      <xsl:apply-templates select="*[contains(@class,' topic/desc ')]"/>
    </fo:block>
  </xsl:template>

<xsl:param name="bg_img" select="red"/>

  <xsl:template name="_BG_IMAGE">
    <fo:block>
      <xsl:variable name="Background_img">
        <xsl:choose>
          <xsl:when test="$bg_img eq red">img.jpg</xsl:when>
          <xsl:otherwise>img.jpg</xsl:otherwise>
        </xsl:choose>
      </xsl:variable>
      <fo:external-graphic src="({concat($artworkPrefix,'cfg/common/artwork/img.jpg')})"/>
    </fo:block>
  </xsl:template>
  
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
    </fo:block> -->
    <!-- set the subtitle -->
    <xsl:apply-templates select="$map//*[contains(@class,' bookmap/booktitlealt ')]"/>
    <fo:block xsl:use-attribute-sets="__frontmatter__owner">
      <xsl:apply-templates select="$map//*[contains(@class,' bookmap/bookmeta ')]"/>
    </fo:block>
  </xsl:template>

  <!--Page number-->
<!-- <fo:static-content flow-name="xsl-region-after" use-attribute-sets="_toc_page-number">
     <fo:block text-align="center">
       Page <fo:page-number/> of <fo:page-number-citation ref-id="end"/>
     </fo:block>
   </fo:static-content>
   <fo:block id="end"/> -->

<!--chapters-->

<!-- <xsl:arttribute-set name="toc_chapter">
    <xsl:attribute name="color"></xsl:attribute>
</xsl:attribute-set> -->

</xsl:stylesheet>