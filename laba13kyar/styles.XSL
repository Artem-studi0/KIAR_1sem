<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Аттестация студентов</title>
                <style>
                    .low-grade { background-color: red; color: white; }
                    .high-grade { background-color: green; color: white; }
                </style>
            </head>
            <body>
                <h1>Аттестация студентов</h1>
                <table border="1">
                    <tr>
                        <th>Имя студента</th>
                        <th>Оценка</th>
                    </tr>
                    <xsl:for-each select="students/student">
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td>
                                <xsl:choose>
                                    <xsl:when test="grade &lt; 4">
                                        <span class="low-grade"><xsl:value-of select="grade"/></span>
                                    </xsl:when>
                                    <xsl:when test="grade &gt; 8">
                                        <span class="high-grade"><xsl:value-of select="grade"/></span>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="grade"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>