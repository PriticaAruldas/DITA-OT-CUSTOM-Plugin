<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:rx="http://www.renderx.com/XSL/Extensions"
                version="2.0">

<!--Backmatter Logo Container-->
<xsl:attribute-set name='__backmatter__logo__container'>
                <xsl:attribute name='text-align'>left</xsl:attribute>
                <xsl:attribute name="content-width">scale-to-fit</xsl:attribute>
        </xsl:attribute-set>

<!--Backmatter Logo-->
        <xsl:attribute-set name='__backmatter__logo'>
                <xsl:attribute name='src'>url(Customization/OpenTopic/common/artwork/MetaperceptLogo.png)</xsl:attribute>
                <xsl:attribute name='padding-top'>5px</xsl:attribute>
                <xsl:attribute name='width'>50px</xsl:attribute>
                <xsl:attribute name='content-width'>50px</xsl:attribute>
                <xsl:attribute name='scaling'>uniform</xsl:attribute>
        </xsl:attribute-set>


</xsl:stylesheet>