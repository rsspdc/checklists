---
name: Software Packages
about:
title:[RSSPDC] <issue>
---

From the Software Packages *[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

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
		- [ ] All research institutions are identified by their [ROR](https://ror.org/) ID *(easy)* 
		- [ ] Versioned persistent identifier with automation to update snapshots on zenodo or similar tool when a new version is created. *(intermediate)* 
		- [ ] Annotating work cited in this work with the [Citation Typing Ontology (CiTO)](http://purl.org/spar/cito) *(intermediate)* 
		- [ ] Package your software for Nix or Guix - this might not seem like it contributes to making software more citable see details below for why this is the case. *(hard)* 
 
<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/rsspdc/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0</a></p>
