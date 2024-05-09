# Produce Table 16
# Load the data
x <- read.csv("PILETTE_Olivier_2023_data.tsv", header = TRUE, stringsAsFactors = FALSE, sep="\t")

# Filter out nucleuses (4d) by site and lithic material
y <- subset(x, grepl("4d", TYPE, ignore.case = TRUE))

# Group the data
var <- aggregate(QT ~ SITE + CODE, data = y, FUN = sum)
colnames(var)[3] <- "QT"
var <- var[order(var$SITE), ]
var$ID <- seq_len(nrow(var))
var <- var[,c(4,1,2,3)]

# Export the data
write.csv(var, "table16.csv", row.names = FALSE)
