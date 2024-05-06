
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="bookss">
		
		<book>
			<xsl:apply-templates/>
		</book>
		
		</xsl:template>
		
		<xsl:template match="book">
			<xsl:element name="{@title}">
			
			<xsl:attribute name="bname">
			<xsl:value-of select="bname"/>
			</xsl:attribute>
			
			<content>
			
			<xsl:value-of select="content"/>
			</content>
			</xsl:element>
		
	</xsl:template>
</xsl:stylesheet>