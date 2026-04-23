From the Record of a specific analysis*[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

version: alpha


## 🤖 Automation

*What tasks can you automate to increase consistency and reduce manual work?*

- [ ] Suitable automations are in place
	- [ ] 🥉Bronze *(easy)*:  1 from this list of processes are automated
 		 - use of an environment management tool
 		 - use of a literate programming / computational notebook
 		 - use of a pipeline manger or make-like tool
 		 - use of a linter / formatter
 		 - use of continious integration / continious deployment
 		 - use of git hooks
 		 - automated minting of new persistent identifiers on release tagging
 		 - ...
	- [ ] 🥈Silver *(easy)*: 2-3 from the above list of processes are automated
	- [ ] 🥇Gold *(intermediate)*: 4+ from the above list of processes are automated
	- [ ] 🏆Platinum *(hard)*: note that difficuly is somewhat project dependent
Your manuscript and its supplements are generated and served on a website after being built from your CI/CD pipeline.
All statistics and data visualisations in your manuscript are generated programatically by your analysis pipeline from your raw data in CI/CD.
Results are cached such that if you, for example, change the formatting of a graph only the plotting and rendering code needs to be re-run, but if you change the data the entire pipeline is re-rerun.
 
<details>

</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/rsspdc/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0</a></p>
