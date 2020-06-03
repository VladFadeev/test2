<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:key name="cinema-by-visitors" match="cinema" use="@visitors" />

    <xsl:template match="/">
        <div>
            <h3>Stats</h3>
                <h4>Total visitors in all cinemas:<xsl:value-of select="sum(@visitors)"/></h4>

                <xsl:apply-templates select="//cinema[generate-id(.) = generate-id(key('cinema-by-visitors', @visitors)[1] )]"/>
        </div>
    </xsl:template>

    <xsl:template match="cinema">
        <h5>Cinema <xsl:value-of select="@cinema_name"/></h5>
        <h6>Total visitors: <xsl:value-of select="count(//cinema[@visitors = current()/@visitors])"/></h6>
    </xsl:template>

</xsl:stylesheet>
