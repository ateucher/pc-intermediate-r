withr::with_dir("_examples", {
  dir.create("data", showWarnings = FALSE)

  file.create("data/2024-07-16_site-1_plot-data.csv")
  file.create("data/2024-07-16_site-2_plot-data.csv")
  file.create("data/2024-07-16_site-1_survey-data.csv")
  file.create("data/2024-07-16_site-2_survey-data.csv")
})
