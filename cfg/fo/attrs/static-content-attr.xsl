<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0">
<xsl:attribute-set name="pdf2.ug__chapter__frontmatter__number__container" use-attribute-sets="__chapter__frontmatter__number__container">
    <xsl:attribute name="font-size">60pt</xsl:attribute>
    <xsl:attribute name="font-weight">bold</xsl:attribute>
    <!-- <xsl:attribute name="color">blue</xsl:attribute> -->
</xsl:attribute-set>
    
<xsl:attribute-set name="pdf2.ug__frontmatter__pagenumber__style">
	<xsl:attribute name="color">black</xsl:attribute>
    <xsl:attribute name="font-size">10pt</xsl:attribute>
    <xsl:attribute name="font-family">monaco</xsl:attribute>
    <xsl:attribute name="font-weight">4pt</xsl:attribute>
    <xsl:attribute name="margin-bottom">15pt</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="pdf2.ug__frontmatter__header__text">
    <xsl:attribute name="color">black</xsl:attribute>
    <xsl:attribute name="padding-top">10pt</xsl:attribute>
    <xsl:attribute name="font-family">monaco</xsl:attribute>
    <xsl:attribute name="font-size">10pt</xsl:attribute>
    <xsl:attribute name="font-weight">4pt</xsl:attribute>
    <xsl:attribute name="margin-bottom">15pt</xsl:attribute>
</xsl:attribute-set>

</xsl:stylesheet>