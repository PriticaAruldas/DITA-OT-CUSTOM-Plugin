<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0">
<!--Frontmatter Title-->
<xsl:attribute-set name="common.title">
<xsl:attribute name="font-family">sans-serif</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="__frontmatter__title" use-attribute-sets="common.title">
        <xsl:attribute name="space-before">100mm</xsl:attribute>
        <xsl:attribute name="font-size">45pt</xsl:attribute>
        <xsl:attribute name="font-weight">bolder</xsl:attribute>    
		<xsl:attribute name="font-family">sans-serif</xsl:attribute>
        <xsl:attribute name="color">white</xsl:attribute>
</xsl:attribute-set>

<!---frontmatter container-->
<xsl:attribute-set name='__frontmatter__logo__container'>
    <xsl:attribute name='text-align'>center</xsl:attribute>
    <xsl:attribute name='position'>absolute</xsl:attribute>
</xsl:attribute-set>

<!---frontmatter logo-->

<xsl:attribute-set name='__frontmatter__logo'>
    <xsl:attribute name='src'>url(Customization/OpenTopic/common/artwork/MetaperceptLogo.png)</xsl:attribute>
    <xsl:attribute name='padding-top'>235pt</xsl:attribute>
    <xsl:attribute name='padding-right'>250pt</xsl:attribute>
    <xsl:attribute name='width'>350pt</xsl:attribute>
    <xsl:attribute name='height'>350pt</xsl:attribute>
    <xsl:attribute name='scaling'>Uniform</xsl:attribute>
</xsl:attribute-set>

</xsl:stylesheet>