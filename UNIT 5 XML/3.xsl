<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/Books">
        <html>
            <body>
                <h2>Books published before 1998</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Title</th>
                        <th>Author</th>
                        <th>Year</th>
                        <th>Publisher</th>
                    </tr>
                    <xsl:for-each select="book[@year &lt; 1998]">
                        <tr>
                            <td><xsl:value-of select="@title"/></td>
                            <td><xsl:value-of select="@author"/></td>
                            <td><xsl:value-of select="@year"/></td>
                            <td><xsl:value-of select="@publisher"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>