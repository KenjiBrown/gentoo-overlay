<!DOCTYPE html>
<html lang='en'>
<head>
<title>staruml-bin-2.8.0.ebuild « staruml-bin « dev-util - repo/sync/gentoo.git - Sync-friendly git mirror of repo/gentoo with caches and metadata</title>
<meta name='generator' content='cgit v1.2.3'/>
<meta name='robots' content='index,follow'/>
<link rel='stylesheet' type='text/css' href='/cgit.css'/>
<link rel='shortcut icon' href='//www.gentoo.org/favicon.ico'/>
<link rel='alternate' title='Atom feed' href='https://gitweb.gentoo.org/repo/sync/gentoo.git/atom/dev-util/staruml-bin/staruml-bin-2.8.0.ebuild?h=master' type='application/atom+xml'/>
<link rel='vcs-git' href='https://anongit.gentoo.org/git/repo/sync/gentoo.git' title='repo/sync/gentoo.git Git repository'/>
<link rel='vcs-git' href='git+ssh://git@git.gentoo.org/repo/sync/gentoo.git' title='repo/sync/gentoo.git Git repository'/>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="theme-color" content="#54487a">
<meta name="description" content="Browse the Gentoo Git repositories">
<link href="https://assets.gentoo.org/tyrian/v2/tyrian.min.css" rel="stylesheet" media="screen">
</head>
<body>
<header>
  <div class="site-title">
    <div class="container">
      <div class="row justify-content-between">
        <div class="logo">
          <a href="/" title="Back to the homepage" class="site-logo">
            <img src="https://assets.gentoo.org/tyrian/v2/site-logo.png" alt="Gentoo" srcset="https://assets.gentoo.org/tyrian/v2/site-logo.svg">
          </a>
          <span class="site-label">GitWeb</span>
        </div>
        <div class="site-title-buttons">
          <div class="btn-group btn-group-sm">
            <a href="https://get.gentoo.org/" role="button" class="btn get-gentoo"><span class="fa fa-fw fa-download"></span>
              <strong>Get Gentoo!</strong></a>
            <div class="btn-group btn-group-sm">
              <a class="btn gentoo-org-sites dropdown-toggle" data-toggle="dropdown" data-target="#" href="#">
                <span class="fa fa-fw fa-map-o"></span> <span class="d-none d-sm-inline">gentoo.org sites</span>
                <span class="caret"></span>
              </a>
              <div class="dropdown-menu dropdown-menu-right">
                <a class="dropdown-item" href="https://www.gentoo.org/" title="Main Gentoo website"><span class="fa fa-home fa-fw"></span>
                  gentoo.org</a>
                <a class="dropdown-item" href="https://wiki.gentoo.org/" title="Find and contribute documentation"><span class="fa fa-file-text-o fa-fw"></span>
                  Wiki</a>
                <a class="dropdown-item" href="https://bugs.gentoo.org/" title="Report issues and find common issues"><span class="fa fa-bug fa-fw"></span>
                  Bugs</a>
                <a class="dropdown-item" href="https://forums.gentoo.org/" title="Discuss with the community"><span class="fa fa-comments-o fa-fw"></span>
                  Forums</a>
                <a class="dropdown-item" href="https://packages.gentoo.org/" title="Find software for your Gentoo"><span class="fa fa-hdd-o fa-fw"></span>
                  Packages</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="https://planet.gentoo.org/" title="Find out what's going on in the developer community"><span class="fa fa-rss fa-fw"></span>
                  Planet</a>
                <a class="dropdown-item" href="https://archives.gentoo.org/" title="Read up on past discussions"><span class="fa fa-archive fa-fw"></span>
                  Archives</a>
                <a class="dropdown-item" href="https://sources.gentoo.org/" title="Browse our source code"><span class="fa fa-code fa-fw"></span>
                  Sources</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="https://infra-status.gentoo.org/" title="Get updates on the services provided by Gentoo"><span class="fa fa-server fa-fw"></span>
                  Infra Status</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <nav class="tyrian-navbar navbar navbar-dark navbar-expand-lg bg-primary" role="navigation">
    <div class="container">
      <div class="navbar-header">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-main-collapse" aria-controls="navbar-main-collapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      </div>
      <div class="collapse navbar-collapse navbar-main-collapse" id="navbar-main-collapse">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item"><a class="nav-link" href="/">Home</a></li>
          <li class="nav-item"><a class="nav-link" href="/repo/gentoo.git">Gentoo Repository</a></li>
          <li class="nav-item"><a class="nav-link" href="/repo/">Repositories</a></li>
          <li class="nav-item"><a class="nav-link" href="/proj/">Projects</a></li>
          <li class="nav-item"><a class="nav-link" href="/dev/">Developer Overlays</a></li>
          <li class="nav-item"><a class="nav-link" href="/user/">User Overlays</a></li>
          <li class="nav-item"><a class="nav-link" href="/data/">Data</a></li>
          <li class="nav-item"><a class="nav-link" href="/sites/">Websites</a></li>
        </ul>
      </div>
    </div>
  </nav>
</header>

<div class="container pb-5">
  <div class="row">
  <div class="col-md-12">
<div id='cgit'><table id='header'>
<tr>
<td class='logo' rowspan='2'><a href='/'><img src='/cgit.png' alt='cgit logo'/></a></td>
<td class='main'><a href='/'>index</a> : <a title='repo/sync/gentoo.git' href='/repo/sync/gentoo.git/'>repo/sync/gentoo.git</a></td><td class='form'><form method='get'>
<input type='hidden' name='id' value='b3127967bd21afb9068011688a951c91fda5f54f'/><select name='h' onchange='this.form.submit();'>
<option value='master' selected='selected'>master</option>
<option value='stable'>stable</option>
</select> <input type='submit' value='switch'/></form></td></tr>
<tr><td class='sub'>Sync-friendly git mirror of repo/gentoo with caches and metadata</td><td class='sub right'>Michał Górny &lt;mgorny@gentoo.org&gt;</td></tr></table>
<table class='tabs'><tr><td>
<a href='/repo/sync/gentoo.git/'>summary</a><a href='/repo/sync/gentoo.git/refs/?id=b3127967bd21afb9068011688a951c91fda5f54f'>refs</a><a href='/repo/sync/gentoo.git/log/dev-util/staruml-bin/staruml-bin-2.8.0.ebuild'>log</a><a class='active' href='/repo/sync/gentoo.git/tree/dev-util/staruml-bin/staruml-bin-2.8.0.ebuild?id=b3127967bd21afb9068011688a951c91fda5f54f'>tree</a><a href='/repo/sync/gentoo.git/commit/dev-util/staruml-bin/staruml-bin-2.8.0.ebuild?id=b3127967bd21afb9068011688a951c91fda5f54f'>commit</a><a href='/repo/sync/gentoo.git/diff/dev-util/staruml-bin/staruml-bin-2.8.0.ebuild?id=b3127967bd21afb9068011688a951c91fda5f54f'>diff</a></td><td class='form'><form class='right' method='get' action='/repo/sync/gentoo.git/log/dev-util/staruml-bin/staruml-bin-2.8.0.ebuild'>
<input type='hidden' name='id' value='b3127967bd21afb9068011688a951c91fda5f54f'/><select name='qt'>
<option value='grep'>log msg</option>
<option value='author'>author</option>
<option value='committer'>committer</option>
<option value='range'>range</option>
</select>
<input class='txt' type='search' size='10' name='q' value=''/>
<input type='submit' value='search'/>
</form>
</td></tr></table>
<div class='path'>path: <a href='/repo/sync/gentoo.git/tree/?id=b3127967bd21afb9068011688a951c91fda5f54f'>root</a>/<a href='/repo/sync/gentoo.git/tree/dev-util?id=b3127967bd21afb9068011688a951c91fda5f54f'>dev-util</a>/<a href='/repo/sync/gentoo.git/tree/dev-util/staruml-bin?id=b3127967bd21afb9068011688a951c91fda5f54f'>staruml-bin</a>/<a href='/repo/sync/gentoo.git/tree/dev-util/staruml-bin/staruml-bin-2.8.0.ebuild?id=b3127967bd21afb9068011688a951c91fda5f54f'>staruml-bin-2.8.0.ebuild</a></div><div class='content'>blob: cca6bdf1d5540e26bbbf859bed763303a0d90505 (<a href='/repo/sync/gentoo.git/plain/dev-util/staruml-bin/staruml-bin-2.8.0.ebuild?id=b3127967bd21afb9068011688a951c91fda5f54f'>plain</a>)
<table summary='blob content' class='blob'>
<tr><td class='linenumbers'><pre><a id='n1' href='#n1'>1</a>
<a id='n2' href='#n2'>2</a>
<a id='n3' href='#n3'>3</a>
<a id='n4' href='#n4'>4</a>
<a id='n5' href='#n5'>5</a>
<a id='n6' href='#n6'>6</a>
<a id='n7' href='#n7'>7</a>
<a id='n8' href='#n8'>8</a>
<a id='n9' href='#n9'>9</a>
<a id='n10' href='#n10'>10</a>
<a id='n11' href='#n11'>11</a>
<a id='n12' href='#n12'>12</a>
<a id='n13' href='#n13'>13</a>
<a id='n14' href='#n14'>14</a>
<a id='n15' href='#n15'>15</a>
<a id='n16' href='#n16'>16</a>
<a id='n17' href='#n17'>17</a>
<a id='n18' href='#n18'>18</a>
<a id='n19' href='#n19'>19</a>
<a id='n20' href='#n20'>20</a>
<a id='n21' href='#n21'>21</a>
<a id='n22' href='#n22'>22</a>
<a id='n23' href='#n23'>23</a>
<a id='n24' href='#n24'>24</a>
<a id='n25' href='#n25'>25</a>
<a id='n26' href='#n26'>26</a>
<a id='n27' href='#n27'>27</a>
<a id='n28' href='#n28'>28</a>
<a id='n29' href='#n29'>29</a>
<a id='n30' href='#n30'>30</a>
<a id='n31' href='#n31'>31</a>
<a id='n32' href='#n32'>32</a>
<a id='n33' href='#n33'>33</a>
<a id='n34' href='#n34'>34</a>
<a id='n35' href='#n35'>35</a>
<a id='n36' href='#n36'>36</a>
<a id='n37' href='#n37'>37</a>
<a id='n38' href='#n38'>38</a>
<a id='n39' href='#n39'>39</a>
<a id='n40' href='#n40'>40</a>
<a id='n41' href='#n41'>41</a>
<a id='n42' href='#n42'>42</a>
<a id='n43' href='#n43'>43</a>
<a id='n44' href='#n44'>44</a>
<a id='n45' href='#n45'>45</a>
<a id='n46' href='#n46'>46</a>
<a id='n47' href='#n47'>47</a>
<a id='n48' href='#n48'>48</a>
<a id='n49' href='#n49'>49</a>
<a id='n50' href='#n50'>50</a>
<a id='n51' href='#n51'>51</a>
<a id='n52' href='#n52'>52</a>
<a id='n53' href='#n53'>53</a>
<a id='n54' href='#n54'>54</a>
<a id='n55' href='#n55'>55</a>
<a id='n56' href='#n56'>56</a>
<a id='n57' href='#n57'>57</a>
<a id='n58' href='#n58'>58</a>
<a id='n59' href='#n59'>59</a>
<a id='n60' href='#n60'>60</a>
<a id='n61' href='#n61'>61</a>
</pre></td>
<td class='lines'><pre><code><style>pre { line-height: 125%; margin: 0; }
td.linenos pre { color: #000000; background-color: #f0f0f0; padding-left: 5px; padding-right: 5px; }
span.linenos { color: #000000; background-color: #f0f0f0; padding-left: 5px; padding-right: 5px; }
td.linenos pre.special { color: #000000; background-color: #ffffc0; padding-left: 5px; padding-right: 5px; }
span.linenos.special { color: #000000; background-color: #ffffc0; padding-left: 5px; padding-right: 5px; }
.highlight .hll { background-color: #ffffcc }
.highlight .c { color: #888888 } /* Comment */
.highlight .err { color: #a61717; background-color: #e3d2d2 } /* Error */
.highlight .k { color: #008800; font-weight: bold } /* Keyword */
.highlight .ch { color: #888888 } /* Comment.Hashbang */
.highlight .cm { color: #888888 } /* Comment.Multiline */
.highlight .cp { color: #cc0000; font-weight: bold } /* Comment.Preproc */
.highlight .cpf { color: #888888 } /* Comment.PreprocFile */
.highlight .c1 { color: #888888 } /* Comment.Single */
.highlight .cs { color: #cc0000; font-weight: bold; background-color: #fff0f0 } /* Comment.Special */
.highlight .gd { color: #000000; background-color: #ffdddd } /* Generic.Deleted */
.highlight .ge { font-style: italic } /* Generic.Emph */
.highlight .gr { color: #aa0000 } /* Generic.Error */
.highlight .gh { color: #333333 } /* Generic.Heading */
.highlight .gi { color: #000000; background-color: #ddffdd } /* Generic.Inserted */
.highlight .go { color: #888888 } /* Generic.Output */
.highlight .gp { color: #555555 } /* Generic.Prompt */
.highlight .gs { font-weight: bold } /* Generic.Strong */
.highlight .gu { color: #666666 } /* Generic.Subheading */
.highlight .gt { color: #aa0000 } /* Generic.Traceback */
.highlight .kc { color: #008800; font-weight: bold } /* Keyword.Constant */
.highlight .kd { color: #008800; font-weight: bold } /* Keyword.Declaration */
.highlight .kn { color: #008800; font-weight: bold } /* Keyword.Namespace */
.highlight .kp { color: #008800 } /* Keyword.Pseudo */
.highlight .kr { color: #008800; font-weight: bold } /* Keyword.Reserved */
.highlight .kt { color: #888888; font-weight: bold } /* Keyword.Type */
.highlight .m { color: #0000DD; font-weight: bold } /* Literal.Number */
.highlight .s { color: #dd2200; background-color: #fff0f0 } /* Literal.String */
.highlight .na { color: #336699 } /* Name.Attribute */
.highlight .nb { color: #003388 } /* Name.Builtin */
.highlight .nc { color: #bb0066; font-weight: bold } /* Name.Class */
.highlight .no { color: #003366; font-weight: bold } /* Name.Constant */
.highlight .nd { color: #555555 } /* Name.Decorator */
.highlight .ne { color: #bb0066; font-weight: bold } /* Name.Exception */
.highlight .nf { color: #0066bb; font-weight: bold } /* Name.Function */
.highlight .nl { color: #336699; font-style: italic } /* Name.Label */
.highlight .nn { color: #bb0066; font-weight: bold } /* Name.Namespace */
.highlight .py { color: #336699; font-weight: bold } /* Name.Property */
.highlight .nt { color: #bb0066; font-weight: bold } /* Name.Tag */
.highlight .nv { color: #336699 } /* Name.Variable */
.highlight .ow { color: #008800 } /* Operator.Word */
.highlight .w { color: #bbbbbb } /* Text.Whitespace */
.highlight .mb { color: #0000DD; font-weight: bold } /* Literal.Number.Bin */
.highlight .mf { color: #0000DD; font-weight: bold } /* Literal.Number.Float */
.highlight .mh { color: #0000DD; font-weight: bold } /* Literal.Number.Hex */
.highlight .mi { color: #0000DD; font-weight: bold } /* Literal.Number.Integer */
.highlight .mo { color: #0000DD; font-weight: bold } /* Literal.Number.Oct */
.highlight .sa { color: #dd2200; background-color: #fff0f0 } /* Literal.String.Affix */
.highlight .sb { color: #dd2200; background-color: #fff0f0 } /* Literal.String.Backtick */
.highlight .sc { color: #dd2200; background-color: #fff0f0 } /* Literal.String.Char */
.highlight .dl { color: #dd2200; background-color: #fff0f0 } /* Literal.String.Delimiter */
.highlight .sd { color: #dd2200; background-color: #fff0f0 } /* Literal.String.Doc */
.highlight .s2 { color: #dd2200; background-color: #fff0f0 } /* Literal.String.Double */
.highlight .se { color: #0044dd; background-color: #fff0f0 } /* Literal.String.Escape */
.highlight .sh { color: #dd2200; background-color: #fff0f0 } /* Literal.String.Heredoc */
.highlight .si { color: #3333bb; background-color: #fff0f0 } /* Literal.String.Interpol */
.highlight .sx { color: #22bb22; background-color: #f0fff0 } /* Literal.String.Other */
.highlight .sr { color: #008800; background-color: #fff0ff } /* Literal.String.Regex */
.highlight .s1 { color: #dd2200; background-color: #fff0f0 } /* Literal.String.Single */
.highlight .ss { color: #aa6600; background-color: #fff0f0 } /* Literal.String.Symbol */
.highlight .bp { color: #003388 } /* Name.Builtin.Pseudo */
.highlight .fm { color: #0066bb; font-weight: bold } /* Name.Function.Magic */
.highlight .vc { color: #336699 } /* Name.Variable.Class */
.highlight .vg { color: #dd7700 } /* Name.Variable.Global */
.highlight .vi { color: #3333bb } /* Name.Variable.Instance */
.highlight .vm { color: #336699 } /* Name.Variable.Magic */
.highlight .il { color: #0000DD; font-weight: bold } /* Literal.Number.Integer.Long */</style><div class="highlight"><pre><span></span><span class="c1"># Copyright 1999-2016 Gentoo Foundation</span>
<span class="c1"># Distributed under the terms of the GNU General Public License v2</span>
<span class="c1"># $Id$</span>

<span class="nv">EAPI</span><span class="o">=</span><span class="m">6</span>

inherit unpacker

<span class="nv">DESCRIPTION</span><span class="o">=</span><span class="s2">&quot;A sophisticated software modeler&quot;</span>
<span class="nv">HOMEPAGE</span><span class="o">=</span><span class="s2">&quot;http://staruml.io/&quot;</span>
<span class="nv">SRC_URI</span><span class="o">=</span><span class="s2">&quot;</span>
<span class="s2">	amd64? ( http://staruml.io/download/release/v</span><span class="si">${</span><span class="nv">PV</span><span class="si">}</span><span class="s2">/StarUML-v</span><span class="si">${</span><span class="nv">PV</span><span class="si">}</span><span class="s2">-64-bit.deb )</span>
<span class="s2">	x86? ( http://staruml.io/download/release/v</span><span class="si">${</span><span class="nv">PV</span><span class="si">}</span><span class="s2">/StarUML-v</span><span class="si">${</span><span class="nv">PV</span><span class="si">}</span><span class="s2">-32-bit.deb )</span>
<span class="s2">&quot;</span>

<span class="nv">LICENSE</span><span class="o">=</span><span class="s2">&quot;StarUML-EULA no-source-code&quot;</span>
<span class="nv">SLOT</span><span class="o">=</span><span class="s2">&quot;0&quot;</span>
<span class="nv">KEYWORDS</span><span class="o">=</span><span class="s2">&quot;~amd64 ~x86&quot;</span>
<span class="nv">IUSE</span><span class="o">=</span><span class="s2">&quot;&quot;</span>
<span class="nv">RESTRICT</span><span class="o">=</span><span class="s2">&quot;splitdebug&quot;</span>

<span class="nv">RDEPEND</span><span class="o">=</span><span class="s2">&quot;</span>
<span class="s2">	dev-libs/atk</span>
<span class="s2">	dev-libs/expat</span>
<span class="s2">	dev-libs/glib:2</span>
<span class="s2">	dev-libs/libgcrypt:11</span>
<span class="s2">	dev-libs/nss</span>
<span class="s2">	dev-libs/nspr</span>
<span class="s2">	gnome-base/gconf</span>
<span class="s2">	media-libs/fontconfig</span>
<span class="s2">	media-libs/freetype</span>
<span class="s2">	media-libs/alsa-lib</span>
<span class="s2">	net-print/cups</span>
<span class="s2">	x11-libs/cairo</span>
<span class="s2">	x11-libs/gdk-pixbuf:2</span>
<span class="s2">	x11-libs/gtk+:2</span>
<span class="s2">	x11-libs/libXcomposite</span>
<span class="s2">	x11-libs/libXdamage</span>
<span class="s2">	x11-libs/libXext</span>
<span class="s2">	x11-libs/libXfixes</span>
<span class="s2">	x11-libs/libXi</span>
<span class="s2">	x11-libs/libXrender</span>
<span class="s2">	x11-libs/libX11</span>
<span class="s2">	x11-libs/pango</span>
<span class="s2">	virtual/libudev</span>
<span class="s2">&quot;</span>

<span class="nv">S</span><span class="o">=</span><span class="s2">&quot;</span><span class="si">${</span><span class="nv">WORKDIR</span><span class="si">}</span><span class="s2">&quot;</span>
<span class="nv">QA_PREBUILT</span><span class="o">=</span><span class="s2">&quot;opt/staruml/Brackets-node opt/staruml/StarUML&quot;</span>

src_unpack<span class="o">()</span> <span class="o">{</span>
	unpack_deb <span class="si">${</span><span class="nv">A</span><span class="si">}</span>
<span class="o">}</span>

<span class="nv">MY_PN</span><span class="o">=</span><span class="si">${</span><span class="nv">PN</span><span class="p">/-bin/</span><span class="si">}</span>
src_install<span class="o">()</span> <span class="o">{</span>
	mv opt <span class="s2">&quot;</span><span class="si">${</span><span class="nv">ED</span><span class="si">}</span><span class="s2">&quot;</span> <span class="o">||</span> die
	dosym /usr/lib/libudev.so /opt/<span class="si">${</span><span class="nv">MY_PN</span><span class="si">}</span>/libudev.so.0
	dosym /opt/<span class="si">${</span><span class="nv">MY_PN</span><span class="si">}</span>/<span class="si">${</span><span class="nv">MY_PN</span><span class="si">}</span> /usr/bin/<span class="si">${</span><span class="nv">MY_PN</span><span class="si">}</span>
	newdoc usr/share/doc/<span class="si">${</span><span class="nv">MY_PN</span><span class="si">}</span>/copyright LICENSE
<span class="o">}</span>
</pre></div>
</code></pre></td></tr></table>
</div> <!-- class=content -->
          </div>
        </div>
      </div>
    </div>

    <footer>
      <div class="container">
        <div class="row">
          <div class="col-12 offset-md-2 col-md-7">
            &nbsp;
          </div>
          <div class="col-12 col-md-3">
            <h3 class="footerhead">Questions or comments?</h3>
            Please feel free to <a href="https://www.gentoo.org/inside-gentoo/contact/">contact us</a>.
          </div>
        </div>
        <div class="row">
          <div class="col-2 col-sm-3 col-md-2">
            <ul class="footerlinks three-icons">
              <li><a href="https://twitter.com/gentoo" title="@Gentoo on Twitter"><span class="fa fa-twitter fa-fw"></span></a></li>
              <li><a href="https://www.facebook.com/gentoo.org" title="Gentoo on Facebook"><span class="fa fa-facebook fa-fw"></span></a></li>
              <li></li>
            </ul>
          </div>
          <div class="col-10 col-sm-9 col-md-10">
            <strong>&copy; 2001&ndash;2020 Gentoo Foundation, Inc.</strong><br>
            <small>
              Gentoo is a trademark of the Gentoo Foundation, Inc.
              The contents of this document, unless otherwise expressly stated, are licensed under the
              <a href="https://creativecommons.org/licenses/by-sa/4.0/" rel="license">CC-BY-SA-4.0</a> license.
              The <a href="https://www.gentoo.org/inside-gentoo/foundation/name-logo-guidelines.html">Gentoo Name and Logo Usage Guidelines</a> apply.
            </small>
          </div>
        </div>
      </div>
    </footer>

    <script src="https://assets.gentoo.org/tyrian/v2/jquery-3.3.slim.js"></script>
    <script src="https://assets.gentoo.org/tyrian/v2/popper.min.js"></script>
    <script src="https://assets.gentoo.org/tyrian/v2/bootstrap.min.js"></script>
</div> <!-- id=cgit -->
</body>
</html>
