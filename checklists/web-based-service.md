# Web-based service

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
	- [ ]  	🥇Gold (Hard): Silver plus - Well written commit messages, nice granular commits making discrete self-contained changes. Tags, releases, or branches at major project milestones, maybe some contributions from other users
	- [ ]  	🏆Platinum (MAXIMUM OVERKILL): Gold plus - Some from: [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/); Clean history with a consistent rebasing/merging strategy; Signed commits from all contributors; Contributions go through a consistent workflow like, issues, then a pull request from a branch.

<details>
<ul>
	<li>
	For large projects it might be useful to adopt some conventions for your git commit messages such as [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/) to improve the searchability and scannability of your commit history to other contributors to your code base.
	<li>
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
	</ul>
</details>

## 📖Documentation

*How do people know what your project is, how to use it and how to contribute?*

- [ ] Project is suitably Documented
	- [ ]  	🥉Bronze (easy): Project has README file (See details for minimum suitable README)
	- [ ]  	🥈Silver (easy):
	- [ ]  	🥇Gold (intermediate):
	- [ ]  	🏆Platinum (intermediate):

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
		<li>User: Using the website graphically - this might include admin options if you have administrative user of some kind</li>
		<li>Developers: API docs, how to contribute, and how to set up a development environment, tooling used</li>
		<li>Sysadmins: how to deploy an instance of the service, how to configure it, what you might want to do differently from the development environment, for example to have a more secure config and considerations that might affect backups, and managing updates/grades.</li>
	</ul>
</ul>
</details>

## 🔗Making Citable

*How should people make reference to your project and credit your work?*

- [ ] A DOI, with which it can be referenced, has been minted for the project using a tool like [zenodo](https://zenodo.org/) to store a snapshot of the project.
	- [ ] A CITATION.cff and/or .zenodo.json file exists in the repo to provide citational metadata about your project
<details>
<ul>
	<li>
	Adopting a stable, consistent and human readable naming schema for the URLs on your web service, including the ability to reproduce state of dynamically generated pages with parameters in the URL, makes referring to specific items much easier for users citing the website according to the conventions for citing websites. It also helps for archival tools like the [internet archive's wayback machine](http://web.archive.org/) and [ArchiveBox](https://archivebox.io/) which can be used by researchers and others to take a snapshot of a website at the time at which they are citing it to avoid issues of updates to the website altering the content or linkrot.
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

- [ ]
	- [ ]  	🥉Bronze (easy):
	- [ ]  	🥈Silver (easy):
	- [ ]  	🥇Gold (intermediate):
	- [ ]  	🏆Platinum (intermediate):

<details>
</details>
