#!/usr/bin/env Rscript
suppressPackageStartupMessages({
	library(yaml)
	library(purrr)
	library(optparse)
})

# # maybe move to optparse eventually?
# args <- commandArgs(trailingOnly = TRUE)
# 
# # If passed a file the does not exist as input complain.
# if(!file.exists(args[1])) {
# 	stop("The file: '", args[1], "' does not exist")
# }
# 
# checklist_yaml <- yaml::read_yaml(args[1])
# 
# # Output to standard out unless an output file is supplied
# output_file <- stdout()
# if(!is.na(args[2])) {
# 	# if(file.exists(args[2])) {}
# 	output_file <- args[2]
# }
 
# lite <- FALSE
# if(!is.null(args[3])) {
# 	if(args[3] == "-l") { lite <- TRUE }
# }

opts <- list(
	make_option(
		c("-i", "--input"), action = "store",
		help = "Path to the input file"
	),
	make_option(
		c("-o", "--output"), action = "store",
		# default = stdout(),
		help = "Path to the output file, defaults to standard out"
	),
	make_option(
		c("-l", "--lite"), action = "store_false",
		default = TRUE, help = paste0(
			"Output a version of the checklists without the",
			"details section"
		)
	)
)

parsed_opts <- parse_args(
	OptionParser(
		usage = "Converts yaml representation of the checklist to markdown",
		option_list = opts
	), # args = c("--help"),
	# positional_arguments = TRUE
)

# print(parsed_opts)

if(!file.exists(parsed_opts$input)) {
	stop("The file: '", parsed_opts$input, "' does not exist")
}

checklist_yaml <- yaml::read_yaml(parsed_opts$input)

# print(parsed_opts$output)
output_file <- stdout()
if(!is.null(parsed_opts$output)) {
	output_file <- parsed_opts$output
	if(file.exists(output_file)) {
		file.remove(output_file)
	}
} # else {print(output_file)}
# print(output_file)


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
yaml2md <- function(checklist_yaml, output_file, details = TRUE) {
	# 
	medals <- c(
		bronze =   "🥉**Bronze**",
		silver =   "🥈**Silver**",
		gold =     "🥇**Gold**",
		platinum = "🏆**Platinum**"
	)

	cat(
		"# ", checklist_yaml$title,
		"\n\nversion: ", checklist_yaml$version, "\n\n",
		checklist_yaml$checklists_site_link, "\n",
		checklist_yaml$intro, "\n",
		sep = "", file = output_file, append = TRUE
	)
	purrr::walk(checklist_yaml$checklist_items, ~{
		cat(
			"\n## ", .x$emoji, " ", .x$title, "\n\n",
			.x$tagline,
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
				"\t- [", checked, "] ", medals[.y], ": ",
				ifelse(
					is.null(.x$difficulty), "",
					paste0("*(", .x$difficulty, ")* ")
				),
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
			ifelse(details, paste0(
				"\n", "<details>\n", .x$details,
				"\n", "</details>\n"
			), ""),
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

# yaml2md(checklist_yaml, output_file, details = TRUE)

yaml2md(
	checklist_yaml, output_file, # parsed_opts$output,
	details = parsed_opts$lite
)


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

