<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/Students">
        <Students>
            <xsl:for-each select="Student">
                <Student>
                    <fname ID="{@ID}">
                        <xsl:value-of select="@Name" />
                    </fname>
                    <xsl:for-each select="Plan/Course">
                        <Course>
                            <xsl:value-of select="." />
                        </Course>
                    </xsl:for-each>
                </Student>
            </xsl:for-each>
        </Students>
    </xsl:template>
</xsl:stylesheet>