<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:fox="http://xmlgraphics.apache.org/fop/extensions"
 version="2.0">

    <xsl:attribute-set name="__toc__topic__content" >
        <xsl:attribute name="color">
            <xsl:variable name="level" select="count(ancestor-or-self::*[contains(@class, ' topic/topic ')])"/>
            <xsl:choose>
                <xsl:when test="$level = 1"><xsl:value-of select="$custom_green_color"/></xsl:when>
                <xsl:otherwise>inherit</xsl:otherwise>
            </xsl:choose>
        </xsl:attribute>
        <xsl:attribute name="font-weight">normal</xsl:attribute>
        <xsl:attribute name="font-size">15pt</xsl:attribute>
        <xsl:attribute name="font-family">monaco</xsl:attribute>
		<xsl:attribute name="padding-top">3pt</xsl:attribute>
        <xsl:attribute name="start-indent">16pt</xsl:attribute>
        <xsl:attribute name="padding-bottom">3pt</xsl:attribute>
    </xsl:attribute-set>

        <!--Header of contents page-->
    <xsl:attribute-set name="__toc__header" use-attribute-sets="common.title">
        <xsl:attribute name="color"><xsl:value-of select="$custom_green_color"/></xsl:attribute>
        <xsl:attribute name="font-size">35pt</xsl:attribute>
        <xsl:attribute name="font-family">monaco</xsl:attribute>
        <xsl:attribute name="font-weight">50px</xsl:attribute>
    </xsl:attribute-set>
    
    <!--Chapter title-->
    <xsl:attribute-set name="__toc__chapter__content" use-attribute-sets="__toc__topic__content common.border_bottom common.border_top">
        <xsl:attribute name="font-weight">normal</xsl:attribute>
        <xsl:attribute name="font-size">20pt</xsl:attribute>
        <xsl:attribute name="text-align">center</xsl:attribute>
        <xsl:attribute name="start-indent">20pt</xsl:attribute>
        <xsl:attribute name="color"><xsl:value-of select="$custom_green_color"/></xsl:attribute>
        <xsl:attribute name="padding-top">3pt</xsl:attribute>
        <xsl:attribute name="font-family">monaco</xsl:attribute>
		<xsl:attribute name="padding-bottom">3pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__toc__leader">
    <xsl:attribute name="leader-pattern">space</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__toc__appendix__content" use-attribute-sets="__toc__topic__content">
        <xsl:attribute name="font-weight">normal</xsl:attribute>
        <xsl:attribute name="color"><xsl:value-of select="$custom_green_color"/></xsl:attribute>        
    </xsl:attribute-set>
        
    <xsl:attribute-set name="__toc__part__content" use-attribute-sets="__toc__topic__content">
        <xsl:attribute name="font-weight">normal</xsl:attribute>
        <xsl:attribute name="font-size">20pt</xsl:attribute>
        <xsl:attribute name="color"><xsl:value-of select="$custom_green_color"/></xsl:attribute>
    </xsl:attribute-set>
    
    <xsl:attribute-set name="__toc__preface__content" use-attribute-sets="__toc__topic__content">
        <xsl:attribute name="font-weight">normal</xsl:attribute>
        <xsl:attribute name="color"><xsl:value-of select="$custom_green_color"/></xsl:attribute>
    </xsl:attribute-set>
    
    <xsl:attribute-set name="__toc__notices__content" use-attribute-sets="__toc__topic__content">
        <xsl:attribute name="font-weight">normal</xsl:attribute>
        <xsl:attribute name="color"><xsl:value-of select="$custom_green_color"/></xsl:attribute>
    </xsl:attribute-set>
    
    <!-- Added for back compatibility since __toc__content was renamed into __toc__topic__content-->
    <xsl:attribute-set name="__toc__content" use-attribute-sets="__toc__topic__content">
        <xsl:attribute name="font-weight">normal</xsl:attribute>
        <xsl:attribute name="color"><xsl:value-of select="$custom_green_color"/></xsl:attribute>        
    </xsl:attribute-set>
    
    <xsl:attribute-set name="__toc__topic__content__booklist" use-attribute-sets="__toc__topic__content">
        <xsl:attribute name="font-weight">normal</xsl:attribute>
        <xsl:attribute name="color"><xsl:value-of select="$custom_green_color"/></xsl:attribute>        
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
        <xsl:attribute name="font-family">monaco</xsl:attribute>
        <xsl:attribute name="end-indent">5pt</xsl:attribute>
    </xsl:attribute-set>

<!--Common attributes for border-->
    <xsl:attribute-set name="common.border_top">
        <xsl:attribute name="border-before-style">dotted</xsl:attribute>
        <xsl:attribute name="border-before-color">black</xsl:attribute>
        <xsl:attribute name="border-before-width">2pt</xsl:attribute>
        <xsl:attribute name="margin-top">15pt</xsl:attribute>
        <xsl:attribute name="padding-left">17pt</xsl:attribute>
        <xsl:attribute name="padding-right">22pt</xsl:attribute>
        <xsl:attribute name="border-start-indent">1pt</xsl:attribute>
        <xsl:attribute name="border-end-indent">1pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="common.border_bottom">
        <xsl:attribute name="border-after-style">dotted</xsl:attribute>
        <xsl:attribute name="border-after-color">black</xsl:attribute>
        <xsl:attribute name="margin-bottom">5pt</xsl:attribute>
        <xsl:attribute name="padding-left">17pt</xsl:attribute>
        <xsl:attribute name="padding-right">22pt</xsl:attribute>
        <xsl:attribute name="border-after-width">2pt</xsl:attribute>
        <xsl:attribute name="border-start-indent">1pt</xsl:attribute>
        <xsl:attribute name="border-end-indent">1pt</xsl:attribute>
    </xsl:attribute-set>

    <!-- <xsl:attribute-set name="border_bottom">
        <xsl:attribute name="border-after-style">double</xsl:attribute>
        <xsl:attribute name="border-after-color">blue</xsl:attribute>
        <xsl:attribute name="margin-bottom">5pt</xsl:attribute>
        <xsl:attribute name="border-after-width">4pt</xsl:attribute>
        <xsl:attribute name="border-start-indent">1pt</xsl:attribute>
        <xsl:attribute name="border-end-indent">1pt</xsl:attribute>
    </xsl:attribute-set> -->

    <xsl:attribute-set name="common.border_left">
        <xsl:attribute name="border-start-style">dotted</xsl:attribute>
        <xsl:attribute name="border-start-width">2pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="common.border_right">
        <xsl:attribute name="border-end-style">dotted</xsl:attribute>
        <xsl:attribute name="border-end-width">2pt</xsl:attribute>
    </xsl:attribute-set>


</xsl:stylesheet>