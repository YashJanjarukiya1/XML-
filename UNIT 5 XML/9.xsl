<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0" 
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"> 
    <xsl:template match = "/"> 
        <html> 
            <body> 
                <h2>Students</h2> 
                <table border = "1"> 
                    <tr bgcolor = "#9acd32"> 
                        <th>Roll No</th> 
                        <th>Name</th> 
                        <th>Marks</th> 
                        <th>Rank</th> 
                        <th>Result</th> 
                    </tr> 
                    <xsl:for-each select="Students/Student"> 
                        <tr> 
                            <td><xsl:value-of select = "@Roll_no"/></td> 
                            <td><xsl:value-of select = "@Name"/></td> 
                            <td><xsl:value-of select = "@Marks"/></td> 
                            <td><xsl:value-of select = "@Rank"/></td> 
                            <xsl:choose>
                                <xsl:when test="@Result='dist'">
                                    <td>Distinction</td> 
                                </xsl:when> 
                                <xsl:when test="@Result='first'">
                                    <td>First Class</td> 
                                </xsl:when> 
                                <xsl:when test="@Result='second'">
                                    <td>Second Class</td> 
                                </xsl:when> 
                                <xsl:otherwise>
                                    <td>Fail</td> 
                                </xsl:otherwise> 
                            </xsl:choose> 
                        </tr> 
                    </xsl:for-each> 
                </table> 
            </body> 
        </html> 
    </xsl:template>  
</xsl:stylesheet>