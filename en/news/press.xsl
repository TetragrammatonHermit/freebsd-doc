<?xml version="1.0" encoding="ISO-8859-1" ?>

<!-- $FreeBSD: www/en/news/press.xsl,v 1.9 2004/05/13 20:52:49 simon Exp $ -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
  xmlns:cvs="http://www.FreeBSD.org/XML/CVS">

  <xsl:import href="../includes.xsl"/>
  <xsl:import href="includes.xsl"/>


  <xsl:variable name="base" select="'..'"/>
  <xsl:variable name="title" select="'FreeBSD in the Press'"/>
  <xsl:variable name="date">
    <xsl:value-of select="//cvs:keyword[@name='freebsd']"/>
  </xsl:variable>

  <xsl:param name="news.press.xml-master" select="'none'" />
  <xsl:param name="news.press.xml" select="'none'" />
  
  <xsl:output type="html" encoding="iso-8859-1"/>

  <xsl:template match="press">
    <html>
      
      <xsl:copy-of select="$header1"/>

      <body xsl:use-attribute-sets="att.body">

	<xsl:copy-of select="$header2"/>

	<p>If you know of any news stories featuring FreeBSD that we have not
	  listed here, please send details to 
	  <a href="mailto:www@FreeBSD.org">www@FreeBSD.org</a> so that we can
	  include them.</p>

	<xsl:call-template name="html-news-list-press">
          <xsl:with-param name="news.press.xml-master" select="$news.press.xml-master" />
          <xsl:with-param name="news.press.xml" select="$news.press.xml" />
	</xsl:call-template>

	<xsl:copy-of select="$newshome"/>
	<xsl:copy-of select="$footer"/>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
