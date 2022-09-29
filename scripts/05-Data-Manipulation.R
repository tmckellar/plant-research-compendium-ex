# Data Manipulation

# load librarys
library(forcats)
library(readr)
library(dplyr)
library(tidyr)

#Basic intro to vectors
log_vec <- c(TRUE, FALSE, FALSE, TRUE)
class(log_vec)
integer_vec <- c(1L,2L,3L) #alternatively 1:3
class(integer_vec)
char_vec <- c('Laura', 'Mary', 'Ma')
class(char_vec)
num_logi <- c(1,4,6,TRUE)
num_char <- c(1,3,'10',6)
as.numeric(num_char)
num_logi <- c('a','b',TRUE)

# Factors
sex <-factor(c('male', 'female', 'female', 'male', NA))
class(sex)

fct_relevel(sex, c('male', 'female'))
fct_recode(sex, 'M' = 'male', 'F' = 'female')
fct_explicit_na(sex)


# Load data and observe structure
surveys <- read_csv("data_raw/surveys_complete_77_89.csv")
str(surveys)
class(surveys)

# Select (for columns)
select(surveys,1:3,5:6)
select(surveys, year, species_id, hindfoot_length)
select(surveys, -day, -weight)
select(surveys, where(is.numeric))
select(surveys, where(anyNA))
select(surveys, ends_with("_id"))


# filter (for rows)
filter(surveys, year %in% 1985) ##Don't use ==

filter(surveys, species_id %in% c('RM','DO')) ##%in% means 'belongs to' followed by vector
filter(surveys, !is.na(weight)) ## ! means 'inverse' of following function

table1 <- filter(surveys, year %in% 1980:1985)



