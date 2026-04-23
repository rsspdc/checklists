---
name: Record of a specific analysis
about:
title:[RSSPDC] <issue>
---

# Record of a specific analysis [raw markdown](https://gitlab.com/rsspdc/checklists/-/raw/master/checklists/rsspdc-specific-record.md) [lite markdown](https://gitlab.com/rsspdc/checklists/-/raw/master/checklists/rsspdc-specific-record-lite.md)

version: alpha

*[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

Considerations for publishing code which runs a specific analysis that underpins some result to be published in the academic literature.
The emphasis here is on making the work narrowly reproducible i.e. the analysis of the same data can produce the same result when it is re-run.
This is a starting point for making results robust (different analysis, same data) and replicable (same analysis, different data), and ultimately generalisable (different analysis, different data).
The other emphasis is on making the work 'verifiable', exposing the complete step-wise detail of the reasoning underpinning the analysis so that it can be scrutinised and understood.


## 🌱 Energy Efficiency

*How can you and your users minimise wasted energy?*

- [ ] Consideration has been given to the energy efficiency of the code
	- [ ]   🥉Bronze *(easy)*: minimise unnecessary output files
	- [ ]   🥈Silver *(easy)*: bronze plus: Profile your code and refactor inefficient parts
	- [ ]   🥇Gold *(intermediate)*: silver plus: Estimate and share the carbon footprint of your computations with a tools such as [green algorithms calculator](http://calculator.green-algorithms.org/)
	- [ ]   🏆Platinum *(intermediate)*: gold plus: Offload suitable computations to hardware accelerators where possible
 
<details>
One off analysis code is not particularly high impact to make more efficient as it is only run a small number of times.
However, it is worth giving some consideration to the efficiency of the tools that your one off analysis might make use of or depend on.
For the most part analysis might represent a first step implementing a new method for the first time where it's correctness and comprehensibility is more important than the efficiency with which it is implemented, optimisation comes later.

Consider what can you do to make your code a little more efficient:
<ul>
	<li>
	Don't generate unnecessary outputs that will sit on people's drives unused, clean results of intermediate steps.
	You might have varying degrees of verbosity of output with a more verbose mode for debugging but defaulting to just the essentials.
	</li>
	<li>
	Good documentation and good error handing/messages can reduce the number of times people make mistakes using your code that means they re-run or partially re-run it fewer times before they figure out how to use it correctly.
	</li>
	<li>
	Some records of this type may use pipeline managers, [targets](https://books.ropensci.org/targets/) for example can integrate nicely with literate programming outputs to cache computationally expensive results, let you iterate quicky on a manuscript using those outputs and ensure that any code that needs to be re-run following a change is, all whilst being able to re-run your entire workflow and regenerate your manuscript with a single command. For pipelines in particular caching results and avoiding needing to re-compute things if possible is a good way to make best use of these features in pipeline managers for example by having small granular tasks to minimise repeated work on run failure.
	</li>
	<li>
	Choice of libraries and frameworks - some libraries may be more efficient that others or be a wrapper around an efficient implementation in another language, or be able to make use of offload to hardware accelerators.
	</li>
	<li>
	Offload to harware accelerators where available, vector matrix and array arithmathic can often benefit from very substancial speed-ups on hardware specialised for these types of calculations, or even binaries compiled with the right instruction set extensions enabled to take full advantage of hardware acceleration features on many CPUs. Doing this directly can be quite challenging but using libraries cabable of managing this offload for you can make it more approachable. (This can potentially introduce interesting reproducible computation challenges due to things like differences in handling of floating point arithmathic between hardware/firmware implementations.)
	</li>
	<li>
	Benchmarking & Profiling to locate and improve inefficient code.
	Don't optimise prematurely - it is often surpising which pieces of your code turnout to be slow, measure it first and check where to focus your attention.
	This can go hand in hand with having done robust testing as a good test suite means that you can confidently re-factor an inefficient piece of code without fear of introducing errors.
	</li>
	<li>
	Language Choice - whilst sometimes worth considering energy efficiency is rarely high up on the list of reasons to pick a programming language in this context. Familiarity of both you and anyone who might use the code after you or indeed the familiarity of the acacdemic community that might consume your code is often paramount as this maximises the speed with which you can develop your solution and others comprehend it.
	</li>
	<li>
	The people in the [Green Algorithms](https://www.green-algorithms.org/) community of practice have some useful advice and resources for anyone interersted in this subject.
	</li>
	<li>
	[The Environmentally Sustainable Computational Science forum](https://forum.escs-community.org) is a great place to find people to talk about these issues.
	</li>
</ul>

</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/HDBI/data-management/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"></a></p>
