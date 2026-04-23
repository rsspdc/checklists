From the Pipelines & Workflowschecklist

version: alpha

*[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]


## © Licensing

*On what terms can others use your code, and how can you communicate this?*

- [ ] Project is suitably licensed
	- [ ] 🥉Bronze *(easy)*: There is a LICENSE file in the repository for a license which meets one of the [OSI](https://opensource.org/osd), [Debian](https://www.debian.org/intro/free), or [FSF/GNU](https://www.gnu.org/philosophy/free-sw.en.html) definitions of free/libre or open source software. Or for any contents that are not software a [Creative Commons](https://creativecommons.org/) license.
	- [ ] 🥈Silver *(easy)*: If any prose/documentation or images is licensed differently from the code in the project this is indicated and those licences provided. If licences have an attribution requirement there is are easy to copy text/links for appropriate attribution.
	- [ ] 🥇Gold *(intermediate)*: Uses [REUSE.software](https://reuse.software/) to provide license information for every file.
	- [ ] 🏆Platinum *(intermediate)*: all previous tiers plus any images have licensing information embedded in their metadata.
 
<details>
<ul>
	<li>
	If you are including external code in your pipeline then you should check that their licenses are compatible and you are legally allowed to distribute your code together in this way.
	Checkout this [resource on license compatibility](https://the-turing-way.netlify.app/reproducible-research/licensing/licensing-compatibility.html).
	Generally in a pipeline your are distributing code 'alongside' other packages in a way that strong copyleft licences like the GPL intend to permit see the: [GPL FAQ](https://web.archive.org/web/20240601022910/https://www.gnu.org/licenses/gpl-faq.html#GPLInProprietarySystem)
	A pipeline that is not modifying such a library but merely using it 'as is', therefore is not considered a derivative work by these licences themselves, thus using them in this fashion is common practice, but the precise defintion of what consitutes a derived work for the purposes copyright law is generally decided on a case by case basis.
	Pipelines are sometimes run as part of the backends of web-based services so the use of an AGPL license over a GPL license may be advisable if your intent is to maximise the applicability of copy-left terms across possible use cases for your pipeline.
	</li>
	<li>
	**All software needs a license if you want to permit others to reuse it.**
	It is important to give some thought to the type of license which best suits your project, it is a choice which can have significant long term implications.
	Checkout [the turing way chapter on licensing for an introduction to the subject](https://the-turing-way.netlify.app/reproducible-research/licensing.html).
	If you have no time some pretty safe choices are: For a permissive license, the Apache 2.0.
	This would allow the re-use of your work in closed commercial code.
	For a 'copyleft' license, the GPLv3 (AGPL for server-side apps).
	This requires that anyone distributing software containing your code or derivatives of it share the source code with the people they distributed it too.
	</li>
</ul>

</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/HDBI/data-management/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"></a></p>
