# Record of a specific analysis [raw markdown](https://gitlab.com/rsspdc/checklists/-/raw/master/checklists/rsspdc-specific-record.md) [lite markdown](https://gitlab.com/rsspdc/checklists/-/raw/master/checklists/rsspdc-specific-record-lite.md)

version: alpha

*[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

Considerations for publishing code which runs a specific analysis that underpins some result to be published in the academic literature.
The emphasis here is on making the work narrowly reproducible i.e. the analysis of the same data can produce the same result when it is re-run.
This is a starting point for making results robust (different analysis, same data) and replicable (same analysis, different data), and ultimately generalisable (different analysis, different data).
The other emphasis is on making the work 'verifiable', exposing the complete step-wise detail of the reasoning underpinning the analysis so that it can be scrutinised and understood.


## 🤖 Automation

*What tasks can you automate to increase consistency and reduce manual work?*

- [ ] Suitable automations are in place
	- [ ]   🥉Bronze *(easy)*:  1 from this list of processes are automated
 		 - use of an environment management tool
 		 - use of a literate programming / computational notebook
 		 - use of a pipeline manger or make-like tool
 		 - use of a linter / formatter
 		 - use of continious integration / continious deployment
 		 - use of git hooks
 		 - automated minting of new persistent identifiers on release tagging
 		 - ...
	- [ ]   🥈Silver *(easy)*: 2-3 from the above list of processes are automated
	- [ ]   🥇Gold *(intermediate)*: 4+ from the above list of processes are automated
	- [ ]   🏆Platinum *(hard)*: note that difficuly is somewhat project dependent
Your manuscript and its supplements are generated and served on a website after being built from your CI/CD pipeline.
All statistics and data visualisations in your manuscript are generated programatically by your analysis pipeline from your raw data in CI/CD.
Results are cached such that if you, for example, change the formatting of a graph only the plotting and rendering code needs to be re-run, but if you change the data the entire pipeline is re-rerun.
 
<details>

</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/HDBI/data-management/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"></a></p>
