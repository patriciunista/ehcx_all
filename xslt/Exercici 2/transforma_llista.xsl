<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0">
<xsl:output method="text" omit-xml-declaration="yes" indent="no"/>

<xsl:template match="moduls">
<xsl:apply-templates select="//modul"/>
</xsl:template>

<xsl:template match="//modul">
<xsl:if test="@nom = 'LDM'">
Notes de //Llenguatges de marques//
--------------------------------
</xsl:if>
<xsl:apply-templates select="alumnes/alumne"/>
</xsl:template>

<xsl:template match="//alumne">
<xsl:value-of select="./@nom"/><xsl:text> : </xsl:text><xsl:value-of select="./@nota"/><xsl:text>
</xsl:text>
</xsl:template>

</xsl:stylesheet>