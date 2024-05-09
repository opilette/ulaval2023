# Produce Table 10
# Load the necessary package
if (!requireNamespace("tidyverse", quietly = TRUE)) {
  install.packages("tidyverse")
}
library(tidyverse)

# Load the data
x <- read.csv("PILETTE_Olivier_2023_data.tsv", header = TRUE, stringsAsFactors = FALSE, sep="\t")

# Establish the number of different lithic materials for each site
y <- x %>%
  group_by(SITE) %>%
  summarise(VAR_ALL = n_distinct(CODE),
            VAR_PART = length(unique(CODE[grepl("mat", CODE)]))
            )

# Rename the columns
y$ID <- seq_len(nrow(y))
y <- y[c("ID", names(y)[-which(names(y) == "ID")])]

# Export the data
write.csv(y, "table10.csv", row.names = FALSE)
