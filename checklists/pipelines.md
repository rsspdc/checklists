# Pipelines & Workflows

Considerations for publishing a data analysis pipeline which may be used in research or as a researcher

## 📒Source control

- [ ] Uses git (or other source control tool)
    - [ ]  	🥉Bronze (Easy): Using version control but has a shallow project history, just placed in git for distribution
    - [ ]  	🥈Silver (Intermediate): Longer project history, commit messages of mixed quality, some large messy changes
    - [ ]  	🥇Gold (Hard): Silver plus - Well written commit messages, nice granular commits making discrete self-contained changes. Tags, releases, or branches at major project milestones, maybe some contributions from other users
    - [ ]  	🏆Platinum (MAXIMUM OVERKILL): Gold plus - Some from: [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/); Clean history with a consistent rebasing/merging strategy; Signed commits from all contributors; Contributions go through a consistent workflow like, issues, then a pull request from a branch.

<details>
<ul>
    <li>
    If the workflow tool you are using has a convenient tool for initiating a template for a workflow then you may want to get your project's git repository started using that tool. [Nextflow](https://www.nextflow.io/) for example has the [nf-core template](https://nf-co.re/docs/contributing/guidelines/requirements/use_the_template) which makes the creation of an nf-core style pipeline project easy.
    </li>
</ul>
</details>

## ©Licencing

- [ ] Project is suitably licensed
    - [ ]  	🥉Bronze (easy): There is a LICENSE file in the repository for a license which meets one of the [OSI](https://opensource.org/osd), [Debian](https://www.debian.org/intro/free), or [FSF/GNU](https://www.gnu.org/philosophy/free-sw.en.html) definitions of free/libre or open source software. Or for any contents that are not software a [Creative Commons](https://creativecommons.org/) license.
    - [ ]  	🥈Silver (easy): If any prose/documentation or images is licenced differently from the code in the project this is indicated and those licences provided. If licences have an attribution requirement there is are easy to copy text/links for appropriate attribution. 
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

- [ ] Pipeline is Citable
    - [ ]  	🥉Bronze (easy): A [CITATION.cff](https://citation-file-format.github.io/) file exists in the code repository to provide citational metadata about your project
    - [ ]  	🥈Silver (easy): bronze plus both of the following:
        - [ ] A DOI, with which it can be referenced, has been minted for the project using a tool like [zenodo](https://zenodo.org/) to store a snapshot of the project.
        - [ ] Contributions are credited using a suitable contributor roles ontology or taxonomy (CROT) such as [CrediT](https://credit.niso.org/),[ScoRo](http://www.sparontologies.net/ontologies/scoro),[CRO](https://github.com/data2health/contributor-role-ontology), or [TaDiRAH](https://tadirah.info/). 
    - [ ]  	🥇Gold (intermediate): silver plus any two from:
        - [ ] Versioned DOI with automation to update snapshots on zenodo or similar tool when a new version tag is created.
        - [ ] All contributors are identified by their [ORCID](https://orcid.org/)
	- [ ] All research institutions are identified by their [ROR](https://ror.org/) ID
    - [ ]  	🏆Platinum (intermediate): (what's the next step for this one? maybe: hedge against link rot by duplicating to a storage system that uses content based addressing, is immutable, and decentralised.)

<details>
Beyond merely making it possible to consistently reference a research output the higher tiers on the checklist don't merely make the output citable but help to follow better citation and bibliographic practices.
This extends from the practical, making it easy import into reference mangers like [zotero](https://www.zotero.org/);
To protecting against link-rot through the use of persistent digital object identifiers;
To the use of linked / semantic data practices identify and connect contributors, the nature of their contributions, their institutional assoications and thing to which they contributed.

Further reading on the [ethics of CROTs](https://doi.org/10.1080/08989621.2022.2161049), their [evolution and adoption](https://doi.org/10.1002/leap.1496).
</details>

## ✅Testing

- [ ] Pipeline has been tested
    - [ ]  	🥉Bronze (easy): The pipeline runs and produces the expected result on a minimal example dataset
    - [ ]  	🥈Silver (easy): Bronze plus:
        - [ ] A wide variety of possible input parameter combinations are tested
        - [ ] Datasets with different expected outcomes are tested, for example an output value is expected to be low in one dataset and high in another.
        This provides a sense check that the pipeline is doing what you think its doing, an input perturbation produces predictable change in the output.
    - [ ]  	🥇Gold (intermediate): Silver Plus:
        - [ ] Tests of error handling, pipline fails early and gracefully when given invalid inputs as parameters.
        - [ ] Any Quality Control steps that you use have datasets which elicit both a pass and fail of that check.
        - [ ] Test are run automatically in continious integration tools as changes are made to the code repository. 
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
    measurement - make use of tools to estimate the energy &/or carbon costs of your analyses and report them to the end user
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
