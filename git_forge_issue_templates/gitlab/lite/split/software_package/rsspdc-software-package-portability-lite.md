From the Software Packages *[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

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
 
<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/rsspdc/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0</a></p>
