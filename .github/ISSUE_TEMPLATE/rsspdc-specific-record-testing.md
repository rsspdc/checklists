---
name: Record of a specific analysis
about:
title:[RSSPDC] <issue>
---

From the Record of a specific analysischecklist

version: alpha

*[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]


## ✅ Testing

*How can you test your project so you can be confident it does what you think it does?*

- [ ] Project has undergone suitable testing
	- [ ] 🥉Bronze *(easy)*: Includes a minimal test data set necessary to demonstrate the basic functionality of the analysis
	- [ ] 🥈Silver *(easy)*: Includes test datasets which cover a range of outcomes of the analysis
	- [ ] 🥇Gold *(intermediate)*: You are using unit tests and an automated testing framework to check the correctness of core steps of your analysis
	- [ ] 🏆Platinum *(hard)*: Have your analysis code written and tested on preliminary or simulated data in advance of recieving your principle dataset with a copy of your code from this time archived and referenced in a pre-registration or registered report.
 
<details>
<ul>
	<li>
	Whilst you can make use of unit tests / automated testing frameworks in this context (see the software packages checklist testing section for more) it is not always the best fit.
	A very good thing to do is to have an example dataset that you can perform your analysis on that is different from your new data.
	If you are testing a hypothesis it's nice to have test datasets which simulate rejecting and accepting your null hypothesis.
	</li>
	<li>
	If you write, test, have reviewed, and publically deposit, the code that you plan to run to test the primary/pre-planned outcomes in your study and are able to run this same code on your data unchanged this inspires confidence in your testing regimend.
	Code associcated with incedental finding which may be suggestive for hypotheses to test in future work obviously cannot be subject to pre-registration but other best practices can be followed.
	</li>
	<li>
	When using real data or downsampled real data be sure that your testing covers any edge cases that may not have arrising enyour example data.
	</li>
	<li>
	When using simulated data be sure to include the method by which you simulated the data and any random seeds which may be needed to re-generate it.
	</li>
</ul>

</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/HDBI/data-management/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"></a></p>
