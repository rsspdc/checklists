---
name: Web-based service
about:
title:[RSSPDC] <issue>
---

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


## 📒 Source control

*How can you keep track of the history of your project and collaborate on it?*

- [ ] Uses git (or other source control tool)
	- [ ]   🥉Bronze *(easy)*: Using version control but has a shallow project history, just placed in git for distribution
	- [ ]   🥈Silver *(intermediate)*: Longer project history, commit messages of mixed quality, some large messy changes
	- [ ]   🥇Gold *(hard)*: Silver plus - Well written commit messages, nice granular commits making discrete self-contained changes.
		- [ ] Also keep your description of your testing and development deployment using a tool such as docker compose or ansible under source control
		- [ ] Tags, releases, or branches at major project milestones, maybe some contributions from other users
	- [ ]   🏆Platinum *(MAXIMUM OVERKILL)*: Gold plus - Some from: [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/); Clean history with a consistent rebasing/merging strategy; Signed commits from all contributors; Contributions go through a consistent workflow like, issues, then a pull request from a branch.
 
<details>
<ul>
	<li>
	Unline many of the other research software output types this sort of output tends to consist of multiple seperate components which may have their sources managed seperately.
	Many of these projects might involve multiple different components which have seperate git repositories, for example your front-end and back-end codebases might live in their own repos.
	It can be useful to group these projects together within a group or organisation on your gitforge so that their relationship to one another is clear
	</li>
	<li>
	Another thing which it is valuable for this sort of project to have is how to deploy a local testing and development environment and/or a minimal deployment of the service.
	This might take the form of a docker / docker-compose, ansible playbook, or similar automation tool for easily deploying a test / example environment.
	Taking the 'infrastructure as code' approach to the deployment of your tool and versioning these examples is most useful when your service is of a sort where it makes sense for others to want to host their own instances.
	If it is just deployed by you as a central resource these practice may be useful for you internally but they are less impactful for the rest of the community.
	</li>
	<li>
	If your project is backed by a curated database then documentation of / code from the data collecting and cleaning process which lead to the current content of the database is valuable for the provenance of that dataset.
	If you are taking new additions to that database such tools are very valuable resources for any collaborators wanting to add data.
	Even if you are not adding new data these tools can also be very useful to researcher wanting to use data from your database with data they have themselves generated or curated, so the ability to process it in the same way as your data may be essential for valid comparisons.
	</li>
</ul>
</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/HDBI/data-management/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"></a></p>
