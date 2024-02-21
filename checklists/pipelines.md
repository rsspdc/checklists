# Pipelines & Workflows

Considerations for publishing a data analysis pipeline which may be used in research or as a researcher

## Source control

- [ ] Uses git
- If the workflow tool you are using has a convenient tool for initiating a template for a workflow then you may want to get your project's git repository started using that tool. [Nextflow](https://www.nextflow.io/) for example has the [nf-core template](https://nf-co.re/docs/contributing/guidelines/requirements/use_the_template) which makes the creation of an nf-core style pipeline project easy.
## Licencing
- gray area around strong copyleft licenses like the GPL when used as libraries in combined works

## Documentation

- The inputs

## Making Citable

- [ ] A DOI, with which it can be referenced, has been minted for the project using a tool like [zenodo](https://zenodo.org/) to store a snapshot of the project.
	- [ ] A CITATION.cff and/or .zenodo.json file exists in the repo to provide citational metadata about your project
- The same principles apply here as

## Testing

- having test datasets which cover all of the different paths
- Real world data potentially along with synthetic data generated to test edge cases
- testing different combinations of options
- testing portability
- testing

## Peer review / Code Review

- The design of the analysis, any methodological choices made and any original steps added might warrant a conventional scientific publication if for example you are making a pipeline which automates a portion of the analysis of some new datatype
	- review the theory
- Technical
	- review the implementation

## Distribution

- Good places to distribute workflows include:
	- [workflowhub](https://workflowhub.eu) most generic accepts workflows in a number different tools
	- For Nextflow pipelines in the nf-core format [nf-core](https://nf-co.re/) (MIT license required for pipeline code)
	- For Snakemake pipelines which conform to some relatively simple requirements [snakemake workflow catalog](https://snakemake.github.io/snakemake-workflow-catalog/)
	- Pipelines in the R {[targets](https://docs.ropensci.org/targets/)} tool [targetopia](https://wlandau.github.io/targetopia/)

## Environment Management / Portability

- containers, conda, singularity/apptainer

