# Read in packages
library(dplyr)

# Read in raw data
heights_raw <- read.csv("data_raw/plant_heights.csv")

# Clean raw data
heights_clean <- heights_raw %>% 
  filter(species == "Carnegiea gigantea")

# Save out clean data
write.csv(heights_clean, "data_clean/saguaro_heights.csv", row.names = FALSE)
