This repository demonstrates a common, yet subtle, error in R programming related to subsetting data frames using character vectors. When you try to select columns that don't exist, R quietly ignores them instead of throwing an error. This can lead to unexpected behavior in your code, making debugging harder. The `bug.R` file shows this issue, while `bugSolution.R` offers a way to handle it more robustly.