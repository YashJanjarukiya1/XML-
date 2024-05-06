<?xml version="1.0" encoding="UTF-8"?>
	
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template match="mybook">
	
	<html>
	
	<body>
	
	<b><h1><xsl:value-of select="name"/></h1></b>
	<b><h2><xsl:value-of select="author"/></h2></b>
	<b><h3><xsl:value-of select="price"/></h3></b>
	<b><h4><xsl:value-of select="pubyear"/></h4></b>
	
	</body>	
	</html>

	</xsl:template>
	
	
</xsl:stylesheet>