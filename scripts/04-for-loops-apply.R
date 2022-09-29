#### For Loops ####

# Form of a for loop\
# for (item in list_of_items) {
#   do_something(item)
# }

volumes <- c(1.6, 6.3, 2, 5, 25)
masses_lb <- c()
for (volume in volumes) {
  #print(volume)
  mass <- 2.65 * volume ^ 0.9
  mass_lb <- mass * 2.2
  masses_ln <-c(masses_lb, mass_lb)
  #print(mass_lb)
}

# New for loop
masses <- vector(mode = "numeric", length = length(volumes))
for (i in 1:length(volumes)) {
  #print(i)
  mass <- 2.65 * volumes[i] ^ 0.9
  masses[i] <- mass
}

# Problem 1
birds = c('robin', 'woodpecker', 'blue jay', 'sparrow')
for (i in 1:length(birds)) {
  print(birds[i])
}
# alternatively 
for (bird in birds) {
  print(bird)
}

# Problem 2
radius <- c(1.3, 2.1, 3.5)
areas <- vector(mode = "numeric", length = length(radius))
for (i in 1:length(radius)) {
  areas[i] <- pi * radius[i] ^ 2
}
areas


# Combining all the things
# define function
est_mass <- function(volume) {
  if (volume > 5) {
    mass <- 2.65 * volume ^ 0.9
  } else {
    mass <- NA
  }
  return(mass)
}
est_mass(7)

# this doesn't work because function/if statement can only accecpt 1 argument at a time
volumes <- c(2.4, 7.3, 5)
est_mass(volumes)

# need to run for loop over function
volumes <- c(2.4, 7.3, 5)
for (volume in volumes) {
  mass <- est_mass(volume)
  print(mass)
}


#### apply ####

c(1, 3, 2) * 2

library(stringr)
str_to_sentence(c("dipodomys","chaetodipus"))
g <- c("dipodomys", "chaetodipus", "dipodomys")
s <- c("ordii", "baileyi", "spectabilis")

combine_genus_species <-function(genus, species) {
  genus_cap <- str_to_sentence(genus)
  genus_species <- paste(genus_cap, species)
  return(genus_species)
}

combine_genus_species(g, s)

data <- data.frame(g, s)
combine_genus_species(data$g, data$s)
data$gs <- combine_genus_species(data$g, data$s)

#apply
#lapply
#sapply
#tapply

est_mass <- function(volume){
  if (volume > 5) {
    mass <- 2.65 * volume ^ 0.9
  } else {
    mass <- NA
  }
  return(mass)
}

masses <- sapply(volumes, est_mass)
lapply(volumes, est_mass)

# mapply example
est_mass_type <- function(volume, veg_type){
  if (veg_type == "tree"){
    mass <- 2.65 * volume^0.9
  } else {
    mass <- NA
  }
  return(mass)
}
est_mass_type(1.6, "tree")

plant_types <- c("shrub","tree","tree")
volumes
est_mass_type(volumes, plant_types)

mapply(est_mass_type, volume = volumes, veg_type = plant_types)