<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" encoding="UTF-8" indent="yes"/>

    <xsl:variable name="newline">
        <xsl:text>&#10;</xsl:text>
    </xsl:variable>

    <xsl:template match="/">
        Каталог Canon-фотоапарати
        <xsl:for-each select="/catalog/cameras/camera">
            Марка: <xsl:value-of select="brand_info/brand/."/>
            Модел: <xsl:value-of select="model/."/>
            Цвят: <xsl:value-of select="color/."/>
            Размер: <xsl:value-of select="physical-specifications/size/."/>
            Тегло: <xsl:value-of select="physical-specifications/weight/."/>
            <xsl:value-of select="$newline"/>



        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>



