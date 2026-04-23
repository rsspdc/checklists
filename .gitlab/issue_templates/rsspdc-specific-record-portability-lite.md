From the Record of a specific analysis *[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

version: alpha


## 💽 Environment Management / Portability

*How can people get specific versions of your software running on their systems?*

- [ ] Computational environment description provided
	- [ ] 🥉Bronze *(easy)*: List of package versions, e.g. output of `sessionInfo()` in R, not in a machine readable format
	- [ ] 🥈Silver *(intermediate)*: Structured language specific environment decription, language environment can be re-created e.g. `renv.lock` in a mostly automated fashion
	- [ ] 🥇Gold *(hard)*: Structured full environment description, automated ability to recreate the complete environment including system dependencies
	- [ ] 🏆Platinum *(MAXIMUM OVERKILL)*: Your description allows the automated bootstrap of the entire* depencency tree of your environment from source with bitwise binary reproducibility (currently almost impossible to achieve, basically only approachable in Guix)
 
<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/rsspdc/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0</a></p>
