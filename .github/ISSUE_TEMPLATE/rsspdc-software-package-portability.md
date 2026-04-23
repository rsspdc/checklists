---
name: Software Packages
about:
title:[RSSPDC] <issue>
---

From the Software Packages*[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

version: alpha


## 💽 Environment Management / Portability

*How can people get specific versions of your software running on their systems?*

- [ ] The compute environment needed to build and install the package is well defined
	- [ ] 🥉Bronze *(easy)*: Makes use of a packaging format that defines dependencies in the package's own languge, but not neceasrily system dependencies
	- [ ] 🥈Silver *(easy)*: Packaging information captures all dependencies both build and runtime, either manually or in an automated fashion
	- [ ] 🥇Gold *(intermediate)*: Detailed version information of all dependencies is also captured, this might also include details of compatible version ranges, to facilitate dependency graph resolution in pacakage managers where only one version of a package can be installed in an environment at the same time.
- conda / environment.yml
	- [ ] 🏆Platinum *(intermediate)*: - Make use of functional package managers like Nix/Guix whose package derivations make the strongest guarantees about the ability to re-build a package as they describe a pure function called in a sandboxed environment.
- Cross operating system / architecture builds - does your package build on different operating systems and instruction set architectures (arm, x86, RISC-V etc.)
 
<details>
<ul>
	<li>
	Use of a robust environment management tool for you language which can exactly reproduce the environment in which any given build of your software was made. In particular any released version of your software would ideally be re-buildable from source in a bit for bit fashion.
	</li>
	<li>
	For a software package that people may want to run in many different environments and which may be run with different versions of the language and other packages it is important to check a broad combination of factors which might crop up in environment that people are likely to be using such as:
		<ul>
			<li>
				Different operating systems and versions of these operating systems
				<ul>
				<li>e.g. Linux vs Windows vs MacOS, and Win10 vs Win11</li>
				</ul>
			</li>
			<li>
				Different language versions
				<ul>
				<li>e.g. R 3.6.3 and R 4.3.2</li>
				</ul>
			</li>
			<li>
				Different computational architectures
				<ul>
				<li>x86_64, arm64, RISCV</li>
				<li>There are practically analogous issues with code to run on AMD vs Intel vs Nvidia accelerators</li>
				</ul>
			</li>
			</ul>
	</li>
	<li>Combinations of all of the above</li>
	<li>You can cover all of these is all combinations, nor do you need to, just cover the ones most relevant to your software and it's users.</li>
</ul>

</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/rsspdc/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0</a></p>
