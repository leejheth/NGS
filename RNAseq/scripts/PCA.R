# install.packages(c("ggplot2", "FactoMineR", "factoextra"))

# Load required libraries
library(ggplot2)
library(FactoMineR)
library(factoextra)

# Specify the file path
file_path <- "group4/jihyun/data/reference/feature_counts.txt"  # Replace with the actual file path

# Load the .txt file with tab-separated values
data <- read.table(file_path, header = TRUE, sep = "\t")  # Set 'header' to FALSE if there are no column names in the file

names(data)[7] <- "Case1"
names(data)[8] <- "Case2"
names(data)[9] <- "Case3"
names(data)[10] <- "Control1"
names(data)[11] <- "Control2"
names(data)[12] <- "Control3"


count_data = data[7:12]

# Normalize the data
normalized_data <- scale(count_data)

t_data <- t(normalized_data)

# Perform PCA using prcomp
pca <- prcomp(t_data)

# Get the PCA results
pca_results <- as.data.frame(pca$x[, 1:2])  # Extract the first two principal components

pca_results$sample <- rownames(pca_results)

# Plot the data in a two-dimensional plot
ggplot(pca_results, aes(x = pca_results$PC1, y = pca_results$PC2, color=sample)) +
  geom_point(size = 3) +
  labs(x = "PC1", y = "PC2") +
  theme_minimal()
