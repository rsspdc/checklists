---
name: Software Packages
about:
title:[RSSPDC] <issue>
---

From the Software Packages *[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

version: alpha


## ✅ Testing

*How can you test your project so you can be confident it does what you think it does?*

- [ ] Package is appropriately tested
	- [ ] 🥉Bronze *(easy)*: You have examples in documentation or vignettes which are run and allow you to see 'manually' if your code's output is correct for key functionality
	- [ ] 🥈Silver *(easy)*: You are using unit tests and an automated testing framework with tests that cover at least your package's core functionality
	- [ ] 🥇Gold *(intermediate)*: silver plus: You are monitoring your test coverage to get some insight into any important code paths you might be missing
	- [ ] 🏆Platinum *(intermediate)*: You follow the Test Driven Development (TDD) model, designing and writing test first then writing code to make them pass
 
<details>
<ul>
	<li>
	A good test suite allows you to refactor your code without fear of breaking its functionality.
	Good tests are agnostic to the implementation details of action that you are testing, so that you can change how you implemented something without needing to change the tests.
	The use of automated testing frameworks is especially useful for software that is under ongoing development as it allows developers to catch the unintended consequences of a change made in one place on some other part of the code that they did not anticipate.
	</li>
	<li>
	Examples of automated testing frameworks include {[testthat](https://testthat.r-lib.org/)} for R & [unittest](https://realpython.com/python-testing/) for python.
	Tools like [Codecov](https://about.codecov.io/) or [coveralls](https://coveralls.io/) in conjucnction with language specific tools such as [covr](https://covr.r-lib.org/) can help with code coverage monitoring and insights.
	</li>
	<li>
	Unit tests allow you to spell out in detail what you expect the behaviour of your software to be under a particular circumstance and test if it conforms to these expectations.
	Automatically running tests like this can be added to CI/CD pipelines on git forges.
	</li>
	<li>
	Test coverage does not necessarily need to be 100% or even especially high but code coverage tools can allow you to spot gaps in test coverage over important parts of your codebase and ensure that you cover them and give you an indication when you added new and poorly covered code to your codebase that you may want to add tests for.
	</li>
	<li>
	Try to make sure that your test suite runs fast so that you can run it regularly and quickly iterate.
	</li>
	<li>
	Test Driven Development (TDD) is the practice of writing your tests first and then developing the code which conforms to these tests.
	It works well if you have an extremenly well defined idea of what exactly you want your code to do and not do.
	</li>
</ul>

</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/rsspdc/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0</a></p>
