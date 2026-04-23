---
name: Record of a specific analysis
about:
title:[RSSPDC] <issue>
---

From the Record of a specific analysischecklist

version: alpha

*[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]


## 🔗 Making Citable

*How should people make reference to your project and credit your work?*

- [ ] Record is Citable
	- [ ] 🥉Bronze *(easy)*: A [CITATION.cff](https://citation-file-format.github.io/) file exists in the code repository to provide citational metadata about your project
	- [ ] 🥈Silver *(easy)*: bronze plus the project has persistent resolvable identifier such as a DOI or SWHID, with which it can be referenced, which has been minted for the project using a tool like [zenodo](https://zenodo.org/) or [Software Heritage's Archive](https://www.softwareheritage.org/) to store an archival copy of the project.
	- [ ] 🥇Gold *(intermediate)*: silver plus:
		- [ ] Contributions are credited using a suitable contributor roles ontology or taxonomy (CROT) such as [CrediT](https://credit.niso.org/), [ScoRo](http://www.sparontologies.net/ontologies/scoro), [CRO](https://github.com/data2health/contributor-role-ontology), or [TaDiRAH](https://tadirah.info/).
		- [ ] All contributors are identified by their [ORCID](https://orcid.org/) or other suitable persistent identifier
	- [ ] 🏆Platinum *(mixed)*: gold plus any two or more from:
		- [ ] All research institutions are identified by their [ROR](https://ror.org/) ID *(easy)* 
		- [ ] Versioned persistent identifier with automation to update snapshots on zenodo or similar tool when a new version is created. *(intermediate)* 
		- [ ] Annotating work cited in this work with the [Citation Typing Ontology (CiTO)](http://purl.org/spar/cito) *(intermediate)* 
		- [ ] Your environment is defined with Nix or Guix - this might not seem like it contributes to making software more citable see details below for why this is the case. *(hard)* 

In some cases for small and simple projects a README file is sufficient documentation.
This may genuinely be all that you need, or inadequate to the task depending on the project.
 
<details>
<ul>
	<li>
	**The code underpinning a publication is a part of your methods.**
	The legacy publishing system lacks a suitable and convenient way of including your analysis code as a part of your methods section so to work around this it is best to make your code a seperate citable object and just cite it in your methods section.
	</li>
	<li>
	Including a [CITATION.cff](https://citation-file-format.github.io/)(Citation File Format) file in your project repo is a simple way of making your code citable.
	The format is readable in YAML and permits the provision of the metadata needed for citation.
	</li>
	<li>
	[Zenodo](https://zenodo.org/) permits you to mint a [digital object identifier (DOI)](https://www.doi.org/) for your code and makes a snapshot of it, importing citational metadata from a [CITATION.cff](https://citation-file-format.github.io/) file or a .zenodo.json file.
	This makes it persistently identifiable and easy to integrate with citation management tools which can import the citation metadata given a DOI.
	</li>
	<li>
		Nix and GUIX
		<ul>
			<li>
				General software repositories may not make specific provision for citation of software packages in the academic fashion.
				However some provide, what is for some use cases, a superior form of 'citation' of their own sources i.e. a complete 'software bill of materials (SBOM)'.
				This is a list of all the code used in another piece of code, its dependencies, and their dependencies recursively, along with all of their versions.
				For example [Nix](https://nixos.org/) can do this but [Guix](https://guix.gnu.org/) has perhaps the most comprehensive in its approach.
				It not only provides all information necessary for a complete 'SBOM' but, it can [bootstrap](https://guix.gnu.org/en/manual/en/html_node/Bootstrapping.html) software packages in its repository from source with an extremely minimal fixed set of binaries, an important capability for [creating somewhat trustworthy builds](https://www.cs.cmu.edu/~rdriley/487/papers/Thompson_1984_ReflectionsonTrustingTrust.pdf).
				This creates a compute environment which is not only reproducible but verifiable, meaning the source of all of an environment's dependencies can in theory be scrutinised.
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

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/HDBI/data-management/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"></a></p>
