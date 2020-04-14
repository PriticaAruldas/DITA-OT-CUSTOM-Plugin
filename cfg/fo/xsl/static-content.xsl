<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                version="2.0">

     <!-- <xsl:template name="insertBodyOddFooter">
        <fo:static-content flow-name="odd-body-footer">
            <xsl:call-template name="insertFooterContent">
                <xsl:with-param name="addChapterTitle" select="true()"/>
            </xsl:call-template>
        </fo:static-content>
    </xsl:template> -->
    
    <!--
        Body last page footer. 
        Chapter title in the left and page number in the right.
    -->
    <!-- <xsl:template name="insertBodyLastFooter">
        <fo:static-content flow-name="last-body-footer">
            <xsl:call-template name="insertFooterContent">
                <xsl:with-param name="addChapterTitle" select="true()"/>
            </xsl:call-template>
        </fo:static-content>
    </xsl:template> -->
    
    <!--
        Body first page footer. 
        Only the page number in the right part.
    -->
    <!-- <xsl:template name="insertBodyFirstFooter">
        <fo:static-content flow-name="first-body-footer">
            <xsl:call-template name="insertFooterContent">
                <xsl:with-param name="addChapterTitle" select="true()"/>
            </xsl:call-template>
        </fo:static-content>
    </xsl:template> -->

    <!--
        Body footer
    -->
    <xsl:template name="insertFooterContent">
        <xsl:param name="addChapterTitle" select="true()"/>
        
        <fo:block text-align-last="justify" start-indent="15mm" end-indent="15mm" margin-top="5mm" font-size="2.7em">
            <xsl:if test="$addChapterTitle">
                <fo:inline xsl:use-attribute-sets="pdf2.ug__frontmatter__header__text">
                    <fo:retrieve-marker retrieve-class-name="current-header"/>
                </fo:inline>
            </xsl:if>
            
            <fo:leader leader-pattern="space"/>
            
            <fo:inline xsl:use-attribute-sets="pdf2.ug__frontmatter__pagenumber__style">
                <fo:page-number/>
            </fo:inline>
        </fo:block>
    </xsl:template>
    
    <!--
        Body static content header: first, odd, and last
    -->
    <xsl:template name="insertBodyFirstHeader">
        <fo:static-content flow-name="first-body-header">
            <xsl:call-template name="insertFooterContent">
                <xsl:with-param name="addChapterTitle" select="true()"/>
            </xsl:call-template>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertBodyLastHeader">
        <fo:static-content flow-name="last-body-header">
            <xsl:call-template name="insertFooterContent">
                <xsl:with-param name="addChapterTitle" select="true()"/>
            </xsl:call-template>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertBodyOddHeader">
        <fo:static-content flow-name="odd-body-header">
            <xsl:call-template name="insertFooterContent">
                <xsl:with-param name="addChapterTitle" select="true()"/>
            </xsl:call-template>
        </fo:static-content>
    </xsl:template>

    <!--
        TOC header
    -->
    <xsl:template name="insertTocOddHeader">
    <fo:static-content flow-name="odd-toc-header">
            <xsl:call-template name="insertFooterContent">
                <xsl:with-param name="addChapterTitle" select="false()"/>
            </xsl:call-template>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertTocEvenHeader">
        <fo:static-content flow-name="even-toc-header">
            <xsl:call-template name="insertFooterContent">
                <xsl:with-param name="addChapterTitle" select="false()"/>
            </xsl:call-template>
        </fo:static-content>
    </xsl:template>
    <!--
        TOC footer
    -->
    <!-- <xsl:template name="insertTocOddFooter">
        <fo:static-content flow-name="odd-toc-footer">
            <xsl:call-template name="insertFooterContent">
                <xsl:with-param name="addChapterTitle" select="false()"/>
            </xsl:call-template>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertTocEvenFooter">
        <fo:static-content flow-name="even-toc-footer">
            <xsl:call-template name="insertFooterContent">
                <xsl:with-param name="addChapterTitle" select="false()"/>
            </xsl:call-template>
        </fo:static-content>
    </xsl:template> -->

    <!-- Index footer and header -->
    <xsl:template name="insertIndexOddHeader">
    <fo:static-content flow-name="odd-index-header">
            <xsl:call-template name="insertFooterContent">
                <xsl:with-param name="addChapterTitle" select="false()"/>
            </xsl:call-template>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertIndexEvenHeader">
    <fo:static-content flow-name="even-index-header">
            <xsl:call-template name="insertFooterContent">
                <xsl:with-param name="addChapterTitle" select="false()"/>
            </xsl:call-template>
        </fo:static-content>
    </xsl:template>

    <!-- <xsl:template name="insertIndexOddFooter">
        <fo:static-content flow-name="odd-index-footer">
            <xsl:call-template name="insertFooterContent">
                <xsl:with-param name="addChapterTitle" select="false()"/>
            </xsl:call-template>
        </fo:static-content>
    </xsl:template>

    <xsl:template name="insertIndexEvenFooter">
        <fo:static-content flow-name="even-index-footer">
            <xsl:call-template name="insertFooterContent">
                <xsl:with-param name="addChapterTitle" select="false()"/>
            </xsl:call-template>
        </fo:static-content>
    </xsl:template> -->

    
</xsl:stylesheet>