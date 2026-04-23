From the Pipelines & Workflows *[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

version: alpha


## 💽 Environment Management / Portability

*How can people get specific versions of your software running on their systems?*

- [ ] It is possible to run your pipeline on other systems with some degree of reproducibility
	- [ ] 🥉Bronze *(easy)*: The pipeline may require some manual changes, and/or manual steps to install the requisite software environments or retrieve data, and perform some standard pre-processing of inputs like building genome references etc.
	- [ ] 🥈Silver *(easy)*: External inputs can be automatically retrieved using their identifiers and pre-processing steps for these inputs are performed as apart of the pipeline.
At least one method for describing the required compute environment(s) is supplied e.g. conda environments, or container build files so that others can be specified if a user has compute infrastructure which does not support the method(s) supplied.
	- [ ] 🥇Gold *(hard)*: Complete pipeline can be executed with single command with all data and dependencies fetched automatically, barring the need for any system specific resource constraint configuration.
	- [ ] 🏆Platinum *(practically impossible in practice)*: The entire dependency tree of your pipeline including the pipeline manager itself, the OS it's running on and the firmware of the hardware it's running on can be bootstraped from source and produce bitwise identical binaries, also including any pre-processing of data inputs to the pipeline such as base calling for sequencing data.
 
<details>
<ul>
	<li>
	In the context of a pipeline each independent step should ideally be performed in it's own environment , perhaps defined within a container, with only the tools necessary to perform that step of the analysis.
	Many pipeline management tools support specifying per-task compute environments using tools such as conda, and container technologies such as docker and singularity/apptainer.
	<ul>
		<li>
			<p>
			Container images are a convenient format in which to distribute software along with its dependencies and to isolate this environment from other software which can help avoid any conflicts in dependencies.
			Container images like virtual machine images can be quite large and thus cumbersome to distribute, they are also something of a black box once built.
			Containers provide many of the advantages of virtual machines (VM) but generally with less performance penalty.
			However whilst they are narrowly reproducible they are not readily interrogated and checked unless you provide the build instructions which generated the image, for example a Dockerfile.
			Unfortunately the process of building container images is itself not necessarily reproducible.
			Thus when specifying container builds it is best practice to specify exact package versions in your build so that the image builds are reproducible.
			This can be challenging as many popular operating system package managers lack the tooling to do this easily.
			Pinning your container build to a snapshot of package repositories taken at a given date that will be available archivally is one way to address this.
			This paper provides some [Recommendations for the packaging and containerizing of bioinformatics software](https:/doi.org/10.12688/f1000research.15140.2)
			In the case of bioinformatics pipelines it is often easiest to specify your environment with [conda](https://conda.org/) and then build containers and/or VMs which install that same conda environment on linux base image such as debian.
			This has the advantage that the conda environment can be used independent of any images built with it reducing the maintenance burden for supporting multiple approaches to distributing the compute environment.
			Which package/environment management tool has well packaged versions of all the relevant software may be specific to your discipline.
			</p>
			<p>
			If you do need to inspect the contents of a container images a number of tools developed by [Anchore](https://github.com/anchore) in particular [Syft](https://github.com/anchore/syft) can be helpful in producing an account of the software installed in the image.
			It is a best practice to keep the software that you install in an image to the minimum necessary for the function that you need the image to perform, however, determining what this minimal set is can be non-trivial.
			</p>
		</li>
		<li>
			<p>
			Functional package managers such as [Nix](https://nixos.org/) and [Guix](https://guix.gnu.org/) have a 'best practices by design' approach to packaging software.
			They do not suffer from the issue of it being difficult to determine what is and is not a required dependency as this work is done up-front when the software is packaged.
			They usually require that dependencies be completely specified and packages be build in a sandboxed environment which only has access to the explicitly specified dependencies.
			This provides much stronger guarantees of the ability to specify and build reproducible environments.
			It is also possible to build container and VM images specified with these tools, and a container specified with them could be a drop in replacement for one specified with conda and Docker for example.
			Unfortunately these tools have yet to see wide adoption in the scientific / research computing communities and thus many packages used by these communities are not packaged for these tools, (despite nixpkgs being the largest extant software package respoitory with >100,000 packages), hindering their broarder adoption.
			Use and awareness is growing and there are some excellent [case studies](https://bioinformatics.mdc-berlin.de/pigx/).
			Nix is also cross platform working natively on MacOS, on windows via the windows subsystem for linux and even on android.
			</p>
			<p>
			It is worth being aware of these tools and considering packaging any software that you produce for them as they are gaining popularity and address many of the shortcommings and limitations of current package and environment mangement solutions.
			</p>
		</li>
	</ul>
	<li>
	Are the environments for each step of your pipeline well described using an environment management tool such as [Conda](https://conda.org/), or [Spack](https://spack.readthedocs.io/en/latest/) and/or supplied as [OCI](https://opencontainers.org/) containers, runnable with tools such [Docker](https://www.docker.com/), [podman](https://podman.io/), [lxc](https://linuxcontainers.org/lxc/introduction/), [Singularity/Apptainer](https://apptainer.org/), or others?
	</li>
	<li>
	Many popular pipeline management tools integrate with environment management and container runtimes to facilitate portability of reproducible compute environments. see:
	<ul>
		<li>
		[Snakemake - integrated Package management](https://snakemake.readthedocs.io/en/stable/snakefiles/deployment.html#integrated-package-management)
		</li>
		<li>
		[Nextflow - containers](https://www.nextflow.io/docs/latest/container.html)
		</li>
	</ul>
	</li>
	<li>
	The Pipelines in Genomics [PiGx](http://bioinformatics.mdc-berlin.de/pigx/) ([paper](https://doi.org/10.1093/gigascience/giy123)) collection represents a gold standard in reproducible computational environments for genomics pipelines.
	It used the [Guix](https://guix.gnu.org/) functional package manager to attain >97% bitwise reproducibility for dependencies across the pipelines in their collection.
	Containers built with Nix or Guix can be used in pipeline managers, as PiGx does with snakemake.
	</li>
</ul>

</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/rsspdc/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0</a></p>
