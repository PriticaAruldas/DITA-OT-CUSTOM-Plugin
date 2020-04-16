<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:rx="http://www.renderx.com/XSL/Extensions"
                version="2.0">

<xsl:variable name="custom_blue_color">blue</xsl:variable>
<xsl:variable name="default-font-size">13pt</xsl:variable>

    <xsl:attribute-set name="pdf2.ug.chapter.name.and.number">
        <xsl:attribute name="space-before">0pt</xsl:attribute>
        <xsl:attribute name="space-after">16.8pt</xsl:attribute>
    </xsl:attribute-set>
    
    <!-- 
        FO attributes for chapter name.
    -->
    <xsl:attribute-set name="pdf2.ug.topic.title" use-attribute-sets="common.title">
        <xsl:attribute name="font-size">20pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
        <xsl:attribute name="color" select="$custom_blue_color"/>
    </xsl:attribute-set>
    
    <!-- 
        FO attributes for chapter name.
    -->
        <xsl:attribute-set name="pdf2.ug.common.border__bottom" use-attribute-sets="common.border__bottom">
            <xsl:attribute name="border-after-color" select="$custom_blue_color"/>
            <xsl:attribute name="border-after-width">4pt</xsl:attribute>
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
        <xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="padding-bottom">4pt</xsl:attribute>
    </xsl:attribute-set>
	
    <!--Style for chatper topic's Sub-topic-->
	<xsl:attribute-set name="topic.topic.topic.title" use-attribute-sets="subtopic.border__bottom subtopic.border__top">
		<xsl:attribute name="color" select="$custom_blue_color"/>
        <xsl:attribute name="font-size">15pt</xsl:attribute>
		<xsl:attribute name="padding-bottom">3pt</xsl:attribute>
        <xsl:attribute name="padding-top">3pt</xsl:attribute>
        <xsl:attribute name="margin-left">25pt</xsl:attribute>
        <xsl:attribute name="padding-left">5pt</xsl:attribute>
    </xsl:attribute-set>

    <!-- paragraph-like blocks -->
    <xsl:attribute-set name="common.block">
        <xsl:attribute name="space-before">1em</xsl:attribute>
        <xsl:attribute name="font-size">13pt</xsl:attribute>
        <!-- <xsl:attribute name="color">red</xsl:attribute> -->
        <xsl:attribute name="space-after">1em</xsl:attribute>
    </xsl:attribute-set>

<!-- titles -->
  <xsl:attribute-set name="common.title">
    <xsl:attribute name="font-family">sans-serif</xsl:attribute>
    <xsl:attribute name="font-size">13pt</xsl:attribute>
  </xsl:attribute-set>

    <!--font size attribute-->
  <xsl:attribute-set name="base-font">
    <xsl:attribute name="font-size"><xsl:value-of select="$default-font-size"/></xsl:attribute>
  </xsl:attribute-set>

    <xsl:attribute-set name="__fo__root" use-attribute-sets="base-font">
        <xsl:attribute name="font-family">sans-serif</xsl:attribute>
        <!-- TODO: https://issues.apache.org/jira/browse/FOP-2409 -->
        <xsl:attribute name="xml:lang" select="translate($locale, '_', '-')"/>
        <xsl:attribute name="writing-mode" select="$writing-mode"/>
    </xsl:attribute-set>

    <!--Style for notices-->
    <xsl:attribute-set name="page-sequence.notice" use-attribute-sets="__force__page__count page-sequence.frontmatter">
  </xsl:attribute-set>
    
  <xsl:attribute-set name="page-sequence.backmatter.notice" use-attribute-sets="__force__page__count">
    <xsl:attribute name="format">1</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="page-sequence.preface" use-attribute-sets="__force__page__count page-sequence.frontmatter">
  </xsl:attribute-set>

  <xsl:attribute-set name="page-sequence.toc" use-attribute-sets="__force__page__count page-sequence.frontmatter">
  </xsl:attribute-set>

  <xsl:attribute-set name="page-sequence.lot" use-attribute-sets="page-sequence.toc">
  </xsl:attribute-set>
  
  <xsl:attribute-set name="page-sequence.lof" use-attribute-sets="page-sequence.toc">
  </xsl:attribute-set>
  
  <xsl:attribute-set name="page-sequence.body" use-attribute-sets="__force__page__count">
  </xsl:attribute-set>
  
  <xsl:attribute-set name="page-sequence.part" use-attribute-sets="__force__page__count">
  </xsl:attribute-set>
  
  <xsl:attribute-set name="page-sequence.appendix" use-attribute-sets="__force__page__count">
  </xsl:attribute-set>
  
  <xsl:attribute-set name="page-sequence.glossary" use-attribute-sets="__force__page__count">
  </xsl:attribute-set>
  
  <xsl:attribute-set name="page-sequence.index" use-attribute-sets="__force__page__count">
  </xsl:attribute-set>





    <!--Common Borders-->
	<xsl:attribute-set name="common.border__top ">
		<xsl:attribute name="border-before-style">solid</xsl:attribute>
		<xsl:attribute name="border-before-width">1pt</xsl:attribute>
		<!-- <xsl:attribute name="border-before-color" select="$custom_blue_color"/> -->
	</xsl:attribute-set>

	<xsl:attribute-set name="common.border__bottom">
		<xsl:attribute name="border-after-style">solid</xsl:attribute>
		<xsl:attribute name="border-after-width">1pt</xsl:attribute>
        <xsl:attribute name="border-end-width">1pt</xsl:attribute>
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
	
    <!--Borders for Topics Subtopics-->
    <xsl:attribute-set name="subtopic.border__top">
		<xsl:attribute name="border-before-style">dotted</xsl:attribute>
		<xsl:attribute name="border-before-width">2pt</xsl:attribute>
		<xsl:attribute name="border-before-color" select="$custom_blue_color"/>
	</xsl:attribute-set>

    <xsl:attribute-set name="subtopic.border__bottom">
		<xsl:attribute name="border-after-style">dotted</xsl:attribute>
		<xsl:attribute name="border-after-width">2pt</xsl:attribute>
		<xsl:attribute name="border-after-color" select="$custom_blue_color"/>
	</xsl:attribute-set>


</xsl:stylesheet>