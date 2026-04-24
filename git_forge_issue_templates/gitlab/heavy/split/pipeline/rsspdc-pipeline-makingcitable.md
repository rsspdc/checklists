From the Pipelines & Workflows *[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

version: alpha


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
 
<details>
<ul>
	<li>
	Beyond merely making it possible to consistently reference a research output the higher tiers on the checklist don't merely make the output citable but help to follow better citation and bibliographic practices.
	This extends from the practical, making it easy import into reference mangers like [zotero](https://www.zotero.org/);
	To protecting against link-rot through the use of persistent digital object identifiers;
	To the use of linked / semantic data practices identify and connect contributors, the nature of their contributions, their institutional assoications and thing to which they contributed.
	Further reading on the [ethics of CROTs](https://doi.org/10.1080/08989621.2022.2161049), as well as their [evolution and adoption](https://doi.org/10.1002/leap.1496).
	</li>
	<li>
		When choosing to where to archive your code to [Zenodo](https://zenodo.org/) and/or [Software Herttage](https://www.softwareheritage.org/), they are not mutually exclusive, here is what you should know about how they differ.
		<ul>
			<li>Zenodo only stores a snapshot of your project at the time you take one and uses DOIs as persistent identifiers. </li>
			<li>Software Heritage archives your entire git history and has git commit level granularity in it's persistent identifiers [SWHIDs](https://docs.softwareheritage.org/devel/swh-model/persistent-identifiers.html) as they are partly content based i.e. derived from a hash of the contents of your repository.</li>
		</ul>
		Acording to [DataCite](https://support.datacite.org/docs/versioning) recomendations, ideally you should only take new snapshots and mint a new DOI when you create a new major version of your code, using the [semantic versioning](https://semver.org/) concepts for incrementing verions.
		They advise to only update only to update the metadata with minor and patch releases and not to mint a new DOI.
		Unfortunately the default behaviour when using the github/Zenodo integration is to mint a new DOI every time you create a new release which is typically more frequently than when you increment you major version.
		A way around this it to use a CI/CD (continious integration and deployment) job which only triggers when the major version is incremented in a release and sends a snapshot to Zenodo via their API.
		If using [gitlab2zenodo](https://gitlab.com/sbeniamine/gitlab2zenodo) achieving this would be a relatively minor modification to their suggested gitlab CI/CD workflow, one way to do this would be to store the previous version in a variable you can update update with the gitlab API and check against that.
		Snapshotting on every release could add a lot unecessarily identifiers to the DOI namespace if the project it very active and should be avoided in this case, if your project will only needs infrequent updates this option is fine.
		To maximise reproducibility it is desireable to cite software used in a given analysis with commit level version granularity, and that only versions of software that are archived be used in published research.
	</li>
	<li>
		Nix and Guix
		<ul>
			<li>
				General software repositories may not make specific provision for citation of software packages in the academic fashion.
				However some provide, what is for some use cases, a superior form of 'citation' of their own sources i.e. a complete 'software bill of materials (SBOM)'.
				This is a list of all the code used in another piece of code, its dependencies, and their dependencies recursively, along with all of their versions.
				For example [Nix](https://nixos.org/) can do this but [Guix](https://guix.gnu.org/) is perhaps the most comprehensive in its approach, though for a smaller catalog of software.
				Whilst language specific automated environment managment tools such as {[renv](https://rstudio.github.io/renv/index.html)} & [poetry](https://python-poetry.org/) provide a version of this,
				their scope does not extend to system dependencies, so whilst helpful they are incomplete.
				Guix not only provides all information necessary for a complete 'SBOM' but, it can [bootstrap](https://guix.gnu.org/en/manual/en/html_node/Bootstrapping.html) software packages in its repository from source with an extremely minimal fixed set of binaries,
				with [bitwise binary reproducibility](https://reproducible-builds.org/) for vast majority of packages, an important capability for [creating somewhat trustworthy builds](https://www.cs.cmu.edu/~rdriley/487/papers/Thompson_1984_ReflectionsonTrustingTrust.pdf).
				This creates a compute environment which is not only reproducible but 'verifiable', meaning the source of all of an environment's dependencies can in theory be scrutinised.
				It also adopts an approach to commit signing and authorisation of signers that gives it a [currently uniquely complete supply chain security architecture](https://doi.org/10.22152/programming-journal.org/2023/7/1).
				Packages or 'derivations' are 'pure functions' in the sense that only their inputs effect their outputs and they have no side-effects,
				package builds are sandboxed to prevent dependencies on any external source not explicitly provided as an input,
				and inputs are hashed to ensure that they cannot differ for the value expected when they were packaged.
				This gives these technologies an unrivaled ability to readily demonstrate the reproducibility and provenance of compute environments specified using them.
			</li>
			<li>
				In addition Guix can automatically fall back on sources archived by [software heritage](https://www.softwareheritage.org/) if the original source repository is unavailable.
			</li>
			<li>
				Example of the use of Guix in practice for bioinformatic pipelines: [PiGx](https://bioinformatics.mdc-berlin.de/pigx/) ([paper](https://doi.org/10.1093/gigascience/giy123))
			</li>
			<li>
				The primary limitation of these tools at present is not all of the software commonly used in niche scientific domains is packaged in the upstream package repositories for Nix (~100,000 packages) & Guix (~20,000 packages) despite their considerable size.
				In order to use these tools with software not yet packaged for them users must learn how to write package derivations for the tool in question and any of it's unpackaged dependencies.
			</li>
		</ul>
	</li>
</ul>

</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/rsspdc/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0</a></p>
