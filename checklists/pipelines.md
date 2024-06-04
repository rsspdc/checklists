# Pipelines & Workflows

Considerations for publishing a data analysis pipeline which may be used in research or as a researcher

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
	If the workflow tool you are using has a convenient tool for initiating a template for a workflow then you may want to get your project's git repository started using that tool.
	[Nextflow](https://www.nextflow.io/) for example has the [nf-core template](https://nf-co.re/docs/contributing/guidelines/requirements/use_the_template) which makes the creation of an nf-core style pipeline project easy.
	</li>
</ul>
</details>

## ©Licencing

*On what terms can others use your code, and how can you communicate this?*

- [ ] Project is suitably licensed
	- [ ]  	🥉Bronze (easy): There is a LICENSE file in the repository for a license which meets one of the [OSI](https://opensource.org/osd), [Debian](https://www.debian.org/intro/free), or [FSF/GNU](https://www.gnu.org/philosophy/free-sw.en.html) definitions of free/libre or open source software. Or for any contents that are not software a [Creative Commons](https://creativecommons.org/) license.
	- [ ]  	🥈Silver (easy): If any prose/documentation or images is licenced differently from the code in the project this is indicated and those licences provided.
			If licences have an attribution requirement there is are easy to copy text/links for appropriate attribution.
	- [ ]  	🥇Gold (intermediate): Uses [REUSE.software](https://reuse.software/) to provide license information for every file.
	- [ ]  	🏆Platinum (intermediate): all previous tiers plus any images have licensing information embedded in their metadata.

<details>
<ul>
	<li>
	gray area around strong copyleft licenses like the GPL when used as libraries in combined works
	</li>
</ul>
</details>

## 📖Documentation

*How do people know what your project is, how to use it and how to contribute?*

- [ ]
	- [ ]  	🥉Bronze (easy):
	- [ ]  	🥈Silver (easy):
	- [ ]  	🥇Gold (intermediate):
	- [ ]  	🏆Platinum (intermediate):

<details>
<ul>
	<li>
	The inputs
	</li>
</ul>
</details>

## 🔗Making Citable

*How should people make reference to your project and credit your work?*

- [ ] Pipeline is Citable
	- [ ]  	🥉Bronze (easy): A [CITATION.cff](https://citation-file-format.github.io/) file exists in the code repository to provide citational metadata about your project
	- [ ]  	🥈Silver (easy): bronze plus both of the following:
		- [ ] A DOI, with which it can be referenced, has been minted for the project using a tool like [zenodo](https://zenodo.org/) or [Software Heritage's Archive](https://www.softwareheritage.org/) to store a snapshot of the project.
		- [ ] Contributions are credited using a suitable contributor roles ontology or taxonomy (CROT) such as [CrediT](https://credit.niso.org/),[ScoRo](http://www.sparontologies.net/ontologies/scoro),[CRO](https://github.com/data2health/contributor-role-ontology), or [TaDiRAH](https://tadirah.info/).
	- [ ]  	🥇Gold (intermediate): silver plus any two from:
		- [ ] Versioned DOI with automation to update snapshots on zenodo or similar tool when a new version tag is created.
		- [ ] All contributors are identified by their [ORCID](https://orcid.org/)
	- [ ] All research institutions are identified by their [ROR](https://ror.org/) ID
	- [ ]  	🏆Platinum (intermediate):

<details>
Beyond merely making it possible to consistently reference a research output the higher tiers on the checklist don't merely make the output citable but help to follow better citation and bibliographic practices.
This extends from the practical, making it easy import into reference mangers like [zotero](https://www.zotero.org/);
To protecting against link-rot through the use of persistent digital object identifiers;
To the use of linked / semantic data practices identify and connect contributors, the nature of their contributions, their institutional assoications and thing to which they contributed.

Further reading on the [ethics of CROTs](https://doi.org/10.1080/08989621.2022.2161049), their [evolution and adoption](https://doi.org/10.1002/leap.1496).
</details>

## ✅Testing

*How can you test your project so you can be confident it does what you think it does?*

- [ ] Pipeline has been tested
	- [ ]  	🥉Bronze (easy): The pipeline runs and produces the expected result on a minimal example dataset
	- [ ]  	🥈Silver (easy): Bronze plus:
		- [ ] A wide variety of possible input parameter combinations are tested
		- [ ] Datasets with different expected outcomes are tested, for example an output value is expected to be low in one dataset and high in another.
		This provides a sense check that the pipeline is doing what you think its doing, an input perturbation produces predictable change in the output.
	- [ ]  	🥇Gold (intermediate): Silver Plus:
		- [ ] Tests of error handling, pipeline fails early and gracefully when given invalid inputs as parameters.
		- [ ] Any Quality Control steps that you use have datasets which elicit both a pass and fail of that check.
		- [ ] Test are run automatically in continuous integration tools as changes are made to the code repository.
	- [ ]  	🏆Platinum (hard): automation?

<details>
The type of testing that is make most sense to emphasise in analysis pipelines is integration testing, do all the parts work together as expected.
Some aspects might lend themselves to unit testing but much of this would reside in the individual tools that a pipeline wraps.

The phrase 'expected result' is a bit nebulous, its robustness in testing hinges on how specific your expectations are.

A area to focus on testing might be your quality control (QC) steps.
Checking using data that is an example of a common source data quality issues and verifying that this triggers the appropriate QC warnings, for example.
Making sure that good quality data does not trigger quality warnings.
In addition to poor quality data test: corrupt, truncated, or incorrectly formed data/configuration files.
Edge cases like many extreme values.

Test data should follow the general principle: **as small as possible as large as necessary**
Real world data can potentially be down sampled, along with synthetic data generated to test edge cases.

Testing portability, does it run in different environments? nf-core nextflow pipelines for instance should be able to run with docker, apptainer (singularity), or conda based environments - do all of these work and produce the same output?
</details>

## 👥Peer review / Code Review

How can you get third party endorsement of and expert feedback on your project?

- [ ]
	- [ ]  	🥉Bronze (easy):
	- [ ]  	🥈Silver (easy):
	- [ ]  	🥇Gold (intermediate):
	- [ ]  	🏆Platinum (intermediate):

<details>
<ul>
<li>
The design of the analysis, any methodological choices made and any original steps added might warrant a conventional scientific publication if for example you are making a pipeline which automates a portion of the analysis of some new datatype
	<ul>
	<li>review the theory</li>
	</ul>
</li>
<li>
Technical
	<ul>
	<li>review the implementation</li>
	</ul>
</li>
</ul>
</details>

## 📦Distribution

How can people install or access the software emerging from your project?

- [ ]
	- [ ]  	🥉Bronze (easy):
	- [ ]  	🥈Silver (easy):
	- [ ]  	🥇Gold (intermediate):
	- [ ]  	🏆Platinum (intermediate):

<details>
<ul>
<li>
Good places to distribute workflows include:
	<ul>
	<li>
	[workflowhub](https://workflowhub.eu) most generic accepts workflows in a number different tools
	</li>
	<li>
	- For Nextflow pipelines in the nf-core format [nf-core](https://nf-co.re/) (MIT license required for pipeline code)
	</li>
	<li>
	For Snakemake pipelines which conform to some relatively simple requirements [snakemake workflow catalog](https://snakemake.github.io/snakemake-workflow-catalog/)
	</li>
	<li>
	Pipelines in the R {[targets](https://docs.ropensci.org/targets/)} tool [targetopia](https://wlandau.github.io/targetopia/)
	</li>
	</ul>
</li>
</ul>
</details>

## 💽Environment Management / Portability

How can people get specific versions of your software running on their systems?

- [ ]
	- [ ]  	🥉Bronze (easy):
	- [ ]  	🥈Silver (easy):
	- [ ]  	🥇Gold (intermediate):
	- [ ]  	🏆Platinum (intermediate):

<details>
<ul>
	<li>
	containers, conda, singularity/apptainer
	</li>
</ul>
</details>

## 🌱 Energy Efficiency

How can you and your users minimise wasted energy?

- [ ]
	- [ ]  	🥉Bronze (intermediate):
		- [ ] Adopt a process to review outputs and keep only those necessary
	- [ ]  	🥈Silver (intermediate): Bronze plus:
		- [ ] Energy consumption and emissions Estimation/Measurement
	- [ ]  	🥇Gold (hard):
		- [ ] Appropriately balances the possible efficiency gains against the cost of testing, development, and benchmarking
		- [ ] Implemented in an efficient language for the task
		- [ ] Makes use of efficient algorithms for its task
	- [ ]  	🏆Platinum (hard):
		- [ ] Makes use of hardware acceleration if appropriate
		- [ ] ?something about compile flags for optimal performance on different architectures and generations of architectures?

<details>

Everyone likes fast and efficient code, but especially if your code is going to be re-used by a lots of people in a computationally demanding application it can burn a lot of energy.
This translates to carbon emissions, water use and opportunity costs for whatever else could have been done with that energy and compute time.
If you're making a pipeline produces a lot of intermediate files and outputs consider which of these are needed or good defaults, which could be optional and which could be discarded by default.
Defaults are king and people will mostly keep whatever your tool outputs often essentially indefinitely so you can reduce the energy expended on unnecessary storage by keeping your outputs lean.
Consider what can you do to make your code a little more efficient.

Good documentation and good error handing can reduce the number of times people make mistakes using your code that means they re-run or partially re-run their analysis multiple times before they figure out how to use it right.

<ul>
	<li>
	If you are using a Nextflow pipeline then there is a very easy way to estimate the energy utilisation and carbon footprint of your pipelines with [`nf-co2footprint`](https://nextflow-io.github.io/nf-co2footprint/).
	This is a generalisation of a tool originally developed to estimate emissions for jobs submitted to HPC clusters running the SLURM scheduler: [GA4HPC](https://www.green-algorithms.org/GA4HPC/), see: [Green Algorithms: Quantifying the Carbon Footprint of Computation](https://doi.org/10.1002/advs.202100707).
	</li>
	<li>
	Don't generate unnecessary outputs that will sit on people's drives unused, clean results of intermediate steps
	</li>
	<li>
	For pipelines in particular caching results and avoiding needing to re-compute things if possible - make best use of these features in pipeline managers for example by having small granular tasks to minimise repeated work on run failure.
	</li>
	<li>
	Measurement - make use of tools to estimate the energy &/or carbon costs of your analyses and report them to the end user
	</li>
	<li>
	Choice of libraries and frameworks - some libraries may be more efficient that others or be a wrapper around an efficient implementation in another language, or be able to make use of offload to hardware accelerators.
	</li>
	<li>
	Benchmarking & Profiling to locate and improve inefficient code
	</li>
	<li>
	Language Choice - some languages are (at least on average) more efficient than others, weigh this as a factor when selecting-a-language
	</li>
	<li>
	Offload to hardware accelerators
	</li>
	<li>
	Consider timing and location of computationally intensive runs, you could automate running at optimal times and in optimal places to make use of surplus renewable energy. In the UK you could query the [national grid carbon intensity API](https://www.carbonintensity.org.uk/) to pick opportune times and/or places.
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
