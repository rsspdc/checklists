# Web-based service

Download raw markdown versions here: [[raw](https://gitlab.com/rsspdc/checklists/-/raw/master/checklists/rsspdc-web-based-service.md?ref_type=heads&inline=false)] [[lite](https://gitlab.com/rsspdc/checklists/-/raw/master/checklists/rsspdc-web-based-service-lite.md?ref_type=heads&inline=false)]

version: alpha

*[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

A database, API (application programming interface), or other web-based tool which is, generally, to be hosted on an ongoing basis and offer some service or access to some resource to researchers.
In many ways the key considerations here lean more organisational than technical.
Do you have the resources to operate the service on an ongoing basis?
A record of a specific analysis is a snapshot in time that is only expected to run in it's specified environment and once done is done.
Operating an online service requires continuous ongoing work to keep up with security updates and monitoring the status of your server(s) to ensure that your service is still up and working as intended.
You can also expect to take on some degree of user support from people having trouble using your service.
Depending on the nature of the project it may not make sense for others to be deploying instances of the server, but at minimum other developers will need a test deployment to work on if not now then in the future.

Most of the suggestions here would be the same as the section in the software packages checklist, and indeed software of this type is generally one or more packages so that checklist also applies here.
This checklist focuses on the things that are in addition to general packages and more specific to web-based services.


## 📒 Source control

*How can you keep track of the history of your project and collaborate on it?*

- [ ] Uses git (or other source control tool)
	- [ ] 🥉Bronze *(easy)*: Using version control but has a shallow project history, just placed in git for distribution
	- [ ] 🥈Silver *(intermediate)*: Longer project history, commit messages of mixed quality, some large messy changes
	- [ ] 🥇Gold *(hard)*: Silver plus - Well written commit messages, nice granular commits making discrete self-contained changes.
		- [ ] Also keep your description of your testing and development deployment using a tool such as docker compose or ansible under source control
		- [ ] Tags, releases, or branches at major project milestones, maybe some contributions from other users
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
		- [ ] Why did you make this service?
		- [ ] What problem does it address and how?
		- [ ] Why would I want to use it, what differentiates it from its alternatives?
		- [ ] How do I access / use it? (with example)
		- [ ] How do I install a development / testing environment? (with example)
		- [ ] Where should I go in the project to find what I'm looking for?
		- [ ] Are you looking for contributions and if so how to contribute?
		- [ ] What data does the service use, how was it sourced, processed, and made available for use in the application?
		- [ ] What are the components of the service (e.g. databse, webserver)?
		- [ ] How do I cite the service, including version information?
		- [ ] How do I reproduce an output from the service for a given input?
		- [ ] Who contributed to the project and what did they contribute?
		- [ ] Who should I contact, about what, and how?
		- [ ] What should I expect / Not expect if I contact you?
		- [ ] How is the project Licensed?
		- [ ] Table of Contents (if long enough to benefit from one)
		- [ ] Bibliography (if reference is made to external resources)
	- [ ] 🥈Silver *(intermediate)*: Documentation includes instructions on deploying your service in a test/development environment.
	- [ ] 🥇Gold *(time consuming)*: Documentation features examples; rich, varied and working ones. Examples should cover both simple and more complex use cases, touching on as much of the functionality as they can.
	- [ ] 🏆Platinum *(MAXIMUM OVERKILL)*: Documentation is included for users, administrators (if applicable), systems administrators deploying the project, and developers.

In some cases for small and simple projects a README file is sufficient documentation.
This may genuinely be all that you need, or inadequate to the task depending on the project.
 
## 🔗 Making Citable

*How should people make reference to your project and credit your work?*

- [ ] Package is Citable
	- [ ] 🥉Bronze *(easy)*: A [CITATION.cff](https://citation-file-format.github.io/) file exists in the code repository to provide citational metadata about your project
	- [ ] 🥈Silver *(easy)*: Two or more from:
		- [ ] Adopt a url schema which makes dynamically generated pages easily citable
		- [ ] Check that your web pages archive well with web snapshotting tools like the [internet archive's wayback machine](http://web.archive.org/) or [ArchiveBox](https://archivebox.io/)
		- [ ] The project has persistent resolvable identifier such as a DOI or SWHID, with which it can be referenced, which has been minted for the project using a tool like [zenodo](https://zenodo.org/) or [Software Heritage's Archive](https://www.softwareheritage.org/) to store an archival the project.
	- [ ] 🥇Gold *(intermediate)*: All of the below:
		- [ ] Contributions are credited using a suitable contributor roles ontology or taxonomy (CROT) such as [CrediT](https://credit.niso.org/), [ScoRo](http://www.sparontologies.net/ontologies/scoro), [CRO](https://github.com/data2health/contributor-role-ontology), or [TaDiRAH](https://tadirah.info/).
		- [ ] All contributors are identified by their [ORCID](https://orcid.org/) or other suitable persistent identifier
	- [ ] 🏆Platinum *(mixed)*: gold plus any two or more from:
		- [ ] *(easy)*: All research institutions are identified by their [ROR](https://ror.org/) ID
		- [ ] *(intermediate)*: Versioned persistent identifier with automation to update snapshots on zenodo or similar tool when a new version is created.
		- [ ] *(intermediate)*: Annotating work cited in this work with the [Citation Typing Ontology (CiTO)](http://purl.org/spar/cito)
		- [ ] *(hard)*: Package your software for Nix or Guix - this might not seem like it contributes to making software more citable see details below for why this is the case.
 
## ✅ Testing

*How can you test your project so you can be confident it does what you think it does?*

- [ ] Service is appropriately tested
	- [ ] 🥉Bronze *(easy)*: You have examples in documentation or vignettes which are run and allow you to see 'manually' if your code's output is correct for key functionality
	- [ ] 🥈Silver *(easy)*: You are using unit tests and an automated testing framework with tests that cover at least your package's core functionality
	- [ ] 🥇Gold *(intermediate)*: silver plus: You are monitoring your test coverage to get some insight into any important code paths you might be missing
	- [ ] 🏆Platinum *(hard)*: You follow the Test Driven Development (TDD) model, designing and writing tests first then writing code to make them pass
 
## 🤖 Automation

*What tasks can you automate to increase consistency and reduce manual work?*

- [ ] Suitable automations are in place
	- [ ] 🥉Bronze: 
	- [ ] 🥈Silver: 
	- [ ] 🥇Gold: 
	- [ ] 🏆Platinum: 
 
## 👥 Peer review / Code Review

*How can you get third party endorsement of and expert feedback on your project?*

- [ ] 
	- [ ] 🥉Bronze: 
	- [ ] 🥈Silver: 
	- [ ] 🥇Gold: 
	- [ ] 🏆Platinum: 
 
## 📦 Distribution

*How can people install or access the software emerging from your project?*

- [ ] Service is distributed in suitable fashion
	- [ ] 🥉Bronze *(easy)*: Code is in a public repository or repositories
	- [ ] 🥈Silver *(easy)*: All of the below:
		- [ ] Detailed instructions are available on how to set up, at minimum, a development environment in which the service can run.
		- [ ] All constituent components of the service are appropriately packaged
		- [ ] Lock file(s) with
	- [ ] 🥇Gold *(intermediate)*: A simple deployment of the service is available in declarative form using a tool such as [docker compose](https://docs.docker.com/compose/) or [ansible](https://www.ansible.com/) which automates a simple deployment.
	- [ ] 🏆Platinum *(very hard)*: 
		- [ ] Reproducibly deployable as a Nix module
 
## 💽 Environment Management / Portability

*How can people get specific versions of your software running on their systems?*

- [ ] Simple to install development, testing, and/or demo environment
	- [ ] 🥉Bronze *(easy)*: A developer / sysadmin other than yourself can deploy a simple testing instance of your software using only your documentation.
	- [ ] 🥈Silver *(easy)*: 
		- [ ] Sensible security defaults. Such as not having default passwords, for databases or admin consoles and requiring the person deploying your service to configure them, hopefully with appropriate secrets management approaches.
	- [ ] 🥇Gold *(intermediate)*: 
		- [ ] Sensible security defaults. Such as not having default passwords, for databases or admin consoles and requiring the person deploying your service to configure them, hopefully with appropriate secrets management approaches.
	- [ ] 🏆Platinum *(hard)*: The entire dependency tree of your pipeline including the pipeline manager itself, the OS it's running on and the firmware of the hardware it's running on can be bootstraped from source and produce bitwise identical binaries, also including any pre-processing of data inputs to the pipeline such as base calling for sequencing data.
		- [ ] 
		- [ ] Deployment is possible on multiple architectures (such as x86_64 & ARM64)
 
## 🌱 Energy Efficiency

*How can you and your users minimise wasted energy?*

- [ ] Consideration has been given to the energy efficiency of the service
	- [ ] 🥉Bronze *(easy)*: Two or more from
		- [ ] Your web servers are configured appropriately to make best use of their available resources
		- [ ] You have provisioned appropriately specified hardware for your service and size of user-base
		- [ ] You have profiled your software and optimised any readily addressed bottlenecks
	- [ ] 🥈Silver *(intermediate)*: 
		- [ ] 
		- [ ] Estimate and share the carbon footprint of your service using system logs with a tool such as [green algorithms calculator](http://calculator.green-algorithms.org/)
	- [ ] 🥇Gold *(intermediate)*: Two or more from:
		- [ ] You have detailed profiling of the usage of your service and have optimised your configuration accordingly
		- [ ] You have detailed profiling of the resource usage of your service and have optimised your hardware provisioning accordingly
		- [ ] You have profiled your software and optimised bottlenecks, and are making use of parallelism and/or hardware acceleration is possible / beneficial to efficiency.
	- [ ] 🏆Platinum *(hard)*: 
		- [ ] 
		- [ ] Carbon intensity is considered in deployment location, potentially in real-time if dynamically scaling deployments that span multiple geographic regions
 
## ⚖ Governance, Conduct, & Continuity

*How can you be excellent to each other, make good decisions well, and continue to do so?*

- [ ] Project has a governance model and continuity planning appropriate to its scale
	- [ ] 🥉Bronze *(easy)*: Basic governance and continuity planning measures have been taken by project lead(s)
		- [ ] A trusted person other than the project lead has access, or the ability to securely acquire access, to core project assets such as the code repo(s), servers, and secrets
		- [ ] How the project is governed and how people are expected to engage with it is communicated.
This might just be in the README, be a dedicated governance document or include other documents, such as a code of conduct
		- [ ] A preferred method of private contact for project leadership is provided
	- [ ] 🥈Silver *(easy)*: Plans for continuity of operations in case of an event such as the loss of key project infrastructure
		- [ ] Project has research software management plan
		- [ ] Source repo is automatically archived and/or mirrored to other hosting providers
		- [ ] Public archives on non-project infrastructure of any key project governance documentation that is not in the source repo
	- [ ] 🥇Gold *(intermediate)*: 
		- [ ] Project decision making processes are documented
		- [ ] Project has clear and transparent processes
		- [ ] Plans for continuity of operations in case of an event such as the loss of key project infrastructure
		- [ ] Plans of action in the event project admin(s) are no longer available
		- [ ] Project has a machine readable research software management plan
	- [ ] 🏆Platinum *(hard)*: Project has a track record of good governance and policy
		- [ ] 
		- [ ] Project leadership has learned from any mistakes and implemented policy changes as a result
 
<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/rsspdc/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1">
<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"></a></p>
