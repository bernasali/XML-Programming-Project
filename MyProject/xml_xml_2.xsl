<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <catalog>
            <cameras>
                <xsl:for-each select="catalog/cameras/camera">
                    <camera>
                        <brand_info>
                            <brand>
                                <xsl:value-of select="brand_info/brand"/>
                            </brand>
                            <realise_date>
                                <xsl:value-of select="brand_info/realise_date"/>
                            </realise_date>

                        </brand_info>
                        <features>
                            <effective_pixels>
                                <xsl:value-of select="features/effective_pixels"/>
                            </effective_pixels>
                            <wi_fi/>
                            <xsl:value-of select="features/wi_fi/@has"/>
                            <processor>
                                <xsl:value-of select="features/processor"/>
                            </processor>
                            <display>
                                <xsl:value-of select="features/display"/>
                            </display>
                            <video>
                                <xsl:value-of select="features/video"/>
                            </video>

                        </features>

                        <power_supply>
                            <battery>
                                <xsl:value-of select="power_supply/battery"/>
                            </battery>
                            <energy_saving>
                                <xsl:value-of select="power_supply/energy_saving"/>
                            </energy_saving>
                            <charger>
                                <xsl:value-of select="power_supply/charger"/>
                            </charger>
                        </power_supply>


                    </camera>
                </xsl:for-each>
            </cameras>

        </catalog>

    </xsl:template>


</xsl:stylesheet>