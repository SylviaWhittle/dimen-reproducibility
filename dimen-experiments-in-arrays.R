# Experiments in arrays

# For loop
for (i in 1:10) {
  print(i)
}


# Create random data
n_rows <- 3
n_cols <- 3

il <- 1:5
print("il: ")
print(il)
print(class(il))

# Create a N*2x1 array
random_array <-rnorm(n_rows * n_cols)
random_array

random_matrix <- matrix(random_array, nrow=n_rows, ncol=n_cols)
random_matrix

heatmap(random_matrix)

library(ggplot2)
ggplot(random_matrix) + geom_tile(aes(fill=random_matrix)) + scale_fill_gradient(low=min(random_matrix), high-max(random_matrix))
