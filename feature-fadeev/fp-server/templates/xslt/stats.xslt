<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="/">
        <div>
            <h3>Stats</h3>
            <h4>Total visitors in all cinemas:<xsl:value-of select="sum(@visitors)"/></h4>
           
        </div>
    </xsl:template>

</xsl:stylesheet>
