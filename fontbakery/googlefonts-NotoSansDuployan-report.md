## FontBakery report

fontbakery version: 0.12.10





## Check results



<details><summary>[14] NotoSansDuployan-Bold.ttf</summary>
<div>
<details>
    <summary>🔥 <b>FAIL</b> Check for presence of an ARTICLE.en_us.html file <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.description.html#"></a></summary>
    <div>







* 🔥 **FAIL** <p>This is a Noto font but it lacks an ARTICLE.en_us.html file.</p>
 [code: missing-article]



* 🔥 **FAIL** <p>This is a Noto font but it lacks a DESCRIPTION.en_us.html file.</p>
 [code: missing-description]



</div>
</details>

<details>
    <summary>🔥 <b>FAIL</b> Ensure dotted circle glyph is present and can attach marks. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/shaping.html#"></a></summary>
    <div>







* 🔥 **FAIL** <p>The following glyphs could not be attached to the dotted circle glyph:</p>
<pre><code>- tildecomb

- uni030B

- uni0326

- uni0327

- uni0328
</code></pre>
 [code: unattached-dotted-circle-marks]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Font has correct post table version? <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/opentype.post.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>Post table format 3 use has niche use case problems.Please review the check rationale for additional details.</p>
 [code: post-table-version]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check mark characters are in GDEF mark glyph class. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/opentype.gdef.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>The following mark characters could be in the GDEF mark glyph class:
u1BC9D (U+1BC9D)</p>
 [code: mark-chars]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check accent of Lcaron, dcaron, lcaron, tcaron <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/universal.html#"></a></summary>
    <div>









* ⚠️ **WARN** <p>dcaron is decomposed and therefore could not be checked. Please check manually.</p>
 [code: decomposed-outline]



* ⚠️ **WARN** <p>Lcaron is decomposed and therefore could not be checked. Please check manually.</p>
 [code: decomposed-outline]



* ⚠️ **WARN** <p>lcaron is decomposed and therefore could not be checked. Please check manually.</p>
 [code: decomposed-outline]



* ⚠️ **WARN** <p>tcaron is decomposed and therefore could not be checked. Please check manually.</p>
 [code: decomposed-outline]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check if each glyph has the recommended amount of contours. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/universal.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.</p>
<p>The following glyphs do not have the recommended number of contours:</p>
<pre><code>- Glyph name: aogonek	Contours detected: 3	Expected: 2

- Glyph name: uogonek	Contours detected: 2	Expected: 1

- Glyph name: aogonek	Contours detected: 3	Expected: 2

- Glyph name: uogonek	Contours detected: 2	Expected: 1
</code></pre>
 [code: contour-count]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check math signs have the same width. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/universal.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>The most common width is 1162 among a set of 2 math glyphs.
The following math glyphs have a different width, though:</p>
<p>Width = 686:
plus</p>
<p>Width = 770:
equal</p>
<p>Width = 624:
multiply</p>
<p>Width = 572:
divide</p>
<p>Width = 581:
minus</p>
 [code: width-outliers]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Checking with ots-sanitize. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/universal.sanitize.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>ots-sanitize passed this file, however warnings were printed:</p>
<p>WARNING: Layout: tags aren't arranged alphabetically.
WARNING: Layout: tags aren't arranged alphabetically.</p>
 [code: ots-sanitize-warn]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check font contains no unreachable glyphs <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/universal.glyphset.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>The following glyphs could not be reached by codepoint or substitution rules:</p>
<pre><code>- glyph11561

- glyph11657
</code></pre>
 [code: unreachable-glyphs]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Validate size, and resolution of article images, and ensure article page has minimum length and includes visual assets. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.article.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>Family metadata at fonts/NotoSansDuployan/googlefonts/ttf does not have an article.</p>
 [code: lacks-article]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check for codepoints not covered by METADATA subsets. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.subsets.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>The following codepoints supported by the font are not covered by
any subsets defined in the font's metadata file, and will never
be served. You can solve this by either manually adding additional
subset declarations to METADATA.pb, or by editing the glyphset
definitions.</p>
<ul>
<li>U+02C7 CARON: try adding one of: yi, tifinagh, canadian-aboriginal</li>
<li>U+02D8 BREVE: try adding one of: yi, canadian-aboriginal</li>
<li>U+02D9 DOT ABOVE: try adding one of: yi, canadian-aboriginal</li>
<li>U+02DB OGONEK: try adding one of: yi, canadian-aboriginal</li>
<li>U+02DD DOUBLE ACUTE ACCENT: not included in any glyphset definition</li>
<li>U+0302 COMBINING CIRCUMFLEX ACCENT: try adding one of: coptic, math, tifinagh, cherokee</li>
<li>U+0306 COMBINING BREVE: try adding one of: old-permic, tifinagh</li>
<li>U+0307 COMBINING DOT ABOVE: try adding one of: old-permic, tifinagh, coptic, syriac, math, malayalam, tai-le, canadian-aboriginal</li>
<li>U+030A COMBINING RING ABOVE: try adding syriac</li>
<li>U+030B COMBINING DOUBLE ACUTE ACCENT: try adding one of: osage, cherokee
22 more.</li>
</ul>
<p>Use -F or --full-lists to disable shortening of long lists.</p>
<p>Or you can add the above codepoints to one of the subsets supported by the font: <code>duployan</code>, <code>latin</code>, <code>latin-ext</code></p>
 [code: unreachable-subsetting]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Do outlines contain any jaggy segments? <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/outline.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>The following glyphs have jaggy segments:</p>
<pre><code>* W (U+0057): B&lt;&lt;266.0,196.0&gt;-&lt;272.0,161.0&gt;-&lt;275.0,137.0&gt;&gt;/B&lt;&lt;275.0,137.0&gt;-&lt;278.0,162.0&gt;-&lt;284.0,196.5&gt;&gt; = 13.967789761532726

* W (U+0057): B&lt;&lt;489.0,505.5&gt;-&lt;485.0,529.0&gt;-&lt;483.0,542.0&gt;&gt;/B&lt;&lt;483.0,542.0&gt;-&lt;482.0,529.0&gt;-&lt;477.5,505.5&gt;&gt; = 13.144867617550734

* W (U+0057): B&lt;&lt;683.0,196.0&gt;-&lt;689.0,161.0&gt;-&lt;692.0,137.0&gt;&gt;/B&lt;&lt;692.0,137.0&gt;-&lt;695.0,162.0&gt;-&lt;701.0,196.5&gt;&gt; = 13.967789761532726

* Wacute (U+1E82): B&lt;&lt;266.0,196.0&gt;-&lt;272.0,161.0&gt;-&lt;275.0,137.0&gt;&gt;/B&lt;&lt;275.0,137.0&gt;-&lt;278.0,162.0&gt;-&lt;284.0,196.5&gt;&gt; = 13.967789761532726

* Wacute (U+1E82): B&lt;&lt;489.0,505.5&gt;-&lt;485.0,529.0&gt;-&lt;483.0,542.0&gt;&gt;/B&lt;&lt;483.0,542.0&gt;-&lt;482.0,529.0&gt;-&lt;477.5,505.5&gt;&gt; = 13.144867617550734

* Wacute (U+1E82): B&lt;&lt;683.0,196.0&gt;-&lt;689.0,161.0&gt;-&lt;692.0,137.0&gt;&gt;/B&lt;&lt;692.0,137.0&gt;-&lt;695.0,162.0&gt;-&lt;701.0,196.5&gt;&gt; = 13.967789761532726

* Wcircumflex (U+0174): B&lt;&lt;266.0,196.0&gt;-&lt;272.0,161.0&gt;-&lt;275.0,137.0&gt;&gt;/B&lt;&lt;275.0,137.0&gt;-&lt;278.0,162.0&gt;-&lt;284.0,196.5&gt;&gt; = 13.967789761532726

* Wcircumflex (U+0174): B&lt;&lt;489.0,505.5&gt;-&lt;485.0,529.0&gt;-&lt;483.0,542.0&gt;&gt;/B&lt;&lt;483.0,542.0&gt;-&lt;482.0,529.0&gt;-&lt;477.5,505.5&gt;&gt; = 13.144867617550734

* Wcircumflex (U+0174): B&lt;&lt;683.0,196.0&gt;-&lt;689.0,161.0&gt;-&lt;692.0,137.0&gt;&gt;/B&lt;&lt;692.0,137.0&gt;-&lt;695.0,162.0&gt;-&lt;701.0,196.5&gt;&gt; = 13.967789761532726

* Wdieresis (U+1E84): B&lt;&lt;266.0,196.0&gt;-&lt;272.0,161.0&gt;-&lt;275.0,137.0&gt;&gt;/B&lt;&lt;275.0,137.0&gt;-&lt;278.0,162.0&gt;-&lt;284.0,196.5&gt;&gt; = 13.967789761532726

* 164 more.
</code></pre>
<p>Use -F or --full-lists to disable shortening of long lists.</p>
 [code: found-jaggy-segments]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Ensure files are not too large. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>Font file is 1.8Mb; ideally it should be less than 1.0Mb</p>
 [code: large-font]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Ensure fonts have ScriptLangTags declared on the 'meta' table. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.meta.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>This font file does not have a 'meta' table.</p>
 [code: lacks-meta-table]



</div>
</details>
</div>
</details>

<details><summary>[15] NotoSansDuployan-Regular.ttf</summary>
<div>
<details>
    <summary>🔥 <b>FAIL</b> Check for presence of an ARTICLE.en_us.html file <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.description.html#"></a></summary>
    <div>







* 🔥 **FAIL** <p>This is a Noto font but it lacks an ARTICLE.en_us.html file.</p>
 [code: missing-article]



* 🔥 **FAIL** <p>This is a Noto font but it lacks a DESCRIPTION.en_us.html file.</p>
 [code: missing-description]



</div>
</details>

<details>
    <summary>🔥 <b>FAIL</b> Ensure dotted circle glyph is present and can attach marks. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/shaping.html#"></a></summary>
    <div>







* 🔥 **FAIL** <p>The following glyphs could not be attached to the dotted circle glyph:</p>
<pre><code>- tildecomb

- uni030B

- uni0326

- uni0327

- uni0328
</code></pre>
 [code: unattached-dotted-circle-marks]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Font has correct post table version? <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/opentype.post.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>Post table format 3 use has niche use case problems.Please review the check rationale for additional details.</p>
 [code: post-table-version]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check mark characters are in GDEF mark glyph class. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/opentype.gdef.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>The following mark characters could be in the GDEF mark glyph class:
u1BC9D (U+1BC9D)</p>
 [code: mark-chars]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check accent of Lcaron, dcaron, lcaron, tcaron <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/universal.html#"></a></summary>
    <div>









* ⚠️ **WARN** <p>dcaron is decomposed and therefore could not be checked. Please check manually.</p>
 [code: decomposed-outline]



* ⚠️ **WARN** <p>Lcaron is decomposed and therefore could not be checked. Please check manually.</p>
 [code: decomposed-outline]



* ⚠️ **WARN** <p>lcaron is decomposed and therefore could not be checked. Please check manually.</p>
 [code: decomposed-outline]



* ⚠️ **WARN** <p>tcaron is decomposed and therefore could not be checked. Please check manually.</p>
 [code: decomposed-outline]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check if each glyph has the recommended amount of contours. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/universal.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.</p>
<p>The following glyphs do not have the recommended number of contours:</p>
<pre><code>- Glyph name: aogonek	Contours detected: 3	Expected: 2

- Glyph name: uogonek	Contours detected: 2	Expected: 1

- Glyph name: aogonek	Contours detected: 3	Expected: 2

- Glyph name: uogonek	Contours detected: 2	Expected: 1
</code></pre>
 [code: contour-count]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check math signs have the same width. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/universal.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>The most common width is 1131 among a set of 2 math glyphs.
The following math glyphs have a different width, though:</p>
<p>Width = 654:
plus</p>
<p>Width = 740:
equal</p>
<p>Width = 592:
multiply</p>
<p>Width = 572:
minus, divide</p>
 [code: width-outliers]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Checking with ots-sanitize. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/universal.sanitize.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>ots-sanitize passed this file, however warnings were printed:</p>
<p>WARNING: Layout: tags aren't arranged alphabetically.
WARNING: Layout: tags aren't arranged alphabetically.</p>
 [code: ots-sanitize-warn]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check font contains no unreachable glyphs <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/universal.glyphset.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>The following glyphs could not be reached by codepoint or substitution rules:</p>
<pre><code>- glyph11529

- glyph11625
</code></pre>
 [code: unreachable-glyphs]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Validate size, and resolution of article images, and ensure article page has minimum length and includes visual assets. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.article.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>Family metadata at fonts/NotoSansDuployan/googlefonts/ttf does not have an article.</p>
 [code: lacks-article]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check for codepoints not covered by METADATA subsets. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.subsets.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>The following codepoints supported by the font are not covered by
any subsets defined in the font's metadata file, and will never
be served. You can solve this by either manually adding additional
subset declarations to METADATA.pb, or by editing the glyphset
definitions.</p>
<ul>
<li>U+02C7 CARON: try adding one of: yi, tifinagh, canadian-aboriginal</li>
<li>U+02D8 BREVE: try adding one of: yi, canadian-aboriginal</li>
<li>U+02D9 DOT ABOVE: try adding one of: yi, canadian-aboriginal</li>
<li>U+02DB OGONEK: try adding one of: yi, canadian-aboriginal</li>
<li>U+02DD DOUBLE ACUTE ACCENT: not included in any glyphset definition</li>
<li>U+0302 COMBINING CIRCUMFLEX ACCENT: try adding one of: coptic, math, tifinagh, cherokee</li>
<li>U+0306 COMBINING BREVE: try adding one of: old-permic, tifinagh</li>
<li>U+0307 COMBINING DOT ABOVE: try adding one of: old-permic, tifinagh, coptic, syriac, math, malayalam, tai-le, canadian-aboriginal</li>
<li>U+030A COMBINING RING ABOVE: try adding syriac</li>
<li>U+030B COMBINING DOUBLE ACUTE ACCENT: try adding one of: osage, cherokee
22 more.</li>
</ul>
<p>Use -F or --full-lists to disable shortening of long lists.</p>
<p>Or you can add the above codepoints to one of the subsets supported by the font: <code>duployan</code>, <code>latin</code>, <code>latin-ext</code></p>
 [code: unreachable-subsetting]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Do any segments have colinear vectors? <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/outline.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>The following glyphs have colinear vectors:</p>
<pre><code>* dollar (U+0024): L&lt;&lt;307.0,399.0&gt;--&lt;331.0,396.0&gt;&gt; -&gt; L&lt;&lt;331.0,396.0&gt;--&lt;387.0,391.0&gt;&gt;

* dollar (U+0024): L&lt;&lt;381.0,320.0&gt;--&lt;325.0,325.0&gt;&gt; -&gt; L&lt;&lt;325.0,325.0&gt;--&lt;307.0,328.0&gt;&gt;
</code></pre>
 [code: found-colinear-vectors]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Do outlines contain any jaggy segments? <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/outline.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>The following glyphs have jaggy segments:</p>
<pre><code>* glyph01763: B&lt;&lt;352.5,115.5&gt;-&lt;320.0,85.0&gt;-&lt;272.0,77.0&gt;&gt;/L&lt;&lt;272.0,77.0&gt;--&lt;272.0,77.0&gt;&gt; = 9.462322208025613

* glyph02256: B&lt;&lt;288.5,120.0&gt;-&lt;260.0,101.0&gt;-&lt;225.0,100.0&gt;&gt;/L&lt;&lt;225.0,100.0&gt;--&lt;225.0,100.0&gt;&gt; = 1.6365770416166923

* glyph06469: B&lt;&lt;287.5,17.0&gt;-&lt;207.0,-9.0&gt;-&lt;151.0,4.0&gt;&gt;/L&lt;&lt;151.0,4.0&gt;--&lt;151.0,4.0&gt;&gt; = 13.069317896282163

* glyph06469: L&lt;&lt;151.0,4.0&gt;--&lt;151.0,4.0&gt;&gt;/B&lt;&lt;151.0,4.0&gt;-&lt;109.0,14.0&gt;-&lt;95.5,37.5&gt;&gt; = 13.392497753751098

* glyph07676: L&lt;&lt;135.0,88.0&gt;--&lt;135.0,88.0&gt;&gt;/B&lt;&lt;135.0,88.0&gt;-&lt;106.0,93.0&gt;-&lt;95.0,113.5&gt;&gt; = 9.782407031807285

* glyph07676: L&lt;&lt;627.0,1.0&gt;--&lt;135.0,88.0&gt;&gt;/L&lt;&lt;135.0,88.0&gt;--&lt;135.0,88.0&gt;&gt; = 10.027908767424819

* glyph09167: L&lt;&lt;115.0,30.0&gt;--&lt;115.0,30.0&gt;&gt;/B&lt;&lt;115.0,30.0&gt;-&lt;99.0,32.0&gt;-&lt;91.5,43.5&gt;&gt; = 7.125016348901757

* glyph09167: L&lt;&lt;338.0,0.0&gt;--&lt;115.0,30.0&gt;&gt;/L&lt;&lt;115.0,30.0&gt;--&lt;115.0,30.0&gt;&gt; = 7.6619511549722334

* glyph09168: L&lt;&lt;115.0,30.0&gt;--&lt;115.0,30.0&gt;&gt;/B&lt;&lt;115.0,30.0&gt;-&lt;99.0,32.0&gt;-&lt;91.5,43.5&gt;&gt; = 7.125016348901757

* glyph09168: L&lt;&lt;145.0,253.0&gt;--&lt;145.0,253.0&gt;&gt;/B&lt;&lt;145.0,253.0&gt;-&lt;129.0,255.0&gt;-&lt;121.5,266.5&gt;&gt; = 7.125016348901757

* 26 more.
</code></pre>
<p>Use -F or --full-lists to disable shortening of long lists.</p>
 [code: found-jaggy-segments]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Ensure files are not too large. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>Font file is 1.8Mb; ideally it should be less than 1.0Mb</p>
 [code: large-font]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Ensure fonts have ScriptLangTags declared on the 'meta' table. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.meta.html#"></a></summary>
    <div>







* ⚠️ **WARN** <p>This font file does not have a 'meta' table.</p>
 [code: lacks-meta-table]



</div>
</details>
</div>
</details>




### Summary

| 💥 ERROR | ☠ FATAL | 🔥 FAIL | ⚠️ WARN | ⏩ SKIP | ℹ️ INFO | ✅ PASS | 🔎 DEBUG | 
| ---|---|---|---|---|---|---|---|
| 0 | 0 | 4 | 25 | 241 | 13 | 201 | 0 | 
| 0% | 0% | 1% | 5% | 50% | 3% | 42% | 0% | 



**Note:** The following loglevels were omitted in this report:


* SKIP
* INFO
* PASS
* DEBUG
