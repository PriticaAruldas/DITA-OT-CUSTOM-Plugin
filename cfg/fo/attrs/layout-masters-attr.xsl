<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:fox="http://xmlgraphics.apache.org/fop/extensions"
    version="2.0">

<!--Style for frontmatter-->
    <xsl:attribute-set name="region-body__frontmatter.odd" use-attribute-sets="region-body.odd">
        <!-- <xsl:attribute name="background-image">url(Customization/OpenTopic/common/artwork/image4.jpg)</xsl:attribute>
        <xsl:attribute name="background-position-vertical">350px 350px</xsl:attribute>
        <xsl:attribute name="background-position-horizontal">200px 200px</xsl:attribute>  -->
        <xsl:attribute name="background-color">#ECECEB</xsl:attribute>
        <xsl:attribute name="background-position">150px 150px</xsl:attribute>

        
        <xsl:attribute name="fox:background-image-width"><xsl:value-of select="$page-width"/></xsl:attribute>
        <xsl:attribute name="fox:background-image-height"><xsl:value-of select="$page-height"/></xsl:attribute>
        
        <xsl:attribute name="background-repeat">no-repeat</xsl:attribute>
        <xsl:attribute name="background-position-vertical">top</xsl:attribute>
        <xsl:attribute name="background-position-horizontal">left</xsl:attribute>
        
        <xsl:attribute name="margin-top">0mm</xsl:attribute>
        <xsl:attribute name="margin-bottom">0mm</xsl:attribute>
        <xsl:attribute name="margin">0mm</xsl:attribute>
        <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-left' else 'margin-right'}">0mm</xsl:attribute>
        <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-right' else 'margin-left'}">0mm</xsl:attribute>
    </xsl:attribute-set>


<!--Style for backmatter-->
    <xsl:attribute-set name="region-body__backcover.even">
        <xsl:attribute name="background-color">#ECECEB</xsl:attribute>
        <xsl:attribute name="background-position">150px 150px</xsl:attribute>

        
        <xsl:attribute name="fox:background-image-width"><xsl:value-of select="$page-width"/></xsl:attribute>
        <xsl:attribute name="fox:background-image-height"><xsl:value-of select="$page-height"/></xsl:attribute>
        
        <xsl:attribute name="background-repeat">no-repeat</xsl:attribute>
        <xsl:attribute name="background-position-vertical">top</xsl:attribute>
        <xsl:attribute name="background-position-horizontal">left</xsl:attribute>
        
        <xsl:attribute name="margin-top">0mm</xsl:attribute>
        <xsl:attribute name="margin-bottom">0mm</xsl:attribute>
        <xsl:attribute name="margin">0mm</xsl:attribute>
        <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-left' else 'margin-right'}">0mm</xsl:attribute>
        <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-right' else 'margin-left'}">0mm</xsl:attribute>
    </xsl:attribute-set>
    
</xsl:stylesheet>