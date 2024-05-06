<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/Emails">
        <html>
            <body>
                <h2>Students</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Roll No</th>
                        <th>Name</th>
                        <th>Marks</th>
                        <th>Rank</th>
                        <th>Category</th>
                    </tr>
                    <xsl:for-each select="Email">
                        <xsl:choose>
                            <xsl:when test="@Rank &lt;= 5">
                                <tr>
                                    <td><xsl:value-of select="@Roll_no"/></td>
                                    <td><xsl:value-of select="@Name"/></td>
                                    <td><xsl:value-of select="@Marks"/></td>
                                    <td><xsl:value-of select="@Rank"/></td>
                                    <td>Top Students</td>
                                </tr>
                            </xsl:when>
                            <xsl:when test="@Rank > 5 and @Rank &lt;= 10">
                                <tr>
                                    <td><xsl:value-of select="@Roll_no"/></td>
                                    <td><xsl:value-of select="@Name"/></td>
                                    <td><xsl:value-of select="@Marks"/></td>
                                    <td><xsl:value-of select="@Rank"/></td>
                                    <td>Top 10 Students</td>
                                </tr>
                            </xsl:when>
                            <xsl:otherwise>
                                <tr>
                                    <td><xsl:value-of select="@Roll_no"/></td>
                                    <td><xsl:value-of select="@Name"/></td>
                                    <td><xsl:value-of select="@Marks"/></td>
                                    <td><xsl:value-of select="@Rank"/></td>
                                    <td>Average Students</td>
                                </tr>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>