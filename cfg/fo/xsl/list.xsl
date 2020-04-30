<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="2.0">

    <!--Lists-->
    <xsl:template match="*[contains(@class, ' topic/ul ')]">
        <xsl:apply-templates select="*[contains(@class,' ditaot-d/ditaval-startprop ')]" mode="outofline"/>
        <fo:list-block xsl:use-attribute-sets="ul">
            <xsl:call-template name="commonattributes"/>
            <xsl:apply-templates/>
        </fo:list-block>
        <xsl:apply-templates select="*[contains(@class,' ditaot-d/ditaval-endprop ')]" mode="outofline"/>
    </xsl:template>
  
    <xsl:template match="*[contains(@class, ' topic/ul ')][empty(*[contains(@class, ' topic/li ')])]" priority="10"/>

    <xsl:template match="*[contains(@class, ' topic/ol ')]">
        <xsl:apply-templates select="*[contains(@class,' ditaot-d/ditaval-startprop ')]" mode="outofline"/>
        <fo:list-block xsl:use-attribute-sets="ol">
            <xsl:call-template name="commonattributes"/>
            <xsl:apply-templates/>
        </fo:list-block>
        <xsl:apply-templates select="*[contains(@class,' ditaot-d/ditaval-endprop ')]" mode="outofline"/>
    </xsl:template>
  
    <xsl:template match="*[contains(@class, ' topic/ol ')][empty(*[contains(@class, ' topic/li ')])]" priority="10"/>

    <xsl:template match="*[contains(@class, ' topic/ul ')]/*[contains(@class, ' topic/li ')]">
        <xsl:variable name="depth" select="count(ancestor::*[contains(@class, ' topic/ul ')])"/>
        <fo:list-item xsl:use-attribute-sets="ul.li">
            <xsl:call-template name="commonattributes"/>
            <fo:list-item-label xsl:use-attribute-sets="ul.li__label">
                <fo:block xsl:use-attribute-sets="ul.li__label__content">
                    <!-- <xsl:call-template name="getVariable">
                        <xsl:with-param name="id" select="concat('Unordered List bullet ', (($depth - 1) mod 4) + 1)"/>
                    </xsl:call-template> -->

                    <fo:inline name="square">&#x25AA;</fo:inline>
                </fo:block>
            </fo:list-item-label>
            <fo:list-item-body xsl:use-attribute-sets="ul.li__body">
                <fo:block xsl:use-attribute-sets="ul.li__content">
                    <xsl:apply-templates/>
                </fo:block>
            </fo:list-item-body>
        </fo:list-item>
    </xsl:template>

    <xsl:template match="*[contains(@class, ' topic/ol ')]/*[contains(@class, ' topic/li ')]">
        <xsl:variable name="depth" select="count(ancestor::*[contains(@class, ' topic/ol ')])"/>
        <xsl:variable name="format">
          <xsl:call-template name="getVariable">
            <xsl:with-param name="id" select="concat('Ordered List Format ', $depth)"/>
          </xsl:call-template>
        </xsl:variable>
        <fo:list-item xsl:use-attribute-sets="ol.li">
            <xsl:call-template name="commonattributes"/>
            <fo:list-item-label xsl:use-attribute-sets="ol.li__label">
                <fo:block xsl:use-attribute-sets="ol.li__label__content">
                    <xsl:call-template name="getVariable">
                        <xsl:with-param name="id" select="concat('Ordered List Number ', $depth)"/>
                        <xsl:with-param name="params" as="element()*">
                           <number>
                               <xsl:number format="{$format}"/>
                           </number>
                        </xsl:with-param>
                    </xsl:call-template>
                </fo:block>
            </fo:list-item-label>
            <fo:list-item-body xsl:use-attribute-sets="ol.li__body">
                <fo:block xsl:use-attribute-sets="ol.li__content">
                    <xsl:apply-templates/>
                </fo:block>
            </fo:list-item-body>
        </fo:list-item>
    </xsl:template>

    <xsl:template match="*[contains(@class, ' topic/li ')]/*[contains(@class, ' topic/itemgroup ')]">
        <fo:block xsl:use-attribute-sets="li.itemgroup">
            <xsl:call-template name="commonattributes"/>
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>

    <xsl:template match="*[contains(@class, ' topic/sl ')]">
        <xsl:apply-templates select="*[contains(@class,' ditaot-d/ditaval-startprop ')]" mode="outofline"/>
        <fo:list-block xsl:use-attribute-sets="sl">
            <xsl:call-template name="commonattributes"/>
            <xsl:apply-templates/>
        </fo:list-block>
        <xsl:apply-templates select="*[contains(@class,' ditaot-d/ditaval-endprop ')]" mode="outofline"/>
    </xsl:template>
  
    <xsl:template match="*[contains(@class, ' topic/sl ')][empty(*[contains(@class, ' topic/sli ')])]" priority="10"/>

    <xsl:template match="*[contains(@class, ' topic/sl ')]/*[contains(@class, ' topic/sli ')]">
        <fo:list-item xsl:use-attribute-sets="sl.sli">
            <xsl:call-template name="commonattributes"/>
            <fo:list-item-label xsl:use-attribute-sets="sl.sli__label">
                <fo:block xsl:use-attribute-sets="sl.sli__label__content">
                </fo:block>
            </fo:list-item-label>
            <fo:list-item-body xsl:use-attribute-sets="sl.sli__body">
                <fo:block xsl:use-attribute-sets="sl.sli__content">
                    <xsl:apply-templates/>
                </fo:block>
            </fo:list-item-body>
        </fo:list-item>
    </xsl:template>

</xsl:stylesheet>