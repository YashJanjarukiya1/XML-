<?xml version="1.0" encoding="UTF-8"?>
	
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template match="student">
	
	<html>
	
	<body>
	
	<b><h1><xsl:value-of select="name"/></h1></b>
	<b><h2><xsl:value-of select="rollno"/></h2></b>
	<b><h3><xsl:value-of select="address"/></h3></b>
	</body>

	</html>
	
	</xsl:template>
</xsl:stylesheet>