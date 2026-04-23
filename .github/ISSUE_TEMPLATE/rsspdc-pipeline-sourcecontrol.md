---
name: Pipelines & Workflows
about:
title:[RSSPDC] <issue>
---

From the Pipelines & Workflows*[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

version: alpha


## 📒 Source control

*How can you keep track of the history of your project and collaborate on it?*

- [ ] Uses [git](https://git-scm.com/) (or other source control tool such as [fossil](https://fossil-scm.org/home/doc/trunk/www/index.wiki))
	- [ ] 🥉Bronze *(easy)*: Using version control but has a shallow project history, just placed in git for distribution
	- [ ] 🥈Silver *(intermediate)*: Longer project history, commit messages of mixed quality, some large messy changes
	- [ ] 🥇Gold *(hard)*: Silver plus - Well written commit messages, nice granular commits making discrete self-contained changes. Tags, releases, or branches at major project milestones, maybe some contributions from other users
	- [ ] 🏆Platinum *(MAXIMUM OVERKILL)*: Gold plus - Some from: [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/); Clean history with a consistent rebasing/merging strategy; Signed commits from all contributors; Contributions go through a consistent workflow like, issues, then a pull request from a branch.

 
<details>
<ul>
	<li>
	If the workflow tool you are using has a convenient tool for initiating a template for a workflow then you may want to get your project's git repository started using that tool.
	[Nextflow](https://www.nextflow.io/) for example has the [nf-core template](https://nf-co.re/docs/contributing/guidelines/requirements/use_the_template) which makes the creation of an nf-core style pipeline project easy.
	[Snakemake](https://snakemake.readthedocs.io/en/stable/index.html) similarly has a [standard project structure](https://snakemake.readthedocs.io/en/stable/snakefiles/deployment.html) and [template](https://github.com/snakemake-workflows/snakemake-workflow-template).
	</li>
</ul>

</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/rsspdc/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0</a></p>
