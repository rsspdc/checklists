a# Research Software Sharing, Publication, & Distribution Checklists

**WARNING: work in progress!**

## Research Software Output types

There are three broad types research code: Code that is effectively a one off record of a specific analysis, code which runs as a web-based service to be interacted with by researchers, and code which is intended to be re-used by others as a tool for their research.
This latter type can be further split into two types:
Individual software packages, typically in a single programming language and using a standard format for the distribution of a software package in that language.
Multi-part workflows or pipelines.
These typically consist of a number of different tools chained together they might all be in different languages and each perform some step in a complex, and often computationally intensive, process which might be distributed across multiple compute nodes in an high performance compute (HPC) cluster or cloud environment.
These are typically distributed in a domain specific 'glue' language with affordances suited to the task of pipeline management such as caching the results of completed steps.
Reviewing, Publishing, Sharing and distributing each of these types of research code requires slightly different considerations and approaches to be taken, though there are some things which are common to all of them.

**Here we provide a checklist for each of these types of output.**

These checklists also aim to accommodate a range of scales from small individual projects to massive projects with many contributors, so it is important to gauge what is possible and worth doing at your scale.
It may be inappropriate, inefficient, and inconvenient to adopt some of the practices of large projects at the beginning of your workflow - though it can pay to leave the path open to using them later by laying some groundwork.
Similarly running a massive project as though it was being run by a solo hobbyist is also not a good time - just for more people. 
Which practices to adopt into your project at which stage of its maturity will depend on the specifics of your project.
In presenting practices suitable to a range of scales we hope to let growing projects see what is available to those working at a larger scale plan for their adoption at a suitable time.

### Summary of types

-   Record of a specific analysis
-   Web-based service
-   Generic Tools
	-   Unitary tool / software package
	-   Multi-part workflows

## Generic parts of the checklists for research software outputs

There are differences in how some of these are executed depending on the type of output but all share these general features.

- 📒 Source control
-  © Licencing
- 📖 Documentation
- 🔗 Making Citable
- ✅ Testing
- 👥 Peer review / Code Review
- 📦 Distribution
- 💽 Environment Management / Portability
- 🌱 Energy Efficiency

## Project Scoreing & Medal System 

To check the box for each of these items should be attainable for any project.
To facilitate this you can check the box at different tiers, Bronze, Silver, Gold and Platinum.
Whislt Bronze aims to be highly atainable Platinium is highly aspirational and essentially no project should expect to have Platinum across the board.
To acheive an overall bronze rating you must acheive at least bronze in all categories.
Points are assigned to the rankings, 1 point for a Bronze and 4 for a Platinum in each category.
Overall project tier is determined by the mean of the score across categories rounded to the nearest integer.
Thus a total of 18 points and mean score of 2.25 is a silver tier overall if and only if all ratings are at least 1.
A high score is possible that does not 'medal' because of important deficiencies some of the key characteristics of research software.

(there are plans for repo badges with scores and medals)

## Contributing to this project

Comments, critiques, and edits are welcome at any time, feel free to open an issue.
These lists are still in an early phase of development (pre-alpha) I'll be soliciting input from select individuals and groups once they are in a good enough state to benefit the most from feedback.

I, Richard, am a bioinformatician by background not a research software engineer so some of this is outside my lane and needs input from working profressionals to refine its applicability to relevant domains of work.

 <p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/HDBI/data-management/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"></a></p> 
