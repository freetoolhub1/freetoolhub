<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:sm="http://www.sitemaps.org/schemas/sitemap/0.9">
<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
<html lang="en">
<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>Sitemap — FreeToolHub.info</title>
<style>
*{box-sizing:border-box;margin:0;padding:0;}
body{background:#050508;color:#f0eeff;font-family:'Segoe UI',system-ui,sans-serif;min-height:100vh;}
.hero{background:#0e0e14;border-bottom:1px solid rgba(255,255,255,0.06);padding:3rem 2rem 2.5rem;text-align:center;position:relative;overflow:hidden;}
.hero::before{content:'';position:absolute;top:-80px;left:50%;transform:translateX(-50%);width:500px;height:500px;background:radial-gradient(circle,rgba(167,139,250,0.1) 0%,transparent 70%);pointer-events:none;}
.logo-wrap{display:inline-flex;align-items:center;gap:10px;text-decoration:none;margin-bottom:1.5rem;}
.logo-text{font-size:1.4rem;font-weight:800;letter-spacing:0.05em;background:linear-gradient(90deg,#a78bfa,#38bdf8,#fb923c);-webkit-background-clip:text;-webkit-text-fill-color:transparent;background-clip:text;}
h1{font-size:clamp(2rem,6vw,3.5rem);font-weight:800;letter-spacing:-0.02em;line-height:1;margin-bottom:0.5rem;background:linear-gradient(135deg,#f0eeff,rgba(240,238,255,0.45));-webkit-background-clip:text;-webkit-text-fill-color:transparent;background-clip:text;}
.sub{color:#6b6880;font-size:0.92rem;margin-bottom:2rem;}
.stats{display:inline-flex;gap:2.5rem;background:rgba(255,255,255,0.03);border:1px solid rgba(255,255,255,0.06);border-radius:14px;padding:1rem 2.5rem;}
.stat{text-align:center;}
.sn{font-size:1.8rem;font-weight:800;background:linear-gradient(135deg,#a78bfa,#38bdf8);-webkit-background-clip:text;-webkit-text-fill-color:transparent;background-clip:text;display:block;line-height:1;}
.sl{font-size:0.62rem;color:#6b6880;text-transform:uppercase;letter-spacing:0.08em;margin-top:3px;}
.home-btn{display:inline-flex;align-items:center;gap:6px;background:linear-gradient(135deg,#a78bfa,#38bdf8);color:#050508;padding:0.65rem 1.6rem;border-radius:99px;font-weight:700;font-size:0.85rem;text-decoration:none;margin-top:1.8rem;transition:opacity 0.2s;}
.home-btn:hover{opacity:0.85;color:#050508;}
.container{max-width:920px;margin:0 auto;padding:3rem 2rem 5rem;}
.sec{margin-bottom:2.5rem;}
.sec-head{display:flex;align-items:center;gap:1rem;margin-bottom:1rem;}
.sec-name{font-size:0.68rem;font-weight:700;text-transform:uppercase;letter-spacing:0.12em;color:#6b6880;white-space:nowrap;}
.sec-line{flex:1;height:1px;background:rgba(255,255,255,0.06);}
.sec-tag{font-size:0.63rem;color:#6b6880;background:#0e0e14;border:1px solid rgba(255,255,255,0.06);padding:2px 8px;border-radius:99px;white-space:nowrap;}
table{width:100%;border-collapse:collapse;background:#0e0e14;border:1px solid rgba(255,255,255,0.06);border-radius:14px;overflow:hidden;}
thead tr{background:#16161f;}
thead th{padding:0.8rem 1.2rem;text-align:left;font-size:0.65rem;text-transform:uppercase;letter-spacing:0.1em;color:#6b6880;font-weight:600;border-bottom:1px solid rgba(255,255,255,0.06);}
tbody tr{border-bottom:1px solid rgba(255,255,255,0.04);transition:background 0.15s;}
tbody tr:last-child{border-bottom:none;}
tbody tr:hover{background:#16161f;}
td{padding:0.85rem 1.2rem;font-size:0.87rem;vertical-align:middle;}
td a{color:#a78bfa;text-decoration:none;font-family:monospace;font-size:0.8rem;transition:color 0.2s;}
td a:hover{color:#38bdf8;}
.name-col{color:#f0eeff;font-weight:500;font-family:inherit;font-size:0.87rem;}
.freq{color:#6b6880;font-size:0.8rem;}
.p-high{color:#4ade80;font-size:0.8rem;font-weight:600;}
.p-med{color:#38bdf8;font-size:0.8rem;font-weight:600;}
.p-low{color:#6b6880;font-size:0.8rem;font-weight:600;}
footer{border-top:1px solid rgba(255,255,255,0.06);padding:2rem;text-align:center;color:#6b6880;font-size:0.78rem;}
footer a{color:#6b6880;text-decoration:none;}
footer a:hover{color:#f0eeff;}
@media(max-width:600px){.stats{flex-direction:column;gap:1rem;padding:1rem 1.5rem;}.container{padding:2rem 1rem;}thead th:nth-child(3),td:nth-child(3),thead th:nth-child(4),td:nth-child(4){display:none;}}
</style>
</head>
<body>

<div class="hero">
  <a href="https://freetoolhub.info/" class="logo-wrap">
    <svg width="34" height="34" viewBox="0 0 38 38" fill="none" xmlns="http://www.w3.org/2000/svg">
      <defs><linearGradient id="g" x1="0" y1="0" x2="38" y2="38" gradientUnits="userSpaceOnUse"><stop offset="0%" stop-color="#a78bfa"/><stop offset="50%" stop-color="#38bdf8"/><stop offset="100%" stop-color="#fb923c"/></linearGradient></defs>
      <path d="M19 3L33 11V27L19 35L5 27V11L19 3Z" stroke="url(#g)" stroke-width="1.5" fill="none"/>
      <path d="M19 9L27 13.5V22.5L19 27L11 22.5V13.5L19 9Z" fill="url(#g)" opacity="0.3"/>
      <circle cx="19" cy="19" r="3.5" fill="url(#g)"/>
    </svg>
    <div class="logo-text">FREETOOLHUB</div>
  </a>
  <h1>SITEMAP</h1>
  <p class="sub">All <xsl:value-of select="count(sm:urlset/sm:url)"/> pages on FreeToolHub.info — free online tools, no signup required</p>
  <div class="stats">
    <div class="stat"><span class="sn"><xsl:value-of select="count(sm:urlset/sm:url)"/></span><span class="sl">Total pages</span></div>
    <div class="stat"><span class="sn">10</span><span class="sl">Free tools</span></div>
    <div class="stat"><span class="sn">0</span><span class="sl">Signups needed</span></div>
  </div>
  <br/>
  <a href="https://freetoolhub.info/" class="home-btn">&#8592; Back to FreeToolHub</a>
</div>

<div class="container">

  <div class="sec">
    <div class="sec-head"><div class="sec-name">All pages</div><div class="sec-line"></div><div class="sec-tag"><xsl:value-of select="count(sm:urlset/sm:url)"/> URLs</div></div>
    <table>
      <thead>
        <tr>
          <th>Page URL</th>
          <th>Last updated</th>
          <th>Update frequency</th>
          <th>Priority</th>
        </tr>
      </thead>
      <tbody>
        <xsl:for-each select="sm:urlset/sm:url">
          <tr>
            <td>
              <a href="{sm:loc}"><xsl:value-of select="sm:loc"/></a>
            </td>
            <td class="freq"><xsl:value-of select="sm:lastmod"/></td>
            <td class="freq"><xsl:value-of select="sm:changefreq"/></td>
            <td>
              <xsl:choose>
                <xsl:when test="sm:priority = '1.0'"><span class="p-high"><xsl:value-of select="sm:priority"/> &#9679; High</span></xsl:when>
                <xsl:when test="sm:priority = '0.9'"><span class="p-med"><xsl:value-of select="sm:priority"/> &#9679; Medium</span></xsl:when>
                <xsl:otherwise><span class="p-low"><xsl:value-of select="sm:priority"/> &#9679; Low</span></xsl:otherwise>
              </xsl:choose>
            </td>
          </tr>
        </xsl:for-each>
      </tbody>
    </table>
  </div>

</div>

<footer>
  <p>&#169; 2026 <a href="https://freetoolhub.info">FreeToolHub.info</a> &#8212; Free online tools for everyone. No signup required.</p>
</footer>

</body>
</html>
</xsl:template>
</xsl:stylesheet>
