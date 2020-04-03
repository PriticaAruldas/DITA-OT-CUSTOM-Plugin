<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0">
<!--Frontmatter Title-->
<xsl:attribute-set name="common.title">
</xsl:attribute-set>

<xsl:attribute-set name="__frontmatter__title" use-attribute-sets="common.title">
        <xsl:attribute name="space-before">100mm</xsl:attribute>
        <xsl:attribute name="font-size">35pt</xsl:attribute>
        <xsl:attribute name="font-weight">bolder</xsl:attribute>    
		<xsl:attribute name="font-family">Times New Roman</xsl:attribute>
        <xsl:attribute name="color">blue</xsl:attribute>
</xsl:attribute-set>

<!---frontmatter container-->
<xsl:attribute-set name='__frontmatter__logo__container'>
    <xsl:attribute name='text-align'>left</xsl:attribute>
    <xsl:attribute name='position'>absolute</xsl:attribute>
</xsl:attribute-set>

<!---frontmatter logo-->

<xsl:attribute-set name='__frontmatter__logo'>
    <xsl:attribute name='src'>url(Customization/OpenTopic/common/artwork/MetaperceptLogo.png)</xsl:attribute>
    <xsl:attribute name='padding-top'>20px</xsl:attribute>
    <xsl:attribute name='width'>350px</xsl:attribute>
    <xsl:attribute name='height'>300px</xsl:attribute>
    <xsl:attribute name='scaling'>Uniform</xsl:attribute>
</xsl:attribute-set>

<!-- toc header title -->
<xsl:attribute-set name='__toc__header' use-attribute-sets='common.title'>
		<xsl:attribute name='font-size'>35pt</xsl:attribute>
        <xsl:attribute name='font-family'>Arial</xsl:attribute>
		<xsl:attribute name='font-weight'>900</xsl:attribute>
		<xsl:attribute name='color'>blue</xsl:attribute>
		<xsl:attribute name="padding-top">20pt</xsl:attribute>
		<xsl:attribute name="padding-right">300pt</xsl:attribute>
		<xsl:attribute name="padding-bottom">20pt</xsl:attribute>
		<xsl:attribute name="padding-left">0pt</xsl:attribute>
</xsl:attribute-set>

<!-- toc leader -->
<xsl:attribute-set name='__toc__leader'>
		<xsl:attribute name='leader-pattern'>space</xsl:attribute>
</xsl:attribute-set>

<!--Page Number-->
<!-- <xsl:attribute-set name="_toc_page-number">
    <xsl:attribute name="font-size">large</xsl:attribute>
     <xsl:attribute name="font-weight">bold</xsl:attribute>
     <xsl:attribute name="start-indent">400px</xsl:attribute>
</xsl:attribute-set> -->
<!-- <xsl:attribute-set name="page-sequence.frontmatter">
    <xsl:attribute name="format">1</xsl:attribute>
 </xsl:attribute-set> -->

<!--Chapter Title-->
<xsl:attribute-set name="__toc__topic__content">
    <xsl:attribute name="color">
        <xsl:variable name="level" select="count(ancestor-or-self::*[contains(@class,'topic/topic')])"/>
        <xsl:choose>
            <xsl:when test="$level = 1">blue</xsl:when>
            <xsl:otherwise>black</xsl:otherwise>
        </xsl:choose>
    </xsl:attribute>
    <xsl:attribute name="font-size">12pt</xsl:attribute>
</xsl:attribute-set>

    <!-- <xsl:attribute name="font-size">
        <xsl:variable name="level" select="count(ancestor-or-self::*[contains(@class,'topic/topic')])"/>
        <xsl:choose>
            <xsl:when test="$level = 1">normal</xsl:when>
            <xsl:otherwise>12pt</xsl:otherwise>
        </xsl:choose>
    </xsl:attribute> -->

    <xsl:attribute-set name="__toc__chapter__content" use-attribute-sets="__toc__topic__content">
        <xsl:attribute name="font-size">12pt</xsl:attribute>
        <xsl:attribute name="font-weight">normal</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="_toc_header" use-attribute-sets="common.title">
        <xsl:attribute name="color">blue</xsl:attribute>
        <xsl:attribute name="font-size">20px</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="_toc_appendix_content" use-attribute-sets="__toc__topic__content">
        <xsl:attribute name="font-weight">normal</xsl:attribute>
        <xsl:attribute name="color">blue</xsl:attribute>
    </xsl:attribute-set>

</xsl:stylesheet>