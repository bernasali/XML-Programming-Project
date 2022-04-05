<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Физически спецификации</title>
                <link rel="stylesheet" type="text/css" href="table_style.css"/>
            </head>
            <body>
                <h2>
                    Фотоапарати - физически спецификации
                </h2>

                <table>
                    <tr>
                        <th>Марка</th>
                        <th>Модел</th>
                        <th>Тип</th>
                        <th>Размер</th>
                        <th>Тегло</th>



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
                                <xsl:value-of select="@type"/>
                            </td>
                            <td>
                                <xsl:value-of select="physical-specifications/size"/>
                            </td>
                            <td>
                                <xsl:value-of select="physical-specifications/weight"/>
                            </td>



                        </tr>


                    </xsl:for-each>

                </table>
            </body>


        </html>
    </xsl:template>
</xsl:stylesheet>