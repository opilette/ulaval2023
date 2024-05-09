# Sum of each material for each site
# Load necessary package
if (!requireNamespace("tidyverse", quietly = TRUE)) {
  install.packages("tidyverse")
  library(tidyverse)
} else {
  library(tidyverse)
}

# Produce the sum of lithic materials for each site
x <- read.csv("PILETTE_Olivier_2023_data.tsv", header = TRUE, stringsAsFactors = FALSE, sep="\t")
a <- readline(prompt="Name of the archaeological sites column: ")
b <- readline(prompt="Name of the objects column: ")
c  <- readline(prompt="Name of the quantity column: ")
val <- c(a, b, c)
x <- select(x, all_of(val)) %>% na.omit()
x[,3] <- as.numeric(as.character(x[,3]))
x[,1] <- paste(x[,1], x[,2], sep=" ")
x <- select(x, c(1, 3))
x <- aggregate(x[,2], list(x[,1]), FUN=sum)
x <- separate(x, col = 1, into = c("c1", "c2"), sep = " ")
colnames(x) <- val

# Export the data
write.csv(x, "sum.csv", row.names = FALSE)
