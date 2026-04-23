---
name: Software Packages
about:
title:[RSSPDC] <issue>
---

From the Software Packages*[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

version: alpha


## 🤖 Automation

*What tasks can you automate to increase consistency and reduce manual work?*

- [ ] Suitable automations are in place
	- [ ] 🥉Bronze: 
	- [ ] 🥈Silver: 
	- [ ] 🥇Gold: 
	- [ ] 🏆Platinum: 
 
<details>
<ul>
	<li>
		**Linting** is a process of statically analysing the source code to catch errors which can be detected without compiling/running the code such as syntax errors.
		Examples include {[lintr](https://lintr.r-lib.org/)} for R and [Ruff](https://docs.astral.sh/ruff/) for Python.
	</li>
	<li>
		**Automate the use of a standard style / format** Using an automated code formatter ensures that your project has consistent code formattin.
		This can forestall such debates among contributors as: 'spaces vs tabs' for indentation,
		at least it can once you have agreed to bake that descision it your formatter and quash further discussion on the topic.
		Examples include {[styler](https://styler.r-lib.org/)} for R and [Black](https://black.readthedocs.io/en/stable/) for python.
	</li>
	<li>
		Building Documentation
	</li>
	<li>
		**[Git hooks](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks)** It can be preferable to automate certain actions based on git events
		<ul>
			<li>
				**pre-commit hooks** can be especially useful for automating things like linting and code formatting on your local system before you can commit any changes to your git history which do not conform to these standards
				Another useful application here is where your documentation is built from source documents in your repository and also under version control, a pre-commit hook can ensure that you cannot commit your documentation sources and their build artefacts in an inconsistent state.
				You can even do this with automated testing so contributors cannot push code that breaks tests locally, that way if tests break in continious integration (CI) it's always likely to be something related to differences in the testing environment or conflicting changes.
			</li>
			<li>
				You can write and manage your own [git hooks](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks), there is also the tool [pre-commit](https://pre-commit.com/) written in python and configured in yaml which is a package manager for git commit hooks allowing you to simply install and configure many existing hooks.
			</li>
		</ul>
	</li>
	<li>
		**Continious Integration and Deployment (CI/CD)** is broardly automation of the integration of new changes from contributors to your project and the deployment of those changes to your users on an ongoing basis.
		<ul>
			<li>
			Many modern software forges combine hosting of source control with CI/CD tools.
			[Github](https://github.com/) has '[github actions](https://docs.github.com/en/actions)' and [GitLab](https://about.gitlab.com/) has '[gitlab CI/CD](https://docs.gitlab.com/ee/ci/)', these tools are tide to those specific git hosting services meaning that adopting them can generate significant lock-in to that specific git hosting tool/platform.
			[Codeberg](https://codeberg.org/) provides an instance of [Woodpecker CI](https://woodpecker-ci.org/) and there are other git host-agnostic CI/CD tools such as [Jenkins](https://www.jenkins.io/) available.
			</li>
			<li>
				CI/CD pipelines can also be a good place to run linters and code formatters which either reject merges/pushes which do not conform to these standards or automatically apply them and use bots to commit them.
				This can act as a second line of defense to ensure that contributors have linted their code, applied standard formatting and built documentation.
			</li>
			<li>
				CI is a good place to run automated testing so that CD does not deploy anything detectably broken by your automated test suite.
			</li>
			<li>
				CI/CD is a very convenient way to manage documentation websites for your software which are built based of your packages sources.
				For example the {[pkgdown](https://pkgdown.r-lib.org/)} packge for R is specifically for building documentation sites for R packages and integrates with GitHub actions and GitHub pages to do so.
			</li>
		</ul>
	</li>
</ul>

</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/rsspdc/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0</a></p>
