<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0">
<xsl:output method="html" omit-xml-declaration="yes" indent="yes"/>
	<xsl:template match="contactes">
		<html>
			<head>
<style>
	td {
		padding: 10px 0;
	}
	h1 {
		text-align: center;
	}
	table {
		margin: 0 auto;
	}
</style>
			</head>
			<body>
				<h1>AGENDA de CONTACTES</h1>
				<table border="1">
					<xsl:apply-templates select="//contacte"/>
				</table>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="//contacte">
		<tr>
			<td>
				<xsl:value-of select="nom"/>
			</td>
			<td>
				<xsl:value-of select="relacio"/>
			</td>
			<td>
				<xsl:value-of select="data"/>
			</td>
			<td>
				<ul>
					<xsl:apply-templates select="adreses/adresa"/>
				</ul>
			</td>
		</tr>
	</xsl:template>
	<xsl:template match="//adresa">
		<li>
(<xsl:value-of select="./@tipus"/>)
<xsl:value-of select="."/>
		</li>
	</xsl:template>
</xsl:stylesheet>