<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:foo="http://www.foo.org/" xmlns:bar="http://www.bar.org">
  <xsl:template match="/">
    <html>
      <body>        
        <h2>Uložené hry</h2>
        <xsl:for-each select="save_hry/savy/save">
          <table style= "margin-left:0px;border-collapse: collapse">
            <tr bgcolor="#47A0E1">
              <th style="width:128px; border:1px white">ID</th>
              <th style="width:128px; border:1px solid black">Jméno</th>
              <th style="width:128px; border:1px solid black">Obrázek</th>
            </tr>
            <tr style= "border:1px solid black">
              <td style="border:1px solid black">
                <xsl:value-of select="@id" />
              </td>
              <td style="border:1px solid black">
                <xsl:value-of select="@jmeno" />
              </td>
              <td style="border:1px solid black">
                <xsl:value-of select="@obrazek" />
              </td>
            </tr>
          </table>
          <br/>
          <table style= "margin-left:0px;border-collapse: collapse">
            <tr bgcolor="#47A0E1">
              <th style="width:128px; border:1px solid black">Hlava</th>
              <th style="width:128px; border:1px solid black">Tělo</th>
              <th style="width:128px; border:1px solid black">Boty</th>
              <th style="width:128px; border:1px solid black">Batoh</th>
              <th style="width:128px; border:1px solid black">Primární zbraň</th>
              <th style="width:128px; border:1px solid black">Sekundární zbraň</th>
            </tr>
            <tr style= "border:1px solid black">
              <td style="border:1px solid black">
                <xsl:value-of select="postava/vybaveni/hlava" />
              </td>
              <td style="border:1px solid black">
                <xsl:value-of select="postava/vybaveni/telo" />
              </td>
              <td style="border:1px solid black">
                <xsl:value-of select="postava/vybaveni/boty" />
              </td>
              <td style="border:1px solid black">
                <xsl:value-of select="postava/vybaveni/batoh" />
              </td>
              <td style="border:1px solid black">
                <xsl:value-of select="postava/vybaveni/primarni_zbran" />
              </td>
              <td style="border:1px solid black">
                <xsl:value-of select="postava/vybaveni/sekundarni_zbran" />
              </td>
            </tr>
          </table>
          <br/>
          <hr style="width:786px; margin-left:0px"></hr>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>