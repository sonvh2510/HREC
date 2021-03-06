<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<section class="news-act-2 pb-60">
			<xsl:if test="position()=4">
				<xsl:attribute name="class">
					<xsl:text disable-output-escaping="yes">news-act-2</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<div class="container">
				<div class="home-nav-wrapper">
					<h2 class="main-title">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</h2>
					<div class="home-nav">
						<div class="nav-title">Chuyên mục</div>
						<nav>
							<a class="btn-link">
								<xsl:attribute name="href">
									<xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
								</xsl:attribute>
								<span>Xem tất cả</span>
								<span class="mdi mdi-arrow-right"></span>
							</a>
						</nav>
					</div>
				</div>
				<div class="row">
					<xsl:apply-templates select="News"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<xsl:if test="position() &lt; 9">
			<div class="news-2-item t-2">
				<article>
					<div class="imgbox">
						<a href="news-detail.html" data-bg="./img/news/1.jpg">
							<xsl:attribute name="data-bg">
								<xsl:value-of disable-output-escaping="yes" select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<img class="lazyload">
							<xsl:attribute name="data-src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</a>
					</div>
					<div class="info">
						<time><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></time>
						<h3>
							<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							</a>
						</h3>
						<p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
					</div>
				</article>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>