---
name: Web-based service
about:
title:[RSSPDC] <issue>
---

From the Web-based service *[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

version: alpha


## 📒 Source control

*How can you keep track of the history of your project and collaborate on it?*

- [ ] Uses git (or other source control tool)
	- [ ] 🥉Bronze *(easy)*: Using version control but has a shallow project history, just placed in git for distribution
	- [ ] 🥈Silver *(intermediate)*: Longer project history, commit messages of mixed quality, some large messy changes
	- [ ] 🥇Gold *(hard)*: Silver plus - Well written commit messages, nice granular commits making discrete self-contained changes.
		- [ ] Also keep your description of your testing and development deployment using a tool such as docker compose or ansible under source control
		- [ ] Tags, releases, or branches at major project milestones, maybe some contributions from other users
	- [ ] 🏆Platinum *(MAXIMUM OVERKILL)*: Gold plus - Some from: [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/); Clean history with a consistent rebasing/merging strategy; Signed commits from all contributors; Contributions go through a consistent workflow like, issues, then a pull request from a branch.
 
<details>
<ul>
	<li>
	Unline many of the other research software output types this sort of output tends to consist of multiple seperate components which may have their sources managed seperately.
	Many of these projects might involve multiple different components which have seperate git repositories, for example your front-end and back-end codebases might live in their own repos.
	It can be useful to group these projects together within a group or organisation on your gitforge so that their relationship to one another is clear
	</li>
	<li>
	Another thing which it is valuable for this sort of project to have is how to deploy a local testing and development environment and/or a minimal deployment of the service.
	This might take the form of a docker / docker-compose, ansible playbook, or similar automation tool for easily deploying a test / example environment.
	Taking the 'infrastructure as code' approach to the deployment of your tool and versioning these examples is most useful when your service is of a sort where it makes sense for others to want to host their own instances.
	If it is just deployed by you as a central resource these practice may be useful for you internally but they are less impactful for the rest of the community.
	</li>
	<li>
	If your project is backed by a curated database then documentation of / code from the data collecting and cleaning process which lead to the current content of the database is valuable for the provenance of that dataset.
	If you are taking new additions to that database such tools are very valuable resources for any collaborators wanting to add data.
	Even if you are not adding new data these tools can also be very useful to researcher wanting to use data from your database with data they have themselves generated or curated, so the ability to process it in the same way as your data may be essential for valid comparisons.
	</li>
</ul>
</details>

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
 
<details>
<ul>
	<li>README / Manual</li>
	<ul>
		<li>What your project is and what it does</li>
		<li>Installation instructions, in the case of a web tool what at least is needed for a minimal local development deployment</li>
		<li>Contribution guidelines (varying from 'please open an issue before working on a merge request' to detailed style guides, review processes and other requirements) </li>
		<li>A description of the project structure so that the user knows which directories to find things in</li>
	</ul>
	<li>It is generally particularly useful to split documentation in a project such as this by target audiences: users, developers, sysadmins</li>
	<ul>
		<li>User: Using the website graphically - this might include admin options if you have administrative users of some kind, admin users may need their own section</li>
		<li>Developers: API docs, how to contribute, and how to set up a development environment, tooling used</li>
		<li>Sysadmins: how to deploy an instance of the service, how to configure it, what you might want to do differently from the development environment, for example to have a more secure config and considerations that might affect backups, and managing updates/grades.</li>
	</ul>
	<li>Note that almost all of the recommendations for software package documentation also applies here</li>
</ul>

</details>

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
 
<details>
<ul>
	<li>
	Adopting a stable, consistent and human readable naming schema for the URLs on your web service, including the ability to reproduce state of dynamically generated pages with parameters in the URL, makes referring to specific items much easier for users citing the website according to the conventions for citing websites.
	(If pertinent be sure to apply proper authentication and authorisation practices so that sensitive information cannot be accessed because it is on a page with a predicatble URL, and that the mere existence of a page with a predictable URL does not itself leak information)
	Minimise content not constructed in such a way that it can be captured by archival tools like the [internet archive's wayback machine](http://web.archive.org/) and [ArchiveBox](https://archivebox.io/) which can be used by researchers and others to take a snapshot of a website at the time at which they are citing it to avoid issues of updates to the website altering the content or linkrot.
	</li>
	<li>
		Including a [CITATION.cff](https://citation-file-format.github.io/) (Citation File Format) file in your project repo is a simple way of making your code citable. The format is readable in YAML and permits the provision of the metadata needed for citation.
	</li>
	<li>
		[Zenodo](https://zenodo.org/) permits you to mint a [digital object identifier (DOI)](https://www.doi.org/) for your code this is a persistent identifer which can be used to refer to it.
		You can tie the minting versioned DOIs to your releases of your project.
		Using a DOI permits the existing ecosystem of academic software, e.g.[zotero](https://www.zotero.org/), to use APIs to retrieve citational metadata about your project.
		[Zenodo](https://zenodo.org/) also hosts a snapshort of your sourcecode so that if your main code repository ever went down it's still possible to retrieve it here.
		Citational metadata can be import from a [.cff](https://citation-file-format.github.io/) file or a [.zenodo.json](https://developers.zenodo.org/) file in your repository.
		This makes it pretty easy to manage updates as you can just edit these files and have a platform integration or step in your CI push them to zenodo next time you do a release.
	</li>
	<li>
		[Software Heritage](https://www.softwareheritage.org) is an expansive archive of open source software operated by a non-profit organisation in collaboration with UNESCO [how to reference and archive code in software heritage](https://www.softwareheritage.org/howto-archive-and-reference-your-code/).
		SWHIDs have the advantage that they are content based identifiers meaning that you can check if the content you get back when you retrieve it is what you expected to get based on its identifier.
		The Software heritage API permits you to automate the archiving of your project repository via a webhook from popular git forges like github, gitlab and others.
		Unlike Zenodo which only preserves a snapshot of your repository at the time of deposition and at subsequent manual time points and/or tagged releases Software Heritage archives the whole repository.
	</li>
	<li>
		Further reading on the [ethics of CROTs (contributor roles ontology or taxonomy)](https://doi.org/10.1080/08989621.2022.2161049), and their [evolution and adoption](https://doi.org/10.1002/leap.1496).
		This is potentially useful in selecting a CROT suitable for you project
	</li>
	<li>
		Nix and GUIX
		<ul>
			<li>
				General software repositories may not make specific provision for citation of software packages in the academic fashion.
				However some provide, what is for some use cases, a superior form of 'citation' of their own sources i.e. a complete 'software bill of materials (SBOM)'.
				This is a list of all the code used in another piece of code, its dependencies, and their dependencies recursively, along with all of their versions.
				For example [Nix](https://nixos.org/) can do this but [Guix](https://guix.gnu.org/) is perhaps the most comprehensive in its approach.
				It not only provides all information necessary for a complete 'SBOM' but, it can [bootstrap](https://guix.gnu.org/en/manual/en/html_node/Bootstrapping.html) software packages in its repository from source with an extremely minimal fixed set of binaries, an important capability for [creating somewhat trustworthy builds](https://www.cs.cmu.edu/~rdriley/487/papers/Thompson_1984_ReflectionsonTrustingTrust.pdf).
				This creates a compute environment which is not only reproducible but verifiable, meaning the source of all of an environments dependencies can in theory be scrutinised.
				It also adopts an approach to commit signing and authorisation of signers that gives it a [currently uniquely complete supply chain security architecture](https://doi.org/10.22152/programming-journal.org/2023/7/1).
				Packages or 'derivations' are 'pure functions' in the sense that only their inputs effect their outputs and they have no side-effects, package builds are sandboxed to prevent dependencies on any external source not explicitly provided as an input and inputs are hashed to ensure that they cannot differ for the value expected when they were packaged.
				This gives these technologies an unrivaled ability to readily demonstrate the reproducibility and provenance of compute environments specified using them.
			</li>
			<li>
				Whilst not yet full implemented and adopted these technologies also aford some fascinating opertunities for seemless access to archival versions of software in the future.
				Due to the similarities in the content based addressing used by Git, Nix, Guix, IPFS (Interplanetary file System) and software heritage's IDs it may be possible to construct an approach to archiving, distributing and caching sources of packages in a way that would ensure that low demand archived software sources and high demand current packages can be distributed transparently through the same mechanism.
				This would in theory permit the reconstruction of any historically specified compute environment that had been archived with no changes to normal workflow, other than perhaps a longer build time.
				This approach also makes the creation of 'mirrors' of the archive relatively simple and requires no client side changes as an IPFS resource will be resolved irrespective of the node on which it is stored.
				See: [NLnet Software heritage and IPFS](https://nlnet.nl/project/SoftwareHeritage-P2P/), [Tweag - software heritage and Nixpkgs](https://www.tweag.io/blog/2020-06-18-software-heritage/), [John Ericson - Nix x IPFS Gets a New Friend: SWH (SoN2022 - public lecture series)](https://www.youtube.com/watch?v=DjJyPzwEzmU)
			</li>
		</ul>
	</li>
</ul>
</details>

## ✅ Testing

*How can you test your project so you can be confident it does what you think it does?*

- [ ] Service is appropriately tested
	- [ ] 🥉Bronze *(easy)*: You have examples in documentation or vignettes which are run and allow you to see 'manually' if your code's output is correct for key functionality
	- [ ] 🥈Silver *(easy)*: You are using unit tests and an automated testing framework with tests that cover at least your package's core functionality
	- [ ] 🥇Gold *(intermediate)*: silver plus: You are monitoring your test coverage to get some insight into any important code paths you might be missing
	- [ ] 🏆Platinum *(hard)*: You follow the Test Driven Development (TDD) model, designing and writing tests first then writing code to make them pass
 
<details>
<ul>
	<li>
	Services and graphical interfaces many require integration tests which check that the different components of your system work together as expected and UI based testing frameworks which simulate user interaction in a web browser might be things that you would consider adding to the sorts of test you might do for a simpler library.
	</li>
	<li>
	A good test suite allows you to refactor your code without fear of breaking its functionality.
	Good tests are agnostic to the implementation details of action that you are testing, so that you can change how you implemented something without needing to change the tests.
	The use of automated testing frameworks is especially useful for software that is under ongoing development as it allows developers to catch the unintended consequences of a change made in one place on some other part of the code that they did not anticipate.
	</li>
	<li>
	Examples of automated testing frameworks include {[testthat](https://testthat.r-lib.org/)} for R & [unittest](https://realpython.com/python-testing/) for python.
	Tools like [Codecov](https://about.codecov.io/) or [coveralls](https://coveralls.io/) in conjucnction with language specific tools such as [covr](https://covr.r-lib.org/) can help with code coverage monitoring and insights.
	</li>
	<li>
	Unit tests allow you to spell out in detail what you expect the behaviour of your software to be under a particular circumstance and test if it conforms to these expectations.
	Automatically running tests like this can be added to CI/CD pipelines on git forges.
	</li>
	<li>
	Test coverage does not necessarily need to be 100% or even especially high but code coverage tools can allow you to spot gaps in test coverage over important parts of your codebase and ensure that you cover them and give you an indication when you added new and poorly covered code to your codebase that you may want to add tests for.
	</li>
	<li>
	Try to make sure that your test suite runs fast so that you can run it regularly and quickly iterate.
	</li>
	<li>
	Test Driven Development (TDD) is the practice of writing your tests first and then developing the code which conforms to these tests.
	It works well if you have an extremenly well defined idea of what exactly you want your code to do and not do.
	</li>
</ul>
</details>

## 🤖 Automation

*What tasks can you automate to increase consistency and reduce manual work?*

- [ ] Suitable automations are in place
	- [ ] 🥉Bronze: 
	- [ ] 🥈Silver: 
	- [ ] 🥇Gold: 
	- [ ] 🏆Platinum: 
 
<details>

</details>

## 👥 Peer review / Code Review

*How can you get third party endorsement of and expert feedback on your project?*

- [ ] 
	- [ ] 🥉Bronze: 
	- [ ] 🥈Silver: 
	- [ ] 🥇Gold: 
	- [ ] 🏆Platinum: 
 
<details>
<ul>
	<li>
	If you are building a database of some kind then you might want the processes by which you process, collect or curate the data which go into this database to be subject to an academic style review, and papers about the creation of such resources are not uncommon.
	</li>
	<li>
	Seeking an external technical review may be trickier for your core code but review of how easy your system is to deploy is perhaps more accessible from the community of amateur self-hosters.
	Who may be quite willing to try deploying your tool in many and varied homelabs if it offers them something and/or you ask nicely and in the right places.
	</li>
</ul>

</details>

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
 
<details>
<ul>
	<li>
	Your general audience is users of your web service, and there's a smaller but imporant audience of sysadmins and developers who may need to run your server software on their own systems not just use it. So 'distribution' splits in to two slightly different problems.
	</li>
	<ul>
		<li>
		Operating your website, things like:
		</li>
		<ul>
			<li>
			making sure that your TLS certificates stay up to date and you have enough compute resources for the service to run well for users.
			</li>
			<li>
			Having a sensible URL, potentially including any look-alike urls that malicious actors might try to [typosquat](https://en.wikipedia.org/wiki/Typosquatting)
			</li>
			<li>
			Distributing your service to developers who may want to build tools on top of it or query it in an automated fashion via an API.
			The API should be well documented and conform to open standards.
			</li>
			<li>
			Take some simple measures to ensure the reliability of your site under elevated load. Such as using a reverse proxy, enabling content caching so that your proxy can serve requests for the same content without hitting your application server(s) again, limit concurrent connections to the max number of sessions your server can handle at once so if traffic spikes it gets slower but dosen't completely fall over, load balancing across multiple application servers.
			</li>
			<li>
			Consider DDoS protection for your site if your traffic grows over a certain threshold.
			</li>
			<li>
			Be wary of 'denial of wallet' attacks when hosting on automatically horizontally scaling platform by setting limits to prevent malicious parties from spamming your site in such a fashion as to cause you to incur massive hosting bills.
			</li>
		</ul>
		<li>
		Distributing your server software to sysadmins, devops people, and potentially general IT staff, developers, and amateur self-hosters.
		</li>
	</ul>
</ul>

</details>

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
 
<details>
<ul>
	<li>
	Depending on the infrastructure that you chose to deploy on you might use a different management tool, but it is best if you do use such a tool as a part of your development and deployment as, if done right, this provides an easy 'run a couple of commands' development environment setup for anyone picking up the project.
	Be that a future maintainer, someone wanting to play with a local test deployment, or someone wanting to contribute to the project.
	Examples of such tools include: [ansible](https://www.ansible.com/), [terraform](https://www.terraform.io/), [docker](https://www.docker.com/)/[docker compose](https://docs.docker.com/compose/), [nix](https://nixos.org/), [helm charts](https://helm.sh/) or a combination of some of these that fits your needs and experience.
	</li>
</ul>
</details>

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
 
<details>
Efficiency in a program deployed as a web service can be as much or more about how it is configured than the efficiency of the underlying code, the larger the number of users a service has the larger the overall impact of small efficiency gains.
In many research contexts the number of users is small, though in some cases their computational demands may be high.
It may be uneconomical to spend the time to optimise as heavily as one might in applications with larger scale.
If possible profile the resource usage of your service in use and optimise the low hanging fruit.

Appropriate caching, management of sessions on your web server(s), load balancing between multiple nodes (when you have them) and so on can have huge performance and efficiency impact.
An underpowered web server can for example often serve many more people if the number of concurrent session is limited the number that can comfortably be handled with that box's resources and it is allowed to handle many requests in rapid sequence rather than becoming overwhelmed by an excessive number of concurrent sessions.
Consulting with a professional systems administrator and/or devops professional (for larger deployments on modern cloud stacks) about how to optimise your service's deployment is likely a good idea if you are inexperienced in this domain.

The same considerations that apply to other software packages also apply to web services to refer to [that section](../software-packages.md) also for additional suggestions.

Get the most out of the resources that you have provisioned for your service, over or under provisioning can lead to inefficiencies to aim to match demand.
Automatically scaling services out can still carry considerable technical overhead and computational overhead in monitoring and responding to load and is unlikely to be worth the trouble in small deployments.

It may be valuable to share application specific optimisation tips for deployments of your service on community fora and/or as case studies in your documentation.

Academic user-bases are often scattered around the world, if you have a particular concentration of users in one location it may make sense to locate your physical infrastructure near to them to minimise latency.
However, if you have a global user-base anyway you might consider server infrastructure in a location with the least carbon intensity.

[The Environmentally Sustainable Computational Science forum](https://forum.escs-community.org) is a great place to find people to talk about these issues.

</details>

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
 
<details>
<ul>
	<li>
	If you are the Benevolent Dictator For Life (BDFL) of your project and the Code of Conduct (CoC) is "Don't be a Dick" that's fine, for many individual hobby projects this a functional reality.
	Becoming a BDFL tends to be the default unless you take steps to avoid it and cultivate community governance as your project begins to grow - failing to do this and being stuck in charge can become quite the burden in sucessful projects.
	It is also easy for a power vacuum to form at the top of sucessfully projects if they lack either community governance or a singular motivated leader.
	Be waring of adopting policies that you lack resources, time, interest, skill, or inclination to be an active enforcer, mediator and moderator of disputes concerning.
	It is helpful to be clear about what you can and cannot commit to doing in community mangement.
	Only by communicating this might you be able to find community members to help you with setting and enforcing community norms, if or when your community attains a scale where this becomes relevant
	Community management is its own skill set.
	If you can't moderate them avoid creating and/or continuing ungoverned community spaces that can become a liability for you and your project's reputation.
	Just as there are off-the-shelf licenses there are off-the-shelf codes of conduct, the [Contributor Covenant](https://www.contributor-covenant.org/) is perhaps the best known and most widely used, though may need some customisation to your needs.
	Adopting such a CoC gives you some guidance to follow if there is bad behaviour in your project's community and communicates that you as the project leadership take the responsibility of creating a respectful environment for collaboration seriously.
	It can also signal that your project is a place where everyone is wellcome but expected to treat one another with respect, and that failing to do so will result in penalties potentially including exclusion from the community.
	[The Turing Way](https://doi.org/10.5281/zenodo.3233853) provides quite a nice example of a [CoC developed specifically for their project](https://web.archive.org/web/20240412122958/https://book.the-turing-way.org/)
	You will need to provide contact information for the person(s) responsible for the enforcement of the CoC in the appropriate place and be able to follow up in the event it is used.
	git forges often recognise files with the name `CODE_OF_CONDUCT.md` in the root of project and provide a link to them on project home pages, so this is a good place to document such policies.
	If you are the BDFL of a small project then interpretation and enforcement of such a CoC tends to fall solely on you - game out some courses of action for what you'd do if faced with some common moderation challenges.
		<ul>
			<li>
				Once a project attracts a larger community there is greater scope for disputes and therefore for the need for dispute resolution mechanisms.
				Free/Libre and Open Source Software development and maintenance can be thought of as a commons so I would refer you to the [work of Elinor Ostrom](https://archive.org/details/ElinorOstromGoverningTheCommons) on how commons have been successfully (or unsuccessfully) governed when thinking about what processes to adopt for your project.
				More recently [Nathan Schneider's Governable Spaces: Democratic Design for Online Life](https://doi.org/10.1525/luminos.181) tackles some of these issues as applied to online spaces.
			</li>
			<li>
				This is summarised in the [8 Principles for Managing a Commons](https://web.archive.org/web/20240411163813/https://onthecommons.org/magazine/elinor-ostroms-8-principles-managing-commmons/index.html)
				<ol>
					<li>Define clear group boundaries.</li>
					<li>Match rules governing use of common goods to local needs and conditions.</li>
					<li>Ensure that those affected by the rules can participate in modifying the rules.</li>
					<li>Make sure the rule-making rights of community members are respected by outside authorities.</li>
					<li>Develop a system, carried out by community members, for monitoring members’ behavior.</li>
					<li>Use graduated sanctions for rule violators.</li>
					<li>Provide accessible, low-cost means for dispute resolution.</li>
					<li>Build responsibility for governing the common resource in nested tiers from the lowest level up to the entire interconnected system.</li>
				</ol>
			</li>
			<li>
				An informal [do-ocracy](https://web.archive.org/web/20230201164442/https://communityrule.info/modules/do-ocracy/) in the fiefdom of a BDFL is often the default state of projects that have not given much deliberate thought to how they want to be governed, whilst this model is not without its strengths, because it is common many projects are subjects to some of its failure modes.
				How are decisions made in your project? Do you need the mechanisms of governance used by community and civil society organisations?
				By-laws, a committee and/or working groups, general meetings, votes, minutes? A version of these may be necessary to avoid [The Tyranny of Structurelessness](https://web.archive.org/web/20240406094310/https://www.jofreeman.com/joreen/tyranny.htm)
				How can you map these onto your development infrastructure and make the decisions of your governing bodies enactable and enforceable?
			</li>
		</ul>
	</li>
	<li>
	Continuity planning: What happens to your project if something happens to you?
	The code will likely live on due the distributed nature of git but what about the issue tracker, the website etc.
	Who else has the highest level of privilege on your project or a mechanism to attain it?
	The principle of least privilege dictates that you keep the number of people with this level of access to a minimum but you may then create a single point of failure.
	Password managers like [bitwarden](https://bitwarden.com/) have a feature where designated people can be given access to your vault if they request it and you do not deny it within a certain time-frame.
	This could provide a lower level admin with a mechanism to escalate their privileges if you are unable to do this for them.
	However, this delay might be an issue for continuity of operations if administrator action is needed within the waiting period.
	Game it out, have a plan, write it down, let people know you have a plan.
	</li>
	<li>
	Software Management Plans
		<ul>
			<li>
			</li>
		</ul>
	</li>
	<li>
	Does your project take donations?
	Does it have a trademark?
	Does it need a legal entity to hold these?
	Who is on the paperwork and who has signing authority?
	Who keeps track of expenditures?
	Tools & Organisations like [OpenCollective](https://opencollective.com/) can help with some of these issues.
	</li>
	<li>
	If your project has potential cybersecurity implications what procedures do you have in place for people to disclose vulnerabilities in the project so that they can be patched before they are made public.
	What systems do you have in place to disclose a vulnerability once it has been patched and ensure that users know that they need to update.
	</li>
	<li>Whole project data longevity - what plans do you have in place to backup and archive materials pertaining to your project that are not under source control?</li>
	<li>
	User support
		<ul>
		<li>What support can users expect, or not expect?</li>
		<li>Where can they ask for it?</li>
		<li>Is there somewhere where users can provide support to other members of the user community, such as a forum?</li>
		<li>Can they pay for more support?</li>
		</ul>
	</li>
</ul>

</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/rsspdc/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0</a></p>
