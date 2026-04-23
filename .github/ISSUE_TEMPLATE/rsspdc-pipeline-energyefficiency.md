---
name: Pipelines & Workflows
about:
title:[RSSPDC] <issue>
---

# Pipelines & Workflows [raw markdown](https://gitlab.com/rsspdc/checklists/-/raw/master/checklists/rsspdc-pipelines.md) [lite markdown](https://gitlab.com/rsspdc/checklists/-/raw/master/checklists/rsspdc-pipelines-lite.md)

version: alpha

*[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

Considerations for publishing a data analysis workflow or pipeline which may be used in research or as a researcher.
"Applying the FAIR Principles to computational workflows" [10.1038/s41597-025-04451-9](https://doi.org/10.1038/s41597-025-04451-9) offers a good working definition of a workflow and the application of [FAIR](https://www.go-fair.org/) principles to computational workflows.


## 🌱 Energy Efficiency

*How can you and your users minimise wasted energy?*

- [ ] Consideration has been given to the energy efficiency of the code
	- [ ]   🥉Bronze *(intermediate)*: minimise unnecessary output files
		- [ ] Adopt a process to review outputs and keep only those necessary
	- [ ]   🥈Silver *(intermediate)*: bronze plus: Profile your code and refactor inefficient parts
		- [ ] Energy consumption and emissions Estimation/Measurement
	- [ ]   🥇Gold *(hard)*: Two or more from:
		- [ ] Appropriately balances the possible efficiency gains against the cost of testing, development, and benchmarking
		- [ ] Makes use of efficient algorithms for its task
		- [ ] Makes use of tools implemented in an efficient language for the task
	- [ ]   🏆Platinum *(hard)*: Two or more from:
		- [ ] Makes use of hardware acceleration if appropriate
		- [ ] Can make use of carbon intensity aware run scheduling
		- [ ] Binaries are compiled with flags optimal for performance on the architecture/hardware on which the computation is performed if a job is to be repeated enough times to make sense given the energy expended on compilation.
 
<details>
Everyone likes fast and efficient code, but especially if your code is going to be re-used by a lots of people in a computationally demanding application it can consume a lot of energy.
This translates to carbon emissions, water use and opportunity costs for whatever else could have been done with that energy and compute time.

Consider what can you do to make your code a little more efficient:

<ul>
	<li>
	Measurement - make use of tools to estimate the energy &/or carbon costs of your analyses and report them to the end user.
	If you are using a [Nextflow](https://www.nextflow.io/) pipeline then there is a very easy way to estimate the energy utilisation and carbon footprint of your pipelines with [`nf-co2footprint`](https://nextflow-io.github.io/nf-co2footprint/).
	This is a generalisation of a tool originally developed to estimate emissions for jobs submitted to HPC clusters running the [SLURM](https://slurm.schedmd.com/overview.html) scheduler: [GA4HPC](https://www.green-algorithms.org/GA4HPC/), see: [Green Algorithms: Quantifying the Carbon Footprint of Computation](https://doi.org/10.1002/advs.202100707).
	The people in the [Green Algorithms](https://www.green-algorithms.org/) community of practice have some useful advice and resources for anyone interested in this subject.
	</li>
	<li>
	[The Environmentally Sustainable Computational Science forum](https://forum.escs-community.org) is a great place to find people to talk about these issues.
	</li>
	<li>
	Good documentation and good error handing/messages can reduce the number of times people make mistakes using your code that means they re-run or partially re-run it fewer times before they figure out how to use it correctly.
	</li>
	<li>
	Don't generate unnecessary outputs that will sit on people's drives unused, clean results of intermediate steps.
	If you're making a pipeline produces a lot of intermediate files and outputs consider which of these are needed or good defaults, which could be optional and which could be discarded by default.
	Defaults are king and people will mostly keep whatever your tool outputs often essentially indefinitely so you can reduce the energy expended on unnecessary storage by keeping your outputs lean.
	You might have varying degrees of verbosity of output with a more verbose mode for debugging but defaulting to just the essentials.
	</li>
	<li>
	For pipelines in particular caching results and avoiding needing to re-compute things if possible - make best use of these features in pipeline managers for example by having small granular tasks to minimise repeated work on run failure.
	</li>
	<li>
	Choice of libraries and frameworks - some libraries may be more efficient that others or be a wrapper around an efficient implementation in another language, or be able to make use of offload to hardware accelerators.
	</li>
	<li>
	Offload to hardware accelerators where available, vector matrix and array arithmetic can often benefit from very substantial speed-ups on hardware specialised for these types of calculations, or even binaries compiled with the right instruction set extensions enabled to take full advantage of hardware acceleration features on many CPUs.
	Doing this directly can be quite challenging but using libraries capable of managing this offload for you can make it more approachable. (This can potentially introduce interesting reproducible computation challenges due to things like differences in handling of floating point arithmetic between hardware/firmware implementations.)
	</li>
	<li>
	Benchmarking & Profiling to locate and improve inefficient code.
	Don't optimise prematurely - it is often surprising which pieces of your code turnout to be slow, measure it first and check where to focus your attention.
	This can go hand in hand with having done robust testing as a good test suite means that you can confidently re-factor an inefficient piece of code without fear of introducing errors.
	Robust testing, especially of large computationally intensive pipelines can be energy intensive so it is important to make efficient test suites which still provide robust coverage.
	See the testing section for more information on optimisations in the [nf-test](https://www.nf-test.com/) framework which help to make testing Nextflow pipelines more efficient.
	</li>
	<li>
	Language Choice - some languages are (at least on average) more efficient than others, weigh this as a factor when selecting a language.
	In the context of a pipeline manger the efficiency of the language it itself is written in is rarely particularly relevant, what matters more are features which increase the efficiency of overall execution such as good management of caching and degrees of parallelism.
	However the efficiency of the individual components of the pipeline may be of disproportionate impact as they may be run many time by many people so selecting the most efficient modules is of higher impact.
	</li>
	<li>
	Consider timing and location of computationally intensive runs, you could automate running at optimal times and in optimal places to make use of surplus renewable energy. In the UK you could query the [national grid carbon intensity API](https://www.carbonintensity.org.uk/) to pick opportune times and/or places.
	</li>
</ul>

</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/HDBI/data-management/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"></a></p>
