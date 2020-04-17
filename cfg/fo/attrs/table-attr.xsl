<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:rx="http://www.renderx.com/XSL/Extensions"
                version="2.0">




<!-- contents of table entries or similer structures -->
  <xsl:attribute-set name="common.table.body.entry">
    <xsl:attribute name="space-before">2pt</xsl:attribute>
    <xsl:attribute name="space-before.conditionality">retain</xsl:attribute>
    <xsl:attribute name="space-after">2pt</xsl:attribute>
    <xsl:attribute name="space-after.conditionality">retain</xsl:attribute>
    <xsl:attribute name="start-indent">0pt</xsl:attribute>
    <xsl:attribute name="end-indent">4pt</xsl:attribute>
    <xsl:attribute name="margin-right">15pt</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="common.table.head.entry">
    <xsl:attribute name="font-weight">bold</xsl:attribute>
  </xsl:attribute-set>

<!--Title for table-->
  <xsl:attribute-set name="table.title" use-attribute-sets="base-font common.title">
    <xsl:attribute name="font-weight">bold</xsl:attribute>
    <xsl:attribute name="font-family">sans-serif</xsl:attribute>
    <xsl:attribute name="font-size">13pt</xsl:attribute>
    <xsl:attribute name="space-before">3pt</xsl:attribute>
    <xsl:attribute name="space-after">3pt</xsl:attribute>
    <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="__tableframe__none"/>

<!--Table Header-->
  <xsl:attribute-set name="__tableframe__top" use-attribute-sets="common.border__top">
   <!-- <xsl:attribute name="font-weight">bold</xsl:attribute> -->
  </xsl:attribute-set>

  <xsl:attribute-set name="__tableframe__bottom" use-attribute-sets="common.border__bottom">
    <xsl:attribute name="border-after-width.conditionality">retain</xsl:attribute>
    <xsl:attribute name="border-after-width">1pt</xsl:attribute>  
    <xsl:attribute name="padding-bottom">15pt</xsl:attribute>
    <!-- <xsl:attribute name="space-before">4pt</xsl:attribute> -->
  </xsl:attribute-set>

  <xsl:attribute-set name="thead__tableframe__bottom" use-attribute-sets="common.border__bottom">
  </xsl:attribute-set>

  <xsl:attribute-set name="__tableframe__left" use-attribute-sets="common.border__left">
   <xsl:attribute name="border-start-style">solid</xsl:attribute>
    <xsl:attribute name="border-start-width">2pt</xsl:attribute>
    <xsl:attribute name="border-start-color">black</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="__tableframe__right" use-attribute-sets="common.border__right">
   <xsl:attribute name="border-start-style">solid</xsl:attribute>
    <xsl:attribute name="border-start-width">2pt</xsl:attribute>
    <xsl:attribute name="border-start-color">black</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="table__container">
    <xsl:attribute name="reference-orientation" select="if (@orient eq 'land') then 90 else 0"/>
    <xsl:attribute name="start-indent">from-parent(start-indent)</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="table" use-attribute-sets="base-font">
    <!--It is a table container -->
    <xsl:attribute name="space-after">10pt</xsl:attribute>
    <xsl:attribute name="start-indent">0pt</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="table.tgroup">
    <!--It is a table-->
    <xsl:attribute name="table-layout">fixed</xsl:attribute>
    <xsl:attribute name="width">100%</xsl:attribute>
    <!--xsl:attribute name=&quot;inline-progression-dimension&quot;&gt;auto&lt;/xsl:attribute-->
    <!--        &lt;xsl:attribute name=&quot;background-color&quot;&gt;white&lt;/xsl:attribute&gt;-->
    <xsl:attribute name="space-before">5pt</xsl:attribute>
    <xsl:attribute name="space-after">5pt</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="table__tableframe__all" use-attribute-sets="table__tableframe__topbot table__tableframe__sides">
    <xsl:attribute name='border-before-width'>2pt</xsl:attribute>
		<xsl:attribute name='border-after-width'>2pt</xsl:attribute>
		<xsl:attribute name='border-end-width'>2pt</xsl:attribute>
		<xsl:attribute name='border-start-width'>2pt</xsl:attribute>
  </xsl:attribute-set>


  <xsl:attribute-set name="table__tableframe__topbot" use-attribute-sets="table__tableframe__top table__tableframe__bottom">
  <xsl:attribute name='border-before-width'>2pt</xsl:attribute>
		<xsl:attribute name='border-after-width'>2pt</xsl:attribute>
		<xsl:attribute name='border-end-width'>2pt</xsl:attribute>
		<xsl:attribute name='border-start-width'>2pt</xsl:attribute>
    <xsl:attribute name="font-size">13pt</xsl:attribute>
     <xsl:attribute name="font-family">sans-serif</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="table__tableframe__top" use-attribute-sets="common.border__top">
  <xsl:attribute name='border-before-width'>2pt</xsl:attribute>
		<xsl:attribute name='border-after-width'>2pt</xsl:attribute>
		<xsl:attribute name='border-end-width'>2pt</xsl:attribute>
		<xsl:attribute name='border-start-width'>2pt</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="table__tableframe__bottom" use-attribute-sets="common.border__bottom">
  <xsl:attribute name='border-before-width'>2pt</xsl:attribute>
		<xsl:attribute name='border-after-width'>2pt</xsl:attribute>
		<xsl:attribute name='border-end-width'>2pt</xsl:attribute>
		<xsl:attribute name='border-start-width'>2pt</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="table__tableframe__sides" use-attribute-sets="table__tableframe__right table__tableframe__left">
  <xsl:attribute name='border-before-width'>2pt</xsl:attribute>
		<xsl:attribute name='border-after-width'>2pt</xsl:attribute>
		<xsl:attribute name='border-end-width'>2pt</xsl:attribute>
		<xsl:attribute name='border-start-width'>2pt</xsl:attribute>
    <!-- <xsl:attribute name='color'>purple</xsl:attribute> -->
    <xsl:attribute name="font-size">13pt</xsl:attribute>
    <xsl:attribute name="font-family">sans-serif</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="table__tableframe__right" use-attribute-sets="common.border__right">
  <xsl:attribute name='border-before-width'>2pt</xsl:attribute>
		<xsl:attribute name='border-after-width'>2pt</xsl:attribute>
		<xsl:attribute name='border-end-width'>2pt</xsl:attribute>
		<xsl:attribute name='border-start-width'>2pt</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="table__tableframe__left" use-attribute-sets="common.border__left">
  <xsl:attribute name='border-before-width'>2pt</xsl:attribute>
		<xsl:attribute name='border-after-width'>2pt</xsl:attribute>
		<xsl:attribute name='border-end-width'>2pt</xsl:attribute>
		<xsl:attribute name='border-start-width'>2pt</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="tgroup.tbody">
    <!--Table body-->
   </xsl:attribute-set>  

  <xsl:attribute-set name="tgroup.thead">
    <!--Table head-->
    <xsl:attribute name='color'>white</xsl:attribute>
    <xsl:attribute name="font-size">15pt</xsl:attribute>
    <!-- <xsl:attribute name="text-align">right</xsl:attribute> -->
    <xsl:attribute name="font-family">sans-serif</xsl:attribute>
    <xsl:attribute name="font-weight">bold</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="tgroup.tfoot">
    <!--Table footer-->
  </xsl:attribute-set>

  <xsl:attribute-set name="thead.row">
    <!--Head row-->
	<xsl:attribute name="background-color">#191FCA</xsl:attribute>
  
</xsl:attribute-set>

  <xsl:attribute-set name="tfoot.row">
    <!--Table footer-->
  </xsl:attribute-set>

  <xsl:attribute-set name="tbody.row" use-attribute-sets="table__tableframe__top table__tableframe__bottom">
    <!--Table body row-->
    <!-- <xsl:attribute name='color'>blue</xsl:attribute> -->
    <xsl:attribute name="font-size">13pt</xsl:attribute>
    <xsl:attribute name="font-family">sans-serif</xsl:attribute>
    
    <!-- <xsl:attribute name="keep-together.within-page">always</xsl:attribute> -->
  </xsl:attribute-set>

  <xsl:attribute-set name="thead.row.entry">
    <!--head cell-->
  </xsl:attribute-set>

  <xsl:attribute-set name="thead.row.entry__content" use-attribute-sets="common.table.body.entry common.table.head.entry">
    <!--head cell contents-->
  </xsl:attribute-set>

  <xsl:attribute-set name="tfoot.row.entry">
    <!--footer cell-->
  </xsl:attribute-set>

  <xsl:attribute-set name="tfoot.row.entry__content" use-attribute-sets="common.table.body.entry common.table.head.entry">
    <!--footer cell contents-->
  </xsl:attribute-set>

<xsl:attribute-set name="sthead__row">
</xsl:attribute-set>



  <xsl:attribute-set name="tbody.row.entry"  use-attribute-sets="common.border__right">
    <!--body cell-->
    <xsl:attribute name='color'>black</xsl:attribute>
    <xsl:attribute name="font-size">13pt</xsl:attribute>
    <xsl:attribute name="font-family">sans-serif</xsl:attribute>
    <xsl:attribute name="text-align">center</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="tbody.row.entry__firstcol" use-attribute-sets="tbody.row.entry">
  </xsl:attribute-set>

  <xsl:attribute-set name="tbody.row.entry__content" use-attribute-sets="common.table.body.entry">
    <!--body cell contents-->
     <xsl:attribute name="text-align">center</xsl:attribute>
    <xsl:attribute name="margin-left">7pt</xsl:attribute>
    <!-- <xsl:attribute name="margin-right">2pt</xsl:attribute> -->
  </xsl:attribute-set>


<!--********************************Style for Definition List*********************************-->
<!--Table for Definition List-->
  <xsl:attribute-set name="dl" >
    <!--DL is a table-->
    <xsl:attribute name="width">100%</xsl:attribute>
    <xsl:attribute name="space-before">5pt</xsl:attribute>
    <xsl:attribute name="space-after">5pt</xsl:attribute>
  </xsl:attribute-set>

<!--Body for Definition List-->
  <xsl:attribute-set name="dl__body" use-attribute-sets="table__tableframe__all table__tableframe__top">
    <xsl:attribute name='color'>yellow</xsl:attribute>
    <xsl:attribute name="font-size">13pt</xsl:attribute>
    <xsl:attribute name="font-family">sans-serif</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="dl.dlhead" >
  </xsl:attribute-set>

  <!--Style for Contents for Entire DL-->
  <xsl:attribute-set name="dlentry">
  </xsl:attribute-set>


<!--Style for Dl dt which contains term for element-->

  <xsl:attribute-set name="dlentry.dt" use-attribute-sets=" table__tableframe__bottom table__tableframe__top">
    <xsl:attribute name="relative-align">baseline</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="dlentry.dt__content" use-attribute-sets="common.table.body.entry common.table.head.entry">
    <xsl:attribute name='color'>blue</xsl:attribute>
    <xsl:attribute name="font-size">13pt</xsl:attribute>
    <xsl:attribute name="text-align">center</xsl:attribute>
    <xsl:attribute name="font-weight">bold</xsl:attribute>
    <xsl:attribute name="font-family">sans-serif</xsl:attribute>
    <xsl:attribute name="padding-top">3pt</xsl:attribute>
    <xsl:attribute name="padding-bottom">3pt</xsl:attribute>
  </xsl:attribute-set>

<!--Style for dd. Contains description of the term in list-->
  <xsl:attribute-set name="dlentry.dd" use-attribute-sets=" table__tableframe__bottom table__tableframe__top table__tableframe__left">
  </xsl:attribute-set>

  <xsl:attribute-set name="dlentry.dd__content" use-attribute-sets="common.table.body.entry">
  <xsl:attribute name='color'>black</xsl:attribute>
    <xsl:attribute name="font-size">13pt</xsl:attribute>
    <xsl:attribute name="text-align">center</xsl:attribute>
    <xsl:attribute name="font-weight">bold</xsl:attribute>
    <xsl:attribute name="font-family">sans-serif</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="dl.dlhead__row" >
    
  </xsl:attribute-set>

  <xsl:attribute-set name="dlhead.dthd__cell">
  
  </xsl:attribute-set>

  <xsl:attribute-set name="dlhead.dthd__content" use-attribute-sets="common.table.body.entry common.table.head.entry">
  <xsl:attribute name="background-color">grey</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="dlhead.ddhd__cell">
    
  </xsl:attribute-set>

  <xsl:attribute-set name="dlhead.ddhd__content" use-attribute-sets="common.table.body.entry common.table.head.entry">
  </xsl:attribute-set>

  <xsl:attribute-set name="simpletable" use-attribute-sets="base-font">
    <!--It is a table container -->
    <xsl:attribute name="width">100%</xsl:attribute>
    <xsl:attribute name="space-before">8pt</xsl:attribute>
    <xsl:attribute name="space-after">10pt</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="simpletable__body">
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