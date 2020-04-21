<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:rx="http://www.renderx.com/XSL/Extensions"
                version="2.0">


<!--Backmatter Logo Container-->
<xsl:attribute-set name='__backmatter__logo__container'>
                <!-- <xsl:attribute name='text-align'>center</xsl:attribute> -->
                 <!-- <xsl:attribute name='margin-top'>75pt</xsl:attribute> -->
                <xsl:attribute name="content-width">absolute</xsl:attribute>
        </xsl:attribute-set>

<!--Backmatter Logo-->
        <xsl:attribute-set name='__backmatter__logo'>
                <xsl:attribute name='src'>url(Customization/OpenTopic/common/artwork/MetaperceptLogo.png)</xsl:attribute>
                <xsl:attribute name='width'>550px</xsl:attribute>
                <xsl:attribute name='height'>550px</xsl:attribute>
                <xsl:attribute name='scaling'>Uniform</xsl:attribute>
        </xsl:attribute-set>


         <!-- Backmatter Contents-->
        <xsl:attribute-set name="__backmatter__Contents" use-attribute-sets="common.title">
                 <xsl:attribute name="color">black</xsl:attribute>
                <xsl:attribute name="text-align">center</xsl:attribute>
                <xsl:attribute name="font-size">20pt</xsl:attribute>
                <xsl:attribute name="font-family">arial</xsl:attribute>
                <xsl:attribute name="space-before">1pt</xsl:attribute>
                <xsl:attribute name="space-after">1pt</xsl:attribute>
        </xsl:attribute-set>

        <xsl:attribute-set name="__backatter__owner__container">
        <xsl:attribute name="text-align">center</xsl:attribute>
        </xsl:attribute-set>

        <xsl:attribute-set name="__backatter__owner__container_content">
        <xsl:attribute name="text-align">center</xsl:attribute>
        </xsl:attribute-set>

        <xsl:attribute-set name='__backmatter__bookmeta__container'>
                <xsl:attribute name='text-align'>left</xsl:attribute>
                <xsl:attribute name="content-width">scale-to-fit</xsl:attribute>
        </xsl:attribute-set>

        <!-- Backmatter organization name -->
        <!-- <xsl:attribute-set name="__backmatter__organizationname">
                <xsl:attribute name="color">black</xsl:attribute>
                <xsl:attribute name="text-align">center</xsl:attribute>
                <xsl:attribute name="font-size">25pt</xsl:attribute>
                <xsl:attribute name="font-family">arial</xsl:attribute>
        </xsl:attribute-set>    -->

        <!-- Backmatter address -->
        <!-- <xsl:attribute-set name="__backmatter__address">
                <xsl:attribute name="text-align">center</xsl:attribute>
                <xsl:attribute name="color">black</xsl:attribute>
                <xsl:attribute name="font-size">25pt</xsl:attribute>
        </xsl:attribute-set>  -->




</xsl:stylesheet>