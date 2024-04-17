# Description of file

# Apply the mean to an axis (either 1 or 2 for ROW or COL)
means <- apply(random_matrix, 2, mean)
print(means)

### DataFrames
df <- read.table("hw.txt", sep="\t", header=TRUE, row.names=1)
print(summary(df))
boxplot(df$height)
boxplot(df$weight)

t.test(height~gender, data=df, var.equal=TRUE)

hist(df$height, breaks=20)

plot(df$height, df$weight)

# Perform linear regression
linmod <- lm( weight~height, data=df)

# Plot fitted line
abline(coef(linmod))
plot(fitted(linmod),resid(linmod), xlab="Fitted values", ylab="Residuals")
summary(linmod)


boxplot(height ~ gender, df)
boxplot(weight ~ gender, df)

t.test(height ~ gender, data=df, var.equal=TRUE)
