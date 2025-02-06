```R
# This code attempts to subset a data frame using a character vector that contains non-existent column names.

df <- data.frame(a = 1:3, b = 4:6)
cols_to_select <- c("a", "c", "d")
subset_df <- df[, cols_to_select]
```