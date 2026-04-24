---
name: Web-based service
about:
title:[RSSPDC] <issue>
---

From the Web-based service *[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

version: alpha


## 💽 Environment Management / Portability

*How can people get specific versions of your software running on their systems?*

- [ ] Simple to install development, testing, and/or demo environment
	- [ ] 🥉Bronze *(easy)*: A developer / sysadmin other than yourself can deploy a simple testing instance of your software using only your documentation.
	- [ ] 🥈Silver *(easy)*: 
		- [ ] Sensible security defaults. Such as not having default passwords, for databases or admin consoles and requiring the person deploying your service to configure them, hopefully with appropriate secrets management approaches.
	- [ ] 🥇Gold *(intermediate)*: 
		- [ ] Sensible security defaults. Such as not having default passwords, for databases or admin consoles and requiring the person deploying your service to configure them, hopefully with appropriate secrets management approaches.
	- [ ] 🏆Platinum *(hard)*: The entire dependency tree of your pipeline including the pipeline manager itself, the OS it's running on and the firmware of the hardware it's running on can be bootstraped from source and produce bitwise identical binaries, also including any pre-processing of data inputs to the pipeline such as base calling for sequencing data.
		- [ ] 
		- [ ] Deployment is possible on multiple architectures (such as x86_64 & ARM64)
 
<details>
<ul>
	<li>
	Depending on the infrastructure that you chose to deploy on you might use a different management tool, but it is best if you do use such a tool as a part of your development and deployment as, if done right, this provides an easy 'run a couple of commands' development environment setup for anyone picking up the project.
	Be that a future maintainer, someone wanting to play with a local test deployment, or someone wanting to contribute to the project.
	Examples of such tools include: [ansible](https://www.ansible.com/), [terraform](https://www.terraform.io/), [docker](https://www.docker.com/)/[docker compose](https://docs.docker.com/compose/), [nix](https://nixos.org/), [helm charts](https://helm.sh/) or a combination of some of these that fits your needs and experience.
	</li>
</ul>
</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/rsspdc/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0</a></p>
