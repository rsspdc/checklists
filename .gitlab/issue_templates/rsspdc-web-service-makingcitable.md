# Web-based service [raw markdown](https://gitlab.com/rsspdc/checklists/-/raw/master/checklists/rsspdc-web-based-service.md) [lite markdown](https://gitlab.com/rsspdc/checklists/-/raw/master/checklists/rsspdc-web-based-service-lite.md)

version: alpha

*[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

A database, API (application programming interface), or other web-based tool which is, generally, to be hosted on an ongoing basis and offer some service or access to some resource to researchers.
In many ways the key considerations here lean more organisational than technical.
Do you have the resources to operate the service on an ongoing basis?
A record of a specific analysis is a snapshot in time that is only expected to run in it's specified environment and once done is done.
Operating an online service requires continuous ongoing work to keep up with security updates and monitoring the status of your server(s) to ensure that your service is still up and working as intended.
You can also expect to take on some degree of user support from people having trouble using your service.
Depending on the nature of the project it may not make sense for others to be deploying instances of the server, but at minimum other developers will need a test deployment to work on if not now then in the future.

Most of the suggestions here would be the same as the section in the software packages checklist, and indeed software of this type is generally one or more packages so that checklist also applies here.
This checklist focuses on the things that are in addition to general packages and more specific to web-based services.


## 🔗 Making Citable

*How should people make reference to your project and credit your work?*

- [ ] Package is Citable
	- [ ]   🥉Bronze *(easy)*: A [CITATION.cff](https://citation-file-format.github.io/) file exists in the code repository to provide citational metadata about your project
	- [ ]   🥈Silver *(easy)*: Two or more from:
		- [ ] Adopt a url schema which makes dynamically generated pages easily citable
		- [ ] Check that your web pages archive well with web snapshotting tools like the [internet archive's wayback machine](http://web.archive.org/) or [ArchiveBox](https://archivebox.io/)
		- [ ] The project has persistent resolvable identifier such as a DOI or SWHID, with which it can be referenced, which has been minted for the project using a tool like [zenodo](https://zenodo.org/) or [Software Heritage's Archive](https://www.softwareheritage.org/) to store an archival the project.
	- [ ]   🥇Gold *(intermediate)*: All of the below:
		- [ ] Contributions are credited using a suitable contributor roles ontology or taxonomy (CROT) such as [CrediT](https://credit.niso.org/), [ScoRo](http://www.sparontologies.net/ontologies/scoro), [CRO](https://github.com/data2health/contributor-role-ontology), or [TaDiRAH](https://tadirah.info/).
		- [ ] All contributors are identified by their [ORCID](https://orcid.org/) or other suitable persistent identifier
	- [ ]   🏆Platinum *(mixed)*: gold plus any two or more from:
		- [ ] All research institutions are identified by their [ROR](https://ror.org/) ID *(easy)* 
		- [ ] Versioned persistent identifier with automation to update snapshots on zenodo or similar tool when a new version is created. *(intermediate)* 
		- [ ] Annotating work cited in this work with the [Citation Typing Ontology (CiTO)](http://purl.org/spar/cito) *(intermediate)* 
		- [ ] Package your software for Nix or Guix - this might not seem like it contributes to making software more citable see details below for why this is the case. *(hard)* 
 
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

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/HDBI/data-management/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"></a></p>
