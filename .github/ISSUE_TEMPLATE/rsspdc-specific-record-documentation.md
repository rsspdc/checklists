---
name: Record of a specific analysis
about:
title:[RSSPDC] <issue>
---

From the Record of a specific analysis*[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

version: alpha


## 📖 Documentation

*How do people know what your project is, how to use it and how to contribute?*

- [ ] Project has suitable documentation
	- [ ] 🥉Bronze *(easy)*: Project has README file that either contains directly or links to resources which answer these questions:
		- [ ] Provides a description of the project structure so that the user knows which directories to find things in, possibly including a visual representation of the structure
		- [ ] Contains instructions with sufficient detail for someone else to re-run the analysis
		- [ ] What is the name or title of the project for which this code is record?
		- [ ] Why did you peform this analysis?
		- [ ] What problem does it address and how?
		- [ ] How do I set up an environment to re-run it? (with example)
		- [ ] What inputs do I need?
		- [ ] What outputs should I expect?
		- [ ] How do I cite the project?
		- [ ] Who contributed to the project and what did they contribute?
		- [ ] Who should I contact, about what, and how?
		- [ ] What should I expect / Not expect if I contact you?
		- [ ] How is the project Licensed?
		- [ ] Table of Contents (if long enough to benefit from one)
		- [ ] Bibliography (if reference is made to external resources)
	- [ ] 🥈Silver *(intermediate)*: If any prose/documentation or images are licenced differently from the code in the project this is indicated and those licences provided. If licences have an attribution requirement there is easy to copy text/links for appropriate attribution.
	- [ ] 🥇Gold *(intermediate)*: Uses [Software Package Data Exchange (SPDX)](https://spdx.org/licenses/) license identifiers for every file/suitable unit of code.
With a tool such as [REUSE.software](https://reuse.software/) to automate and standardise the process.
	- [ ] 🏆Platinum *(MAXIMUM OVERKILL)*: all previous tiers plus any images have licensing information embedded in their metadata.

In some cases for small and simple projects a README file is sufficient documentation.
This may genuinely be all that you need, or inadequate to the task depending on the project.
 
<details>
<ul>
	<li>The rationale is key for code pertaining to a specific analysis so that the intent and reasoning of the author is clear to the reader</li>
	<li>
	literate programming notebook tools like Jupyter and Rmarkdown/Quarto are a great tool for this sort of code output as they permit you to contextualise the choices made during an analysis, visualise, and interpret your results all in the same place.
	They can also provide robust provenance of results.
	It can be made clear that this data, was analysed by this code, in this compute environment, and produced these outputs as the output is built by executing the notebook.
	</li>
	<li>
	Analyses may be sufficiently complex that you don't want all of them in a literate programming form especially if you are using literate programming tools to author a conventional manuscript.
	You can treat the full details of your analysis as a supplementary method and use a combination of more conventional software documentation tools and literate programming to provide a full detail version of your analysis then reference these objects in your manuscript.
	If working in R the {[targets](https://books.ropensci.org/targets/)} tool can be a nice way of managing a workflow like this as you can cache results like graphs that might be complex and expensive to generate then reference them succinctly in your manuscript document.
	</li>
	<li>
	A good test of reproducibility of your analysis is to use CI/CD tools to build your outputs from source code and never commit the outputs themselves to the repo, you can then serve these build artefacts as a static website of your manuscript and any other documentation from your project.
	You can also bundle them with the rest of the code when creating a snapshot of the project to archive on a platform like [zenodo](https://zenodo.org/).
	Obviously it is best to avoid re-running lengthy computationally intensive analyses every time you push to a repository.
	You can avoid this by caching results and/or only triggering rebuilds when a commit is tagged a certain way, for example a new version number.
	This way it may still be possible to run your more computationally intensive code on your build system, if your build system has adequate computational resources.
	</li>
	<li>
	If you release multiple versions of a particular analysis it can be a good idea to include a CHANGELOG file in your project documenting things which have changed since the previous version.
	</li>
</ul>

</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/rsspdc/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0</a></p>
