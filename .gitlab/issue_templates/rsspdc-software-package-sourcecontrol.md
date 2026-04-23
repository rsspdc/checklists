# Software Packages [raw markdown](https://gitlab.com/rsspdc/checklists/-/raw/master/checklists/rsspdc-software-packages.md) [lite markdown](https://gitlab.com/rsspdc/checklists/-/raw/master/checklists/rsspdc-software-packages-lite.md)

version: alpha

*[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

Considerations for publishing a software package which may be used in research or as a researcher


## 📒 Source control

*How can you keep track of the history of your project and collaborate on it?*

- [ ] Uses [git](https://git-scm.com/) (or other source control tool such as [fossil](https://fossil-scm.org/home/doc/trunk/www/index.wiki))
	- [ ]   🥉Bronze *(easy)*: Using version control but has a shallow project history, just placed in git for distribution
	- [ ]   🥈Silver *(intermediate)*: Longer project history, commit messages of mixed quality, some large messy changes
	- [ ]   🥇Gold *(hard)*: Silver plus - Well written commit messages, nice granular commits making discrete self-contained changes.
Tags, releases, or branches at major project milestones, maybe some contributions from other users
	- [ ]   🏆Platinum *(MAXIMUM OVERKILL)*: Gold plus - Some from: [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/); Clean history with a consistent rebasing/merging strategy; Signed commits from all contributors; Contributions go through a consistent workflow like, issues, then a pull request from a branch.
 
<details>
<ul>
	<li>
	If the language you are writing in has a convenient tool for initiating a template for a package then you may want to get your project's git repository started using that tool.
	R for example has the {[usethis](https://usethis.r-lib.org/)} package which makes the creation of a minimal R package very easy, including adding automated building and testing with github actions.
	</li>
</ul>

</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/HDBI/data-management/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"></a></p>
