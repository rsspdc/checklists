From the Web-based service*[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

version: alpha


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
	If you want to apply a copyleft license to a piece of software that is to be accessed over a network and not necessarily run on end-users own computers then you would want to adopt a license such as the AGPL to ensure that your end users still have the right to run, study, modify and redistribute the code of the server-side part of the tool.
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
	<li>
	If you are including external code in your service then you should check that their licenses are compatible and you are legally allowed to distribute your code together in this way.
	Checkout this [resource on license compatibility](https://the-turing-way.netlify.app/reproducible-research/licensing/licensing-compatibility.html).
	</li>
	<li>
	[REUSE.software](https://reuse.software/) is a tool that can help you keep track licenses in complex multi-license projects.
	It identifies licences for code in individual files with [SPDX](https://spdx.dev/) licence codes and has an approach to doing so for binary assets.
	</li>
</ul>
</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/rsspdc/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0</a></p>
