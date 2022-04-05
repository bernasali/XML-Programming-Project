<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <catalog>
             <brand_info>
                  <brand><xsl:value-of select="catalog/brand_info/brand"/></brand>
                  <realise_date><xsl:value-of select="catalog/brand_info/realise_date"/></realise_date>
             </brand_info>
            <cameras>
                <xsl:for-each select="catalog/cameras/camera">
            <camera>
            <brand_info>
                <brand><xsl:value-of select="brand_info/brand"/></brand>
                <realise_date><xsl:value-of select="brand_info/realise_date"/></realise_date>

            </brand_info>
            <model><xsl:value-of select="model"/></model>
            <price><xsl:value-of select="price"/></price>
            <color><xsl:value-of select="color"/></color>
            </camera>
                </xsl:for-each>

            </cameras>
        </catalog>

    </xsl:template>
</xsl:stylesheet>