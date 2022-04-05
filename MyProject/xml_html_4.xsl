<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Захранване</title>
                <link rel="stylesheet" type="text/css" href="table_style.css"/>
            </head>
            <body>
                <h2>
                    Фотоапарати - захранване
                </h2>

                <table>
                    <tr>
                        <th>Марка</th>
                        <th>Модел</th>
                        <th>Батерии</th>
                        <th>Пестене на енергия</th>
                        <th>Зарядно устройство</th>



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
                                <xsl:value-of select="power_supply/battery"/>
                            </td>
                            <td>
                                <xsl:value-of select="power_supply/energy_saving"/>
                            </td>
                            <td>
                                <xsl:value-of select="power_supply/charger"/>
                            </td>



                        </tr>


                    </xsl:for-each>

                </table>
            </body>


        </html>
    </xsl:template>
</xsl:stylesheet>