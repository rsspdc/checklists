# Software Packages

Considerations for publishing a software package which may be used in research or as a researcher

## Source control

- [ ] Uses git

<details>
- If the language you are writing in has a convenient tool for initiating a template for a package then you may want to get your project's git repository started using that tool. R for example has the {[usethis](https://usethis.r-lib.org/)} package which makes the creation of a R minimal package very easy, including adding automated building and testing with github actions.
</details>

## Licencing

- [ ] Project is suitably licensed, there is a LICENCE file in the repository
<details>
- All software needs a license if you want to permit others to reuse it. It is important to give some thought to the type of license which best suits your project, it is a choice which can have significant long term implications. Checkout [the turing way chapter on licensing for an introduction to the subject](https://the-turing-way.netlify.app/reproducible-research/licensing.html). If you have no time some pretty safe choices are: For a permissive license, the Apache 2.0. This would allow the re-use of your work in closed commercial code. For a 'copyleft' license, the GPLv3 (AGPL for server-side apps). This requires that anyone distributing software containing your code or derivatives of it share the source code with the people they distributed it too.
- If you are including external code in your package then you should check that their licenses are compatible and you are legally allowed to distribute your code together in this way. Checkout this [resource on license compatibility](https://the-turing-way.netlify.app/reproducible-research/licensing/licensing-compatibility.html).
- [REUSE.software](https://reuse.software/) is a tool that can help you keep track licenses in complex multi-license projects. It identifies licences for code in individual files with [SPDX](https://spdx.dev/) licence codes and has an approach to doing so for binary assets.
</details>

## Documentation

- [ ] Project has README file
- [ ] README provides a description of the project structure so that the user knows which directories to find things in
- [ ] README contains instructions with sufficient detail for someone to set up a development environment for the package
<details>
- README / Manual
	- Some things that it is a good idea to include in a README/manual
		- What your project is and what it does
		- install instructions
		- development environment setup
			- overview of project organisation and structure
		- Contribution guidance
			- for example: Issue templates, a code of conduct, process details
- 'docstrings' and similar
	- Many programming languages have a way of documenting your code inline which can automate the generation of some parts of the documentation. This often takes the form of specifically marked-up comments. Examples include python's [dockstrings](https://peps.python.org/pep-0257/), R's [Roxygen2](https://roxygen2.r-lib.org/), and perl's [POD](https://perldoc.perl.org/perlpod)
- Vignettes / Examples
			- Examples of use of the code in the context of a real problem, beyond simple example snippets which might be included in the documentation of individual functions/objects. (These can also serve as a form of simple integration test.)
</details>

## Making Citable

- [ ] A DOI, with which it can be referenced, has been minted for the project using a tool like [zenodo](https://zenodo.org/) to store a snapshot of the project.
	- [ ] A CITATION.cff and/or .zenodo.json file exists in the repo to provide citational metadata about your project
<details>
- It is important that code used in research can be properly cited by researchers so that they can communicate which version they used, where to find the code, and give appropriate credit to it's authors. Even if you are not an academic it is important that academics be able to credit your work so that it can be appropriately valued in the scientific funding ecosystem. If it is not framed as contributing to a research output it is harder to justify funding it and paying developer salaries - even if indirectly.
- Including a [CITATION.cff](https://citation-file-format.github.io/) (Citation File Format) file in your project repo is a simple way of making your code citable. The format is readable in YAML and permits the provision of the metadata needed for citation.
- Zenodo permits you to mint a digital object identifier (DOI) for your code and makes a snapshot of it, importing citational metadata from a .cff file or a .zenodo.json file. This makes it persistently identifiable and easy to integrate with citation management tools which can import the citation metadata given a DOI.
- General software repositories may not make specific provision for citation of software packages in the academic fashion. However some provide, what is for some use cases, a superior form of 'citation' of their own sources i.e. a complete 'software bill of materials (SBOM)'. This is a list of all the code used in another piece of code, its dependencies, and their dependencies recursively, along with all of their versions. [Guix](https://guix.gnu.org/) for example, is the most comprehensive. It not only provides a complete 'SBOM' but, using it, can [bootstrap](https://guix.gnu.org/en/manual/en/html_node/Bootstrapping.html) any software package in its repository from source with an extremely minimal fixed set of binaries.
</details>

## Testing

<details>
- The use of automated testing frameworks is especially useful for software that is under ongoing development as it allows developers to catch the unintended consequences of a change made in one place on some other part of the code that they did not anticipate.
- Unit tests allow you to spell out in detail what you expect the behaviour of your software to be under a particular circumstance and test if it conforms to these expectations. Automatically running tests like this can be added to CI/CD pipelines on git forges
- TDD
- examples
</details>

## Peer review

<details>
- Entities like The [Journal of Open Source Software (JOSS)](https://joss.theoj.org/), [rOpenSci](https://ropensci.org/), [pyOpenSci](https://www.pyopensci.org/) provide a more 'academic peer review flavoured' form of software review and make it easy to cite software in the academic style.
- Package repositories like [CRAN](https://cran.r-project.org/) and [Bioconductor](https://contributions.bioconductor.org/index.html) have quite robust processes for review of suitability and quality of packages that are listed in these repositories, this is a form of peer-review though with a more technical focus than academic peer review of research manuscripts. By contrast [PyPI](https://packaging.python.org/en/latest/tutorials/packaging-projects/) and [npm](https://docs.npmjs.com/creating-a-package-json-file) have minimal review processes and anyone with an account can upload packages which meet their technical specifications for packaging. Different language communities have different standards and practices around their major package repositories.
</details>

## Distribution

<details>
- Packaging your software so that it can easily be installed by package and environment management tools is important to allow people to use your software. Using standard packing format and build tools also often makes it easier to automate testing and documentation building from your source code as well as building binary packages for different, versions, operating systems and architectures.
- Package repositories and other packaging formats, conda, spack, Nix
- If you do not have the resources to maintain your package it may be preferable to leave it out of the main package repos, some may not allow your code to be included there without and active maintainer. It can be useful to indicate the status of the project in it's README. Let people know that it's not receiving active maintenance and might not be updated to new language and package versions if you are not doing this.
</details>

## Environment Management / Portability

<details>
- Use of a robust environment management tool for you language which can exactly reproduce the environment in which any given build of your software was made. In particular any released version of your software would ideally be re-buildable from source in a bit for bit fashion.
- For a software package that people may want to run in many different environments and which may be run with different versions of the language and other packages it is important to check a broad combination of factors which might crop up in environment that people are likely to be using such as:
	- Different operating systems and versions of these operating systems
		- e.g. Linux vs Windows vs MacOS, and Win10 vs Win11
	- Different language versions
		- e.g. R 3.6.3 and R 4.3.2
	- Different computational architectures
		- x86_64, arm64, RISCV
		- There are practically analogous issues with code to run on AMD vs Intel vs Nvidia accelerators
	- Combinations of all of the above
- You can cover all of these is all combinations, nor do you need to, just cover the ones most relevant to your software and it's users.
</details>

