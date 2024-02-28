# Pipelines & Workflows

Considerations for publishing a data analysis pipeline which may be used in research or as a researcher

## Source control

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

## Licencing

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

## Documentation

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

## Making Citable

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

## Testing

- [ ]
    - [ ]  	🥉Bronze (easy):
    - [ ]  	🥈Silver (easy):
    - [ ]  	🥇Gold (intermediate):
    - [ ]  	🏆Platinum (intermediate):

<details>
<ul>
    <li>having test datasets which cover all of the different paths</li>
    <li>Real world data potentially along with synthetic data generated to test edge cases</li>
    <li>testing different combinations of options</li>
    <li>testing portability</li>
    <li>testing</li>
</ul>
</details>

## Peer review / Code Review

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

## Distribution

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

## Environment Management / Portability

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

