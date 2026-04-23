From the Pipelines & Workflows *[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

version: alpha


## ✅ Testing

*How can you test your project so you can be confident it does what you think it does?*

- [ ] Pipeline is appropriately tested
	- [ ] 🥉Bronze *(easy)*: The pipeline runs and produces the expected result on a minimal example dataset
	- [ ] 🥈Silver *(easy)*: both of the below:
		- [ ] A wide variety of possible input parameter combinations are tested
		- [ ] Datasets with different expected outcomes are tested, for example an output value is expected to be low in one dataset and high in another
	- [ ] 🥇Gold *(intermediate)*: All of the below:
		- [ ] Tests of error handling, pipeline fails early and gracefully when given invalid inputs as parameters
		- [ ] Any Quality Control steps that you use have datasets which elicit both a pass and fail of that check
		- [ ] Test are run automatically in continuous integration tools as changes are made to the code repository
	- [ ] 🏆Platinum *(hard)*: Range of supported environments tested on different base systems with different versions in CI pipeline(s) to catch platform specific bugs
 
<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/rsspdc/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0</a></p>
