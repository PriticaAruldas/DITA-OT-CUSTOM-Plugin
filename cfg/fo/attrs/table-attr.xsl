<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:rx="http://www.renderx.com/XSL/Extensions"
                version="2.0">

<!-- image title -->

<xsl:attribute-set name="fig.title" use-attribute-sets="base-font common.title">
        <xsl:attribute name="font-weight">normal</xsl:attribute>
		<xsl:attribute name="font-size">12pt</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
        <xsl:attribute name="space-before">5pt</xsl:attribute>
        <xsl:attribute name="space-after">10pt</xsl:attribute>
		<xsl:attribute name="text-align">left</xsl:attribute>
        <xsl:attribute name="keep-with-previous.within-page">always</xsl:attribute>
</xsl:attribute-set>

<!-- tables -->

<xsl:attribute-set name='common.table.head.entry'>
		<!-- <xsl:attribute name='background-color'>#F71E48</xsl:attribute> -->
		<xsl:attribute name='text-align'>center</xsl:attribute>
		<xsl:attribute name='color'>#FFFFFF</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="sthead__row">
  <xsl:attribute name="background-color">#EE1B2B</xsl:attribute> 
</xsl:attribute-set>

<xsl:attribute-set name="thead.row">
    <!--Head row-->
	<xsl:attribute name="background-color">#EE1B2B</xsl:attribute> 
</xsl:attribute-set>

<xsl:attribute-set name="tbody.row">
     <!--Table body row-->
     <xsl:attribute name="keep-together.within-page">always</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="dl.dlhead">
	<xsl:attribute name="text-align">center</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="simpletable" use-attribute-sets="base-font">
	<xsl:attribute name="text-align">center</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="simpletable__body">
	<xsl:attribute name="space-before">8pt</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name='table__tableframe__all' use-attribute-sets='table__tableframe__topbot table__tableframe__sides'>
		<xsl:attribute name='border-before-width'>0pt</xsl:attribute>
		<xsl:attribute name='border-after-width'>0pt</xsl:attribute>
		<xsl:attribute name='border-end-width'>0pt</xsl:attribute>
		<xsl:attribute name='border-start-width'>0pt</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name='__tableframe__top' use-attribute-sets='common.border__top'>
		<xsl:attribute name='border-before-color'>black</xsl:attribute>
		<xsl:attribute name='border-before-width'>0pt</xsl:attribute>
</xsl:attribute-set>

  <xsl:attribute-set name="__tableframe__left" use-attribute-sets="common.border__left">
     <xsl:attribute name="border-start-style">solid</xsl:attribute>
    <xsl:attribute name="border-start-width">0pt</xsl:attribute>
    <xsl:attribute name="border-start-color">black</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="__tableframe__right" use-attribute-sets="common.border__right">
      <xsl:attribute name="border-end-style">solid</xsl:attribute>
    <xsl:attribute name="border-end-width">0pt</xsl:attribute>
    <xsl:attribute name="border-end-color">black</xsl:attribute>
  </xsl:attribute-set>
  

</xsl:stylesheet>