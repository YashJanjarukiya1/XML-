<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<body>
<h2>Emp_name: <xsl:value-of select="emp_info/employee/@emp_name"/></h2>
<p style="font-size: smaller;">Employee number: <xsl:value-of select="emp_info/employee/@empID"/></p>
<p>Name: <xsl:value-of select="emp_info/employee/firstname"/> <xsl:value-of select="emp_info/employee/lastname"/></p>
</body>
</html>
</xsl:template>

</xsl:stylesheet>