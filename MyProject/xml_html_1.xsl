<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Каталог за фотоапарати</title>
                <link rel="stylesheet" type="text/css" href="table_style.css"/>
            </head>
            <body>
                <h2>
                    Фотоапарати
                </h2>

                <table border ="1">
                    <tr>
                        <th>Снимка</th>
                        <th>Марка</th>
                        <th>Модел</th>
                        <th>Дата на излизане</th>
                        <th>Цена</th>

                    </tr>
                    <xsl:for-each select="catalog/cameras/camera">
                        <tr>
                            <td>
                            <img src="{image}" width="250" height="200"/>
                            </td>
                            <td>
                                <xsl:value-of select="brand_info/brand"/>
                            </td>
                            <td>
                                <xsl:value-of select="model"/>
                            </td>
                            <td>
                                <xsl:value-of select="brand_info/realise_date"/>
                            </td>
                            <td>
                                <xsl:value-of select="price"/>&#160;<xsl:value-of select="price/@currency"/>
                            </td>


                        </tr>


                    </xsl:for-each>

                </table>
            </body>


        </html>
    </xsl:template>
</xsl:stylesheet>