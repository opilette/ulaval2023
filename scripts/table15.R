# Produce Table 15
# Load the data
x <- read.csv("PILETTE_Olivier_2023_data.tsv", header = TRUE, stringsAsFactors = FALSE, sep="\t")

# Filter out debitage (2b) by site and lithic material
y <- subset(x, grepl("2b", TYPE, ignore.case = TRUE))

# Group the data
var <- aggregate(QT ~ SITE + CODE, data = y, FUN = sum)
colnames(var)[3] <- "QT"
var <- var[order(var$SITE), ]
var$ID <- seq_len(nrow(var))
var <- var[,c(4,1,2,3)]

# Export the data
write.csv(var, "table15.csv", row.names = FALSE)
