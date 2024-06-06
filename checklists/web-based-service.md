# Web-based service: Research Software Sharing, Publication, & Distribution Checklist

A database, API, or other web-based tool which is, generally, to be hosted on an ongoing basis and offer some service or access to some resource to researchers.
In many ways the key considerations here lean more lean more organisational than technical.
Do you have the resources to operate the service on an ongoing basis?
A record of a specific analysis is a snapshot in time that is only expected to run in it's specified environment and once done is done.
Operating an online service requires continuous ongoing work to keep up with security updates and monitoring the status of your server(s) to ensure that your service is still up and working as intended.
You can also expect to take on some degree of user support from people having trouble using your service.
Depending on the nature of the project it may not make sense for others to be deploying instances of the server, but at minimum other developers will need a test deployment to work on if not now then in the future.

Most of the suggestions here would be the same as this section in the software packages checklist, and indeed software of this type is generally one or more packages so that checklist also applies here, this focuses on the things that are in addition to the software package checklist.

## 📒Source control

*How can you keep track of the history of your project and collaborate on it?*

- [ ] Uses git (or other source control tool)
	- [ ]  	🥉Bronze (Easy): Using version control but has a shallow project history, just placed in git for distribution
	- [ ]  	🥈Silver (Intermediate): Longer project history, commit messages of mixed quality, some large messy changes
	- [ ]  	🥇Gold (Hard): Silver plus - Well written commit messages, nice granular commits making discrete self-contained changes.
			Tags, releases, or branches at major project milestones, maybe some contributions from other users
	- [ ]  	🏆Platinum (MAXIMUM OVERKILL): Gold plus - Some from:
			[conventional commits](https://www.conventionalcommits.org/en/v1.0.0/); Clean history with a consistent rebasing/merging strategy; Signed commits from all contributors; Contributions go through a consistent workflow like, issues, then a pull request from a branch.

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

## ©Licencing

*On what terms can others use your code, and how can you communicate this?*

- [ ] Project is suitably licensed
	- [ ]  	🥉Bronze (easy): There is a LICENSE file in the repository for a license which meets one of the [OSI](https://opensource.org/osd), [Debian](https://www.debian.org/intro/free), or [FSF/GNU](https://www.gnu.org/philosophy/free-sw.en.html) definitions of free/libre or open source software. Or for any contents that are not software a [Creative Commons](https://creativecommons.org/) license.
	- [ ]  	🥈Silver (easy): If any prose/documentation or images is licenced differently from the code in the project this is indicated and those licences provided. If licences have an attribution requirement there is are easy to copy text/links for appropriate attribution.
	- [ ]  	🥇Gold (intermediate): Uses [REUSE.software](https://reuse.software/) to provide license information for every file.
	- [ ]  	🏆Platinum (intermediate): all previous tiers plus any images have licensing information embedded in their metadata.

<details>
	<ul>
		<li>
		If you want to apply a copyleft license to a piece of software that is to be accessed over a network and not necessarily run on end-users own computers then you would want to adopt a license such as the AGPL to ensure that your end users still have the right to run, study, modify and redistribute the code of the server-side part of the tool.
		</li>
		<li>
		**All software needs a license if you want to permit others to reuse it.
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

## 📖Documentation

*How do people know what your project is, how to use it and how to contribute?*

- [ ] Project has suitable documentation
	- [ ] 	🥉Bronze (easy): Project has README file
		- [ ] README provides a description of the project structure so that the user knows which directories to find things in
	- [ ]  	🥈Silver (intermediate): documentation includes instructions on deploying your service in a test/development environment.
	- [ ]  	🥇Gold (time consuming): documentation features examples; rich, varied and working ones.
			Examples should cover both simple and more complex use cases, touching on as much of the functionality as they can.
	- [ ]  	🏆Platinum (intermediate): Documentation is included for users, administrators (if applicable), systems administrators deploying the project, and developers.

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
</ul>
</details>

## 🔗Making Citable

*How should people make reference to your project and credit your work?*

- [ ] Service is Citable
	- [ ]  	🥉Bronze (easy): A [CITATION.cff](https://citation-file-format.github.io/) file exists in the code repository to provide citational metadata about your project
	- [ ]  	🥈Silver (easy): bronze plus two or more from:
		- [ ] Adopt a url schema which makes dynamically generated pages easily citable
		- [ ] Check that your web pages archive well with web snapshotting tools like the [internet archive's wayback machine](http://web.archive.org/) or [ArchiveBox](https://archivebox.io/)
		- [ ] The project has persistent resolvable identifier such as a DOI or SWHID, with which it can be referenced, which has been minted for the project using a tool like [zenodo](https://zenodo.org/) or [Software Heritage's Archive](https://www.softwareheritage.org/) to store an archival the project.
	- [ ]  	🥇Gold (intermediate): silver plus:
		- [ ] Contributions are credited using a suitable contributor roles ontology or taxonomy (CROT) such as [CrediT](https://credit.niso.org/),[ScoRo](http://www.sparontologies.net/ontologies/scoro),[CRO](https://github.com/data2health/contributor-role-ontology), or [TaDiRAH](https://tadirah.info/).
		- [ ] All contributors are identified by their [ORCID](https://orcid.org/) or other suitable persistent identifier
	- [ ]  	🏆Platinum (mixed): gold plus any two or more from:
		- [ ] (easy) All research institutions are identified by their [ROR](https://ror.org/) ID
		- [ ] (intermediate) Versioned persistent identifier with automation to update snapshots on zenodo or similar tool when a new version is created.
		- [ ] (intermediate) Annotating work cited in this work with the [Citation Typing Ontology (CiTO)](http://purl.org/spar/cito)
		- [ ] (hard) Package your software for Nix or Guix - this might not seem like it contributes to making software more citable see details below for why this is the case.

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

## ✅Testing

*How can you test your project so you can be confident it does what you think it does?*

- [ ]
	- [ ]  	🥉Bronze (easy):
	- [ ]  	🥈Silver (easy):
	- [ ]  	🥇Gold (intermediate):
	- [ ]  	🏆Platinum (intermediate):

<details>
<ul>
	<li>CI/CD (continuous integration and continuous deployment)</li>
	<li>The CI part of CI/CD is mostly covered in the software package</li>
	<li>More integration tests which check that the different components of your system work together as expected and UI based testing frameworks which simulate user interaction in a web browser might be things that you would consider adding</li>
</ul>
</details>

## 👥Peer review / Code Review

- [ ]
	- [ ]  	🥉Bronze (easy):
	- [ ]  	🥈Silver (easy):
	- [ ]  	🥇Gold (intermediate):
	- [ ]  	🏆Platinum (intermediate):

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

## 📦Distribution

- [ ]
	- [ ]  	🥉Bronze (easy):
	- [ ]  	🥈Silver (easy):
	- [ ]  	🥇Gold (intermediate):
	- [ ]  	🏆Platinum (intermediate):

<details>
<ul>
	<li> Your general audience is users of your web service, and there's a smaller but imporant audience of sysadmins and developers who may need to run your server software on their own systems not just use it. So 'distribution' splits in to two slightly different problems.</li>
	<ul>
		<li>
		Operating your website, things like making sure that your SSL certificates stay up to date and you have enough comput resources for the service to run well for users.
		All the usual work of hosting a webservice.
		</li>
		<li>
		Distributing your server software to sysadmins, devops people, and potentially general IT staff, developers, and amateur self-hosters.
		</li>
	</ul>
	<li>APIs?</li>
</ul>
</details>

## 💽Environment Management / Portability

- [ ] Simple to install development, testing, and/or demo environment
	- [ ]  	🥉Bronze (easy):
	- [ ]  	🥈Silver (easy):
	- [ ]  	🥇Gold (intermediate):
	- [ ]  	🏆Platinum (intermediate):

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

- [ ]
	- [ ]  	🥉Bronze (easy):
	- [ ]  	🥈Silver (easy):
	- [ ]  	🥇Gold (intermediate):
	- [ ]  	🏆Platinum (intermediate):

<details>

Everyone likes fast and efficient code, but especially if your code is going to be re-used by a lots of people in a computationally demanding application it can burn a lot of energy.
This translates to carbon emmisions, water use and oppertunity costs for whatever else could have been done with that energy and compute time.
If you're making a pipeline produces a lot of intermediate files and outputs consider which of these are needed or good defaults, which could be optional and which could be discarded by default.
Defaults are king and people will mostly keep whatever your tool outputs often essentially indefinietly so you can reduce the energy expended on unnecessary storage by keeping your outputs lean.
Consider what can you do to make your code a little more efficient.

Good documentation and good error handing can reduce the number of times people make mistakes using your code that means they re-run or partially re-run their analysis multiple times before they figure out how to use it right.

<ul>
	<li>
	Don't generate unnecessary outputs that will sit on people's drives unused, clean results of intermediate steps
	</li>
	<li>
	for pipelines in particular caching results and avoiding needing to re-compute things if possible - make best use of these features in pipeline managers for example by having small granular tasks to minimise repeated work on run failure.
	</li>
	<li>
	Choice of libraries and frameworks - some libraries may be more efficient that others or be a wrapper around an efficient implementation in another language, or be able to make use of offload to hardware accelerators.
	</li>
	<li>
	benchmarking & Profiling to locate and improve inefficient code
	</li>
	<li>
	Language Choice
	</li>
	<li>
	Offload to harware accelerators
	</li>
</ul>
</details>

## ⚖ Governance, Conduct, & Continuity

How can you be excellent to each other, make good decisions well, and continue to do so?

- [ ] The project has a suitable governance model
	- [ ]  	🥉Bronze (easy): The governance model is clearly communicated
	- [ ]  	🥈Silver (easy): Bronze Plus - Project has continuity planning in place (2 or more from)
		- [ ] Source archived and/or mirrored to other platforms
		- [ ] Public archives of key project governance documentation and plans for continuity of operations in the events such as the loss of key project infrastructure
		- [ ] Plans of action in the event project admin(s) are no longer available
	- [ ]  	🥇Gold (intermediate): Project has a governance model appropriate to its scale
		- [ ]
		- [ ] Project has clear and transparent processes
	- [ ]  	🏆Platinum (Hard): Project has a track record of good governance and policy
		- [ ]
		- [ ] Learned from any mistakes and implemented policy changes as a result

<details>
<ul>
	<li>
	If you are the Benevolent Dictator For Life (BDFL) of your project and the Code of Conduct (CoC) is "Don't be a Dick" that's fine, for many individual hobby projects this a functional reality.
	It is helpful to be clear about it if you lack resources, time, interest, skill, or inclination to be an active enforcer, mediator and moderator of community norms and disputes.
	Only by communicating this might you be able to find community members to help you with setting and enforcing these norms, if or when your community attains a scale where this becomes relevant - community management is its own skill set.
	If you can't moderate them avoid creating and/or continuing ungoverned community spaces that can become a liability for you and your project's reputation.
	</li>
	<li>
	Just as there are off-the-shelf licenses there are off-the-shelf codes of conduct, the [Contributor Covenant](https://www.contributor-covenant.org/) is perhaps the best known and most widely used, though may need some customisation to your needs.
	Adopting such a CoC gives you some guidance to follow if there is bad behaviour in your project's community and communicates that you as the project leadership take the responsibility of creating a respectful environment for collaboration seriously.
	[The Turing Way](https://doi.org/10.5281/zenodo.3233853) provides quite a nice example of a [CoC developed specifically for their project](https://web.archive.org/web/20240412122958/https://book.the-turing-way.org/)
	You will need to provide contact information for the person(s) responsible for the enforcement of the CoC in the appropriate place and be able to follow up in the event it is used.
	git forges often recognise files with the name `CODE_OF_CONDUCT.md` in the root of project and provide a link to them on project home pages, so this is a good place to document such policies.
	If you are the BDFL of a small project then interpretation and enforcement of such a CoC tends to fall solely on you - game out some courses of action for what you'd do if faced with some common moderation challenges.
	</li>
	<ul>
		<li>
		Once a project attracts a larger community there is greater scope for disputes and therefore for the need for dispute resolution mechanisms.
		Free/Libre and Open Source Software development and maintenance can be thought of as a commons so I would refer you to the [work of Elinor Ostrom](https://archive.org/details/ElinorOstromGoverningTheCommons) on how commons have been successfully (or unsuccessfully) governed when thinking about what processes to adopt for your project.
		More recently [Nathan Schneider's Governable Spaces: Democratic Design for Online Life](https://doi.org/10.1525/luminos.181) tackles some of these issues as applied to online spaces.
		</li>
		<li>This is summarised in the [8 Principles for Managing a Commons](https://web.archive.org/web/20240411163813/https://onthecommons.org/magazine/elinor-ostroms-8-principles-managing-commmons/index.html)</li>
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
	</ul>
	<li>
	An informal [do-ocracy](https://web.archive.org/web/20230201164442/https://communityrule.info/modules/do-ocracy/) in the fiefdom of BDFL is often the default state of projects that have not given much conscious thought to how they want to be governed and are thus often subject to many of the same common failure modes of this model.
	How are decisions made in your project? Do you need the mechanisms of governance used by community and civil society organisations?
	By-laws, a committee and/or working groups, general meetings, votes, minutes? A version of these may be necessary to avoid [The Tyranny of Structurelessness](https://web.archive.org/web/20240406094310/https://www.jofreeman.com/joreen/tyranny.htm)
	How can you map these onto your development infrastructure and make the decisions of your governing bodies enactable and enforceable?
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
</ul>

</details>

 <p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/HDBI/data-management/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"></a></p>
