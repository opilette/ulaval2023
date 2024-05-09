# Produce Table 11
# Load the data
x <- read.csv("PILETTE_Olivier_2023_data.tsv", header = TRUE, stringsAsFactors = FALSE, sep="\t")

# Calculate the sum of objects per material
y <- aggregate(x$QT, list(x$CODE), FUN=sum)

# Rename the columns
colnames(y) <- c("MATERIAL", "QT")
y <- subset(y, grepl("mat", MATERIAL, ignore.case = TRUE))
y$ID <- seq_len(nrow(y))
y <- y[,c(3,1,2)]

# Export the data
write.csv(y, "table11.csv", row.names = FALSE)
