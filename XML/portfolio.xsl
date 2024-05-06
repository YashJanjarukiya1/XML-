<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="portfolio">
		
		<html>
		<body>
		
		<table border="2">
		
		<th style="color:red">stockname</th>
		<th style="color:red">price</th>
		<th style="color:red">symbol</th>
		<xsl:for-each select="portfolio/stock">
		<xsl:if test="price &gt;5500">
		
		<tr>
		
		<td style="color:yellow"><xsl:value-of select="name"/></td>
		<td style="color:yellow"><xsl:value-of select="price"/></td>
		
		</tr>
		</xsl:if>
		</xsl:for-each>
		</table>
		
		</body>
		
		</html>
	</xsl:template>
</xsl:stylesheet>