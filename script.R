# Import relevant libraries.
library(datasets)
library(dplyr)
# Obtain the built-in iris dataset.
data(iris)

# Define the function called calc_sepal_width_to_length_ratio with a single input data.
calc_sepal_width_to_length_ratio <- function(data, value) { # Add a second argument value to the same function.
        data <- data %>% mutate(sepal_width_to_length_ratio = (data[, 2]/data[, 1])*value) # The function transforms the input dataset by creating, or mutating, a new variable sepal_width_to_length_ratio
        # that calculates the ratio between sepal width to sepal length as it takes the second column divided by the first column.
        # Depending on the value of the second argument, the calc_sepal_width_to_length_ratio will be multiplied by the specified value.
        return(data) # Return the transformed dataset.
}
calc_sepal_width_to_length_ratio(iris, 100)

