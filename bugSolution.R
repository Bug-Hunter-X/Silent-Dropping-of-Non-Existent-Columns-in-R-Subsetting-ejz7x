```R
# Improved code to handle potential errors when subsetting data frames

df <- data.frame(a = 1:3, b = 4:6)
cols_to_select <- c("a", "c", "d")

# Check if all columns exist before subsetting
missing_cols <- setdiff(cols_to_select, names(df))
if (length(missing_cols) > 0) {
  warning(paste("Columns not found:", paste(missing_cols, collapse = ", ")))
  # Handle the missing columns appropriately.  Options include:
  # 1. Stop execution:
  # stop("Non-existent columns found.")
  # 2. Proceed with only existing columns:
  cols_to_select <- intersect(cols_to_select, names(df))
  # 3. Add missing columns with default values (e.g., NA):
  # for (col in missing_cols) df[[col]] <- NA
}

subset_df <- df[, cols_to_select]
```