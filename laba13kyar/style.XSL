<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Магазин на выбор</title>
            </head>
            <body>
                <h1>Магазин на выбор</h1>
                <table border="1">
                    <tr>
                        <th>Название</th>
                        <th>Описание</th>
                        <th>Цена (руб.)</th>
                    </tr>
                    <xsl:for-each select="store/products/product">
                        <xsl:sort select="price" data-type="number" order="ascending"/>
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="description"/></td>
                            <td><xsl:value-of select="price"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>