<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0">

         <xsl:attribute-set name="__index__label">
                <xsl:attribute name="font-size">2.7em</xsl:attribute>
                <xsl:attribute name="font-weight">bold</xsl:attribute>
                <xsl:attribute name='color'>blue</xsl:attribute>
                <xsl:attribute name="font-family">Serif</xsl:attribute>
                <xsl:attribute name="letter-spacing">0.5pt</xsl:attribute>
        </xsl:attribute-set>

        <xsl:attribute-set name="__index__letter-group" use-attribute-sets="common.border_top common.border_bottom">
            <xsl:attribute name="font-size">1.7em</xsl:attribute>        
            <xsl:attribute name="color">blue</xsl:attribute>
        </xsl:attribute-set>

        <!-- FIXME: Incorrectly named, should be index.group -->
    <xsl:attribute-set name="index.entry">
        <xsl:attribute name="space-after">14pt</xsl:attribute>
        <xsl:attribute name="font-size">13pt</xsl:attribute>
    </xsl:attribute-set>
  
    <xsl:attribute-set name="index.term">
    </xsl:attribute-set>

  <xsl:variable name="index.indent" select="'18pt'"/>

    <xsl:attribute-set name="index-indents">
        <xsl:attribute name="end-indent">5pt</xsl:attribute>
        <xsl:attribute name="last-line-end-indent">0pt</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$index.indent"/> * 2</xsl:attribute>
        <xsl:attribute name="text-indent">-<xsl:value-of select="$index.indent"/> * 2</xsl:attribute>
        <xsl:attribute name="font-size">9pt</xsl:attribute>
    </xsl:attribute-set>
    
    <xsl:attribute-set name="index.entry__content">
        <xsl:attribute name="start-indent" select="$index.indent"/>
    </xsl:attribute-set>

  <xsl:attribute-set name="index.see-also-entry__content" use-attribute-sets="index.entry__content">
  </xsl:attribute-set>

  <xsl:attribute-set name="index.see.label">
    <xsl:attribute name="font-style">italic</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="index.see-also.label">
    <xsl:attribute name="font-style">italic</xsl:attribute>
  </xsl:attribute-set>

        <!--Common attributes for border-->
        
    <xsl:attribute-set name="common.border_top">
        <xsl:attribute name="border-before-style">dotted</xsl:attribute>
        <xsl:attribute name="border-before-color">blue</xsl:attribute>
        <xsl:attribute name="border-before-width">2pt</xsl:attribute>
        <xsl:attribute name="margin-top">15pt</xsl:attribute>
        <xsl:attribute name="border-start-indent">1pt</xsl:attribute>
        <xsl:attribute name="border-end-indent">1pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="common.border_bottom">
        <xsl:attribute name="border-after-style">dotted</xsl:attribute>
        <xsl:attribute name="border-after-color">blue</xsl:attribute>
        <xsl:attribute name="margin-bottom">5pt</xsl:attribute>
        <xsl:attribute name="border-after-width">2pt</xsl:attribute>
        <xsl:attribute name="border-start-indent">1pt</xsl:attribute>
        <xsl:attribute name="border-end-indent">1pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="common.border_left">
        <xsl:attribute name="border-start-style">dotted</xsl:attribute>
        <xsl:attribute name="border-start-width">2pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="common.border_right">
        <xsl:attribute name="border-end-style">dotted</xsl:attribute>
        <xsl:attribute name="border-end-width">2pt</xsl:attribute>
    </xsl:attribute-set>

   

</xsl:stylesheet>