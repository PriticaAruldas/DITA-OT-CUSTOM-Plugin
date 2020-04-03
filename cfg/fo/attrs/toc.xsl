<? xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

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

<xsl:attribute-set name="__toc__part__content" use-attribute-sets="__toc__topic__content">
        <xsl:attribute name="font-weight">normal</xsl:attribute>
        <xsl:attribute name="color"><xsl:value-of select="$custom_blue_color"/></xsl:attribute>
    </xsl:attribute-set>
    
    <xsl:attribute-set name="__toc__preface__content" use-attribute-sets="__toc__topic__content">
        <xsl:attribute name="font-weight">normal</xsl:attribute>
        <xsl:attribute name="color"><xsl:value-of select="$custom_blue_color"/></xsl:attribute>
    </xsl:attribute-set>
    
    <xsl:attribute-set name="__toc__notices__content" use-attribute-sets="__toc__topic__content">
        <xsl:attribute name="font-weight">normal</xsl:attribute>
        <xsl:attribute name="color"><xsl:value-of select="$custom_blue_color"/></xsl:attribute>
    </xsl:attribute-set>
    
    <!-- Added for back compatibility since __toc__content was renamed into __toc__topic__content-->
    <xsl:attribute-set name="__toc__content" use-attribute-sets="__toc__topic__content">
        <xsl:attribute name="font-weight">normal</xsl:attribute>
        <xsl:attribute name="color"><xsl:value-of select="$custom_blue_color"/></xsl:attribute>        
    </xsl:attribute-set>
    
    <xsl:attribute-set name="__toc__topic__content__booklist" use-attribute-sets="__toc__topic__content">
        <xsl:attribute name="font-weight">normal</xsl:attribute>
        <xsl:attribute name="color"><xsl:value-of select="$custom_blue_color"/></xsl:attribute>        
    </xsl:attribute-set>
    
    <!-- 
        Chapter's summary section that is displayed immediately after the chapter's minitoc.
    -->
    <xsl:attribute-set name="pdf2.ug__toc__mini__summary">
        <xsl:attribute name="space-before">20pt</xsl:attribute>
    </xsl:attribute-set>
    
    <!-- 
        Attribute set used when rendering the chapter's MINITOC for ug customization.
    -->
    <xsl:attribute-set name="pdf2.ug__toc__mini" use-attribute-sets="__toc__mini">
        <xsl:attribute name="font-size">10.5pt</xsl:attribute>
        <xsl:attribute name="font-family">sans-serif</xsl:attribute>
        <xsl:attribute name="end-indent">5pt</xsl:attribute>
    </xsl:attribute-set>

</xsl:stylesheet>