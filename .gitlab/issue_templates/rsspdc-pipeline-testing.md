# Pipelines & Workflows [raw markdown](https://gitlab.com/rsspdc/checklists/-/raw/master/checklists/rsspdc-pipelines.md) [lite markdown](https://gitlab.com/rsspdc/checklists/-/raw/master/checklists/rsspdc-pipelines-lite.md)

version: alpha

*[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

Considerations for publishing a data analysis workflow or pipeline which may be used in research or as a researcher.
"Applying the FAIR Principles to computational workflows" [10.1038/s41597-025-04451-9](https://doi.org/10.1038/s41597-025-04451-9) offers a good working definition of a workflow and the application of [FAIR](https://www.go-fair.org/) principles to computational workflows.


## ✅ Testing

*How can you test your project so you can be confident it does what you think it does?*

- [ ] Pipeline is appropriately tested
	- [ ]   🥉Bronze *(easy)*: The pipeline runs and produces the expected result on a minimal example dataset
	- [ ]   🥈Silver *(easy)*: both of the below:
		- [ ] A wide variety of possible input parameter combinations are tested
		- [ ] Datasets with different expected outcomes are tested, for example an output value is expected to be low in one dataset and high in another
	- [ ]   🥇Gold *(intermediate)*: All of the below:
		- [ ] Tests of error handling, pipeline fails early and gracefully when given invalid inputs as parameters
		- [ ] Any Quality Control steps that you use have datasets which elicit both a pass and fail of that check
		- [ ] Test are run automatically in continuous integration tools as changes are made to the code repository
	- [ ]   🏆Platinum *(hard)*: Range of supported environments tested on different base systems with different versions in CI pipeline(s) to catch platform specific bugs
 
<details>
The types of testing that it may make sense to emphasise in analysis pipelines are:
Integration testing, do all the parts work together as expected? (The phrase 'expected result' is a bit nebulous, its robustness in testing hinges on how specific your expectations are.)
Some aspects might lend themselves to unit testing, but much of this may reside in the individual tools that a pipeline wraps.
Regression testing can be effective when refactoring a pipeline which is intended to produce identical results by different means.

See the software packages checklist for more details on general unit testing.

An area to focus on testing might be your quality control (QC) steps.
Checking using data that is an example of a common source data quality issues and verifying that this triggers the appropriate QC warnings, for example.
Making sure that good quality data does not trigger quality warnings.
In addition to poor quality data test: corrupt, truncated, or incorrectly formed data/configuration files.
Edge cases like many extreme values.

Test data should follow the general principle: **as small as possible as large as necessary**
Real world data can potentially be down sampled, and synthetic data generated to test edge cases.
You may be able to find a repository of pre-existing test dataset suitable for your domain nf-core provides a resource of [test datasets](https://github.com/nf-core/test-datasets), these are at least currently largely of biological data types reflecting the current composition of the Nextflow userbase.

Testing portability, does it run in different environments? nf-core nextflow pipelines for instance should be able to run with docker, apptainer (singularity), or conda based environments - do all of these work and produce the same output?

[nf-test](https://www.nf-test.com/) provides an automated testing framework for Nextflow pipelines described in [Improving the Reliability and Quality of Nextflow Pipelines with nf-test](https://doi.org/10.1101/2024.05.25.595877).
nf-test implements a number of optimisations including:
Git integration and dependeny graph analysis of pipeline component inputs/outputs to select and prioritise tests to run based on what has changed.
Convenient snapshot based regression testing.
Parallel test execution.
These features make the sometimes lengthy and laborious process of testing computationally intensive pipelines much more manageable.

[This conference paper](https://doi.org/10.1145/3322790.3330595) introduces a name for a category of software test that they call 'scientific tests' which are black-box style tests agnositic to the implementation which test the broard behaviour of a system is as predicted.

</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/HDBI/data-management/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"></a></p>
