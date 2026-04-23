#!/usr/bin/env Rscript

# packages ----
suppressPackageStartupMessages({
	library(yaml)
	library(purrr)
	library(optparse)
	library(fs)
})

# TODO
# - [x] pre_notes
# - [x] repo link / site link
# - [x] extra quarto formatting for the website verions - e.g. use callout blocks for details?
# - [x] toggle difficuly indicators
# - [ ] --serious-business mode with no emoji :(
# - [ ] indicate mandatory subparts / handle any N from subparts
# - [ ] automatic score calculation
# - [x] issue templates

# set output path for git forges?

# Define command line options ----
opts <- list(
	make_option(
		c("-i", "--input"), action = "store",
		help = "Path to the input file"
	),
	make_option(
		c("-o", "--output"), action = "store",
		# default = stdout(),
		help = paste0(
			"Path to the output file, defaults to standard out.\n\n",
			"\t\tSets the output directory when used in conjunction ",
			"--git-forge=<gitlab/github> --issue-style=split ",
			"as this generates multiple output files"
		)
	),
	make_option(
		c("-l", "--lite"), action = "store_false",
		default = TRUE, help = paste0(
			"Output a version of the checklists without the",
			"details section"
		)
	),
	make_option(
		c("-q", "--quarto"), action = "store_true",
		default = FALSE, help = paste0(
			"Use quarto markdown syntax when generating the output",
			"\n\t\te.g. Uses as callout block instead of a details tag",
			"for the additional details section"
		)
	),
	make_option(
		c("-f","--git-forge"),
		dest = "git_forge",
		#default = FALSE,
		metavar = "gitlab",
		help = paste0(
			"Generate github or gitlab issue templates.\n\n\t\t",
			"Issue template file(s) will be created in the ",
			".github/ISSUE_TEMPLATE directory, or ",
			".gitlab/issue_templates directory,\n\t\t",
			"relative to where this script is run, by default.\n\t\t",
			"The directory will be created if it does not already exist.\n\t\t",
			"If an output location is specified the template(s)" ,
			"will be generated there instead."
		)
	),
	make_option(
		c("-s", "--issue-style"),
		dest = "issue_style",
		metavar = "split",
		default = "split",
		help = paste0(
			"Issue templates are available in two styles:\n\n",
			"\t\t- 'split One issue per theme\n",
			"\t\t- 'tracking' Single large issue in which to track changes\n"
		)
	),
	make_option(
		c("-e", "--emoji"), action = "store_false",
		dest = "emoji",
		default = TRUE,
		help = "Serious Business mode - No Emoji :("
	),
	make_option(
		c("-d", "--hide-difficulty"), action = "store_false",
		dest = "difficulty",
		default = TRUE, help = paste0(
			"Include the subjective difficulty assessment indicator"
		)
	)
)

parsed_opts <- parse_args(
	OptionParser(
		usage = paste0(
			"Converts yaml representation of the checklist to ",
			"a number of markdown variants."# \n",
		),
		option_list = opts
	)
)

# Read the checklist data ----

# check input file exists
if(!fs::file_exists(parsed_opts$input)) {
	stop("The file: '", parsed_opts$input, "' does not exist")
}
# Read the yaml file containing the checklist data
checklist_yaml <- yaml::read_yaml(parsed_opts$input)

# Functions ----

#' yaml2md 
#'
#' Converts a yaml represention of the checklists to a markdown one.
#'
#' @param checklist_yaml list representaion of a yaml file, as produced by 
#' [yaml::read_yaml] reading a yaml represention of the checklists file
#' @param output_file path to a file to write to
#' @param details [default: TRUE] if the details section should be included in
#' the output
#'
#' @return nothing - prints to a file
yaml2md <- function(
	checklist_yaml, output_file, git_forge,
	details = TRUE, quarto = FALSE, difficulty = TRUE, emoji = TRUE
) {
	if(!identical(class(output_file), c("terminal", "connection"))) {
		if(fs::file_exists(output_file)) {
			fs::file_delete(output_file)
		}
	}
	
	medals <- c(
		bronze =   "Bronze",
		silver =   "Silver",
		gold =     "Gold",
		platinum = "Platinum"
	)

	if(emoji) {
		nms <- names(medals)
		medals <- paste0(c("🥉", "🥈", "🥇", "🏆"), medals)
		names(medals) <- nms
	}

	if(!is.null(git_forge)) {
		if(git_forge == "github") {
			cat(
				"---\n",
				"name: ", checklist_yaml$title, "\n",
				"about:","\n",
				"title:", "[RSSPDC] <issue>",
				"\n---\n\n",
				sep = "", file = output_file, append = TRUE
			)
		}
	}
	cat(
		"# ", checklist_yaml$title,
		" [raw markdown](", checklist_yaml$full_markdown_url, ")",
		" [lite markdown](", checklist_yaml$lite_markdown_url, ")",
		"\n\nversion: ", checklist_yaml$version, "\n\n",
		"*[Research Software Sharing, Publication, & Distribution Checklist](",
		checklist_yaml$checklists_site_url, ")* [[repo](",
		checklist_yaml$checklists_repo_url,
		")]", "\n\n",
  
		checklist_yaml$intro, "\n",
		sep = "", file = output_file, append = TRUE
	)
	purrr::walk(checklist_yaml$checklist_items, ~{
		cat(
			"\n## ", ifelse(emoji, paste0(.x$emoji, " "), ""),
			.x$title, "\n\n",
			.x$tagline,
			ifelse(
				is.null(.x$pre_notes),
				"", paste0("\n", .x$pre_notes, "\n")
			),
			.x$overall, "\n",
			"- [" ,
			ifelse(.x$checklist_items$overall$checked, "x", " "),
			"] ",
			.x$checklist_items$overall$content, "\n",
			sep = "", file = output_file, append = TRUE
		)
		purrr::iwalk(.x$checklist_items$tiers, ~{
			checked <- ifelse(.x$checked, "x", " ")
			cat(
				"\t- [", checked, "] ", medals[.y],
				ifelse(
					difficulty,
					ifelse(
						is.null(.x$difficulty), "",
						paste0(" *(", .x$difficulty, ")*")
					),
					""
				), ": ",
				.x$content, "\n",
				sep = "", file = output_file, append = TRUE
			)
			purrr::walk(.x$subparts, ~{
				checked <- ifelse(.x$checked, "x", " ")
				cat(
					"\t\t- [", checked, "] ", .x$content,
					ifelse(
						is.null(.x$difficulty), "",
						paste0(
							" *(", .x$difficulty,
							")* "
						)
					),
					"\n",
					sep = "", file = output_file, append = TRUE
				)
			})
		})
		cat(
			ifelse(
				is.null(.x$post_notes),
				"", paste0("\n", .x$post_notes)
			),
			ifelse(
				details,
				ifelse(
					quarto,
					paste0(
						"\n",
						'::: {.callout-caution collapse="true"}\n',
						.x$details,
						":::\n"
					),
					paste0(
						"\n", "<details>\n",
						.x$details,
						"\n", "</details>\n"
					)
				), ""
			),
			file = output_file, append = TRUE
		)
	})

	cat(
		'\n',
		'<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/">',
		'<a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/HDBI/data-management/checklists">',
		'Research Software Sharing, Publication, & Distribution Checklists',
		'</a>',
		' by ',
		'<a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">',
		'Richard J. Acton',
		'</a>',
		' is licensed under ',
		'<a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">',
		'CC BY 4.0',
		'<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1">',
		'<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1">',
		'</a>',
		'</p>',
		sep = "", file = output_file, append = TRUE
	)
 	
	cat("\n", sep = "", file = output_file, append = TRUE)
}

# Output mode ----

gen_split_issues_file_paths <- function(in_file, out_path, suffixes) {
	in_file %>%
		fs::path_file() %>% 
		fs::path_ext_remove() %>% 
		paste0(out_path, "/", ., "-", suffixes) %>% 
		# fs::path_join(gh_templates_dir, .) %>%
		fs::path_ext_set("md") %>%
		purrr::set_names(suffixes)
}

gen_tracking_issues_file_path <- function(in_file, out_path) {
	in_file %>%
		fs::path_file() %>% 
		fs::path_ext_set("md") %>% 
		c(out_path, .) %>% 
		fs::path_join()
}

# git host issue templates

# if((!is.null(parsed_opts$issue_style)) && is.null(parsed_opts$git_forge)) {
# 	stop("--issue-style can only be specified when --git-forge is set!")
# }

issue_template_formats <- c("tracking", "split")
supported_git_forges <- c("github", "gitlab")

if(!is.null(parsed_opts$git_forge)) {
	if (!parsed_opts$issue_style %in% issue_template_formats) {
		stop(
			"--issue_style must be one of: ",
			paste(issue_template_formats, collapse = ", ")
		)
	}
	if (!parsed_opts$git_forge %in% supported_git_forges) {
		stop(
			"--git_forge must be one of: ",
			paste(supported_git_forges, collapse = ", ")
		)
	}
	if(is.null(parsed_opts$output)) {
		templates_dir <- switch(
			parsed_opts$git_forge,
			github = ".github/ISSUE_TEMPLATE",
			gitlab = ".gitlab/issue_templates"
		)
	} else {
		templates_dir <- parsed_opts$output
	}
	if(!fs::dir_exists(templates_dir)) {
		message("Creating: ", templates_dir)
		fs::dir_create(templates_dir, recurse = TRUE)
	}
	if(parsed_opts$issue_style == "tracking") {
		default_tracking_issue_filepath <- 
		gen_tracking_issues_file_path(
			parsed_opts$input, templates_dir
		)

		yaml2md(
			checklist_yaml, default_tracking_issue_filepath, # parsed_opts$output,
			git_forge = parsed_opts$git_forge,
			details = parsed_opts$lite,
			difficulty = parsed_opts$difficulty,
			emoji = parsed_opts$emoji 
		)
	} else { # if (parsed_opts$issue_style == "split") {
		default_split_issues_filepaths <- gen_split_issues_file_paths(
			parsed_opts$input, templates_dir, 
			names(checklist_yaml$checklist_items)
		)

		# print(default_split_issues_filepaths)
		purrr::iwalk(default_split_issues_filepaths, ~{
			theme <- checklist_yaml
			theme$checklist_items <- checklist_yaml$checklist_items[.y]
			yaml2md(
				theme, .x, # parsed_opts$output,
				git_forge = parsed_opts$git_forge,
				details = parsed_opts$lite,
				difficulty = parsed_opts$difficulty,
				emoji = parsed_opts$emoji 
			)
		})
	}
}


if (is.null(parsed_opts$git_forge)) {
	output_file <- stdout()
	if(!is.null(parsed_opts$output)) {
		output_file <- parsed_opts$output
	}
	
	yaml2md(
		checklist_yaml, output_file,
		git_forge = parsed_opts$git_forge,
		details = parsed_opts$lite,
		quarto = parsed_opts$quarto,
		difficulty = parsed_opts$difficulty,
		emoji = parsed_opts$emoji 
	)
}

# Notes

# if splitting up details bullete points and not expecting them to be
# reproduced verbatim from the yaml then will need to write the html list
# syntax.
# This gets a bit complex with headers for lists and ordered vs unordered.

# details_recursive <- function(x) {
# 	for(i in seq_along(x)) {
# 		if(is.character(x[i])) {
# 			cat(
# 				paste0(c(
# 					rep("\t", i),
# 					"<li>", x[i], "</li>"
# 				), collapse = ""),
# 				sep = "\n"
# 			)
# 		} else {
# 			cat(
# 				paste0(
# 					c(rep("\t", i - 1), "<ul>"),
# 					collapse = ""),
# 				sep = "\n"
# 			)
# 			details_recursive(x[[i]])
# 			cat(
# 				paste0(
# 					c(rep("\t", i - 1), "</ul>"),
# 					collapse = ""),
# 				sep = "\n"
# 			)
# 		}
# 	}
# }

# for (i in seq_along(checklist_yaml$checklist_items)) {
# 	cat("<details>\n", file = output_file)
# 	checklist_yaml$checklist_items[[i]]$details |>
# 		details_recursive()
# 	cat("</details>\n", file = output_file)
# }

