<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<body>
<h2>Order Details</h2>
<table border="1">
<tr bgcolor="#9acd32">
<th>Order Number</th>
<th>Order Date</th>
<th>Order Amount</th>
<th>Item Price</th>
<th>Item Name</th>
<th>Quantity</th>
</tr>
<xsl:for-each select="Order_Details/Order_Detail">
<tr>
<td><xsl:value-of select="OrderNumber"/></td>
<td><xsl:value-of select="OrderDate"/></td>
<td><xsl:value-of select="OrderAmount"/></td>
<xsl:for-each select="Item">
<tr>
<td></td>
<td></td>
<td></td>
<td><xsl:value-of select="ItemPrice"/></td>
<td><xsl:value-of select="ItemName"/></td>
<td><xsl:value-of select="Quantity"/></td>
</tr>
</xsl:for-each>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>

</xsl:stylesheet>