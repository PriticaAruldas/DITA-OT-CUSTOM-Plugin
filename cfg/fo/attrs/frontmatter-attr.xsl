<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0">
<!--Frontmatter Title-->
<xsl:attribute-set name="common.title">
<xsl:attribute name="font-family">monaco</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="__frontmatter__title" use-attribute-sets="common.title">
    <xsl:attribute name="space-before">70mm</xsl:attribute>
    <!-- <xsl:attribute name="space-after">10mm</xsl:attribute> -->
    <xsl:attribute name="font-size">32pt</xsl:attribute>
    <xsl:attribute name="font-weight">bold</xsl:attribute>
    <!-- <xsl:attribute name="font-style">oblique</xsl:attribute> -->
    <xsl:attribute name='margin-left'>50pt</xsl:attribute>
    <xsl:attribute name='margin-top'>360pt</xsl:attribute> 
    <xsl:attribute name='text-align'>left</xsl:attribute>   
	<xsl:attribute name="font-family">monaco</xsl:attribute>
    <xsl:attribute name="color">#068764</xsl:attribute>
</xsl:attribute-set>

<!---frontmatter container-->
<xsl:attribute-set name='__frontmatter__logo__container'>
    <xsl:attribute name='text-align'>left</xsl:attribute>
    <xsl:attribute name='position'>absolute</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name='__frontmatter__owner'>
    <xsl:attribute name="font-size">25pt</xsl:attribute>
    <xsl:attribute name="font-weight">900</xsl:attribute>
    <xsl:attribute name='padding-left'>50pt</xsl:attribute> 
    <xsl:attribute name='text-align'>left</xsl:attribute>   
	<xsl:attribute name="font-family">monaco</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="__frontmatter__subtitle" use-attribute-sets="common.title">
        <xsl:attribute name="font-size">25pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
         <xsl:attribute name='text-align'>left</xsl:attribute>
         <xsl:attribute name='margin-left'>25pt</xsl:attribute> 
		<xsl:attribute name="font-family">monaco</xsl:attribute>
    </xsl:attribute-set>
<!---frontmatter logo-->

<xsl:attribute-set name='__frontmatter__logo'>
    <xsl:attribute name='src'>url(Customization/OpenTopic/common/artwork/Logo/MetaperceptLogo.png)</xsl:attribute>
    <xsl:attribute name='padding-top'>310pt</xsl:attribute>
    <xsl:attribute name='padding-right'>50pt</xsl:attribute>
    <xsl:attribute name='padding-left'>50pt</xsl:attribute>
    <xsl:attribute name='width'>450px</xsl:attribute>
    <xsl:attribute name='height'>450px</xsl:attribute>
    <xsl:attribute name='scaling'>Uniform</xsl:attribute>
</xsl:attribute-set>

</xsl:stylesheet>