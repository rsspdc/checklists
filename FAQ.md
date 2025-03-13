# FAQ

## Q: Who is this for?

A: If you are publishing a research paper that has any analysis code associated with it, are developing a software tool which will be used by researchers, or deploying a web service which will be used by researchers.

## Q: How do I use the checklists?

A: Copy the markdown file suitable to your output type (see the [README](README.md)) to your repo and check the boxes that apply to your project, or even better have someone else use the checklist to score your project.

## Q: Why were these checklists created?

A:

Broadly, because there are a number of examples of the challenges posed to researchers by and potential negative consequences of poor practices in quality control / review, openness, transparency, and reproducibility of research code such as:

- [Characterization of Leptazolines A-D, Polar Oxazolines from the Cyanobacterium Leptolyngbya sp., Reveals a Glitch with the "Willoughby-Hoye" Scripts for Calculating NMR Chemical Shifts](https://doi.org/10.1021/acs.orglett.9b03216)
- [The impact of package selection and versioning on single-cell RNA-seq analysis](https://doi.org/10.1101/2024.04.04.588111)

As well as theoretical and philosophical reasons why it is important for robust science, such as:

- [The logical structure of experiments lays the foundation for a theory of reproducibility](https://doi.org/10.1098/rsos.221042)
- [Verifiability in computer-aided research: the role of digital scientific notations at the human-computer interface](https://doi.org/10.7717/peerj-cs.158)
- [The critical need to foster computational reproducibility](https://doi.org/10.1088/1748-9326/ac5cf8)

This is combined with the experience of and evidence for a lack of widespread good practices in this area, such as:

- [A large-scale study on research code quality and execution](https://doi.org/10.1038/s41597-022-01143-6)
- [Quantifying Reproducibility in Computational Biology: The Case of the Tuberculosis Drugome](https://doi.org/10.1371/journal.pone.0080278)
- [Assessing data availability and research reproducibility in hydrology and water resources](https://doi.org/10.1038/sdata.2019.30)

These problems persist even when efforts are made to institute policies which encourage it them:

- [An empirical analysis of journal policy effectiveness for computational reproducibility](https://doi.org/10.1073/pnas.1708290115)

So clearly more work is needed in this area.

Specifically, I (Richard) was inspired by the [Community-developed checklists for publishing images and image analyses](https://doi.org/10.1038/s41592-023-01987-9) that I discovered whilst writing a resource on research data sharing for the research consortium for which I work and wanted to provide something similar for research software outputs.
In my experience the '[record of a specific analysis](checklists/specific-record.md)' or 'research compendium' was among the most common forms of research software output but recommendations for research software publication focused primarily on conventional [software packages](checklists/software-packages.md):

- [The FAIR Principles for research software](https://doi.org/10.1038/s41597-022-01710-x)
- [ELIXIR Software Management Plan for Life Sciences](https://doi.org/10.37044/osf.io/k8znb)
- [Software Sustainability Institute Checklist for a Software Management Plan](https://doi.org/10.5281/ZENODO.2159713) 

These are all excellent resources to refer to and I recommend reading them, but a component that these checklists add in addition to these resources is recommendations specific to different types of research software output.
Most of the previous work in this space has implicitly leant towards conventional software packages as the primary output with some consideration for [web based services/APIs](checklists/web-based-service.md),
though there are a number of previous works tackling this issue often within specific disciplines, or addressing specific aspects of best practice such as version control or testing.
For example:

- [Good enough practices in scientific computing](https://doi.org/10.1371/journal.pcbi.1005510)
- [Packaging Data Analytical Work Reproducibly Using R (and Friends)](https://doi.org/10.1080/00031305.2017.1375986)
- [British Ecological Society Better Science Guide for Reproducible Code](https://www.britishecologicalsociety.org//wp-content/uploads/2024/12/BES-Reproducible-code-guide.pdf)
- [Not just for programmers: How GitHub can accelerate collaborative and reproducible research in ecology and evolution](https://doi.org/10.1111/2041-210X.14108) 
- [Excuse Me, Do You Have a Moment to Talk About Version Control?](https://doi.org/10.1080/00031305.2017.1399928)
- [Software testing in microbial bioinformatics: a call to action](https://doi.org/10.1099/mgen.0.000790)

Whilst much of the advice is similar across the types of research software output identified here there are a number of important differences and, the audiences generating these outputs are sufficiently different to warrant dedicated checklists.

These checklists aim to provide as concrete and actionable a set of recommendations as possible.
In addition they provide aspirational suggestions and resources for those wishing to push the envelope on computational reproducibility and [FAIRness](https://doi.org/10.1038/s41597-025-04451-9) in research software beyond the minimum requirements, they do so in one place for all research software output types and in a format which makes them easy to include and apply to your code repository.
Another goal of this project is to provide a place where these checklists can be living documents and receive continuous updates as best practices evolve.

Whilst ELIXIR are working on machine readable software management plans using [Data Stewardship Wizard](https://ds-wizard.org/) the checklists here are in a loosely defined markdown format which makes no strong guarantees that it will be parsable so their approach may be preferable for more formal exercises.
These lists have the ease of being a simple to copy and edit text file.

## Q: Am I trying to manipulate you into following best practices by gamifying it?

A: Yes.

## Q: In the licensing sections you only mention free/libre/open source software - What about proprietary software?

A:

I (Richard) would contend that the use of closed-source software in scientific research is fundamentally at odds with scientific epistemology.
Unless it can be understood exactly which steps produced an output, and this can be independently checked, we are engaged in alchemy and not science.

![A Cartoon drawing featuring two men looking at a blackboard with mathematical notation on it. One points to a section of the borad that reads: "Then a miracle occurs" and says: "I think that you should be more explicit here in step two." Image Credit: Sidney Harris](assets/then-a-miracle-sidney-harris.png)

A subset of source available software, where the code is open to scrutiny but not licensed in a fashion that respects [FSF's four freedoms](https://www.gnu.org/philosophy/free-sw.en.html) or meets the [OSI's open source definiton](https://opensource.org/osd) can,
in my view, be compatible with scientific epistemology only if the licence under which the source is made available meets certain criteria.

These tools should be licensed in such as fashion as to provide explicit proactive protections for the limited forms of copying, modification and redistribution necessary for archiving and to provide critique of the software by researchers.
Mostly this should not be necessary as in such cases a good argument can be made for fair use exceptions to copyright protections but making this explicit alleviates concerns over possible legal action.
Whilst they should not be necessary in theory, in practice this explicit legal cover may be needed for researchers, publishers, and institutions to publish critiques which feature code.

Such licenses should also contain 'sunset clauses' which guarantee the release of code under a fully free/libre/open-source licence if the copyright owner ceases active maintenance of the project.
This ensures that the scientific community can continue to build on any work based on this software, if it makes sense for them to do so, rather than starting from scratch.

For a researcher to consider the use of a tool these criteria must also extended to the licenses of the complete dependency tree of any tool, as the purpose of these criteria are to obligate the transparency necessary for scrutiny along the complete chain of logic.
This is not usually a requirement for free/libre/open source software where it is fine to receive inputs from closed software, just using open tools at the end of the process is not sufficient if they are taking the outputs of a black box system as inputs.
This includes embedded software in scientific instruments.

To my knowledge no-one has yet developed standard source available licenses to fit this particular use case, this would be a potentially useful exercise.
Though free/libre/open-source licenses remain preferable for other reasons,
a set of proprietary licenses compatible with use in research would serve to underline the problems with current closed licenses and provide alternatives to those not yet willing/able to move to a fully free/libre/open source model.

If you want to write software which can ethically be used by researchers to do their work you should pursue a business model compatible with your software being open source or which uses a source available license which meets the criteria here described.
If you cannot do this do not develop software for use in research.

I advocate that funders, and research institutions move to a policy prohibiting the purchase of software for use in research which does not meet these standards,
and that publishers move to a policy of not publishing research outputs generated using tools which do not meet these standards.

Unfortunately transitioning to a better model here is difficult due to the entrenched use of many closed tools,
so a phased long term roll out of these policy changes would likely be necessary to avoid excessive disruption.

