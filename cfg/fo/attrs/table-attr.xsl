<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:rx="http://www.renderx.com/XSL/Extensions"
                version="2.0">

<!-- tables -->

<xsl:attribute-set name='common.table.head.entry'>
	<xsl:attribute name='text-align'>center</xsl:attribute>
		<xsl:attribute name='color'>white</xsl:attribute>
    <xsl:attribute name='font-size'>15pt</xsl:attribute>
</xsl:attribute-set>

  <xsl:attribute-set name="common.table.body.entry">
    <xsl:attribute name="space-before">2pt</xsl:attribute>
    <xsl:attribute name="space-before.conditionality">retain</xsl:attribute>
    <xsl:attribute name="space-after">2pt</xsl:attribute>
    <xsl:attribute name="space-after.conditionality">retain</xsl:attribute>
    <xsl:attribute name="start-indent">0pt</xsl:attribute>
    <xsl:attribute name="end-indent">4pt</xsl:attribute>
    <xsl:attribute name="margin-right">35pt</xsl:attribute>
    <xsl:attribute name='text-align'>center</xsl:attribute>
		<xsl:attribute name='color'>black</xsl:attribute>
    <xsl:attribute name='font-size'>13pt</xsl:attribute>
  </xsl:attribute-set>


 <!--Head row-->
<xsl:attribute-set name="thead.row">	
	<xsl:attribute name="background-color">#89B043</xsl:attribute>
  <xsl:attribute name="font-family">monaco</xsl:attribute>  
</xsl:attribute-set>

<!--Table body row-->
<xsl:attribute-set name="tbody.row" use-attribute-sets="table__tableframe__bottom">
     
     <xsl:attribute name="keep-together.within-page">always</xsl:attribute>
     <xsl:attribute name="font-family">monaco</xsl:attribute>
     <!-- <xsl:attribute name="background-color">#DADEDA</xsl:attribute> -->
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

  <xsl:attribute-set name="table__tableframe__bottom" use-attribute-sets="common.border__bottom">
    <xsl:attribute name="border-after-style">solid</xsl:attribute>
    <xsl:attribute name="border-after-width">2pt</xsl:attribute>
    <xsl:attribute name="border-after-color">#C9CACD</xsl:attribute>
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
  
<!--**************************************************************************************************************************************-->
    


<!--**************************************************************************************************************************************-->
<xsl:attribute-set name="dl.dlhead">
	<xsl:attribute name="text-align">center</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="simpletable" use-attribute-sets="base-font">
	<xsl:attribute name="text-align">center</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="simpletable__body">
	<xsl:attribute name="space-before">8pt</xsl:attribute>
</xsl:attribute-set>
<!--**************************************************************************************************************************************-->


<!--********************************Style for Definition List*********************************-->
<!--Table for Definition List-->
  <xsl:attribute-set name="dl" use-attribute-sets="table__tableframe__bottom">
    <!--DL is a table-->
    <xsl:attribute name="width">100%</xsl:attribute>
    <xsl:attribute name="space-before">5pt</xsl:attribute>
    <xsl:attribute name="space-after">5pt</xsl:attribute>
  </xsl:attribute-set>

<!--Body for Definition List-->
  <xsl:attribute-set name="dl__body">
    <!-- <xsl:attribute name='color'></xsl:attribute> -->
    <xsl:attribute name="font-size">13pt</xsl:attribute>
    <xsl:attribute name="font-family">monaco</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="dl.dlhead">
  </xsl:attribute-set>

  <!--Style for Contents for Entire DL-->
  <xsl:attribute-set name="dlentry">
  </xsl:attribute-set>


<!--Style for Dl dt which contains term for element-->

  <xsl:attribute-set name="dlentry.dt">
    <xsl:attribute name="relative-align">baseline</xsl:attribute>
    <!-- <xsl:attribute name="background-color">#DADEDA</xsl:attribute> -->
  </xsl:attribute-set>

  <xsl:attribute-set name="dlentry.dt__content" use-attribute-sets="table__tableframe__bottom">
    <xsl:attribute name='color'>#89B043</xsl:attribute>
    <xsl:attribute name="font-size">13pt</xsl:attribute>
    <xsl:attribute name="font-weight">bold</xsl:attribute>
    <xsl:attribute name="font-family">monaco</xsl:attribute>
    <xsl:attribute name="padding-top">4pt</xsl:attribute>
    <xsl:attribute name="background-color">#DADEDA</xsl:attribute>
  </xsl:attribute-set>


<!--Style for dd. Contains description of the term in list-->
  <xsl:attribute-set name="dlentry.dd">
    <xsl:attribute name="keep-together.within-page">always</xsl:attribute>
     <xsl:attribute name="font-family">monaco</xsl:attribute>
     <xsl:attribute name="text-align">center</xsl:attribute>
     <!-- <xsl:attribute name="background-color">#DADEDA</xsl:attribute> -->
  </xsl:attribute-set>


  <xsl:attribute-set name="dl.dlhead__row">
  </xsl:attribute-set>

  <xsl:attribute-set name="dlhead.dthd__cell">
  </xsl:attribute-set>

  <xsl:attribute-set name="dlhead.dthd__content" use-attribute-sets="common.table.body.entry common.table.head.entry">
  
  </xsl:attribute-set>

  <xsl:attribute-set name="dlhead.ddhd__cell">
  </xsl:attribute-set>

  <xsl:attribute-set name="dlhead.ddhd__content" use-attribute-sets="common.table.body.entry common.table.head.entry">
  </xsl:attribute-set>


<!--Simple Table -->
  <xsl:attribute-set name="simpletable" use-attribute-sets="base-font">
    <!--It is a table container -->
    <xsl:attribute name="width">100%</xsl:attribute>
    <xsl:attribute name="space-before">8pt</xsl:attribute>
    <xsl:attribute name="space-after">10pt</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="simpletable__body">
     <xsl:attribute name="background-color">blue</xsl:attribute>
    <xsl:attribute name="font-size">13pt</xsl:attribute>
    <xsl:attribute name="font-weight">bold</xsl:attribute>
    <xsl:attribute name="font-family">monaco</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="sthead">
   
  </xsl:attribute-set>

  <xsl:attribute-set name="sthead__row">
 
  </xsl:attribute-set>

  <xsl:attribute-set name="strow">
  </xsl:attribute-set>

  <xsl:attribute-set name="sthead.stentry">
  </xsl:attribute-set>

  <xsl:attribute-set name="sthead.stentry__content" use-attribute-sets="common.table.body.entry common.table.head.entry">
  
  </xsl:attribute-set>

  <xsl:attribute-set name="sthead.stentry__keycol-content" use-attribute-sets="common.table.body.entry common.table.head.entry">
    
  </xsl:attribute-set>

  <xsl:attribute-set name="strow.stentry__content" use-attribute-sets="common.table.body.entry">
  
  </xsl:attribute-set>

  <xsl:attribute-set name="strow.stentry__keycol-content" use-attribute-sets="common.table.body.entry common.table.head.entry">
  
  </xsl:attribute-set>

  <xsl:attribute-set name="strow.stentry">
 
  </xsl:attribute-set>

</xsl:stylesheet>