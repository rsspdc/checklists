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


## 👥 Peer review / Code Review

*How can you get third party endorsement of and expert feedback on your project?*

- [ ] 
	- [ ]   🥉Bronze: 
	- [ ]   🥈Silver: 
	- [ ]   🥇Gold: 
	- [ ]   🏆Platinum: 
 
<details>
<ul>
	<li>
	If you are building a database of some kind then you might want the processes by which you process, collect or curate the data which go into this database to be subject to an academic style review, and papers about the creation of such resources are not uncommon.
	</li>
	<li>
	Seeking an external technical review may be trickier for your core code but review of how easy your system is to deploy is perhaps more accessible from the community of amateur self-hosters.
	Who may be quite willing to try deploying your tool in many and varied homelabs if it offers them something and/or you ask nicely and in the right places.
	</li>
</ul>

</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/HDBI/data-management/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"></a></p>
