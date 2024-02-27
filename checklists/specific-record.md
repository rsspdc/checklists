# Record of a specific analysis

Considerations for publishing code which runs a specific analysis that underpins some result to be published in the academic literature.
The emphasis here is on making the work narrowly reproducible i.e. the analysis of the same data can produce the same result when it is re-run.
This is a starting point for making results robust (different analysis, same data) and replicable (same analysis, different data), and ultimately generalisable (different analysis, different data).
The other emphasis is on making the work 'verifiable', exposing the complete step-wise detail of the reasoning underpinning the analysis so that it can be scrutinised and understood.

## Source control

- [ ] Uses git (or other source control tool)
    - [ ]  	🥉Bronze (Easy): Using version control but has a shallow project history, just placed in git for distribution
    - [ ]  	🥈Silver (Intermediate): Longer project history, commit messages of mixed quality, some large message changes
    - [ ]  	🥇Gold (Hard): Silver plus - Well written commit messages, nice granular commits making discrete self-contained changes. Tags, releases, or branches at major project milestones, maybe some contributions from other users
    - [ ]  	🏆Platinum (MAXIMUM OVERKILL): Gold plus - Some from: [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/); Clean history with a consistent rebasing/merging strategy; Signed commits from all contributors; Contributions go through a consistent workflow like, issues, then a pull request from a branch.

<details>
<ul>
    <li>
    Whilst you can simply use git and a git forge / git hosting service as a way of distributing your project doing so misses out on a lot of benefits of using git as a part of your workflow from the beginning of your project.
    A well maintained git history is much like a well kept lab notebook for a data analysis project.
    Well authored commit messages detail why you changed what you changed, providing context for the development on project.
    You can by 'checking out' a commit open a window onto any point in the history of your project, of which you took a snapshot by making a commit.
    You can collaborate on your project with other git users asynchronously, it can be a great tool for distributed collaborative authorship not just of software but also of prose.
    A good example of this is [The Turing Way: a how to guide for reproducible data science](https://github.com/the-turing-way/the-turing-way/). 
    A nice read making this case is [Not just for programmers: How GitHub can accelerate collaborative and reproducible research in ecology and evolution](https://doi.org/11.1111/2041-210X.14108), though I would carefully weigh the long term issues often created by building on proprietary infrastructure like github as opposed to using an open git forge instead.
    </li>
    <li>
    Interaction with data and other big non-text / binary files.
    </li>
    <li>
        <ul>
            <li>
            There are a variety of different tools which can be used to manage versioning large binary objects in a git like fashion and which integrate with a git based workflow.
            If you use one, and which you choose, may depend on your specific needs.
            Examples: [git LFS](https://git-lfs.com/), [Data Version Control (DVC)](https://dvc.org/), [lakeFS](https://lakefs.io/)
            This is generally most relevant for intermediate data objects which are of potential interest to downstream users of the processed data objects.
            for example machine learning model weights from different training runs, annotated single cell sequence count matrices in things like seurat objects.
            If you have deposited your raw data into a public repository it does not to be duplicated in such a system indefinietly but it might be useful wilst working on the project to have it 'cached' in one.
            If possible start by importing the data & metadata into your own project from it's public repository as a test of FAIRness of the data.
            This also means that anyone using your dataset as a clear example of how to import it into a working environment.
            </li>
        </ul>
    </li>
</ul>
</details>

## Licencing

- [ ] Project is suitably licensed, there is a LICENCE file in the repository
<details>
<ul>
    <li>
The content of a repo of this form is generally a mixture of code, images (often graphs), data, and prose. In this context it may be preferable to have licenses for code, prose, and other assets such as graphs. e.g. all code under a GPLv4 license, and all images, prose and datasets, under a CC BY-SA license.
    </li>
    <li>
    If you have a big project with a lot on differently licensed content or need a standard way to provide license information for binary assets you might want to checkout the [REUSE.software](https://reuse.software/) tool, you can also embed licensing information directly into image metadata to help ensure that it remains associated with the image when/if it is reused, [IPTC](https://www.iptc.org/std/photometadata/specification/IPTC-PhotoMetadata#copyright-notice) provides an extended image metadata schema with a copyright notice field which could house an [SPDX](https://spdx.dev/) licence code.
    It also allow for the direct embedding of image alt text.
    </li>
</ul>
</details>

## Documentation

- [ ] Project has README file
- [ ] README provides a description of the project structure so that the user knows which directories to find things in
- [ ] README contains instructions with sufficient detail for someone else to re-run the analysis
<details>
<ul>
    <li>
    literate programming notebook tools like Jupyter and Rmarkdown/Quarto are a great tool for this sort of code output as they permit you to contextualise the choices made during an analysis, visualise, and interpret your results all in the same place.
    They can also provide robust provenance of results.
    It can be made clear that this data, was analysed by this code, in this compute environment, and produced these outputs as the output is built by executing the notebook.
    </li>
    <li>
    Analyses may be sufficiently complex that you don't want all of them in a literate programming form especially if you are using literate programming tools to author a conventional manuscript.
    You can treat the full details of your analysis as a supplementary method and use a combination of more conventional software documentation tools and literate programming to provide a full detail version of your analysis then reference these objects in your manuscript.
    If working in R the {[targets](https://books.ropensci.org/targets/)} tool can be a nice way of managing a workflow like this as you can cache results like graphs that might be complex and expensive to generate then reference them succinctly in your manuscript document.
    </li>
    <li>
    A good test of reproducibility of your analysis is to use CI/CD tools to build your outputs from source code and never commit the outputs themselves to the repo, you can then serve these build artefacts as a static website of your manuscript and any other documentation from your project.
    You can also bundle them with the rest of the code when creating a snapshot of the project to archive on a platform like [zenodo](https://zenodo.org/).
    Obviously it is best to avoid re-running lengthy computationally intensive analyses every time you push to a repository so caching results or only triggering rebuilds when tagging a commit a certain way for example might still make this possible if your build system has adequate computational resources.
    </li>
</ul>
</details>

## Making Citable

- [ ] A DOI, with which it can be referenced, has been minted for the project using a tool like [zenodo](https://zenodo.org/) to store a snapshot of the project.
	- [ ] A [CITATION.cff](https://citation-file-format.github.io/) and/or .zenodo.json file exists in the repo to provide citational metadata about your project
<details>
<ul>
    <li>
    The code underpinning a publication is a part of your methods.
    The legacy publishing system lacks a suitable and convenient way of including your analysis code as a part of your methods section so to work around this it is best to make your code a seperate citable object and just cite it in your methods section.
    </li>
    <li>
    Including a [CITATION.cff](https://citation-file-format.github.io/)(Citation File Format) file in your project repo is a simple way of making your code citable.
    The format is readable in YAML and permits the provision of the metadata needed for citation.
    </li>
    <li>
    [Zenodo](https://zenodo.org/) permits you to mint a [digital object identifier (DOI)](https://www.doi.org/) for your code and makes a snapshot of it, importing citational metadata from a [CITATION.cff](https://citation-file-format.github.io/) file or a .zenodo.json file.
    This makes it persistently identifiable and easy to integrate with citation management tools which can import the citation metadata given a DOI.
    </li>
</ul>
</details>

## Testing

- [ ] Includes a minimal test data set necessary to demonstrate the basic functionality of the tool.
- [ ] Includes test datasets which cover a range of outcomes
<details>
<ul>
    <li>
    Whilst you can make use of unit tests / automated testing frameworks in this context it is not always the best fit.
    A very good thing to do is to have an example dataset that you can perform your analysis on that is different from your new data.
    If you are testing a hypothesis it's nice to have test datasets which simulate rejecting and accepting your null hypothesis.
    </li>
</ul>
</details>

## Peer review / Code Review

- [ ] Consider submitting your code to [CODECHECK](https://codecheck.org.uk/) for an indepent check that it runs
 
<details>
<ul>
    <li>
    Most of the places that offer code peer review are focused on software packages not code that is specific to your analysis.
    This makes sense as reviewer time is fairly scarce so focusing it on code that others are more likely to reuse is reasonable.
    </li>
    <li>
    If your code underpins a publication then in theory it may get reviewed as a part of the regular peer review process although in practice this does not appear to be all that common.
    If the journal to which you are submitting your work has no policy on the code review, and your reviewers do not take an interest in reviewing your code - even just the checking if it runs for them then you may wish to take responibility for the review of this work into your own hands.
    [CODECHECK](https://codecheck.org.uk/) will independently verify that they can run your code, but its correctness is not in their scope.
    </li>
<ul>
</details>

## Distribution

- [ ]
    - [ ]  	🥉Bronze (Easy): Code in a public repository, minimal README
    - [ ]  	🥈Silver (Intermediate): Detailed instructions on how to re-run your 
    - [ ]  	🥇Gold (Intermediate): Project is in a reproducible interactive environment such as those offered by [binder](https://binderhub.readthedocs.io/en/latest/index.html) or [renku](https://renkulab.io/).
    - [ ]  	🏆Platinum (Hard): Gold plus 

<details>
<ul>
    <li>
    What it means to distribute one off analysis code is somewhat different from distributing a package or pipeline as this goal is different.
    The aims are to share how you did what you did in a research output, and to provide a record of the Provence of your results.
    </li>
    <li>
    Distribution in this context is closer to documentation and literate programming tools like [Jupyter](https://jupyter.org/) Notebooks, [jupyter book](https://jupyterbook.org/en/stable/intro.html) and [Rmarkdown](https://rmarkdown.rstudio.com/)/[Quarto](https://quarto.org/) lend themselves to this task very well.
    You can serve a static website based on the notebooks which perform, explain and interpret your analysis using these tools.
    You can even demonstrate their computational reproduciblity by building these outputs using continuous integration and deployment tools (CI/CD) tools available on gitforges like gitlab and github.
    </li>
    <li>
    Tools like [binder](https://binderhub.readthedocs.io/en/latest/index.html), [renku](https://renkulab.io/) allow you to share your analysis environment so that people can pick up your analysis where you left off in an interactive environment so that they can tweak your code and explore your data as they wish.
    </li>
    <li>
    An excellent way to share the record of a specific analysis is to use all these tools in conjunction.
        <ul>
        <li>
        Perform your analysis in reproducible compute environment specified using a tool like [renku](https://renkulab.io) or [binder](https://binderhub.readthedocs.io/en/latest/index.html) which will allow to easy share this environment with others.
    Write your manuscript using the literate programming tools and server this as static web page as a way of pre-printing your manuscript.
    Revise it with your collaborators using the issues and pull/merge request features of a git forge.
    If you make repo citable by adding the appropriate metadata and using [zenodo](https://zenodo.org/) to mint a DOI it is as citable as if it were deposited in a pre-print server, but probably looks a lot better.
    Then your entire project history is available in your git history.
    Your computational reproducibility is evidenced by the ability to build the output in the computational environment that you specified to serve your web page with the manuscript.
        </li>
        </ul>
    </li>
    <li>
    Where you have very large and computationally intensive upstream analyses, as is common for example in biological projects involving sequencing or image data, it can be easiest to take the outputs from this pipeline as the inputs for your downstream and less computationally intensive analysis.
    Document how to run the upstream reproducible pipeline in your down steam analysis.
    This way anyone could download your data and run the same upstream analysis to get to the same staring point for the lighter downstream analysis and all the information needed to do this is documented in the downstream analysis.
    </li>
</ul>
</details>

## Environment Management / Portability

- [ ] Computational environment description provided
    - [ ]  	🥉Bronze (Easy): List of package versions, e.g. output of `sessionInfo()` in R, not in a machine readable format
    - [ ]  	🥈Silver (Intermediate): Structured language specific environment decription, language environment can be re-created e.g. `renv.lock` in a mostly automated fashion
    - [ ]  	🥇Gold (Hard): Structured full environment description, automated ability to recreate the complete environment including system dependencies
    - [ ]  	🏆Platinum (MAXIMUM OVERKILL): Your description allows the automated bootstrap of the entire* depencency tree of your environment from source (currently very hard to achieve, basically only possible in Guix, likely to involve re-packaging software for Guix)

<details>
<ul>
    <li>
    This is the case where providing a complete specification of the computational environment in which code was run is perhaps the most important.
    Doing this and providing the information necessary to initiate a re-run of the analysis, in that environment, is the computational equivalent of providing protocol level methodological detail of how a bench experiment was performed.
    </li>
    <li>
    You might not need this level of detail to install a working version of a piece of software for general use.
    But for the record of a specific analysis it is ideal if we can re-run everything exactly with all the same versions if we are ever looking back to identify a potential source of error.
    </li>
    <li>
    The most approachable tools to specify and reproducibly share an interactive compute environment in which an analysis was performed are probably [binder](https://binderhub.readthedocs.io/en/latest/index.html), [renku](https://renkulab.io/).
    </li>
    <li>
    Use of a 'lock file' (different tools may have different names for these) which specifies which software and in which versions to install in order to recreate your compute environment is ideal for this application.
    Various package and environment managers support this such as [conda](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html), [renv](https://rstudio.github.io/renv/articles/renv.html), [python virtual environments](https://docs.python.org/4/library/venv.html), [poetry](https://python-poetry.org/), [nix flakes](https://zero-to-nix.com/concepts/flakes), [guix manifests](https://guix.gnu.org/en/manual/devel/en/html_node/Writing-Manifests.html).
    </li>
    <li>
    The scope of the environment managed by these tools can vary, renv for example only manage R packages, conda manages essentially any software but not necessarily all system dependencies, nix and guix can, and do, specify entire operating systems.
    </li>
    <li>
    It is common to use the more narrowly scoped package and environment management tools in conjunction with container or virtual machine images.
    You start with an image of an operating system, add instructions to install any system dependencies and then use the environment manager to install only what is needed for the project.
    This is incomplete as it leaves some things outside of the managed environment, but likely most familiar feeling as it is mostly the same as what you'd do when setting up your working environment on a new computer.
    Nix ([vm](https://nix.dev/tutorials/nixos/nixos-configuration-on-vm.html) [container](https://nix.dev/tutorials/nixos/building-and-running-docker-images.html)) and Guix ([vm](https://guix.gnu.org/manual/en/html_node/Running-Guix-in-a-VM.html) [container](https://guix.gnu.org/manual/en/html_node/Invoking-guix-pack.html)) can just generate such images directly with all system dependencies, but have a bit of a learning curve for their new, unfamiliar, way of working.
    </li>
    <li>
    [CODECHECK](https://codecheck.org.uk/)
    </li>
</ul>
</details>

