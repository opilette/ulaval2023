# Produce Table 13
# Load the data
x <- read.csv("PILETTE_Olivier_2023_data.tsv", header = TRUE, stringsAsFactors = FALSE, sep="\t")

# Filter out 4b tools
y <- subset(x, grepl("4b", TYPE, ignore.case = TRUE))

# Group the data
var <- aggregate(QT ~ SITE + CODE, data = y, FUN = sum)
colnames(var)[3] <- "QT"
var <- var[order(var$SITE), ]
var$ID <- seq_len(nrow(var))
var <- var[,c(4,1,2,3)]

# Export the data
write.csv(var, "table13.csv", row.names = FALSE)
