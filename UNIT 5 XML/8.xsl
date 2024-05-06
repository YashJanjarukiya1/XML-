<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/Students">
        <html>
            <body>
                <h2>Students</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Roll No</th>
                        <th>Name</th>
                        <th>Marks</th>
                        <th>Rank</th>
                        <th>Result</th>
                    </tr>
                    <xsl:for-each select="Student">
                        <xsl:choose>
                            <xsl:when test="@Marks &gt;= 70">
                                <tr>
                                    <td><xsl:value-of select="@Roll_no"/></td>
                                    <td><xsl:value-of select="@Name"/></td>
                                    <td><xsl:value-of select="@Marks"/></td>
                                    <td><xsl:value-of select="@Rank"/></td>
                                    <td><xsl:value-of select="Result"/></td>
                                </tr>
                            </xsl:when>
                            <xsl:when test="@Marks &gt;= 60 and @Marks &lt; 70">
                                <tr>
                                    <td><xsl:value-of select="@Roll_no"/></td>
                                    <td><xsl:value-of select="@Name"/></td>
                                    <td><xsl:value-of select="@Marks"/></td>
                                    <td><xsl:value-of select="@Rank"/></td>
                                    <td>first</td>
                                </tr>
                            </xsl:when>
                            <xsl:when test="@Marks &gt;= 40 and @Marks &lt; 60">
                                <tr>
                                    <td><xsl:value-of select="@Roll_no"/></td>
                                    <td><xsl:value-of select="@Name"/></td>
                                    <td><xsl:value-of select="@Marks"/></td>
                                    <td><xsl:value-of select="@Rank"/></td>
                                    <td>second</td>
                                </tr>
                            </xsl:when>
                            <xsl:otherwise>
                                <tr>
                                    <td><xsl:value-of select="@Roll_no"/></td>
                                    <td><xsl:value-of select="@Name"/></td>
                                    <td><xsl:value-of select="@Marks"/></td>
                                    <td><xsl:value-of select="@Rank"/></td>
                                    <td>fail</td>
                                </tr>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>