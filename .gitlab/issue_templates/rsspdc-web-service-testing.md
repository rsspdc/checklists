# Web-based service [raw markdown](https://gitlab.com/rsspdc/checklists/-/raw/master/checklists/rsspdc-web-based-service.md) [lite markdown](https://gitlab.com/rsspdc/checklists/-/raw/master/checklists/rsspdc-web-based-service-lite.md)

version: alpha

*[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

A database, API (application programming interface), or other web-based tool which is, generally, to be hosted on an ongoing basis and offer some service or access to some resource to researchers.
In many ways the key considerations here lean more organisational than technical.
Do you have the resources to operate the service on an ongoing basis?
A record of a specific analysis is a snapshot in time that is only expected to run in it's specified environment and once done is done.
Operating an online service requires continuous ongoing work to keep up with security updates and monitoring the status of your server(s) to ensure that your service is still up and working as intended.
You can also expect to take on some degree of user support from people having trouble using your service.
Depending on the nature of the project it may not make sense for others to be deploying instances of the server, but at minimum other developers will need a test deployment to work on if not now then in the future.

Most of the suggestions here would be the same as the section in the software packages checklist, and indeed software of this type is generally one or more packages so that checklist also applies here.
This checklist focuses on the things that are in addition to general packages and more specific to web-based services.


## ✅ Testing

*How can you test your project so you can be confident it does what you think it does?*

- [ ] Service is appropriately tested
	- [ ]   🥉Bronze *(easy)*: You have examples in documentation or vignettes which are run and allow you to see 'manually' if your code's output is correct for key functionality
	- [ ]   🥈Silver *(easy)*: You are using unit tests and an automated testing framework with tests that cover at least your package's core functionality
	- [ ]   🥇Gold *(intermediate)*: silver plus: You are monitoring your test coverage to get some insight into any important code paths you might be missing
	- [ ]   🏆Platinum *(hard)*: You follow the Test Driven Development (TDD) model, designing and writing tests first then writing code to make them pass
 
<details>
<ul>
	<li>
	Services and graphical interfaces many require integration tests which check that the different components of your system work together as expected and UI based testing frameworks which simulate user interaction in a web browser might be things that you would consider adding to the sorts of test you might do for a simpler library.
	</li>
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

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/HDBI/data-management/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"></a></p>
