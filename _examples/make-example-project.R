withr::with_dir("_examples", {
  dir.create("my-project", showWarnings = FALSE)

  dir.create("my-project/R", showWarnings = FALSE)
  dir.create("my-project/paper", showWarnings = FALSE)
  dir.create("my-project/data", showWarnings = FALSE)
  dir.create("my-project/outputs", showWarnings = FALSE)
  dir.create("my-project/data/raw_data", showWarnings = FALSE)
  dir.create("my-project/data/derived_data", showWarnings = FALSE)

  file.create("my-project/01_read-data.R")
  file.create("my-project/02_clean-data.R")
  file.create("my-project/03_analysis.R")
  file.create("my-project/04_output.R")
  file.create("my-project/README.md")

  file.create("my-project/paper/paper.qmd")

  file.create("my-project/paper/references.bib")
})
