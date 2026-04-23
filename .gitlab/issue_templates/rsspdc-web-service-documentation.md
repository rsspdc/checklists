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


## 📖 Documentation

*How do people know what your project is, how to use it and how to contribute?*

- [ ] Project has suitable documentation
	- [ ]   🥉Bronze *(easy)*: Project has README file that either contains directly or links to resources which answer these questions:
		- [ ] What is the name or title of the project?
		- [ ] Why did you make this service?
		- [ ] What problem does it address and how?
		- [ ] Why would I want to use it, what differentiates it from its alternatives?
		- [ ] How do I access / use it? (with example)
		- [ ] How do I install a development / testing environment? (with example)
		- [ ] Where should I go in the project to find what I'm looking for?
		- [ ] Are you looking for contributions and if so how to contribute?
		- [ ] What data does the service use, how was it sourced, processed, and made available for use in the application?
		- [ ] What are the components of the service (e.g. databse, webserver)?
		- [ ] How do I cite the service, including version information?
		- [ ] How do I reproduce an output from the service for a given input?
		- [ ] Who contributed to the project and what did they contribute?
		- [ ] Who should I contact, about what, and how?
		- [ ] What should I expect / Not expect if I contact you?
		- [ ] How is the project Licensed?
		- [ ] Table of Contents (if long enough to benefit from one)
		- [ ] Bibliography (if reference is made to external resources)
	- [ ]   🥈Silver *(intermediate)*: Documentation includes instructions on deploying your service in a test/development environment.
	- [ ]   🥇Gold *(time consuming)*: Documentation features examples; rich, varied and working ones. Examples should cover both simple and more complex use cases, touching on as much of the functionality as they can.
	- [ ]   🏆Platinum *(MAXIMUM OVERKILL)*: Documentation is included for users, administrators (if applicable), systems administrators deploying the project, and developers.

In some cases for small and simple projects a README file is sufficient documentation.
This may genuinely be all that you need, or inadequate to the task depending on the project.
 
<details>
<ul>
	<li>README / Manual</li>
	<ul>
		<li>What your project is and what it does</li>
		<li>Installation instructions, in the case of a web tool what at least is needed for a minimal local development deployment</li>
		<li>Contribution guidelines (varying from 'please open an issue before working on a merge request' to detailed style guides, review processes and other requirements) </li>
		<li>A description of the project structure so that the user knows which directories to find things in</li>
	</ul>
	<li>It is generally particularly useful to split documentation in a project such as this by target audiences: users, developers, sysadmins</li>
	<ul>
		<li>User: Using the website graphically - this might include admin options if you have administrative users of some kind, admin users may need their own section</li>
		<li>Developers: API docs, how to contribute, and how to set up a development environment, tooling used</li>
		<li>Sysadmins: how to deploy an instance of the service, how to configure it, what you might want to do differently from the development environment, for example to have a more secure config and considerations that might affect backups, and managing updates/grades.</li>
	</ul>
	<li>Note that almost all of the recommendations for software package documentation also applies here</li>
</ul>

</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/HDBI/data-management/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"></a></p>
