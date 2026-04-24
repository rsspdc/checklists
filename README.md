# Research Software Sharing, Publication, & Distribution Checklists

**WARNING: work in progress!**

**Who is this for?**
If you are publishing a research paper that has any analysis code associated with it, are developing a software tool which will be used by researchers, or deploying a web service which will be used by researchers.

**How do I use the checklists?**
Copy the markdown file suitable to your output type (see below) to your repo and check the boxes that apply to your project, or even better have someone else use the checklist to score your project.

For more see the [FAQs on the website](https://rsspdc.org/FAQ.html)

(optionally add a badge to your repo's readme with your medal and score)

## Research Software Output types

There are **three broad types research code**: Code that is effectively a **one-off record of a specific analysis**, code which runs as a **web-based service** to be interacted with by researchers, and **code which is intended to be re-used by others** as a tool for their research.
This latter type can be **further split into two types**:
**Individual software packages**, typically in a single programming language and using a standard format for the distribution of a software package in that language.
**Multi-part workflows or pipelines**.
These typically consist of a number of different tools chained together they might all be in different languages and each perform some step in a complex, and often computationally intensive, process which might be distributed across multiple compute nodes in an high performance compute (HPC) cluster or cloud environment.
These are typically distributed in a domain specific 'glue' language with affordances suited to the task of pipeline management such as caching the results of completed steps.

**Reviewing, Publishing, Sharing and distributing each of these types** of research code **requires slightly different considerations** and approaches to be taken, though there are **some things which are common to all of them**.

**Here we provide a checklist for each of these types of output.**

These checklists also aim to accommodate a range of scales from small individual projects to massive projects with many contributors, so it is important to gauge what is possible and worth doing at your scale.
It may be inappropriate, inefficient, and inconvenient to adopt some of the practices of large projects at the beginning of your workflow - though it can pay to leave the path open to using them later by laying some groundwork.
Similarly running a massive project as though it was being run by a solo hobbyist is also not a good time - just for more people. 
**Which practices to adopt into your project at which stage of its maturity will depend on the specifics of your project.**
In presenting practices suitable to a range of scales we hope to let growing projects see what is available to those working at a larger scale plan for their adoption at a suitable time.

### Summary of Types

-   [Record of a specific analysis](./checklists/rsspdc-specific-record.md)
-   [Web-based service](./checklists/rsspdc-web-service.md)
-   Generic Tools
	-   [Unitary tool / software package](./checklists/rsspdc-software-package.md)
	-   [Multi-part workflows / pipelines](./checklists/rsspdc-pipeline.md)

## Generic Parts of the Checklists

There are differences in how some of these are executed depending on the type of output but all share these general features, each feature has a motivating question.

- 📒 **Source control**
	- *How can you keep track of the history of your project and collaborate on it?*
-  © **Licencing**
	- *On what terms can others use your code, and how can you communicate this?*
- 📖 **Documentation**
	- *How do people know what your project is, how to use it and how to contribute?*
- 🔗 **Making Citable**
	- *How should people make reference to your project and credit your work?*
- ✅ **Testing**
	- *How can you test your project so you can be confident it does what you think it does?*
- 🤖 **Automation**
	- *What tasks can you automate to increase consistency and reduce manual work?*
- 👥 **Peer review / Code Review**
	- *How can you get third party endorsement of and expert feedback on your project?*
- 📦 **Distribution**
	- *How can people install or access the software emerging from your project?*
- 💽 **Environment Management / Portability**
	- *How can people get specific versions of your software running on their systems?*
- 🌱 **Energy Efficiency**
	- *How can you and your users minimise wasted energy?*
- ⚖ **Governance, Conduct, & Continuity**
	- *How can you be excellent to each other, make good decisions well, and continue to do so?*

## Project Scoring & Medal System 

**To check the box for each of these items should be attainable for any project.**
To facilitate this you can **check the box at different tiers, Bronze, Silver, Gold and Platinum.**

-   [ ] 🥉 Bronze (easy)
-   [ ] 🥈 Silver
-   [ ] 🥇 Gold
-   [ ] 🏆 Platinum (very hard)

Whilst **Bronze aims to be highly attainable Platinum is highly aspirational** and **essentially no project should expect to have Platinum across the board**, indeed if you do your probably overdoing it.
Do not be scared if you do not even understand what the silver and above items mean, the difficulty curve is quite steep!
Check out the expandable details sections for some resources on steps you can take to start ticking boxes.
**To achieve an overall bronze rating you must achieve at least bronze in all categories.**

Points are assigned to the rankings, **1 point for a Bronze and 4 for a Platinum** in each category.
**Overall project tier is determined by the mean of the score across all categories rounded down to the nearest integer.**
**A high score is possible that does not 'medal'** because of important deficiencies in some of the key characteristics of the research software.

|                                         | | | | | | | | |
|----------------------|-|-|-|-|-|-|-|-|
| 📒 **Source control**                       | 1                | 1                | 4                | 1                | 2                | 3                | 3                | 4                |
| © **Licencing**                             | 1                | 1                | 1                | 1                | 2                | 4                | 3                | 4                |
| 📖 **Documentation**                        | 1                | 1                | 1                | 1                | 2                | 3                | 3                | 4                |
| 🔗 **Making Citable**                       | 1                | 1                | 4                | 1                | 2                | 4                | 3                | 4                |
| ✅ **Testing**                              | 1                | 2                | 1                | 1                | 2                | 2                | 3                | 4                |
| 🤖 **Automation**                           | 1                | 1                | 1                | 1                | 2                | 1                | 3                | 4                |
| 👥 **Peer review / Code Review**            | 1                | 1                | 4                | 1                | 2                | 3                | 3                | 4                |
| 📦 **Distribution**                         | 1                | 1                | 1                | 1                | 2                | 3                | 3                | 4                |
| 💽 **Environment Management / Portability** | 1                | 1                | 1                | 1                | 2                | 2                | 3                | 4                |
| 🌱 **Energy Efficiency**                    | 1                | 1                | 4                | 1                | 2                | 3                | 3                | 4                |
| ⚖ **Governance, Conduct, & Continuity**     | **0**            | **0**            | **0**            | 1                | 2                | 4                | 3                | 4                |
| Total Score                                 | 10               | 11               | 22               | 11               | 22               | 32               | 33               | 44               |
| Scaled Score (`floor(total score / 11)`)    | 0                | 1                | 2                | 1                | 2                | 2                | 3                | 4                |
| Overall Medal                               | NA               | NA               | NA               | 🥉               | 🥈               | 🥈               | 🥇               | 🏆               |

[Repo badge Generator](https://rsspdc.org/badge-generator.html)

## Workflows

There are a different ways that you can make use of the checklists to fit with your current workflows.

Lite and heavy versions of the checklists are also available.
For minimalists who want a the leanest version of the checklists in their project repo,
the lite version drops the expandable details sections with tips & resources.
You can always look these up on the website.

For those who want the details sections right there in the markdown there is the heavy (default) version.

### Simple Copy

Grab a copy of the markdown version of the right checklist for your project and copy it into your repo.

### Issue Template Based Workflows

If don't want a checklist file in your repo directly and would rather just keep track of your progress in your issue tracker this option is for you.

There are pre-generated issue templates for github & gitlab in two forms:

- Single tracking issue
  This just places the whole checklist in an issue 
- Per theme issues
  This makes a seperate issue tempate for each of the generic parts in each checklist

The `git_forge_issue_templates` directory contains files to copy to your 
`.github/ISSUE_TEMPLATE` or `.gitlab/issue_templates` directories in your repos.
Navigate to the sub-directory containing the relevant templates for your git host,
prefered verbosity, issue style, and project type to locate the files to copy.

## Assessment

### Self-assessment

- Pick the checklist appropriate to the type of software of your project
- Download the checklist file and commit it to your repo
- As you make changes to your project that allow you to check off boxes in the list commit the changes along with the corresponding checked box
  This way the box checking change is in the same commit as the change that implements it
- When you've got yourself an initial score generate a repo badge and add it to the README of your project, update it along with subsequent changes to the checklist ([badge generator](https://rsspdc.org/badge-generator.html))

Not all changes to the checklist will be accompanied changes to the code, that's fine.
However, if you have something like a changelog, release notes, or other documentation which might be a suitable place to document changes that allow you to check off a box you might want to included these in the commit.

Ideally you would want to get an independent 3rd party to assess your project using the checklist.

If you are collaborating on project you will probably be following their usual contribution model and doing something like opening a merge/pull request with the proposed changes and the corresponding checked box(es) for each change..
This may also allow you to have a record of your checklist related changes in the issue tracker on your code forge.

### Third Party Attestation (proposed approach)

If a third party provides an assessment of your project using an RSSPDC this should be demonstrated by having a commit from them merged into your repo indicating this.

Third party assessment should be carried out by someone who does not have any conflicts of interest and can provide an impartial assessment of the project.
A third party assessor can assess a project with an existing self-assessment and can follow largely the same workflow as suggested for self-assessment.
Depending on how much time they have to perform the assessment they may score the project 'as is' or provide suggestions for improvements as merge/pull requests and provide a score once authors have responded to feedback.

This person should commit to the repository adding the 3rd party attestation version of the badge to the repository's README, this commit should ideally be [GPG signed](https://git-scm.com/book/en/v2/Git-Tools-Signing-Your-Work) and [timestamped](https://github.com/opentimestamps/opentimestamps-client/blob/master/doc/git-integration.md).
They would also likely commit to the checklist file but might not in the event that they concur completely with an existing self-assessment.

Their commit message adding the badge should take the form: `rsspdc: attest <medal> <points> <type>`, for example: `rsspdc: attest bronze 11 specific record`.
Afterwards you may wish to provide a link to this commit next too the badge to make this easy for visitors to verify.

If you have made self-assessed improvements after a third party assessment you may wish to use two badges one to denote your current self-assessed state and the third party assessed badge until you can get another assessment.

## Contributing to this project

**These lists are still in an early phase of development (alpha)** I'll be soliciting input from select individuals and groups once they are in a good enough state to benefit the most from feedback.

Comments, critiques, and edits are welcome at any time, feel free to open an [issue](https://gitlab.com/HDBI/data-management/checklists/-/issues).
Please start by opening an issue instead of jumping directly to a merge/pull request unless your PR is of a very small scope e.g. fixing a typo or broken link.

### Building the Checklists

The markdown files for the checklists are now generated from a yaml file which defines their contents.
There a a few reason for this change.
I used to have a duplicate version of the checklist files in the website repository with this approach I can instead automate generating the pages on the website from the yaml version and potententially make some formatting customisations to the version rendered on the site.
I have recieved requests for a lighter version of the checklists which exclude the expandable details sections with the advice and resources for completeling the checklist from the version that people include in their repos to track their projects status.
It is now possible to generate this light version of the checklist by simply supplying the yaml to markdown conversion script with a flag: `-l/--lite`.

See the checklist yaml format information [README](R/README.md) file in the `R` folder for details of the expected yaml document format, and details of how to run this script.

### Project Governance

I, Richard, am a bioinformatician by background not a research software engineer so some of this is outside my lane and needs input from working professionals to refine its applicability to relevant domains of work.

Please abide by the [code of conduct](CODE_OF_CONDUCT.md), I am the benevolent dictator until such time as I can arrange to have myself replaced by suitable person(s) or organsisation(s).

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/HDBI/data-management/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"></a></p>

