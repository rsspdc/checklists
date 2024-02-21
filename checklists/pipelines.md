# Pipelines & Workflows

Considerations for publishing a data analysis pipeline which may be used in research or as a researcher

## Source control

- [ ] Uses git
<details>
<ul>
    <li>
    If the workflow tool you are using has a convenient tool for initiating a template for a workflow then you may want to get your project's git repository started using that tool. [Nextflow](https://www.nextflow.io/) for example has the [nf-core template](https://nf-co.re/docs/contributing/guidelines/requirements/use_the_template) which makes the creation of an nf-core style pipeline project easy.
    </li>
</ul>
</details>

## Licencing

- [ ]  
<details>
<ul>
    <li>
    gray area around strong copyleft licenses like the GPL when used as libraries in combined works
    </li>
</ul>
</details>

## Documentation

- [ ]  
<details>
<ul>
    <li>
    The inputs
    </li>
</ul>
</details>

## Making Citable

- [ ] A DOI, with which it can be referenced, has been minted for the project using a tool like [zenodo](https://zenodo.org/) to store a snapshot of the project.
	- [ ] A CITATION.cff and/or .zenodo.json file exists in the repo to provide citational metadata about your project
<details>
<ul>
    <li>
    The same principles apply here as
    </li>
</ul>
</details>

## Testing

- [ ]   
<details>
<ul>
    <li>having test datasets which cover all of the different paths</li>
    <li>Real world data potentially along with synthetic data generated to test edge cases</li>
    <li>testing different combinations of options</li>
    <li>testing portability</li>
    <li>testing</li>
</ul>
</details>

## Peer review / Code Review

- [ ]   
<details>
<ul>
<li>
The design of the analysis, any methodological choices made and any original steps added might warrant a conventional scientific publication if for example you are making a pipeline which automates a portion of the analysis of some new datatype
    <ul>
	<li>review the theory</li>
    </ul>
</li>
<li>
Technical
    <ul>
	<li>review the implementation</li>
    </ul>
</li>
</ul>
</details>

## Distribution

- [ ]  
<details>
<ul>
<li>
Good places to distribute workflows include:
    <ul>
    <li>
	[workflowhub](https://workflowhub.eu) most generic accepts workflows in a number different tools
    </li>
    <li>
	- For Nextflow pipelines in the nf-core format [nf-core](https://nf-co.re/) (MIT license required for pipeline code)
    </li>
    <li>
	For Snakemake pipelines which conform to some relatively simple requirements [snakemake workflow catalog](https://snakemake.github.io/snakemake-workflow-catalog/)
    </li>
    <li>
	Pipelines in the R {[targets](https://docs.ropensci.org/targets/)} tool [targetopia](https://wlandau.github.io/targetopia/)
    </li>
    </ul>
</li>
</ul>
</details>

## Environment Management / Portability

<details>
<ul>
    <li>
    containers, conda, singularity/apptainer
    </li>
</ul>
</details>

