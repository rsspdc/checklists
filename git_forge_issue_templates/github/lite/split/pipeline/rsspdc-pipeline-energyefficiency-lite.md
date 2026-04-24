---
name: Pipelines & Workflows
about:
title:[RSSPDC] <issue>
---

From the Pipelines & Workflows *[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

version: alpha


## 🌱 Energy Efficiency

*How can you and your users minimise wasted energy?*

- [ ] Consideration has been given to the energy efficiency of the code
	- [ ] 🥉Bronze *(intermediate)*: minimise unnecessary output files
		- [ ] Adopt a process to review outputs and keep only those necessary
	- [ ] 🥈Silver *(intermediate)*: bronze plus: Profile your code and refactor inefficient parts
		- [ ] Energy consumption and emissions Estimation/Measurement
	- [ ] 🥇Gold *(hard)*: Two or more from:
		- [ ] Appropriately balances the possible efficiency gains against the cost of testing, development, and benchmarking
		- [ ] Makes use of efficient algorithms for its task
		- [ ] Makes use of tools implemented in an efficient language for the task
	- [ ] 🏆Platinum *(hard)*: Two or more from:
		- [ ] Makes use of hardware acceleration if appropriate
		- [ ] Can make use of carbon intensity aware run scheduling
		- [ ] Binaries are compiled with flags optimal for performance on the architecture/hardware on which the computation is performed if a job is to be repeated enough times to make sense given the energy expended on compilation.
 
<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/rsspdc/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0</a></p>
