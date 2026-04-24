---
name: Record of a specific analysis
about:
title:[RSSPDC] <issue>
---

From the Record of a specific analysis *[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

version: alpha


## 📒 Source control

*How can you keep track of the history of your project and collaborate on it?*

- [ ] Uses git (or other source control tool)
	- [ ] 🥉Bronze *(easy)*: Using version control but has a shallow project history, just placed in git for distribution
	- [ ] 🥈Silver *(intermediate)*: Longer project history, commit messages of mixed quality, some large messy changes
	- [ ] 🥇Gold *(hard)*: Silver plus - Well written commit messages, nice granular commits making discrete self-contained changes. Tags, releases, or branches at major project milestones, maybe some contributions from other users
	- [ ] 🏆Platinum *(MAXIMUM OVERKILL)*: Gold plus - Some from: [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/); Clean history with a consistent rebasing/merging strategy; Signed commits from all contributors; Contributions go through a consistent workflow like, issues, then a pull request from a branch.
 
## © Licensing

*On what terms can others use your code, and how can you communicate this?*

- [ ] Project is suitably licensed
	- [ ] 🥉Bronze *(easy)*: There is a LICENSE file in the repository for a license which meets one of the [OSI](https://opensource.org/osd), [Debian](https://www.debian.org/intro/free), or [FSF/GNU](https://www.gnu.org/philosophy/free-sw.en.html) definitions of free/libre or open source software. Or for any contents that are not software a [Creative Commons](https://creativecommons.org/) or similar license which meets the [free cultural works](https://freedomdefined.org/Licenses) definition.
	- [ ] 🥈Silver *(easy)*: If any prose/documentation or images are licenced differently from the code in the project this is indicated and those licences provided. If licences have an attribution requirement there is easy to copy text/links for appropriate attribution.
	- [ ] 🥇Gold *(intermediate)*: Uses [Software Package Data Exchange (SPDX)](https://spdx.org/licenses/) license identifiers for every file/suitable unit of code.
With a tool such as [REUSE.software](https://reuse.software/) to automate and standardise the process.
	- [ ] 🏆Platinum *(intermediate)*: all previous tiers plus any images have licensing information embedded in their metadata.
 
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
 
## 🔗 Making Citable

*How should people make reference to your project and credit your work?*

- [ ] Record is Citable
	- [ ] 🥉Bronze *(easy)*: A [CITATION.cff](https://citation-file-format.github.io/) file exists in the code repository to provide citational metadata about your project
	- [ ] 🥈Silver *(easy)*: bronze plus the project has persistent resolvable identifier such as a DOI or SWHID, with which it can be referenced, which has been minted for the project using a tool like [zenodo](https://zenodo.org/) or [Software Heritage's Archive](https://www.softwareheritage.org/) to store an archival copy of the project.
	- [ ] 🥇Gold *(intermediate)*: silver plus:
		- [ ] Contributions are credited using a suitable contributor roles ontology or taxonomy (CROT) such as [CrediT](https://credit.niso.org/), [ScoRo](http://www.sparontologies.net/ontologies/scoro), [CRO](https://github.com/data2health/contributor-role-ontology), or [TaDiRAH](https://tadirah.info/).
		- [ ] All contributors are identified by their [ORCID](https://orcid.org/) or other suitable persistent identifier
	- [ ] 🏆Platinum *(mixed)*: gold plus any two or more from:
		- [ ] *(easy)*: All research institutions are identified by their [ROR](https://ror.org/) ID
		- [ ] *(intermediate)*: Versioned persistent identifier with automation to update snapshots on zenodo or similar tool when a new version is created.
		- [ ] *(intermediate)*: Annotating work cited in this work with the [Citation Typing Ontology (CiTO)](http://purl.org/spar/cito)
		- [ ] *(hard)*: Your environment is defined with Nix or Guix - this might not seem like it contributes to making software more citable see details below for why this is the case.

In some cases for small and simple projects a README file is sufficient documentation.
This may genuinely be all that you need, or inadequate to the task depending on the project.
 
## ✅ Testing

*How can you test your project so you can be confident it does what you think it does?*

- [ ] Project has undergone suitable testing
	- [ ] 🥉Bronze *(easy)*: Includes a minimal test data set necessary to demonstrate the basic functionality of the analysis
	- [ ] 🥈Silver *(easy)*: Includes test datasets which cover a range of outcomes of the analysis
	- [ ] 🥇Gold *(intermediate)*: You are using unit tests and an automated testing framework to check the correctness of core steps of your analysis
	- [ ] 🏆Platinum *(hard)*: Have your analysis code written and tested on preliminary or simulated data in advance of recieving your principle dataset with a copy of your code from this time archived and referenced in a pre-registration or registered report.
 
## 🤖 Automation

*What tasks can you automate to increase consistency and reduce manual work?*

- [ ] Suitable automations are in place
	- [ ] 🥉Bronze *(easy)*:  1 from this list of processes are automated
 		 - use of an environment management tool
 		 - use of a literate programming / computational notebook
 		 - use of a pipeline manger or make-like tool
 		 - use of a linter / formatter
 		 - use of continious integration / continious deployment
 		 - use of git hooks
 		 - automated minting of new persistent identifiers on release tagging
 		 - ...
	- [ ] 🥈Silver *(easy)*: 2-3 from the above list of processes are automated
	- [ ] 🥇Gold *(intermediate)*: 4+ from the above list of processes are automated
	- [ ] 🏆Platinum *(hard)*: note that difficuly is somewhat project dependent
Your manuscript and its supplements are generated and served on a website after being built from your CI/CD pipeline.
All statistics and data visualisations in your manuscript are generated programatically by your analysis pipeline from your raw data in CI/CD.
Results are cached such that if you, for example, change the formatting of a graph only the plotting and rendering code needs to be re-run, but if you change the data the entire pipeline is re-rerun.
 
## 👥 Peer review / Code Review

*How can you get third party endorsement of and expert feedback on your project?*

- [ ] Code has been subject to a review indicating that someone else could re-run the analysis
	- [ ] 🥉Bronze *(easy)*: Someone other than you has checked over your project, given you feedback and told you they are reasonably confident they could re-run your analysis without your help.
	- [ ] 🥈Silver *(easy)*: Someone other than you has scessfully re-run your analysis using only your documentation, (preferably in a different compute environment, such as a different computer/compute cluster)
	- [ ] 🥇Gold *(intermediate)*: You have a review from [CODECHECK](https://codecheck.org.uk/), [ReproHack](https://www.reprohack.org/) or equivalent and have incorporated suggestions for improving reproducibility from these reviews.
	- [ ] 🏆Platinum *(intermediate)*: You have reviews which go beyond checking the ability to re-run your code but which also review it's technical correctness
 
## 📦 Distribution

*How can people install or access the software emerging from your project?*

- [ ] Project is distributed in a suitable fashion
	- [ ] 🥉Bronze *(easy)*: Code and data (barring privacy related access restrictions) are in public repositories.
	- [ ] 🥈Silver *(intermediate)*: Detailed instructions on how to fetch, install and configure the tools and data needed re-run your analysis, and how to re-run the analysis in the described environment.
	- [ ] 🥇Gold *(intermediate)*: Project is in a reproducible interactive environment such as those offered by [binder](https://binderhub.readthedocs.io/en/latest/index.html) or [renku](https://renkulab.io/).
	- [ ] 🏆Platinum *(hard)*: Gold plus - Your project is built and served as a website using continuous integration and deployment tools such that your analysis is run on your data in a reproducible compute environment and computational results like graphs and statistics are programatically inserted into your output. (It is best to have some form of caching when doing this).
 
## 💽 Environment Management / Portability

*How can people get specific versions of your software running on their systems?*

- [ ] Computational environment description provided
	- [ ] 🥉Bronze *(easy)*: List of package versions, e.g. output of `sessionInfo()` in R, not in a machine readable format
	- [ ] 🥈Silver *(intermediate)*: Structured language specific environment decription, language environment can be re-created e.g. `renv.lock` in a mostly automated fashion
	- [ ] 🥇Gold *(hard)*: Structured full environment description, automated ability to recreate the complete environment including system dependencies
	- [ ] 🏆Platinum *(MAXIMUM OVERKILL)*: Your description allows the automated bootstrap of the entire* depencency tree of your environment from source with bitwise binary reproducibility (currently almost impossible to achieve, basically only approachable in Guix)
 
## 🌱 Energy Efficiency

*How can you and your users minimise wasted energy?*

- [ ] Consideration has been given to the energy efficiency of the code
	- [ ] 🥉Bronze *(easy)*: minimise unnecessary output files
	- [ ] 🥈Silver *(easy)*: bronze plus: Profile your code and refactor inefficient parts
	- [ ] 🥇Gold *(intermediate)*: silver plus: Estimate and share the carbon footprint of your computations with a tools such as [green algorithms calculator](http://calculator.green-algorithms.org/)
	- [ ] 🏆Platinum *(intermediate)*: gold plus: Offload suitable computations to hardware accelerators where possible
 
## ⚖ Governance, Conduct, & Continuity

*How can you be excellent to each other, make good decisions well, and continue to do so?*

- [ ] The project has a suitable governance model
	- [ ] 🥉Bronze *(easy)*: The governance model is clearly communicated
	- [ ] 🥈Silver *(easy)*: Bronze Plus - Project has continuity planning in place (2 or more from)
		- [ ] Source archived and/or mirrored to other platforms
		- [ ] Public archives of key project governance documentation and plans for continuity of operations in the events such as the loss of key project infrastructure
		- [ ] Plans of action in the event project admin(s) are no longer available
	- [ ] 🥇Gold *(intermediate)*: Project has a governance model appropriate to its scale and goals
		- [ ] Project has clear and transparent processes
	- [ ] 🏆Platinum *(hard)*: Project has a track record of good governance and policy, any from:
		- [ ] Decisions have involved the appropriate person(s) and been well documented
		- [ ] Disputes are largely resolved in a respectful and amicable fashion
		- [ ] The project leadership has learned from any mistakes and implemented policy changes as a result
 
<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/rsspdc/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0</a></p>
