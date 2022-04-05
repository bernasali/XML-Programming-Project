<?xml version="1.0" encoding="UTF-8"?>
<!-- new_xml_3 -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        Каталог Canon-фотоапарати
        <xsl:for-each select="/catalog/cameras/camera">
            Марка: <xsl:value-of select="brand_info/brand"/>
            Модел: <xsl:value-of select="model"/>
            Тип: <xsl:value-of select="@type"/>
            Цена: <xsl:value-of select="price"/>&#160;<xsl:value-of select="price/@currency"/>
            Спецификации: <xsl:call-template name="features"/>
            <xsl:value-of select="$newline"/>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name = "features">
        Ефективни пиксели: <xsl:value-of select="features/effective_pixels"/>&#160;<xsl:value-of select="effective_pixels/@px"/>
        Процесор: <xsl:value-of select="features/processor"/>
        Дисплей: <xsl:value-of select="features/display"/>
        Видео: <xsl:value-of select="features/video"/>
    </xsl:template>

    <xsl:variable name="newline">
        <xsl:text>&#10;</xsl:text>
    </xsl:variable>





   </xsl:stylesheet>