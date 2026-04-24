From the Pipelines & Workflows *[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

version: alpha


## 💽 Environment Management / Portability

*How can people get specific versions of your software running on their systems?*

- [ ] It is possible to run your pipeline on other systems with some degree of reproducibility
	- [ ] 🥉Bronze *(easy)*: The pipeline may require some manual changes, and/or manual steps to install the requisite software environments or retrieve data, and perform some standard pre-processing of inputs like building genome references etc.
	- [ ] 🥈Silver *(easy)*: External inputs can be automatically retrieved using their identifiers and pre-processing steps for these inputs are performed as apart of the pipeline.
At least one method for describing the required compute environment(s) is supplied e.g. conda environments, or container build files so that others can be specified if a user has compute infrastructure which does not support the method(s) supplied.
	- [ ] 🥇Gold *(hard)*: Complete pipeline can be executed with single command with all data and dependencies fetched automatically, barring the need for any system specific resource constraint configuration.
	- [ ] 🏆Platinum *(practically impossible in practice)*: The entire dependency tree of your pipeline including the pipeline manager itself, the OS it's running on and the firmware of the hardware it's running on can be bootstraped from source and produce bitwise identical binaries, also including any pre-processing of data inputs to the pipeline such as base calling for sequencing data.
 
<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/rsspdc/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0</a></p>
