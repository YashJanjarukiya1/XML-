<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/Students">
        <html>
            <body>
                <h2>Students</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Name</th>
                        <th>Personal Info</th>
                        <th>Result</th>
                    </tr>
                    <xsl:for-each select="Student">
                        <tr>
                            <td><xsl:value-of select="@Name"/></td>
                            <td><xsl:value-of select="@PersonalInfo"/></td>
                            <td>
                                <table border="1">
                                    <tr>
                                        <th>Subject</th>
                                        <th>Marks</th>
                                    </tr>
                                    <xsl:for-each select="Result">
                                        <tr>
                                            <td><xsl:value-of select="@Subject"/></td>
                                            <td><xsl:value-of select="@Marks"/></td>
                                        </tr>
                                    </xsl:for-each>
                                </table>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>