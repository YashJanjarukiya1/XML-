
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="customers">
	
	<html>
	<body>
	<table border="2">
	
	<xsl:for-each select="customers/customer">
		
		<xsl:sort select="name" order="ascending"/>
		
		<tr>
	<td><xsl:value-of select="name"/></td>
	<td><xsl:value-of select="address"/></td>
	<td><xsl:value-of select="state"/></td>	
	<td><xsl:value-of select="phone"/></td>	
	</tr>
	</xsl:for-each>
	</table>
	</body>
	</html>
	</xsl:template>
</xsl:stylesheet>