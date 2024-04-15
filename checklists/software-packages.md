# Software Packages

Considerations for publishing a software package which may be used in research or as a researcher

## 📒Source control

*How can you keep track of the history of your project and collaborate on it?*

- [ ] Uses git (or other source control tool)
	- [ ]  	🥉Bronze (Easy): Using version control but has a shallow project history, just placed in git for distribution
	- [ ]  	🥈Silver (Intermediate): Longer project history, commit messages of mixed quality, some large messy changes
	- [ ]  	🥇Gold (Hard): Silver plus - Well written commit messages, nice granular commits making discrete self-contained changes. Tags, releases, or branches at major project milestones, maybe some contributions from other users
	- [ ]  	🏆Platinum (MAXIMUM OVERKILL): Gold plus - Some from: [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/); Clean history with a consistent rebasing/merging strategy; Signed commits from all contributors; Contributions go through a consistent workflow like, issues, then a pull request from a branch.

<details>
<ul>
	<li>
	If the language you are writing in has a convenient tool for initiating a template for a package then you may want to get your project's git repository started using that tool.
	R for example has the {[usethis](https://usethis.r-lib.org/)} package which makes the creation of a R minimal package very easy, including adding automated building and testing with github actions.
	</li>
</ul>
</details>

## ©Licencing

*On what terms can others use your code, and how can you communicate this?*

- [ ] Project is suitably licensed
	- [ ]  	🥉Bronze (easy): There is a LICENSE file in the repository for a license which meets one of the [OSI](https://opensource.org/osd), [Debian](https://www.debian.org/intro/free), or [FSF/GNU](https://www.gnu.org/philosophy/free-sw.en.html) definitions of free/libre or open source software.
			Or for any contents that are not software a [Creative Commons](https://creativecommons.org/) license.
	- [ ]  	🥈Silver (easy): If any prose/documentation or images is licenced differently from the code in the project this is indicated and those licences provided.
			If licences have an attribution requirement there is are easy to copy text/links for appropriate attribution.
	- [ ]  	🥇Gold (intermediate): Uses [REUSE.software](https://reuse.software/) to provide license information for every file.
	- [ ]  	🏆Platinum (intermediate): all previous tiers plus any images have licensing information embedded in their metadata.

<details>
<ul>
	<li>
	All software needs a license if you want to permit others to reuse it. It is important to give some thought to the type of license which best suits your project, it is a choice which can have significant long term implications.
	Checkout [the turing way chapter on licensing for an introduction to the subject](https://the-turing-way.netlify.app/reproducible-research/licensing.html).
	If you have no time some pretty safe choices are: For a permissive license, the Apache 2.0.
	This would allow the re-use of your work in closed commercial code.
	For a 'copyleft' license, the GPLv3 (AGPL for server-side apps).
	This requires that anyone distributing software containing your code or derivatives of it share the source code with the people they distributed it too.
	</li>
	<li>
	If you are including external code in your package then you should check that their licenses are compatible and you are legally allowed to distribute your code together in this way.
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
	- [ ]  	🥈Silver (intermediate):  If your language has a in-line documentation with which you can build documentation for your functions/objects etc. you are making full use of it.
			So that features such as the ability to produced a reference manual for all the key functional units of your code, and integrations with IDE (integrated development environment) features such as search, templates, and autocomplete can be made the most of.
	- [ ]  	🥇 Gold (time consuming): Your Documentation features examples; rich, varied and working ones.
			Examples should cover both simple and more complex use cases, touching on as much of the functionality as they can.
	- [ ]  	🏆 Platinum (intermediate): All examples are executed upon a full build of the documentation so that you know that they at least run.

In some cases for small and simple projects a README file is sufficient documentation.
This may genuinely be all that you need, or inadequate to the task depending on the project.

<details>
<ul>
	<li>
		README / Manual
		<ul>
			<li>What your project is and what it does</li>
			<li>install instructions</li>
			<li>
				Contribution guidance
				<ul>
					<li>for example: Issue templates, a code of conduct, process details</li>
				</ul>
			</li>
			<li>
				development environment setup
				<ul>
					<li>overview of project organisation and structure</li>
				</ul>
			</li>
		</ul>
	</li>
	<li>
		'docstrings' and similar
		<ul>
			<li>
				Many programming languages have a way of documenting your code inline which can automate the generation of some parts of the documentation.
				This often takes the form of specifically marked-up comments.
				Examples include python's [dockstrings](https://peps.python.org/pep-0257/), R's [Roxygen2](https://roxygen2.r-lib.org/), and perl's [POD](https://perldoc.perl.org/perlpod)
			</li>
		</ul>
	</li>
	<li>
		Vignettes / Examples
		<ul>
			<li>
				Examples of use of the code in the context of a real problem, beyond simple example snippets which might be included in the documentation of individual functions/objects.
				(These can also serve as a form of simple integration tests if you run them as a part of your documentation build.)
			</li>
		</ul>
	</li>
	<li>Larger projects might also include Project Documentation: Plans, Design documents and Specifications</li>
	<li>
		Process Documentation: how to proceeded with various tasks related to the project this might include: submitting issues, submitting merge requests, reporting possible vulnerabilities, testing, documentation, release, code review review
	</li>
</ul>
</details>

## 🔗Making Citable

*How should people make reference to your project and credit your work?*

- [ ] A DOI, with which it can be referenced, has been minted for the project using a tool like [zenodo](https://zenodo.org/) to store a snapshot of the project.
	- [ ] A CITATION.cff and/or .zenodo.json file exists in the repo to provide citational metadata about your project

- [ ] Package is Citable
	- [ ]  	🥉Bronze (easy): A [CITATION.cff](https://citation-file-format.github.io/) file exists in the code repository to provide citational metadata about your project
		- [ ] your project has a DOI or other persistent identifier with which it can be referenced and which points to an archived copy of your source.
			[Zenodo](https://zenodo.org/) can take a snapshot and mint a DOI, [Software Heritage](https://www.softwareheritage.org/) provides a SWHID.
	- [ ]  	🥈Silver (easy): bronze plus both of the following:
		- [ ] Contributions are credited using a suitable contributor roles ontology or taxonomy (CROT) such as [CrediT](https://credit.niso.org/),[ScoRo](http://www.sparontologies.net/ontologies/scoro),[CRO](https://github.com/data2health/contributor-role-ontology), or [TaDiRAH](https://tadirah.info/).
	- [ ]  	🥇Gold (intermediate): silver plus any two from:
		- [ ] Versioned DOI with automation to update snapshots on zenodo or similar tool when a new version tag is created.
		- [ ] All contributors are identified by their [ORCID](https://orcid.org/) or other suitable persistent identifier.
	- [ ] All research institutions are identified by their [ROR](https://ror.org/) ID
	- [ ]  	🏆Platinum (hard): Package your software for Nix or Guix - this might not seem like it contributes to making the software more citable see details below for why this is the case.

<details>
It is important that code used in research can be properly cited by researchers so that they can communicate which version they used, where to find the code, and give appropriate credit to it's authors.
 Even if you are not an academic it is important that academics be able to credit your work so that it can be appropriately valued in the scientific funding ecosystem.
 If it is not framed as contributing to a research output it is harder to justify funding it and paying developer salaries - even if indirectly.
 
 Beyond merely making it possible to consistently reference a research output the higher tiers on the checklist don't merely make the output citable but help to follow better citation and bibliographic practices.
 This extends from the practical, making it easy import into reference mangers like [zotero](https://www.zotero.org/);
 To protecting against link-rot through the use of persistent digital object identifiers;
 To the use of linked / semantic data practices identify and connect contributors, the nature of their contributions, their institutional assoications and thing to which they contributed.

Further information:   
<ul>
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
				It not only provides all information necessary for a complete 'SBOM' but, it can [bootstrap](https://guix.gnu.org/en/manual/en/html_node/Bootstrapping.html) any software package in its repository from source with an extremely minimal fixed set of binaries, an important capability for [creating somewhat trustworthy builds](https://www.cs.cmu.edu/~rdriley/487/papers/Thompson_1984_ReflectionsonTrustingTrust.pdf).
				This creates a compute environment which is not only reproducible but verifiable, meaning the source of all of an environments dependencies can in theory be scrutinised.
				It also adopts an approach to commit signing and authorisation of signers that gives it a [currently uniquely complete supply chain security architecture](https://doi.org/10.22152/programming-journal.org/2023/7/1).
				The Nix-like approach to package management does not suffer from the dependency resolution issues commonly encountered in other approaches to package management becasue the dependency graph is explicit and complete.
				Packages or 'derivations' are 'pure functions' in the sense that only their inputs effect their outputs and they have no side-effects, package builds are sandboxed to prevent dependencies on any external source not explicitly provided as an input and inputs are hashed to ensure that they cannot differ for the value expected when they were packaged.
			</li>
			<li>
				Content based addressing, distributed caching and archival fallback: git, Nix, Guix, IPFS (Interplanetary file System) and software heritage's IDs all make use of forms of content based addressing.
				Content based addressing is where the identifier is derived from the object being referenced.
				Commonly a hash function is used to generate the identifier, a hash function deterministically produces a fixed length output that is very probably unique for any given input.
				Work is underway to reconcile and/or translate between the different content based addressing systems used by these technologies so that the same objects can referenced in any of them.
				This may eventually permit the tooling & infrastructure of Nix & Guix to use IPFS for source and binary caching and to integrate with software heritage's archive to retrieve anything not cached in other IPFS nodes using the same mechanisms.
				This integration, once implemented, means that it should be possible with the standard tooling in Nix & Guix to retrieve and rebuild old software the repositories of which have disapeared and which is no longer cached in any IPFS based binary build caches of these distributions, as long as it has been archived by software heritage.
				This would occur in a fully automated fashion that falls back on the archive to retrieve the source and present to the user as simply taking slightly longer to install than something in the hot caches.
				The one of the last missing pieces here is addressing kernel level compatability issues and adding an ability to automatically run code incompatible with the current host kernel on a VM with a suitable kernel version and potentially suitable emulated harware for that kernel version.
				See: [NLnet Software heritage and IPFS](https://nlnet.nl/project/SoftwareHeritage-P2P/), [Tweag - software heritage and Nixpkgs](https://www.tweag.io/blog/2020-06-18-software-heritage/), [John Ericson - Nix x IPFS Gets a New Friend: SWH (SoN2022 - public lecture series)](https://www.youtube.com/watch?v=DjJyPzwEzmU)
			</li>
		</ul>
	</li>
</ul>
</details>

## ✅Testing

*How can you test your project so you can be confident it does what you think it does?*

- [ ]
	- [ ]  	🥉Bronze (easy): You are using unit tests and an automated testing framework
	- [ ]  	🥈Silver (easy): ?test coverage
	- [ ]  	🥇Gold (intermediate):
	- [ ]  	🏆Platinum (intermediate): You follow the 'Test Driven Development' (TDD) model.

<details>
<ul>
	<li>
	The use of automated testing frameworks is especially useful for software that is under ongoing development as it allows developers to catch the unintended consequences of a change made in one place on some other part of the code that they did not anticipate.
	Examples of automated testing frameworks include {[testthat](https://testthat.r-lib.org/)} for R & [unittest](https://realpython.com/python-testing/) for python.
	</li>
	<li>
	Unit tests allow you to spell out in detail what you expect the behaviour of your software to be under a particular circumstance and test if it conforms to these expectations.
	Automatically running tests like this can be added to CI/CD pipelines on git forges.
	</li>
	<li>Test Driven Development (TDD) is the practice of writing your tests first and then developing then writing the code which conforms to these tests.
	It works well if you have an extremenly well defined idea of what exactly you want your code to do and not do.
	</li>
	<li>examples</li>
</ul>
</details>

## 👥Peer review

- [ ]
	- [ ]  	🥉Bronze (easy):
	- [ ]  	🥈Silver (easy):
	- [ ]  	🥇Gold (intermediate):
	- [ ]  	🏆Platinum (intermediate):

<details>
<ul>
	<li>
	Entities like The [Journal of Open Source Software (JOSS)](https://joss.theoj.org/), [rOpenSci](https://ropensci.org/), [pyOpenSci](https://www.pyopensci.org/) provide a more 'academic peer review flavoured' form of software review and make it easy to cite software in the academic style.
	</li>
	<li>
	Package repositories like [CRAN](https://cran.r-project.org/) and [Bioconductor](https://contributions.bioconductor.org/index.html) have quite robust processes for review of suitability and quality of packages that are listed in these repositories, this is a form of peer-review though with a more technical focus than academic peer review of research manuscripts.
	By contrast [PyPI](https://packaging.python.org/en/latest/tutorials/packaging-projects/) and [npm](https://docs.npmjs.com/creating-a-package-json-file) have minimal review processes and anyone with an account can upload packages which meet their technical specifications for packaging.
	Different language communities have different standards and practices around their major package repositories.
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
	<li>
	Packaging your software so that it can easily be installed by package and environment management tools is important to allow people to use your software.
	Using standard packing format and build tools also often makes it easier to automate testing and documentation building from your source code as well as building binary packages for different, versions, operating systems and architectures.
	</li>
	<li>Package repositories and other packaging formats, conda, spack, Nix.</li>
	<li>
	If you do not have the resources to maintain your package it may be preferable to leave it out of the main package repos, some may not allow your code to be included there without and active maintainer.
	It can be useful to indicate the status of the project in it's README.
	Let people know that it's not receiving active maintenance and might not be updated to new language and package versions if you are not doing this.
	<li>
</ul>
</details>

## 💽Environment Management / Portability

- [ ]
	- [ ]  	🥉Bronze (easy):
	- [ ]  	🥈Silver (easy):
	- [ ]  	🥇Gold (intermediate):
	- [ ]  	🏆Platinum (intermediate):

<details>
<ul>
	<li>
	Use of a robust environment management tool for you language which can exactly reproduce the environment in which any given build of your software was made. In particular any released version of your software would ideally be re-buildable from source in a bit for bit fashion.
	</li>
	<li>
	For a software package that people may want to run in many different environments and which may be run with different versions of the language and other packages it is important to check a broad combination of factors which might crop up in environment that people are likely to be using such as:
	</li>
	<li>
	<ul>
	<li>Different operating systems and versions of these operating systems</li>
		<ul>
		<li>e.g. Linux vs Windows vs MacOS, and Win10 vs Win11</li>
		</ul>
	<li>Different language versions</li>
		<ul>
		<li>e.g. R 3.6.3 and R 4.3.2</li>
		</ul>
	<li>Different computational architectures</li>
		<ul>
		<li>x86_64, arm64, RISCV</li>
		<li>There are practically analogous issues with code to run on AMD vs Intel vs Nvidia accelerators</li>
		</ul>
	<li>Combinations of all of the above</li>
	</ul>
	</li>
	<li>You can cover all of these is all combinations, nor do you need to, just cover the ones most relevant to your software and it's users.</li>
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
This translates to carbon emissions, water use and opportunity costs for whatever else could have been done with that energy and compute time.
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
				An informal [do-ocracy](https://web.archive.org/web/20230201164442/https://communityrule.info/modules/do-ocracy/) in the fiefdom of BDFL is often the default state of projects that have not given much conscious thought to how they want to be governed and are thus often subject to many of the same common failure modes of this model.
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

</de

