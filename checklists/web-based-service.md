# Web-based service

A database, API, or other web-based tool which is, generally, to be hosted on an ongoing basis and offer some service or access to some resource to researchers.
In many ways the key considerations here lean more lean more organisational than technical.
Do you have the resources to operate the service on an ongoing basis?
A record of a specific analysis is a snapshot in time that is only expected to run in it's specified environment and once done is done.
Operating an online service requires continuous ongoing work to keep up with security updates and monitoring the status of your server(s) to ensure that your service is still up and working as intended.
You can also expect to take on some degree of user support from people having trouble using your service.
Depending on the nature of the project it may not make sense for others to be deploying instances of the server, but at minimum other developers will need a test deployment to work on if not now then in the future.

Most of the suggestions here would be the same as this section in the software packages checklist, and indeed software of this type is generally one or more packages so that checklist also applies here, this focuses on the things that are in addition to the software package checklist.

## Source control

- [ ]   
<details>
<ul>
<li>
For large projects it might be useful to adopt some conventions for your git commit messages such as [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/) to improve the searchability and scannability of your commit history to other contributors to your code base.
<li>
</ul>
</details>

## Licencing

- [ ]   
<details>
<ul>
<li>
If you want to apply a copyleft license to a piece of software that is to be accessed over a network and not necessarily run on end-users own computers then you would want to adopt a license such as the AGPL to ensure that your end users still have the right to run, study, modify and redistribute the code of the server-side part of the tool.
</li>
</ul>
</details>

## Documentation

<ul>
<li>It is generally useful to split documentation in a project such as this by target audiences: users, developers, sysadmins.</li>
<ul>
	<li>User: Using the website graphically - this might include admin options if you have administrative user of some kind</li>
	<li>Developers: API docs, how to contribute, and how to set up a development environment</li>
	<li>Sysadmins: how to deploy an instance of the service, how to configure it, what you might want to do differently from the development environment, for example to have a more secure config and considerations that might affect backups, and managing updates/grades.</li>
</ul>
</ul>

## Making Citable

- [ ] A DOI, with which it can be referenced, has been minted for the project using a tool like [zenodo](https://zenodo.org/) to store a snapshot of the project.
	- [ ] A CITATION.cff and/or .zenodo.json file exists in the repo to provide citational metadata about your project
<details>
<ul>
<li>
Adopting a stable, consistent and human readable naming schema for the URLs on your web service, including the ability to reproduce state of dynamically generated pages with parameters in the URL, makes referring to specific items much easier for users citing the website according to the conventions for citing websites. It also helps for archival tools like the [internet archive's wayback machine](http://web.archive.org/) and [ArchiveBox](https://archivebox.io/) which can be used by researchers and others to take a snapshot of a website at the time at which they are citing it to avoid issues of updates to the website altering the content or linkrot.
</li>
</ul>
</details>

## Testing

- [ ]   
<ul>
<li>CI/CD (continuous integration and continuous deployment)</li>
<li>The CI part of CI/CD is mostly covered in the software package</li>
<li>More integration tests which check that the different components of your system work together as expected and UI based testing frameworks which simulate user interaction in a web browser might be things that you would consider adding</li>
</ul>

## Peer review / Code Review

- [ ]  
<ul>
<li>If you are building a database of some kind then you might want the processes by which you process, collect or curate the data which go into this database to be subject to an academic style review, and papers about the creation of souch resources are not uncomon.</li>
<li>Seeking an external technical review may be trickier for your core code but review of how easy your system is to deploy is perhaps more accessible from the community of amateur self-hosters who may be quite willing to try deploying your tool in many and varied homelabs if it offers them something or you ask nicely and in the right places.</li>
</ul>

## Distribution

- [ ]  
<ul>
    <li> Your general audience is users of your web service so 'distribution' splits in to two slightly different problems.</li>
    <ul>
    	<li>Operating your website, things like making sure that your SSL certificates stay up to date and you have enough comput resources for the service to run well for users.</li>
	    <li>Your target audience for the technical distribution of your software is different, it's generally sysadmins, or at least amateur self-hosters.</li>
    </ul>
</ul>

## Environment Management / Portability

- [ ]  
<ul>
    <li>
    Depending on the infrastructure that you chose to deploy on you might use a different management tool, but it is best if you do use such a tool as a part of your development and deployment as, if done right, this provides an easy 'run a couple of commands' development environment setup for anyone picking up the project.
    Be that a future maintainer, someone wanting to play with a local test deployment, or someone wanting to contribute to the project.
    Examples of such tools include: [ansible](https://www.ansible.com/), [terraform](https://www.terraform.io/), [docker](https://www.docker.com/)/[docker compose](https://docs.docker.com/compose/), [nix](https://nixos.org/), [helm charts](https://helm.sh/) or a combination of some of these that fits your needs and experience.
    </li>
</ul>

