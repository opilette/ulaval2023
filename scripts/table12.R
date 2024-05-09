# Produce Table 12
# Load the necessary package
library(tidyverse)

# Load the data
x <- read.csv("PILETTE_Olivier_2023_data.tsv", header = TRUE, stringsAsFactors = FALSE, sep="\t")

# Count the number of sites where specific lithic materials are found
y <- x %>%
  group_by(CODE) %>%
  summarise(SITE_OCCURRENCES = n_distinct(SITE))
y <- subset(y, grepl("mat", CODE, ignore.case = TRUE))
y$ID <- seq_len(nrow(y))
y <- y[,c(3,1,2)]

# Export the data
write.csv(y, "table12.csv", row.names = FALSE)
