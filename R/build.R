# generate all outputs from yaml

suppressPackageStartupMessages({
	library(fs)
	library(purrr)
	library(magrittr)
})

yaml_checklist_paths <- dir_ls("../yaml")

yaml2md <- "Rscript yaml2md.R"

md_checklist_paths <-
	yaml_checklist_paths %>% 
	path_file() %>% 
	path_ext_set("md") %>% 
	map_chr(., ~path_join(c("../checklists", .x)))

quarto_checklist_paths <-
	yaml_checklist_paths %>% 
	path_file() %>% 
	path_ext_set("md") %>% 
	map_chr(., ~path_join(c("../quarto", .x)))

md_checklist_lite_paths <- 
	yaml_checklist_paths %>% 
	path_file() %>% 
	path_ext_remove() %>% 
	paste0(.,"-lite") %>% 
	map_chr(., ~path_join(c("../checklists", .x))) %>% 
	path_ext_set("md")


# checklists
gen_checklist_cmds <- paste0(
	yaml2md, " -i ", yaml_checklist_paths, " -o ", md_checklist_paths
)
walk(gen_checklist_cmds, system)

# checklists lite
gen_checklist_lite_cmds <- paste0(
	yaml2md, " -i ", yaml_checklist_paths, " -l -o ",
	md_checklist_lite_paths
)
walk(gen_checklist_lite_cmds, system)

# quarto
fs::dir_create("../quarto")
gen_quarto_checklist_cmds <- paste0(
	yaml2md, " -i ", yaml_checklist_paths, " -q -o ",
	quarto_checklist_paths 
)
walk(gen_quarto_checklist_cmds, system)

# issue templates
base <- "../git_forge_issue_templates"

combinations <- expand.grid(
	inputs = yaml_checklist_paths,
	forge  = c("github","gitlab"),
	weight = c("lite","heavy"),
	style  = c("tracking","split")
)
combinations$type <- sub(
	"-", "_",
	sub(".*rsspdc-(.*)\\.yml","\\1", combinations$inputs)
)
gen_issue_template_cmds <- function(inputs, forge, weight, style, type) {
	paste0(
		yaml2md," -i ", inputs,
		ifelse(weight == "lite", " -l ", ""),
		" --issue-style=",
		ifelse(style == "tracking", "tracking", "split"),
		" --git-forge=", forge, 
		" -o ", base, "/", forge, "/", weight, "/", style, "/",
		ifelse(style == "split", paste0(type,"/"), "")
	)
}

issue_template_cmds <- pmap_chr(combinations, gen_issue_template_cmds)
walk(issue_template_cmds, system)

