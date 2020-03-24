library(yaml)

# Read the file
yml <- read_yaml("methods.yml")

# Stored as a nested list
yml$forecast
yml$model$type

# Can store paired list items
yml$data_assimilation$sources_of_training_data[[1]]
yml$data_assimilation$sources_of_training_data[[2]]
purrr::map(yml$data_assimilation$sources_of_training_data, "description")

# Check for missing values with `is.null`
is.null(yml$missing_value)
