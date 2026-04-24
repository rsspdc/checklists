---
name: Software Packages
about:
title:[RSSPDC] <issue>
---

From the Software Packages *[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

version: alpha


## 📦 Distribution

*How can people install or access the software emerging from your project?*

- [ ] Package is distributed in appropriate format(s)
	- [ ] 🥉Bronze *(easy)*: On a software forge (such as [GitHub](https://github.com/) or [Codeberg](https://codeberg.org/)) in a standard package format so that it can be installed as a development package with the language's standard tooling.
	- [ ] 🥈Silver *(easy)*: Packaged in a language specific package respository such as [CRAN](https://cran.r-project.org/), [PyPI](https://pypi.org/), [crates.io](https://crates.io/), [CPAN](https://www.cpan.org/) etc.
	- [ ] 🥇Gold *(intermediate)*: Packaged for additional general package mangement tools with better systems dependency management than language specificic package mangers such as [conda](https://conda.org/), better still functional packaging format such as [Nix](https://nixos.org/) or [Guix](https://guix.gnu.org/)
	- [ ] 🏆Platinum *(intermediate)*: Available in with additional packagement tools, and from additional repositories
- Not just available in the package format of but present in the package repositories of: [conda forge](https://conda-forge.org/docs/user/introduction/) or better still [NixPkgs](https://github.com/NixOS/nixpkgs/) or [Guix](https://packages.guix.gnu.org/).
- If applicable it has a [reproducible binary build](https://reproducible-builds.org/) (ideally for all common architechtures)
 
<details>
<ul>
	<li>
	Packaging your software so that it can easily be installed by package and environment management tools is important to allow people to use your software.
	Using standard packing format and build tools also often makes it easier to automate testing and documentation building from your source code as well as building binary packages for different, versions, operating systems and architectures.
	</li>
	<li>Package repositories and other packaging formats, conda, spack, Nix.</li>
	<li>If you do not have the resources to maintain your package it may be preferable to leave it out of the main package repos, many may not allow your code to be included there without an active maintainer.</li>
</ul>

</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/rsspdc/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0</a></p>
