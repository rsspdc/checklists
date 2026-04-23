---
name: Pipelines & Workflows
about:
title:[RSSPDC] <issue>
---

# Pipelines & Workflows [raw markdown](https://gitlab.com/rsspdc/checklists/-/raw/master/checklists/rsspdc-pipelines.md) [lite markdown](https://gitlab.com/rsspdc/checklists/-/raw/master/checklists/rsspdc-pipelines-lite.md)

version: alpha

*[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

Considerations for publishing a data analysis workflow or pipeline which may be used in research or as a researcher.
"Applying the FAIR Principles to computational workflows" [10.1038/s41597-025-04451-9](https://doi.org/10.1038/s41597-025-04451-9) offers a good working definition of a workflow and the application of [FAIR](https://www.go-fair.org/) principles to computational workflows.


## 📦 Distribution

*How can people install or access the software emerging from your project?*

- [ ] Pipeline is distributed in appropriate format(s)
	- [ ]   🥉Bronze *(easy)*: Pipeline is in a software forge (such as [GitHub](https://github.com/) or [Codeberg](https://codeberg.org/)) in a standard package format so that it can be run with the pipeline manager's standard tooling.
	- [ ]   🥈Silver *(easy)*: The software environment(s) needed by each step in your pipeline are defined so that they can be installed automatically using a suitable package / environment management tool.
	- [ ]   🥇Gold *(intermediate)*: Pipeline is in a repository of workflows and pipelines such as [workflowhub](https://workflowhub.eu) (can be pre-release in nf-core).
	- [ ]   🏆Platinum *(intermediate)*: Pipeline is in a curated package repository where it has undergone review and testing such as [nf-core](https://nf-co.re/).
 
<details>
<ul>
<li>
	Including your pipeline in a collection of pipelines increases it's visibility, can help to attract contributors, and in the case of a curated collection with good standards for how they package their pipelines provide users with confidence to they will be able to use your pipline on their compute infrastructure.
</li>
<li>
Good places to distribute workflows include:
	<ul>
	<li>
	[workflowhub](https://workflowhub.eu) most generic accepts workflows in a number different tools
	</li>
	<li>
	For Nextflow pipelines in the nf-core format [nf-core](https://nf-co.re/) (MIT license required for pipeline code)
	</li>
	<li>
	For Snakemake pipelines which conform to some relatively simple requirements [snakemake workflow catalog](https://snakemake.github.io/snakemake-workflow-catalog/)
	</li>
	<li>
	Pipelines in the R {[targets](https://docs.ropensci.org/targets/)} tool [targetopia](https://wlandau.github.io/targetopia/)
	</li>
	</ul>
</li>
</ul>

</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/HDBI/data-management/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"></a></p>
