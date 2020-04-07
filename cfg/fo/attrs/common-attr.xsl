<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:rx="http://www.renderx.com/XSL/Extensions"
                version="2.0">

<xsl:variable name="custom_blue_color">blue</xsl:variable>

<xsl:attribute-set name="pdf2.ug.chapter.name.and.number">
        <xsl:attribute name="space-before">0pt</xsl:attribute>
        <xsl:attribute name="space-after">16.8pt</xsl:attribute>
        
        <xsl:attribute name="border-after-style">solid</xsl:attribute>
        <xsl:attribute name="border-after-width">1pt</xsl:attribute>
        <xsl:attribute name="border-after-color" select="$custom_blue_color"/>
    </xsl:attribute-set>
    
    <!-- 
        FO attributes for chapter name.
    -->
    <xsl:attribute-set name="pdf2.ug.topic.title" use-attribute-sets="common.title">
        <xsl:attribute name="font-size">18pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <!-- <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute> -->
        <xsl:attribute name="color" select="$custom_blue_color"/>
    </xsl:attribute-set>
    
    <!-- 
        FO attributes for chapter name.
    -->
    <xsl:attribute-set name="pdf2.ug.common.border__bottom" use-attribute-sets="common.border__bottom">
        <xsl:attribute name="border-after-color" select="$custom_blue_color"/>
    </xsl:attribute-set>

    <!--
        Set the 'force-page-count' attribute to auto. 
        We don't want to impose that chapters to start on odd page
    -->
    <xsl:attribute-set name="__force__page__count">
        <xsl:attribute name="force-page-count">auto</xsl:attribute>
    </xsl:attribute-set>
	
	
	<!-- 
		Set topic, topic.topic, topic.topic.topic - title style
	-->

    <xsl:attribute-set name="topic.title">
		<xsl:attribute name="color" select="$custom_blue_color"/>
		<xsl:attribute name="padding-bottom">4pt</xsl:attribute>
    </xsl:attribute-set>
	
    <!--style for chapter topic-->
	<xsl:attribute-set name="topic.topic.title">
		<!-- <xsl:attribute name="color" select="$custom_blue_color"/> -->
		<xsl:attribute name="padding-bottom">4pt</xsl:attribute>
    </xsl:attribute-set>
	

	<xsl:attribute-set name="topic.topic.topic.title">
		<!-- <xsl:attribute name="color" select="$custom_blue_color"/> -->
		<xsl:attribute name="padding-bottom">4pt</xsl:attribute>
    </xsl:attribute-set>
	
	<!-- common border attribute sets -->

	<xsl:attribute-set name="common.border__top">
		<xsl:attribute name="border-before-style">solid</xsl:attribute>
		<xsl:attribute name="border-before-width">1pt</xsl:attribute>
		<!-- <xsl:attribute name="border-before-color" select="$custom_blue_color"/> -->
	</xsl:attribute-set>

	<xsl:attribute-set name="common.border__bottom">
		<xsl:attribute name="border-after-style">solid</xsl:attribute>
		<xsl:attribute name="border-after-width">1pt</xsl:attribute>
		<!-- <xsl:attribute name="border-after-color" select="$custom_blue_color"/> -->
	</xsl:attribute-set>

	<xsl:attribute-set name="common.border__right">
		<xsl:attribute name="border-end-style">solid</xsl:attribute>
		<xsl:attribute name="border-end-width">1pt</xsl:attribute>
		<!-- <xsl:attribute name="border-end-color" select="$custom_blue_color"/> -->
	</xsl:attribute-set>

	<xsl:attribute-set name="common.border__left">
		<xsl:attribute name="border-start-style">solid</xsl:attribute>
		<xsl:attribute name="border-start-width">1pt</xsl:attribute>
		<!-- <xsl:attribute name="border-start-color" select="$custom_blue_color"/> -->
	</xsl:attribute-set>
	

</xsl:stylesheet>