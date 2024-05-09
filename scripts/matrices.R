# Weighted or binary affiliation matrix
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

# Produce the matrices
x <- x %>% pivot_wider(names_from = c(2), values_from = c(3))
x[is.na(x)] <- 0
names(x)[1] <- ""
x <- x %>% as.data.frame()
x <- data.frame(x[,-1], row.names=x[,1])
bin <- x %>% mutate_if(is.numeric, ~1 * (. > 0))
write.csv(x, "affMatTot.csv", row.names = TRUE)
write.csv(bin, "affMatBin.csv", row.names = TRUE)
