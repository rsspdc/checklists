---
name: Pipelines & Workflows
about:
title:[RSSPDC] <issue>
---

From the Pipelines & Workflows *[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

version: alpha


## 📒 Source control

*How can you keep track of the history of your project and collaborate on it?*

- [ ] Uses [git](https://git-scm.com/) (or other source control tool such as [fossil](https://fossil-scm.org/home/doc/trunk/www/index.wiki))
	- [ ] 🥉Bronze *(easy)*: Using version control but has a shallow project history, just placed in git for distribution
	- [ ] 🥈Silver *(intermediate)*: Longer project history, commit messages of mixed quality, some large messy changes
	- [ ] 🥇Gold *(hard)*: Silver plus - Well written commit messages, nice granular commits making discrete self-contained changes. Tags, releases, or branches at major project milestones, maybe some contributions from other users
	- [ ] 🏆Platinum *(MAXIMUM OVERKILL)*: Gold plus - Some from: [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/); Clean history with a consistent rebasing/merging strategy; Signed commits from all contributors; Contributions go through a consistent workflow like, issues, then a pull request from a branch.

 
## © Licensing

*On what terms can others use your code, and how can you communicate this?*

- [ ] Project is suitably licensed
	- [ ] 🥉Bronze *(easy)*: There is a LICENSE file in the repository for a license which meets one of the [OSI](https://opensource.org/osd), [Debian](https://www.debian.org/intro/free), or [FSF/GNU](https://www.gnu.org/philosophy/free-sw.en.html) definitions of free/libre or open source software. Or for any contents that are not software a [Creative Commons](https://creativecommons.org/) license.
	- [ ] 🥈Silver *(easy)*: If any prose/documentation or images is licensed differently from the code in the project this is indicated and those licences provided. If licences have an attribution requirement there is are easy to copy text/links for appropriate attribution.
	- [ ] 🥇Gold *(intermediate)*: Uses [REUSE.software](https://reuse.software/) to provide license information for every file.
	- [ ] 🏆Platinum *(intermediate)*: all previous tiers plus any images have licensing information embedded in their metadata.
 
## 📖 Documentation

*How do people know what your project is, how to use it and how to contribute?*

- [ ] Project has suitable documentation
	- [ ] 🥉Bronze *(easy)*: Project has README file that either contains directly or links to resources which answer these questions:
		- [ ] What is the name or title of the project?
		- [ ] Why did you make this pipeline?
		- [ ] What problem does it address and how?
		- [ ] Why would I want to use it, what differentiates it from its alternatives?
		- [ ] How do I install it? (with example)
		- [ ] How do I use it? (with example)
		- [ ] Where should I go in the project to find what I'm looking for?
		- [ ] Are you looking for contributions and if so how to contribute?
		- [ ] What inputs do I need?
		- [ ] What outputs should I expect?
		- [ ] How do I cite the project?
		- [ ] Who contributed to the project and what did they contribute?
		- [ ] Who should I contact, about what, and how?
		- [ ] What should I expect / Not expect if I contact you?
		- [ ] How is the project Licensed?
		- [ ] Table of Contents (if long enough to benefit from one)
		- [ ] Bibliography (if reference is made to external resources)
	- [ ] 🥈Silver *(intermediate)*: If your language has a in-line documentation with which you can build documentation for your functions/objects etc. you are making full use of it. So that features such as the ability to produced a reference manual for all the key functional units of your code, and integrations with IDE (integrated development environment) features such as search, templates, and autocomplete can be made the most of.
		- [ ] How do I set up a development environment?
		- [ ] What are your future development plans (if any)
	- [ ] 🥇Gold *(intermediate)*: Your Documentation features examples; rich, varied and working ones.
Examples should cover both simple and more complex use cases, touching on as much of the functionality as they can.
	- [ ] 🏆Platinum *(MAXIMUM OVERKILL)*: All examples are executed upon a full build of the documentation so that you know that they at least run.

In some cases for small and simple projects a README file is sufficient documentation.
This may genuinely be all that you need, or inadequate to the task depending on the project.
 
## 🔗 Making Citable

*How should people make reference to your project and credit your work?*

- [ ] Package is Citable
	- [ ] 🥉Bronze *(easy)*: A [CITATION.cff](https://citation-file-format.github.io/) &/or [CodeMeta](https://codemeta.github.io/) file exists in the code repository to provide citational metadata about your project
	- [ ] 🥈Silver *(easy)*: bronze plus the project has persistent resolvable identifier such as a DOI or SWHID, with which it can be referenced, which has been minted for the project using a tool like [zenodo](https://zenodo.org/) or [Software Heritage's Archive](https://www.softwareheritage.org/) to store an archival the project.
	- [ ] 🥇Gold *(intermediate)*: silver plus:
		- [ ] Contributions are credited using a suitable contributor roles ontology or taxonomy (CROT) such as [CrediT](https://credit.niso.org/), [ScoRo](http://www.sparontologies.net/ontologies/scoro), [CRO](https://github.com/data2health/contributor-role-ontology), or [TaDiRAH](https://tadirah.info/).
		- [ ] All contributors are identified by their [ORCID](https://orcid.org/) or other suitable persistent identifier
	- [ ] 🏆Platinum *(mixed)*: gold plus any two or more from:
		- [ ] *(easy)*: All research institutions are identified by their [ROR](https://ror.org/) ID
		- [ ] *(intermediate)*: Versioned persistent identifier with automation to update snapshots on zenodo or similar tool when a new version is created.
		- [ ] *(intermediate)*: Annotating work cited in this work with the [Citation Typing Ontology (CiTO)](http://purl.org/spar/cito)
		- [ ] *(hard)*: Package your software for Nix or Guix - this might not seem like it contributes to making software more citable see details below for why this is the case.
 
## ✅ Testing

*How can you test your project so you can be confident it does what you think it does?*

- [ ] Pipeline is appropriately tested
	- [ ] 🥉Bronze *(easy)*: The pipeline runs and produces the expected result on a minimal example dataset
	- [ ] 🥈Silver *(easy)*: both of the below:
		- [ ] A wide variety of possible input parameter combinations are tested
		- [ ] Datasets with different expected outcomes are tested, for example an output value is expected to be low in one dataset and high in another
	- [ ] 🥇Gold *(intermediate)*: All of the below:
		- [ ] Tests of error handling, pipeline fails early and gracefully when given invalid inputs as parameters
		- [ ] Any Quality Control steps that you use have datasets which elicit both a pass and fail of that check
		- [ ] Test are run automatically in continuous integration tools as changes are made to the code repository
	- [ ] 🏆Platinum *(hard)*: Range of supported environments tested on different base systems with different versions in CI pipeline(s) to catch platform specific bugs
 
## 🤖 Automation

*What tasks can you automate to increase consistency and reduce manual work?*

- [ ] Suitable automations are in place
	- [ ] 🥉Bronze: 
	- [ ] 🥈Silver: 
	- [ ] 🥇Gold: 
	- [ ] 🏆Platinum: 
 
## 👥 Peer review / Code Review

*How can you get third party endorsement of and expert feedback on your project?*

- [ ] Pipeline has been appropriately reviewed
	- [ ] 🥉Bronze *(easy)*: Someone other than you has checked over your pipeline and given you feedback
	- [ ] 🥈Silver *(intermediate)*: Someone other than you has successfully run your pipeline on different compute infrastructure and got the same results with test data
	- [ ] 🥇Gold *(intermediate)*: You have published your pipeline in a pipeline repository which performs reviews of submissions such as nf-core
(The snakmake workflow catalog's review practices would not be adequate for this purpose)
	- [ ] 🏆Platinum *(hard)*: Some from:
    - Published a peer reviewed article with a scientific review of the theoretical / statistical / mathematical underpinnings of the tool that you implemented in addition to a technical peer review of the code quality. (These may well be seperate reviews for example by a methods journal and a software repository reflecting their different expertise.)
    - You have had and independent 'red team' attempt to find errors in your project and incorporated any relavant changes as a result.
    - Your project is a part of a bug bounty program.
 
## 📦 Distribution

*How can people install or access the software emerging from your project?*

- [ ] Pipeline is distributed in appropriate format(s)
	- [ ] 🥉Bronze *(easy)*: Pipeline is in a software forge (such as [GitHub](https://github.com/) or [Codeberg](https://codeberg.org/)) in a standard package format so that it can be run with the pipeline manager's standard tooling.
	- [ ] 🥈Silver *(easy)*: The software environment(s) needed by each step in your pipeline are defined so that they can be installed automatically using a suitable package / environment management tool.
	- [ ] 🥇Gold *(intermediate)*: Pipeline is in a repository of workflows and pipelines such as [workflowhub](https://workflowhub.eu) (can be pre-release in nf-core).
	- [ ] 🏆Platinum *(intermediate)*: Pipeline is in a curated package repository where it has undergone review and testing such as [nf-core](https://nf-co.re/).
 
## 💽 Environment Management / Portability

*How can people get specific versions of your software running on their systems?*

- [ ] It is possible to run your pipeline on other systems with some degree of reproducibility
	- [ ] 🥉Bronze *(easy)*: The pipeline may require some manual changes, and/or manual steps to install the requisite software environments or retrieve data, and perform some standard pre-processing of inputs like building genome references etc.
	- [ ] 🥈Silver *(easy)*: External inputs can be automatically retrieved using their identifiers and pre-processing steps for these inputs are performed as apart of the pipeline.
At least one method for describing the required compute environment(s) is supplied e.g. conda environments, or container build files so that others can be specified if a user has compute infrastructure which does not support the method(s) supplied.
	- [ ] 🥇Gold *(hard)*: Complete pipeline can be executed with single command with all data and dependencies fetched automatically, barring the need for any system specific resource constraint configuration.
	- [ ] 🏆Platinum *(practically impossible in practice)*: The entire dependency tree of your pipeline including the pipeline manager itself, the OS it's running on and the firmware of the hardware it's running on can be bootstraped from source and produce bitwise identical binaries, also including any pre-processing of data inputs to the pipeline such as base calling for sequencing data.
 
## 🌱 Energy Efficiency

*How can you and your users minimise wasted energy?*

- [ ] Consideration has been given to the energy efficiency of the code
	- [ ] 🥉Bronze *(intermediate)*: minimise unnecessary output files
		- [ ] Adopt a process to review outputs and keep only those necessary
	- [ ] 🥈Silver *(intermediate)*: bronze plus: Profile your code and refactor inefficient parts
		- [ ] Energy consumption and emissions Estimation/Measurement
	- [ ] 🥇Gold *(hard)*: Two or more from:
		- [ ] Appropriately balances the possible efficiency gains against the cost of testing, development, and benchmarking
		- [ ] Makes use of efficient algorithms for its task
		- [ ] Makes use of tools implemented in an efficient language for the task
	- [ ] 🏆Platinum *(hard)*: Two or more from:
		- [ ] Makes use of hardware acceleration if appropriate
		- [ ] Can make use of carbon intensity aware run scheduling
		- [ ] Binaries are compiled with flags optimal for performance on the architecture/hardware on which the computation is performed if a job is to be repeated enough times to make sense given the energy expended on compilation.
 
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
