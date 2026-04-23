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


## 📦 Distribution

*How can people install or access the software emerging from your project?*

- [ ] Service is distributed in suitable fashion
	- [ ]   🥉Bronze *(easy)*: Code is in a public repository or repositories
	- [ ]   🥈Silver *(easy)*: All of the below:
		- [ ] Detailed instructions are available on how to set up, at minimum, a development environment in which the service can run.
		- [ ] All constituent components of the service are appropriately packaged
		- [ ] Lock file(s) with
	- [ ]   🥇Gold *(intermediate)*: A simple deployment of the service is available in declarative form using a tool such as [docker compose](https://docs.docker.com/compose/) or [ansible](https://www.ansible.com/) which automates a simple deployment.
	- [ ]   🏆Platinum *(very hard)*: 
		- [ ] Reproducibly deployable as a Nix module
 
<details>
<ul>
	<li>
	Your general audience is users of your web service, and there's a smaller but imporant audience of sysadmins and developers who may need to run your server software on their own systems not just use it. So 'distribution' splits in to two slightly different problems.
	</li>
	<ul>
		<li>
		Operating your website, things like:
		</li>
		<ul>
			<li>
			making sure that your TLS certificates stay up to date and you have enough compute resources for the service to run well for users.
			</li>
			<li>
			Having a sensible URL, potentially including any look-alike urls that malicious actors might try to [typosquat](https://en.wikipedia.org/wiki/Typosquatting)
			</li>
			<li>
			Distributing your service to developers who may want to build tools on top of it or query it in an automated fashion via an API.
			The API should be well documented and conform to open standards.
			</li>
			<li>
			Take some simple measures to ensure the reliability of your site under elevated load. Such as using a reverse proxy, enabling content caching so that your proxy can serve requests for the same content without hitting your application server(s) again, limit concurrent connections to the max number of sessions your server can handle at once so if traffic spikes it gets slower but dosen't completely fall over, load balancing across multiple application servers.
			</li>
			<li>
			Consider DDoS protection for your site if your traffic grows over a certain threshold.
			</li>
			<li>
			Be wary of 'denial of wallet' attacks when hosting on automatically horizontally scaling platform by setting limits to prevent malicious parties from spamming your site in such a fashion as to cause you to incur massive hosting bills.
			</li>
		</ul>
		<li>
		Distributing your server software to sysadmins, devops people, and potentially general IT staff, developers, and amateur self-hosters.
		</li>
	</ul>
</ul>

</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/HDBI/data-management/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"></a></p>
