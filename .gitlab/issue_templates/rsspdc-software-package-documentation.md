From the Software Packages *[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

version: alpha


## 📖 Documentation

*How do people know what your project is, how to use it and how to contribute?*

- [ ] Project has suitable documentation
	- [ ] 🥉Bronze *(easy)*: Project has README file that either contains directly or links to resources which answer these questions:
		- [ ] What is the name or title of the project?
		- [ ] Why did you make this package?
		- [ ] What problem does it address and how?
		- [ ] Why would I want to use it, what differentiates it from its alternatives?
		- [ ] How do I install it? (with example)
		- [ ] How do I use it? (with example)
		- [ ] Where should I go in the project to find what I'm looking for?
		- [ ] Are you looking for contributions and if so how to contribute?
		- [ ] How do I cite the project?
		- [ ] Who contributed to the project and what did they contribute?
		- [ ] Who should I contact, about what, and how?
		- [ ] What should I expect / Not expect if I contact you?
		- [ ] How is the project Licensed?
		- [ ] Table of Contents (if long enough to benefit from one)
		- [ ] Bibliography (if reference is made to external resources)
	- [ ] 🥈Silver *(intermediate)*: If your language has a in-line documentation with which you can build documentation for your functions/objects etc. you are making full use of it. So that features such as the ability to produced a reference manual for all the key functional units of your code, and integrations with IDE (integrated development environment) features such as search, templates, and autocomplete can be made the most of.
	- [ ] 🥇Gold *(time consuming)*: Your Documentation features examples; rich, varied and working ones.
Examples should cover both simple and more complex use cases, touching on as much of the functionality as they can.
	- [ ] 🏆Platinum *(intermediate)*: All examples are executed upon a full build of the documentation so that you know that they at least run.

In some cases for small and simple projects a README file is sufficient documentation.
This may genuinely be all that you need, or inadequate to the task depending on the project.
 
<details>
<ul>
	<li>
		README / Manual
		<ul>
			<li>What your project is and what it does</li>
			<li>install instructions</li>
			<li>
				Contribution guidance
				<ul>
					<li>for example: Issue templates, a code of conduct, process details</li>
				</ul>
			</li>
			<li>
				development environment setup
				<ul>
					<li>overview of project organisation and structure</li>
				</ul>
			</li>
		</ul>
	</li>
	<li>
	CHANGELOG it can be a good idea to include a CHANGELOG file in your project documenting things which have changed since the previous release.
	This manuscript on [The impact of package selection and versioning on single-cell RNA-seq analysis](https://doi.org/10.1101/2024.04.04.588111) provides a nice case study for why this can be useful in academic settings especially if decisions have been made to change defaults between versions.
	</li>
	<li>
		'docstrings' and similar
		<ul>
			<li>
				Many programming languages have a way of documenting your code inline which can automate the generation of some parts of the documentation.
				This often takes the form of specifically marked-up comments.
				Examples include python's [dockstrings](https://peps.python.org/pep-0257/), R's [Roxygen2](https://roxygen2.r-lib.org/), and perl's [POD](https://perldoc.perl.org/perlpod)
			</li>
		</ul>
	</li>
	<li>
		Vignettes / Examples
		<ul>
			<li>
				Examples of use of the code in the context of a real problem, beyond simple example snippets which might be included in the documentation of individual functions/objects.
				(These can also serve as a form of simple integration tests if you run them as a part of your documentation build.)
			</li>
		</ul>
	</li>
	<li>Larger projects might also include Project Documentation: Plans, Design documents and Specifications</li>
	<li>
		Process Documentation: how to proceeded with various tasks related to the project this might include: submitting issues, submitting merge requests, reporting possible vulnerabilities, testing, documentation, release, code review review
	</li>
</ul>

</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/rsspdc/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0</a></p>
