From the Record of a specific analysis*[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

version: alpha


## 💽 Environment Management / Portability

*How can people get specific versions of your software running on their systems?*

- [ ] Computational environment description provided
	- [ ] 🥉Bronze *(easy)*: List of package versions, e.g. output of `sessionInfo()` in R, not in a machine readable format
	- [ ] 🥈Silver *(intermediate)*: Structured language specific environment decription, language environment can be re-created e.g. `renv.lock` in a mostly automated fashion
	- [ ] 🥇Gold *(hard)*: Structured full environment description, automated ability to recreate the complete environment including system dependencies
	- [ ] 🏆Platinum *(MAXIMUM OVERKILL)*: Your description allows the automated bootstrap of the entire* depencency tree of your environment from source with bitwise binary reproducibility (currently almost impossible to achieve, basically only approachable in Guix)
 
<details>
<ul>
	<li>
	The record of a specific analysis is the case where providing a complete specification of the computational environment in which code was run is perhaps the most important.
	Doing this and providing the information necessary to initiate a re-run of the analysis, in that environment, is the computational equivalent of providing protocol level methodological detail of how a bench experiment was performed.
	In addition the provision of the source of the data on which the analysis was performed and a means of both retrieving a copy of it and demonstrating that it is the same as the original input, such as hashes of the data files, is analogous to being able to get access to the same reagents and types of biological samples in an experiment.
	</li>
	<li>
	You might not need this level of detail to install a working version of a piece of software for general use.
	But for the record of a specific analysis it is ideal if we can re-run everything exactly with all the same versions if we are ever looking back to identify a potential source of error.
	</li>
	<li>
	The most approachable tools to specify and reproducibly share an interactive compute environment in which an analysis was performed are probably [binder](https://binderhub.readthedocs.io/en/latest/index.html), and [renku](https://renkulab.io/).
	</li>
	<li>
	Use of a 'lock file' (different tools may have different names for these) which specifies which software and in which versions to install in order to recreate your compute environment is ideal for this application.
	Various package and environment managers support this such as [conda](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html), [renv](https://rstudio.github.io/renv/articles/renv.html), [python virtual environments](https://docs.python.org/4/library/venv.html), [poetry](https://python-poetry.org/), [nix flakes](https://zero-to-nix.com/concepts/flakes), [guix manifests](https://guix.gnu.org/en/manual/devel/en/html_node/Writing-Manifests.html).
	</li>
	<li>
	The scope of the environment managed by these tools can vary, renv for example only manage R packages, conda manages essentially any software but not necessarily all system dependencies, nix and guix can, and do, specify entire operating systems.
	</li>
	<li>
	It is common to use the more narrowly scoped package and environment management tools in conjunction with container or virtual machine build descriptions such as a Dockerfile.
	You start with an image of an operating system, add instructions to install any system dependencies and then use the environment manager to install non-system depencencies for your project into the image.
	This is incomplete as it leaves some things outside of the managed environment, it does not capture how to reconstruct the base image, and system dependencies will not necessarily be versioned.
	This is however likely the most familiar feeling experience, as it is essentially the same as what you'd do when setting up your working environment on a new computer.
	This approach covers the vast majority of cases and is a good practice to adopt now.
	Nix flakes ([vm](https://nix.dev/tutorials/nixos/nixos-configuration-on-vm.html) [container](https://nix.dev/tutorials/nixos/building-and-running-docker-images.html)) and Guix manifests ([vm](https://guix.gnu.org/manual/en/html_node/Running-Guix-in-a-VM.html) [container](https://guix.gnu.org/manual/en/html_node/Invoking-guix-pack.html)) can just generate such images directly with all system and project dependencies explicitly specified in lock files, but have a steep learning curve for their new, unfamiliar, way of working.
	They also may not yet have all the specialist software that you need packaged in their repositories.
	They can be a lot of work if they don't already have everything that you need at present but are worth watching as, once refined, can solve many of the points of friction with current approaches.
	</li>
</ul>

</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/rsspdc/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0</a></p>
