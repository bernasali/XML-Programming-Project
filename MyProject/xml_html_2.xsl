<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Подробни спецификации</title>
                <link rel="stylesheet" type="text/css" href="table_style.css"/>
            </head>
            <body>
                <h2>
                    Фотоапарати - подробни спецификации
                </h2>

                <table>
                    <tr>

                        <th>Марка</th>
                        <th>Модел</th>
                        <th>Ефективни пиксели</th>
                        <th>Wi-fi</th>
                        <th>Процесор</th>
                        <th>Дисплей</th>
                        <th>Видео</th>
                        <th>Максимална продължителност на видеото</th>


                    </tr>
                    <xsl:for-each select="catalog/cameras/camera">
                        <tr>
                            <td>
                                <xsl:value-of select="brand_info/brand"/>
                            </td>

                            <td>
                                <xsl:value-of select="model"/>
                            </td>
                            <td>
                                <xsl:value-of select="features/effective_pixels"/>
                            </td>
                            <td>
                                <xsl:value-of select="features/wi-fi/@has"/>
                            </td>
                            <td>
                                <xsl:value-of select="features/processor"/>
                            </td>
                            <td>
                                <xsl:value-of select="features/display"/>
                            </td>
                            <td>
                                <xsl:value-of select="features/video"/>
                            </td>
                            <td>
                                <xsl:value-of select="features/video/@max-duration"/>
                            </td>


                        </tr>


                    </xsl:for-each>

                </table>
            </body>


        </html>
    </xsl:template>
</xsl:stylesheet>