<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:sm="http://www.sitemaps.org/schemas/sitemap/0.9">
<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
<html lang="en">
<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width,initial-scale=1"/>
<title>Sitemap &#8212; FreeToolHub.info</title>
<meta name="robots" content="noindex"/>
<link rel="preconnect" href="https://fonts.googleapis.com"/>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&amp;family=Plus+Jakarta+Sans:wght@300;400;500;600;700&amp;display=swap" rel="stylesheet"/>
<style>
*,*::before,*::after{box-sizing:border-box;margin:0;padding:0;}
html{scroll-behavior:smooth;}
body{background:#050508;color:#f0eeff;font-family:'Plus Jakarta Sans',sans-serif;min-height:100vh;line-height:1.6;}
a{text-decoration:none;color:inherit;}

/* NAV */
nav{background:rgba(5,5,8,.95);backdrop-filter:blur(20px);border-bottom:1px solid rgba(255,255,255,.06);padding:0 3rem;height:60px;display:flex;align-items:center;justify-content:space-between;position:sticky;top:0;z-index:100;}
.logo{display:flex;align-items:center;gap:9px;}
.logo-hex{width:28px;height:28px;animation:lspin 8s linear infinite;flex-shrink:0;}
@keyframes lspin{0%{filter:hue-rotate(0deg)}100%{filter:hue-rotate(360deg)}}
.logo-txt{font-family:'Bebas Neue',sans-serif;font-size:1.2rem;letter-spacing:.06em;background:linear-gradient(90deg,#a78bfa,#38bdf8,#fb923c);background-size:200%;-webkit-background-clip:text;-webkit-text-fill-color:transparent;background-clip:text;animation:gs 4s ease infinite;}
@keyframes gs{0%,100%{background-position:0% 50%}50%{background-position:100% 50%}}
.logo-dot{animation:dp 1.5s ease infinite;-webkit-text-fill-color:#fb923c;}
@keyframes dp{0%,100%{transform:scale(1)}50%{transform:scale(1.5)}}
.nav-back{color:#6b6880;font-size:.8rem;font-weight:500;border:1px solid rgba(255,255,255,.06);padding:.38rem .9rem;border-radius:99px;transition:all .2s;cursor:pointer;}
.nav-back:hover{border-color:#a78bfa;color:#a78bfa;}

/* HERO */
.hero{background:#0e0e14;border-bottom:1px solid rgba(255,255,255,.06);padding:3.5rem 2rem;text-align:center;position:relative;overflow:hidden;}
.hero::before{content:'';position:absolute;top:-80px;left:50%;transform:translateX(-50%);width:500px;height:500px;background:radial-gradient(circle,rgba(167,139,250,.1) 0%,transparent 70%);pointer-events:none;}
.hero::after{content:'';position:absolute;bottom:-60px;right:10%;width:300px;height:300px;background:radial-gradient(circle,rgba(56,189,248,.06) 0%,transparent 70%);pointer-events:none;}
.hero-tag{display:inline-flex;align-items:center;gap:7px;border:1px solid rgba(167,139,250,.28);background:rgba(167,139,250,.06);padding:.3rem .9rem;border-radius:99px;font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#a78bfa;margin-bottom:1.2rem;}
.tag-dot{width:6px;height:6px;border-radius:50%;background:#4ade80;display:inline-block;animation:blink 1.5s ease infinite;}
@keyframes blink{0%,100%{opacity:1}50%{opacity:0}}
h1{font-family:'Bebas Neue',sans-serif;font-size:clamp(2.5rem,6vw,4.5rem);letter-spacing:.02em;line-height:.95;margin-bottom:.5rem;background:linear-gradient(135deg,#f0eeff,rgba(240,238,255,.4));-webkit-background-clip:text;-webkit-text-fill-color:transparent;background-clip:text;position:relative;}
.hero-sub{color:#6b6880;font-size:.92rem;margin-bottom:2rem;position:relative;}
.stats{display:inline-flex;gap:2.5rem;background:rgba(255,255,255,.03);border:1px solid rgba(255,255,255,.06);border-radius:14px;padding:.9rem 2.5rem;position:relative;}
.stat{text-align:center;}
.stat-n{font-family:'Bebas Neue',sans-serif;font-size:2rem;line-height:1;background:linear-gradient(135deg,#a78bfa,#38bdf8);-webkit-background-clip:text;-webkit-text-fill-color:transparent;background-clip:text;display:block;}
.stat-l{font-size:.62rem;color:#6b6880;text-transform:uppercase;letter-spacing:.08em;margin-top:2px;}
.hero-btn{display:inline-flex;align-items:center;gap:6px;background:linear-gradient(135deg,#a78bfa,#38bdf8);color:#050508;padding:.7rem 1.8rem;border-radius:99px;font-weight:700;font-size:.86rem;margin-top:1.8rem;transition:all .22s;position:relative;cursor:pointer;}
.hero-btn:hover{transform:translateY(-2px);box-shadow:0 8px 28px rgba(167,139,250,.3);}

/* CONTAINER */
.container{max-width:920px;margin:0 auto;padding:3rem 2rem 5rem;}

/* SECTION HEAD */
.sec-head{display:flex;align-items:center;gap:1rem;margin:2.5rem 0 1rem;}
.sec-label{font-family:'Bebas Neue',sans-serif;font-size:.72rem;letter-spacing:.14em;text-transform:uppercase;color:#6b6880;white-space:nowrap;}
.sec-line{flex:1;height:1px;background:rgba(255,255,255,.06);}
.sec-count{font-size:.68rem;color:rgba(255,255,255,.1);font-weight:700;border:1px solid rgba(255,255,255,.06);padding:1px 8px;border-radius:99px;}

/* URL TABLE */
table{width:100%;border-collapse:collapse;background:#0e0e14;border:1px solid rgba(255,255,255,.06);border-radius:16px;overflow:hidden;margin-bottom:.5rem;}
thead tr{background:#16161f;border-bottom:1px solid rgba(255,255,255,.06);}
thead th{padding:.8rem 1.2rem;text-align:left;font-size:.65rem;text-transform:uppercase;letter-spacing:.1em;color:#6b6880;font-weight:600;}
tbody tr{border-bottom:1px solid rgba(255,255,255,.04);transition:background .15s;}
tbody tr:last-child{border-bottom:none;}
tbody tr:hover{background:#16161f;}
td{padding:.85rem 1.2rem;vertical-align:middle;}
.url-link{color:#a78bfa;font-family:monospace;font-size:.8rem;transition:color .2s;}
.url-link:hover{color:#38bdf8;}
.date-col{color:#6b6880;font-size:.78rem;}
.freq-col{color:#6b6880;font-size:.78rem;text-transform:capitalize;}
.pri-high{color:#4ade80;font-size:.78rem;font-weight:600;}
.pri-med{color:#38bdf8;font-size:.78rem;font-weight:600;}
.pri-low{color:#6b6880;font-size:.78rem;font-weight:600;}

/* ALL URLS TABLE */
.all-table{width:100%;border-collapse:collapse;background:#0e0e14;border:1px solid rgba(255,255,255,.06);border-radius:16px;overflow:hidden;}
.all-table thead tr{background:#16161f;border-bottom:1px solid rgba(255,255,255,.06);}
.all-table thead th{padding:.8rem 1.2rem;text-align:left;font-size:.65rem;text-transform:uppercase;letter-spacing:.1em;color:#6b6880;font-weight:600;}
.all-table tbody tr{border-bottom:1px solid rgba(255,255,255,.04);transition:background .15s;}
.all-table tbody tr:last-child{border-bottom:none;}
.all-table tbody tr:hover{background:#16161f;}
.all-table td{padding:.85rem 1.2rem;vertical-align:middle;}

/* XML LINK BOX */
.xml-box{background:#0e0e14;border:1px solid rgba(255,255,255,.06);border-radius:14px;padding:1.2rem 1.5rem;display:flex;align-items:center;justify-content:space-between;flex-wrap:wrap;gap:.75rem;margin-top:2rem;}
.xml-label{font-size:.82rem;color:#6b6880;}
.xml-link{font-size:.82rem;color:#a78bfa;font-family:monospace;transition:color .2s;}
.xml-link:hover{color:#38bdf8;}

/* FOOTER */
footer{border-top:1px solid rgba(255,255,255,.06);padding:1.8rem 3rem;display:flex;justify-content:space-between;align-items:center;flex-wrap:wrap;gap:.75rem;}
.flogo{font-family:'Bebas Neue',sans-serif;font-size:1rem;background:linear-gradient(90deg,#a78bfa,#38bdf8);-webkit-background-clip:text;-webkit-text-fill-color:transparent;background-clip:text;}
.flinks{display:flex;gap:1.2rem;}
.flinks a{color:#6b6880;font-size:.76rem;transition:color .2s;}
.flinks a:hover{color:#f0eeff;}
.fcopy{font-size:.7rem;color:#6b6880;}

@media(max-width:640px){
  nav{padding:0 1.2rem;}
  .hero{padding:2.5rem 1.2rem;}
  .stats{flex-direction:column;gap:1rem;padding:1rem 1.5rem;}
  .container{padding:2rem 1rem;}
  footer{padding:1.5rem 1.2rem;flex-direction:column;align-items:flex-start;}
  thead th:nth-child(3),td:nth-child(3),thead th:nth-child(4),td:nth-child(4){display:none;}
}
</style>
</head>
<body>

<!-- NAV -->
<nav>
  <div class="logo">
    <svg class="logo-hex" viewBox="0 0 38 38" fill="none" xmlns="http://www.w3.org/2000/svg">
      <defs><linearGradient id="g" x1="0" y1="0" x2="38" y2="38" gradientUnits="userSpaceOnUse"><stop offset="0%" stop-color="#a78bfa"/><stop offset="50%" stop-color="#38bdf8"/><stop offset="100%" stop-color="#fb923c"/></linearGradient></defs>
      <path d="M19 3L33 11V27L19 35L5 27V11L19 3Z" stroke="url(#g)" stroke-width="1.5" fill="none"/>
      <path d="M19 9L27 13.5V22.5L19 27L11 22.5V13.5L19 9Z" fill="url(#g)" opacity="0.3"/>
      <circle cx="19" cy="19" r="3.5" fill="url(#g)"/>
    </svg>
    <div class="logo-txt">FREETOOLHUB<span class="logo-dot">.</span></div>
  </div>
  <a href="https://freetoolhub.info/" class="nav-back">&#8592; Back to Home</a>
</nav>

<!-- HERO -->
<div class="hero">
  <div class="hero-tag"><span class="tag-dot"></span>XML Sitemap</div>
  <h1>SITEMAP</h1>
  <p class="hero-sub">All <xsl:value-of select="count(sm:urlset/sm:url)"/> pages on FreeToolHub.info &#8212; 16 free tools, no signup required</p>
  <div class="stats">
    <div class="stat"><span class="stat-n"><xsl:value-of select="count(sm:urlset/sm:url)"/></span><span class="stat-l">Total pages</span></div>
    <div class="stat"><span class="stat-n">16</span><span class="stat-l">Free tools</span></div>
    <div class="stat"><span class="stat-n">0</span><span class="stat-l">Signups needed</span></div>
  </div>
  <br/>
  <a href="https://freetoolhub.info/" class="hero-btn">&#8592; Browse All Tools</a>
</div>

<!-- MAIN CONTENT -->
<div class="container">

  <div class="sec-head">
    <div class="sec-label">All pages</div>
    <div class="sec-line"></div>
    <div class="sec-count"><xsl:value-of select="count(sm:urlset/sm:url)"/> URLs</div>
  </div>

  <table class="all-table">
    <thead>
      <tr>
        <th>#</th>
        <th>Page URL</th>
        <th>Last updated</th>
        <th>Frequency</th>
        <th>Priority</th>
      </tr>
    </thead>
    <tbody>
      <xsl:for-each select="sm:urlset/sm:url">
        <tr>
          <td class="date-col"><xsl:value-of select="position()"/></td>
          <td>
            <a class="url-link" href="{sm:loc}">
              <xsl:value-of select="sm:loc"/>
            </a>
          </td>
          <td class="date-col"><xsl:value-of select="sm:lastmod"/></td>
          <td class="freq-col"><xsl:value-of select="sm:changefreq"/></td>
          <td>
            <xsl:choose>
              <xsl:when test="sm:priority = '1.0'">
                <span class="pri-high"><xsl:value-of select="sm:priority"/> &#9679; High</span>
              </xsl:when>
              <xsl:when test="sm:priority = '0.9'">
                <span class="pri-med"><xsl:value-of select="sm:priority"/> &#9679; Medium</span>
              </xsl:when>
              <xsl:otherwise>
                <span class="pri-low"><xsl:value-of select="sm:priority"/> &#9679; Low</span>
              </xsl:otherwise>
            </xsl:choose>
          </td>
        </tr>
      </xsl:for-each>
    </tbody>
  </table>

  <!-- XML link box -->
  <div class="xml-box">
    <div class="xml-label">&#x1F5FA;&#xFE0F; Raw XML data used by Google Search Console</div>
    <a class="xml-link" href="https://freetoolhub.info/sitemap.xml">freetoolhub.info/sitemap.xml &#8599;</a>
  </div>

</div>

<!-- FOOTER -->
<footer>
  <div class="flogo">FREETOOLHUB</div>
  <div class="flinks">
    <a href="https://freetoolhub.info/">Home</a>
    <a href="https://freetoolhub.info/about.html">About</a>
    <a href="https://freetoolhub.info/privacy.html">Privacy</a>
  </div>
  <div class="fcopy">&#169; 2026 FreeToolHub.info</div>
</footer>

</body>
</html>
</xsl:template>
</xsl:stylesheet>