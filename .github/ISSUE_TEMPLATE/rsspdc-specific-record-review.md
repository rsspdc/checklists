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


## 👥 Peer review / Code Review

*How can you get third party endorsement of and expert feedback on your project?*

- [ ] Code has been subject to a review indicating that someone else could re-run the analysis
	- [ ]   🥉Bronze *(easy)*: Someone other than you has checked over your project, given you feedback and told you they are reasonably confident they could re-run your analysis without your help.
	- [ ]   🥈Silver *(easy)*: Someone other than you has scessfully re-run your analysis using only your documentation, (preferably in a different compute environment, such as a different computer/compute cluster)
	- [ ]   🥇Gold *(intermediate)*: You have a review from [CODECHECK](https://codecheck.org.uk/), [ReproHack](https://www.reprohack.org/) or equivalent and have incorporated suggestions for improving reproducibility from these reviews.
	- [ ]   🏆Platinum *(intermediate)*: You have reviews which go beyond checking the ability to re-run your code but which also review it's technical correctness
 
<details>
<ul>
	<li>
	Most of the places that offer code peer review are focused on software packages not code that is specific to your analysis.
	This makes sense as reviewer time is fairly scarce so focusing it on code that others are more likely to reuse is reasonable.
	</li>
	<li>
	If your code underpins a publication then in theory it may get reviewed as a part of the regular peer review process although in practice this does not appear to be all that common.
	If the journal to which you are submitting your work has no policy on the code review, and your reviewers do not take an interest in reviewing your code - even just the checking if it runs for them then you may wish to take responibility for the review of this work into your own hands.
	[CODECHECK](https://codecheck.org.uk/) will independently verify that they can run your code, but its correctness is not in their scope.
	</li>
<ul>

</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/HDBI/data-management/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"></a></p>
