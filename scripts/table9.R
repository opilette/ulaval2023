# Produce Table 9
# Load the data
x <- read.csv("PILETTE_Olivier_2023_data.tsv", header = TRUE, stringsAsFactors = FALSE, sep="\t")

# Calculate the sum of objects per site
y <- aggregate(x$QT, list(x$SITE), FUN=sum)

# Rename the columns
colnames(y) <- c("SITE", "QT")
y$ID <- seq_len(nrow(y))
y <- y[,c(3,1,2)]

# Export the data
write.csv(y, "table9.csv", row.names = FALSE)
