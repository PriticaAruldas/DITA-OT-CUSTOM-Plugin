<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:opentopic-func="http://www.idiominc.com/opentopic/exsl/function"
                xmlns:ot-placeholder="http://suite-sol.com/namespaces/ot-placeholder" version="2.0">

  <xsl:import href="static-content.xsl"/>
  <xsl:import href="commons.xsl"/>
  <xsl:import href="fo-dl-as-dl.xsl"/>
  <xsl:import href="preface.xsl"/>
  <xsl:import href="layout-master.xsl"/>
  
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

   <xsl:template match="*[contains(@class, ' topic/image ')]">
    <xsl:apply-templates select="*[contains(@class, ' ditaot-d/ditaval-startprop ')]"
      mode="outofline"/>
    <xsl:choose>
      <xsl:when test="empty(@href)"/>
      <xsl:when test="@placement = 'break'">
        <fo:block xsl:use-attribute-sets="image__block">
          <xsl:call-template name="commonattributes"/>
          <xsl:apply-templates select="." mode="placeImage">
            <xsl:with-param name="imageAlign" select="@align"/>
            <xsl:with-param name="href"
              select="
                if (@scope = 'external' or opentopic-func:isAbsolute(@href)) then
                  @href
                else
                  concat($input.dir.url, @href)"/>
            <xsl:with-param name="height" select="@height"/>
            <xsl:with-param name="width" select="@width"/>
          </xsl:apply-templates>
        </fo:block>
        <xsl:if test="$artLabel = 'yes'">
          <fo:block>
            <xsl:apply-templates select="." mode="image.artlabel"/>
          </fo:block>
        </xsl:if>
      </xsl:when>
      <xsl:otherwise>
        <fo:inline xsl:use-attribute-sets="image__inline">
          <xsl:call-template name="commonattributes"/>
          <xsl:variable name="inlineImage">
            <xsl:apply-templates select="." mode="placeImage">
              <xsl:with-param name="imageAlign" select="@align"/>
              <xsl:with-param name="href"
                select="
                  if (@scope = 'external' or opentopic-func:isAbsolute(@href)) then
                    @href
                  else
                    concat($input.dir.url, @href)"/>
              <xsl:with-param name="height" select="@height"/>
              <xsl:with-param name="width" select="@width"/>
            </xsl:apply-templates>
          </xsl:variable>
          <xsl:apply-templates select="$inlineImage" mode="fix-inline-images-space"/>
        </fo:inline>
        <xsl:if test="$artLabel = 'yes'">
          <xsl:apply-templates select="." mode="image.artlabel"/>
        </xsl:if>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates select="*[contains(@class, ' ditaot-d/ditaval-endprop ')]" mode="outofline"
    />
  </xsl:template>
  <xsl:template match="node() | @*" mode="fix-inline-images-space">
    <xsl:copy>
      <xsl:apply-templates select="node() | @*" mode="fix-inline-images-space"/>
    </xsl:copy>
  </xsl:template>
  
  <xsl:template match="fo:external-graphic" mode="fix-inline-images-space">
    <xsl:copy>
      <!--<xsl:attribute name="space-start">1mm</xsl:attribute>-->
      <xsl:attribute name="space-end">1mm</xsl:attribute>
      <xsl:apply-templates select="@*" mode="fix-inline-images-space"/>
      <xsl:apply-templates select="node()" mode="fix-inline-images-space"/>
    </xsl:copy>
  </xsl:template>

</xsl:stylesheet>