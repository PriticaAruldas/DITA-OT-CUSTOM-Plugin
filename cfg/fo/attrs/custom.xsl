<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0">
  <!-- Change page size to A4 -->
   <xsl:import href="frontmater.xsl" />
   <xsl:import href="toc.xsl" />
   <xsl:import href="index-attr.xsl" />
    <xsl:import href="static-content-attr.xsl" />
    <xsl:import href="common-attr.xsl" />
    <xsl:import href="layout-masters-attr.xsl" />

  <xsl:variable name="page-width">210mm</xsl:variable>
  <xsl:variable name="page-height">297mm</xsl:variable>

  <xsl:attribute-set name="__chapter__frontmatter__number__container">
        <!-- PLUGIN PATCH START EXM-18943 -->
        <xsl:attribute name="font-size">30pt</xsl:attribute>
        <!-- PLUGIN PATCH END EXM-18943 -->
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="pre" use-attribute-sets="base-font common.block">
        <xsl:attribute name="white-space-treatment">preserve</xsl:attribute>
        <xsl:attribute name="white-space-collapse">false</xsl:attribute>
        <xsl:attribute name="linefeed-treatment">preserve</xsl:attribute>
        <xsl:attribute name="wrap-option">wrap</xsl:attribute>
        <!--<xsl:attribute name="background-color">#f0f0f0</xsl:attribute>-->
        <xsl:attribute name="font-family">monospace</xsl:attribute>
        <!-- PLUGIN PATCH START EXM-24438 -->
        <xsl:attribute name="font-size">7pt</xsl:attribute>
        <!-- PLUGIN PATCH END EXM-24438 -->
        <xsl:attribute name="line-height">106%</xsl:attribute>
    </xsl:attribute-set>

</xsl:stylesheet>