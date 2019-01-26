# Exercise 4: external data sets: Gates Foundation Educational Grants

# Use the `read.csv()` functoin to read the data from the `data/gates_money.csv`
# file into a variable called `grants` using the `read.csv()`
# Be sure to set your working directory in RStudio, and do NOT treat strings as 
# factors!

getwd()
gates_money <- read.csv('gates_money.csv')

# Use the View function to look at the loaded data
View(data.frame(gates_money))

# Create a variable `organization` that contains the `organization` column of 
# the dataset

organization <- as.vector(gates_money[, 3])

# Confirm that the "organization" column is a vector using the `is.vector()` 
# function. 
# This is a useful debugging tip if you hit errors later!
is.vector(organization)

## Now you can ask some interesting questions about the dataset

# What was the mean grant value?
print(mean(gates_money$total_amount))

# What was the dollar amount of the largest grant?
print(max(gates_money$total_amount))

# What was the dollar amount of the smallest grant?
print(min(gates_money$total_amount))

# Which organization received the largest grant?
print(gates_money[gates_money$total_amount == max(gates_money$total_amount),
               "organization"])

# Which organization received the smallest grant?
print(gates_money[gates_money$total_amount == min(gates_money$total_amount),
                  "organization"])

# How many grants were awarded in 2010?
number_of_grants <- gates_money[gates_money$start_year == 2010,
                    "start_year"]
print(length(number_of_grants))  
