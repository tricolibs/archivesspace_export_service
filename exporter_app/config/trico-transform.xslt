<!--This is to remove type=ark attributes from unitids nested under the dsc tag-->
<xsl:stylesheet version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink"
xmlns:ead="urn:isbn:1-931666-22-9">
  <xsl:template match="ead:dsc//ead:unitid[@type='ark']">
  </xsl:template>
    <xsl:template match="@* |node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>