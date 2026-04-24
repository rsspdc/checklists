From the Record of a specific analysis *[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

version: alpha


## 📦 Distribution

*How can people install or access the software emerging from your project?*

- [ ] Project is distributed in a suitable fashion
	- [ ] 🥉Bronze *(easy)*: Code and data (barring privacy related access restrictions) are in public repositories.
	- [ ] 🥈Silver *(intermediate)*: Detailed instructions on how to fetch, install and configure the tools and data needed re-run your analysis, and how to re-run the analysis in the described environment.
	- [ ] 🥇Gold *(intermediate)*: Project is in a reproducible interactive environment such as those offered by [binder](https://binderhub.readthedocs.io/en/latest/index.html) or [renku](https://renkulab.io/).
	- [ ] 🏆Platinum *(hard)*: Gold plus - Your project is built and served as a website using continuous integration and deployment tools such that your analysis is run on your data in a reproducible compute environment and computational results like graphs and statistics are programatically inserted into your output. (It is best to have some form of caching when doing this).
 
<details>
<ul>
	<li>
	What it means to distribute one off analysis code is somewhat different from distributing a package or pipeline as this goal is different.
	The aims are to share how you did what you did in a research output, and to provide a record of the Provence of your results.
	</li>
	<li>
	Distribution in this context is closer to documentation and literate programming tools like [Jupyter](https://jupyter.org/) Notebooks, [jupyter book](https://jupyterbook.org/en/stable/intro.html) and [Rmarkdown](https://rmarkdown.rstudio.com/)/[Quarto](https://quarto.org/) lend themselves to this task very well.
	You can serve a static website based on the notebooks which perform, explain and interpret your analysis using these tools.
	You can even demonstrate their computational reproduciblity by building these outputs using continuous integration and deployment tools (CI/CD) tools available on gitforges like gitlab and github.
	</li>
	<li>
	Tools like [binder](https://binderhub.readthedocs.io/en/latest/index.html), [renku](https://renkulab.io/) allow you to share your analysis environment so that people can pick up your analysis where you left off in an interactive environment so that they can tweak your code and explore your data as they wish.
	</li>
	<li>
	An excellent way to share the record of a specific analysis is to use all these tools in conjunction.
		<ul>
		<li>
		Perform your analysis in reproducible compute environment specified using a tool like [renku](https://renkulab.io), [binder](https://binderhub.readthedocs.io/en/latest/index.html) or a [Nix flake](https://wiki.nixos.org/wiki/Flakes) which will allow this environment to readily be shared with others.
	Write your manuscript using the literate programming tools and server this as static web page as a way of pre-printing your manuscript.
	Revise it with your collaborators using the issues and pull/merge request features of a git forge.
	If you make repo citable by adding the appropriate metadata and using [zenodo](https://zenodo.org/) to mint a DOI it is as citable as if it were deposited in a pre-print server, but probably looks a lot better.
	Then your entire project history is available in your git history.
	Your computational reproducibility is evidenced by the ability to build the output in the computational environment that you specified to serve your web page with the manuscript.
		</li>
		</ul>
	</li>
	<li>
	Where you have very large and computationally intensive upstream analyses, as is common for example in biological projects involving sequencing or image data, it can be easiest to take the outputs from this pipeline as the inputs for your downstream and less computationally intensive analysis.
	Document how to run the upstream reproducible pipeline in your down steam analysis.
	This way anyone, with access to appropriate compute resources, could download your data and run the same upstream analysis to get to the same staring point for the lighter downstream analysis and all the information needed to do this is documented in the downstream analysis.
	</li>
</ul>
</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/rsspdc/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0</a></p>
