
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="books">
		
		<html>
		<body>
		
		<b><h1><xsl:value-of select="bname"/></h1></b>
		<b><h2><xsl:value-of select="author"/></h2></b>
		<b><h3><xsl:value-of select="price"/></h3></b>
		
		</body>
		</html>

	</xsl:template>
</xsl:stylesheet>