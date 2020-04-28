<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:rx="http://www.renderx.com/XSL/Extensions"
                version="2.0">


    <xsl:attribute-set name="image">
		<xsl:attribute name="content-width">scale-to-fit</xsl:attribute>
		<xsl:attribute name="width">100%</xsl:attribute>
        <xsl:attribute name="height">100%</xsl:attribute>
		<!-- <xsl:attribute name="scaling">uniform</xsl:attribute> -->
        <xsl:attribute name="margin-top">22pt</xsl:attribute>
		<xsl:attribute name="keep-with-previous.within-page">always</xsl:attribute>
         <xsl:attribute name='src'>url(Customization/OpenTopic/common/artwork/Logo/notices_icon.png)</xsl:attribute>
    </xsl:attribute-set>

 <!--Style for Notices-->
    <xsl:attribute-set name="note">
		<xsl:attribute name="padding-top">7pt</xsl:attribute>
		<xsl:attribute name="padding-bottom">7pt</xsl:attribute>
        <xsl:attribute name="padding-right">7pt</xsl:attribute>
		<xsl:attribute name="padding-left">7pt</xsl:attribute>
         
         <xsl:attribute name="font-family">monaco</xsl:attribute>
		<xsl:attribute name="margin-bottom">15pt</xsl:attribute>
        <xsl:attribute name="font-size">10pt</xsl:attribute>
		<xsl:attribute name="background-color">#F0EFF0</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__table" use-attribute-sets="common.block">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__image__column">
        <xsl:attribute name="column-number">1</xsl:attribute>
        <xsl:attribute name="column-width">32pt</xsl:attribute>
        <xsl:attribute name="margin-top">5pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__text__column">
      <xsl:attribute name="column-number">2</xsl:attribute>
      <xsl:attribute name="font-family">monaco</xsl:attribute>
      <xsl:attribute name="start-indent">0pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__image__entry">
        <!-- <xsl:attribute name="padding-end">5pt</xsl:attribute>
        <xsl:attribute name="start-indent">0pt</xsl:attribute> -->
         <xsl:attribute name='src'>url(Customization/OpenTopic/common/artwork/Logo/hand.gif)</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__text__entry">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label" use-attribute-sets="common.border__bottom">
        <xsl:attribute name="border-left-width">5pt</xsl:attribute>
        <xsl:attribute name="border-right-width">5pt</xsl:attribute>
		<xsl:attribute name="font-family">monaco</xsl:attribute>
        <xsl:attribute name="font-size">10pt</xsl:attribute> 
		<xsl:attribute name="font-weight">bold</xsl:attribute>	
    </xsl:attribute-set>

        <xsl:attribute-set name="note__image__entry">
              <xsl:attribute name="content-width">absolute</xsl:attribute>  
        </xsl:attribute-set>

        <xsl:attribute-set name="note__label__note">
            <xsl:attribute name="font-family">monaco</xsl:attribute>
            <xsl:attribute name="font-size">10pt</xsl:attribute> 
        </xsl:attribute-set>

    <xsl:attribute-set name="note__label__notice">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__warning">
        <xsl:attribute name="font-family">monaco</xsl:attribute>
        <xsl:attribute name="width">50%</xsl:attribute>
        <xsl:attribute name="height">50%</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__tip">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__fastpath">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__restriction">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__important">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__remember">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__attention">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__caution">
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__other">
    </xsl:attribute-set>

    </xsl:stylesheet>