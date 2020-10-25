<a href="https://doc.jahiacommunity.org">
    <img src="https://doc.jahiacommunity.org/files/live/sites/doc/files/logos/jc-resource-center-200.png" alt="Jahia Community logo" title="Jahia Community Documentation" align="right" height="60" />
</a>

# html5
"Jahia Community Module with standard HTML5 components"

Proposition to have separate HTML5 (drag&droppable) Jahia components (section, article, ...) to use in Jahia Studio (and maybe Edit mode).

<h2>Organization:</h2>


<h3>definitions:</h3>
<ul>
<li>a generic definitions (html5mix:htmlAttrCustom) to allow to add easily new attributes (aria, role,...)</li>
<li>a wrapper definition for each HTML5 element that must be instantiable (drag&drop)</li>
</ul>


<h3>views:</h3>
<ul>
<li>a generic view (htmlAttrCustom.withElement.jsp) that manage the rendering globally</li>nds
</ul>

<h2>GOAL:</h2>
<p>The main purpose is to allow designer to identify visually/directly these widely used element and to be able to make a direct drag&drop into their templates.<BR>
Other benefits: the name of the component in the Studio correspond to the HTML element dragged (ex: 'section', instead of 'layout&grid' for example) which allow direct verification for designer.</p>
