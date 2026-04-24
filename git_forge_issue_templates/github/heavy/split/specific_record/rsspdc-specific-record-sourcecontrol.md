---
name: Record of a specific analysis
about:
title:[RSSPDC] <issue>
---

From the Record of a specific analysis *[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

version: alpha


## 📒 Source control

*How can you keep track of the history of your project and collaborate on it?*

- [ ] Uses git (or other source control tool)
	- [ ] 🥉Bronze *(easy)*: Using version control but has a shallow project history, just placed in git for distribution
	- [ ] 🥈Silver *(intermediate)*: Longer project history, commit messages of mixed quality, some large messy changes
	- [ ] 🥇Gold *(hard)*: Silver plus - Well written commit messages, nice granular commits making discrete self-contained changes. Tags, releases, or branches at major project milestones, maybe some contributions from other users
	- [ ] 🏆Platinum *(MAXIMUM OVERKILL)*: Gold plus - Some from: [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/); Clean history with a consistent rebasing/merging strategy; Signed commits from all contributors; Contributions go through a consistent workflow like, issues, then a pull request from a branch.
 
<details>
<ul>
	<li>
	Whilst you can simply use git and a git forge / git hosting service as a way of distributing your project doing so misses out on a lot of benefits of using git as a part of your workflow from the beginning of your project.
	A well maintained git history is much like a well kept lab notebook for a data analysis project.
	Well authored commit messages detail why you changed what you changed, providing context for the development of the project.
	You can by 'checking out' a commit open a window onto any point in the history of your project, of which you took a snapshot by making a commit.
	You can collaborate on your project with other git users asynchronously, it can be a great tool for distributed collaborative authorship not just of software but also of prose.
	A good example of this is [The Turing Way: a how to guide for reproducible data science](https://github.com/the-turing-way/the-turing-way/).
	A nice read making this case is [Not just for programmers: How GitHub can accelerate collaborative and reproducible research in ecology and evolution](https://doi.org/11.1111/2041-210X.14108), though I would carefully weigh the long term issues often created by building on proprietary infrastructure like github as opposed to using an open git forge instead.
	</li>
	<li>
	Interaction with data and other big non-text / binary files.
	</li>
	<ul>
		<li>
		git is not good at managing changes to large binary files like images, all versions of the file will be retained in the git history which can make it grow fast if they change frequently.
		</li>
		<li>
		You can exclude large datafiles from tracking by git by adding them, or a pattern matching them such as: `data/*` (ignore all files in in the data folder) or `*.data` (ignore all files with that end in `.data`) to the `[.gitignore](https://git-scm.com/docs/gitignore)` file.
		</li>
		<li>
		There are a variety of different tools which can be used to manage versioning large binary objects in a git like fashion and which integrate with a git based workflow.
		If you use one, and which you choose, may depend on your specific needs.
		Examples: [git-annex](https://git-annex.branchable.com/), [git LFS](https://git-lfs.com/), [Data Version Control (DVC)](https://dvc.org/), [lakeFS](https://lakefs.io/)
		This is generally most relevant for intermediate data objects which are of potential interest to downstream users of the processed data objects.
		for example machine learning model weights from different training runs, annotated single cell sequence count matrices in things like seurat objects.
		If you have deposited your raw data into a public repository it does not need to be duplicated in such a system indefinietly but it might be useful whilst working on the project to have it 'cached' in one.
		If possible start by importing the data & metadata into your own project from it's public repository as a test of FAIRness of the data.
		This also means that anyone using your dataset has a clear example of how to import it into a working environment.
		</li>
	</ul>
	<li>
	Signed and Timestamped git commits
	</li>
	<ul>
		<li> 
		It is possible to cryptographically sign your git commits, this can be used to increase confidence that you are the author of a signed commit as someone would have to compromise your private key in order to impersonate you.
		If your key is part of a [web of trust](https://en.wikipedia.org/wiki/Web_of_trust) or other (public key infrastructure (PKI)](https://en.wikipedia.org/wiki/Public_key_infrastructure) people can see that other people / institutions attest that person with this key is who they say they are.
		Whilst typically used for things like helping to protect critical open source infrastructure from supply chain attacks signed commits on academic code bases could be used to provide additional provenance information.
		</li>
		<li> 
		It is sometimes desirable for git commits to demonstrably have been signed at a given time, your system time is recorded by default but this can be trivially spoofed.
		The [opentimestamps](https://opentimestamps.org/) protocol which can be used to generate cryptographic attestations to the time at which a commit was made.
		This aims to establish a lower bound on how long ago the committed code was authored.
		The [opentimestamps-client](https://github.com/opentimestamps/opentimestamps-client) [integrates with git](https://github.com/opentimestamps/opentimestamps-client/blob/master/doc/git-integration.md) to provide timestamps for individual [GPG](https://gnupg.org/) signed commits
		</li>
	</ul>
</ul>

</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/rsspdc/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0</a></p>
