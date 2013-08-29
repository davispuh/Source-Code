<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:doc="https://github.com/davispuh/Source-Code"
  xmlns:m="http://www.w3.org/1998/Math/MathML" xmlns:svg="http://www.w3.org/2000/svg">
  <xsl:template match="/">

    <html lang="en" xmlns="http://www.w3.org/1999/xhtml" xmlns:svg="http://www.w3.org/2000/svg" xmlns:m="http://www.w3.org/1998/Math/MathML">
      <head>
        <title>XSL Example</title>
        <meta charset="UTF-8" />
        <meta name="keywords" content="XSL Example" />
        <meta name="description" content="This is example XSL page" />
        <link rel="stylesheet" type="text/css" href="CSS.css" />
        <style type="text/css">
          /* <![CDATA[ */
      #body * {
        margin: auto; /* Align to middle of page */
        text-align: center;
      }
      .big {
        font-size: large;
      }
      body > div.troll {
        visibility: hidden;
      }
      th, td {
        border: 2px solid black;
        padding: 8px;
      }
      /* ]]>
          */
        </style>
        <script type="text/javascript" src="JavaScript.js"></script>
        <script type="text/javascript">
          // <![CDATA[
      /**
       * Find HTML element based on it's ID/
       *
       * @param id The ID if element.
       * @return HTML element.
       */
       function getById(id) {
         return document.getElementById(id);
       }
      var timeout = null;
      function troll() {
        if (timeout)
          window.clearTimeout(timeout);
        getById('troll').style.visibility = "visible";
        timeout = setTimeout(function() {
          getById('troll').style.visibility = "hidden"
        }, 1500);
        // Prevent link
        return false;
      }
      // ]]>
        </script>
      </head>
      <body id="body" style="background-color: LightCyan">
        <h1>
          This is
          <span style="font-weight: bold;">XSL</span>
        </h1><!-- <== heading of page -->
        <p class="big">
          <a href="http://www.w3.org/Style/XSL/" onclick="return troll();">XSL</a>
          is
          <span id="awesome">awesome!</span>
        </p>
        <div id="troll" class="troll">Yes, I'm a troll</div>
        <xsl:apply-templates />
        <div class="footer">
          <svg:svg xmlns:xlink="http://www.w3.org/1999/xlink" width="600" height="500" style="float:left">
            <svg:defs>
              <svg:linearGradient id="linearGradient1" y2="308" spreadMethod="reflect" gradientUnits="userSpaceOnUse"
                x2="301" gradientTransform="translate(-116,597)" y1="308" x1="152">
                <svg:stop stop-color="#00F" offset="0" />
                <svg:stop stop-color="#00F" stop-opacity="0" offset="1" />
              </svg:linearGradient>
              <svg:filter id="filter1" color-interpolation-filters="sRGB">
                <svg:feGaussianBlur stdDeviation="5" />
              </svg:filter>
              <svg:radialGradient id="radialGradient2" gradientUnits="userSpaceOnUse" cy="385" cx="293"
                gradientTransform="matrix(1,0,0,1,0,34)" r="80">
                <svg:stop stop-color="#d4ff2a" offset="0" />
                <svg:stop stop-color="#d4ff2a" stop-opacity="0" offset="1" />
              </svg:radialGradient>
              <svg:filter id="filter2" style="color-interpolation-filters:sRGB;">
                <svg:feFlood result="flood" flood-color="rgb(0,0,0)" flood-opacity="0.4" />
                <svg:feComposite operator="in" result="composite1" in2="SourceGraphic" in="flood" />
                <svg:feGaussianBlur result="blur" stdDeviation="1.5" in="composite" />
                <svg:feOffset result="offset" dx="3" dy="3" />
                <svg:feComposite operator="over" result="composite2" in2="offset" in="SourceGraphic" />
              </svg:filter>
            </svg:defs>
            <svg:g transform="translate(0,-802)">
              <svg:rect id="box" opacity="0.66" stroke-linejoin="miter" fill-rule="evenodd" height="149"
                filter="url(#filter1)" width="149" stroke="#000" stroke-linecap="butt" y="831" x="36" stroke-width="1px"
                fill="url(#linearGradient1)" />
              <svg:path id="circle" opacity="0.8"
                d="m372.75,385.66c0,40.168-35.729,72.731-79.802,72.731s-79.802-32.563-79.802-72.731,35.729-72.731,79.802-72.731,79.802,32.563,79.802,72.731z"
                transform="translate(-124.24876,576.7971)" stroke="#7de000" fill="url(#radialGradient2)" />
              <svg:flowRoot style="letter-spacing:0px;word-spacing:0px;" font-weight="normal" xml:space="preserve"
                font-size="40px" line-height="125%" font-style="normal" font-family="Sans" fill="#000000">
                <svg:flowRegion>
                  <svg:rect y="137" width="587" x="5.0508" height="378" />
                </svg:flowRegion>
              </svg:flowRoot>
              <svg:flowRoot style="letter-spacing:0px;word-spacing:0px;" line-height="125%" font-weight="normal"
                xml:space="preserve" font-size="40px" transform="translate(0,752)" font-style="normal" font-family="Sans"
                fill="#000000">
                <svg:flowRegion>
                  <svg:rect y="-197" width="690" x="-183" height="600" />
                </svg:flowRegion>
              </svg:flowRoot>
            </svg:g>
            <svg:g>
              <svg:text style="letter-spacing:0px;word-spacing:0px;" font-weight="normal" xml:space="preserve"
                transform="translate(0,-800)" filter="url(#filter2)" font-size="40px" font-style="normal" y="900" x="97"
                font-family="Sans" line-height="125%" fill="#980101">
                <svg:tspan rotate="6.7 6.7 6.7 6.7 6.7 0" font-weight="normal" font-size="56px" font-style="normal"
                font-stretch="normal" font-variant="normal" y="900" x="97" font-family="Segoe Script" fill="#980101">Image</svg:tspan>
              </svg:text>
            </svg:g>
          </svg:svg>
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="doc:country">
    <div xmlns="http://www.w3.org/1999/xhtml" style="margin-left:auto; margin-right:auto; padding:10px;">
      <h3 class="header">
        <span class="textLabel">
          <xsl:value-of select="@name" />
        </span>
      </h3>
      <div class="content" style="text-align: center;">
        <table cellpadding="0" cellspacing="0">
          <thead>
            <tr>
              <th>Name of City</th>
              <th>
                Land Area (
                <m:math>
                  <m:msup>
                    <m:mi>km</m:mi>
                    <m:mn>2</m:mn>
                  </m:msup>
                </m:math>
                )
              </th>
              <th>Population</th>
              <th>Count of artists</th>
              <th>Count of musicians</th>
            </tr>
          </thead>
          <tbody>
            <xsl:apply-templates select="doc:city"><!-- display and sort data from XML without server-side code 
                :P -->
              <xsl:sort select="doc:population" data-type="number" order="descending" />
              <xsl:sort select="doc:land" data-type="number" order="ascending" />
            </xsl:apply-templates>
          </tbody>
        </table>
      </div>
    </div>

  </xsl:template>

  <xsl:template match="doc:city">
    <tr xmlns="http://www.w3.org/1999/xhtml">
      <td>
        <a>
          <xsl:attribute name="href">
            <xsl:text>http://en.wikipedia.org/wiki/</xsl:text>
            <xsl:value-of select="doc:name" />
          </xsl:attribute>
          <xsl:value-of select="doc:name" />
        </a>
      </td>
      <td>
        <xsl:value-of select="doc:land" />
      </td>
      <td>
        <xsl:value-of select="doc:population" />
      </td>
      <td>
        <xsl:value-of select="doc:artists" />
      </td>
      <td>
        <xsl:value-of select="doc:musicians" />
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
