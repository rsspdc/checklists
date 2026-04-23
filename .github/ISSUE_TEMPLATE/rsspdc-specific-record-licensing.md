---
name: Record of a specific analysis
about:
title:[RSSPDC] <issue>
---

# Record of a specific analysis [raw markdown](https://gitlab.com/rsspdc/checklists/-/raw/master/checklists/rsspdc-specific-record.md) [lite markdown](https://gitlab.com/rsspdc/checklists/-/raw/master/checklists/rsspdc-specific-record-lite.md)

version: alpha

*[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

Considerations for publishing code which runs a specific analysis that underpins some result to be published in the academic literature.
The emphasis here is on making the work narrowly reproducible i.e. the analysis of the same data can produce the same result when it is re-run.
This is a starting point for making results robust (different analysis, same data) and replicable (same analysis, different data), and ultimately generalisable (different analysis, different data).
The other emphasis is on making the work 'verifiable', exposing the complete step-wise detail of the reasoning underpinning the analysis so that it can be scrutinised and understood.


## © Licensing

*On what terms can others use your code, and how can you communicate this?*

- [ ] Project is suitably licensed
	- [ ]   🥉Bronze *(easy)*: There is a LICENSE file in the repository for a license which meets one of the [OSI](https://opensource.org/osd), [Debian](https://www.debian.org/intro/free), or [FSF/GNU](https://www.gnu.org/philosophy/free-sw.en.html) definitions of free/libre or open source software. Or for any contents that are not software a [Creative Commons](https://creativecommons.org/) or similar license which meets the [free cultural works](https://freedomdefined.org/Licenses) definition.
	- [ ]   🥈Silver *(easy)*: If any prose/documentation or images are licenced differently from the code in the project this is indicated and those licences provided. If licences have an attribution requirement there is easy to copy text/links for appropriate attribution.
	- [ ]   🥇Gold *(intermediate)*: Uses [Software Package Data Exchange (SPDX)](https://spdx.org/licenses/) license identifiers for every file/suitable unit of code.
With a tool such as [REUSE.software](https://reuse.software/) to automate and standardise the process.
	- [ ]   🏆Platinum *(intermediate)*: all previous tiers plus any images have licensing information embedded in their metadata.
 
<details>
<ul>
	<li>
	Once you have selected you license include a plain text copy of it in the root of your repository in a file named LICENSE.
	Plain text versions of popular open license are widely available.
	Files with this name are often identified by software forges and a link to them created on the repository home page when they are present.
	You may need to include your name and the date in your copy of the license file if indicated.
	</li>
	<li>
	The content of a repo of this form is generally a mixture of code, images (often graphs), data, and prose.
	In this context it may be preferable to have licenses for code, prose, and other assets such as graphs. e.g. all code under a GPLv3 license, and all images, prose and datasets, under a CC BY-SA license.
	</li>
	<li>
	**All software needs a license if you want to permit others to reuse it.**
	It is important to give some thought to the type of license which best suits your project, it is a choice which can have significant long term implications.
	Checkout [the turing way chapter on licensing for an introduction to the subject](https://the-turing-way.netlify.app/reproducible-research/licensing.html).
	If you have no time some pretty safe choices are: For a permissive license, the Apache 2.0.
	This would allow the re-use of your work in closed commercial code.
	For a 'copyleft' license, the GPLv3 (AGPL for server-side apps).
	This requires that anyone distributing software containing your code or derivatives of it share the source code with the people they distributed it to.
	</li>
	<li>
	If you are including external code in your package then you should check that their licenses are compatible and you are legally allowed to distribute your code together in this way.
	Checkout this [resource on license compatibility](https://the-turing-way.netlify.app/reproducible-research/licensing/licensing-compatibility.html).
	</li>
	<li>
	If you have a big project with a lot on differently licensed content or need a standard way to provide license information for binary assets you might want to checkout the [REUSE.software](https://reuse.software/) tool, you can also embed licensing information directly into image metadata to help ensure that it remains associated with the image when/if it is reused, [IPTC](https://www.iptc.org/std/photometadata/specification/IPTC-PhotoMetadata#copyright-notice) provides an extended image metadata schema with a copyright notice field which could house an [SPDX](https://spdx.dev/) licence code.
	It also allow for the direct embedding of image alt text.
	</li>
</ul>

</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/HDBI/data-management/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"></a></p>
