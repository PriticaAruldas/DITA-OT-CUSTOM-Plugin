<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0">

<xsl:attribute-set name="pdf2.ug.chapter.name.and.number">
    <xsl:attribute name="border-after-width">3pt</xsl:attribute>
    <xsl:attribute name="space-before">0pt</xsl:attribute>
    <xsl:attribute name="space-after">17pt</xsl:attribute>
    <xsl:attribute name="border-after-style">solid</xsl:attribute>
    <xsl:attribute name="border-after-width">1pt</xsl:attribute>
    <xsl:attribute name="color">blue</xsl:attribute>
</xsl:attribute-set>


<xsl:attribute-set name="pdf2.ug.topic.title" use-attribute-sets="common.title">
    <xsl:attribute name="font-size">18pt</xsl:attribute>
    <xsl:attribute name="font-weight">bold</xsl:attribute>
    <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
    <xsl:attribute name="color">blue</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="pdf2.ug.common.border__bottom" use-attribute-sets="common.border__bottom">
    <xsl:attribute name="border-after-color">blue</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="__force__page__count">
    <xsl:attribute name="force-page-count">auto</xsl:attribute>
</xsl:attribute-set>

</xsl:stylesheet>