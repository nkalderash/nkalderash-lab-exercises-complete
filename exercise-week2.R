## Part 1: Debugging

my_num <- "k"
initials <- "N. K."

my_vector <- c(my_num, initials)

# run ?sum to get more info

vector_sum <- sum(my_vector)

# Describe why this doesn't work: 
# Because the vector contains string and integers. 
# Vectors can only use one of the values



my_line <- "Hey, hey, this is the library"

print(str_length(my_line))

# Describe why this doesn't work: 
# Because the package was installed, but not run. 
# Use code library("stringr") to run the package

said_the_famous <- paste(my_line, " - ", initial)

# Describe why this doesn't work: 
# str_length was never defined, thus nothing to print


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be

colors <- c(1,2,3,4,5)
print(colors)

typeof(colors)

# Colors is a "double" vector.

# Write a function `compare_length` that takes in 2 vectors
# and returns the sentence:
# "The difference in lengths is N"

color_length <- length(colors)
print(color_length)


candy <- c("chocolate", "lollipop", "ice cream")
candy_length <- length(candy)
print(candy_length)

# A test of a part of the function below
test <- color_length + candy_length
print(test)

# Function that takes in two lengths for comparision
compare_length <- function(length_a, length_b) {
  
  # Creates variable result which will subtract length a from length b
  result <- length_a - length_b
  
  # Returns the result with a sentence before it
  return(paste("The difference in lengths is", result))
  
} 

# The function in action
print(compare_length(color_length, candy_length))


# Pass two vectors of different length to your `compare_length` function

spaghetti_type <- c("alfredo", "cheese", "marinara")



# Write a function `describe_difference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"





# Function that can take in two vectors, count the characters
# And spit out the result in a user readable sentence
describe_difference <- function(vector_one, vector_two) {
  
  # Takes the elements of the vector and collapses them 
  # Into one element so it can be counted easier
  vector_merge_one <- paste(vector_one, collapse = "")
  vector_merge_two <- paste(vector_two, collapse = "")
  
  # Now takes the merged vector and counts the characters
  vector_one_count <- nchar(vector_merge_one, type = "chars")
  vector_two_count <- nchar(vector_merge_two, type = "chars")
  
  # Subtracts the vectors and prints the results
  result_one <- vector_one_count - vector_two_count
  return(paste("Your first vector is longer by", result_one, "elements."))
  
  
}



# Pass two vectors to your `describe_difference` function

print(describe_difference(candy, spaghetti_type))

# Write a function `combine_vectors` that takes in 3 vectors and combines them into one

# Function that can merge three vectors into one new vector
combine_vectors <- function(vector_one, vector_two, vector_three) {
   
   # Collapses three vectors and then
   # On final vector, combines and collapses that vector also
   vectors_combine_one <- paste(vector_one, collapse = "")
   vectors_combine_two <- paste(vector_two, collapse = "")
   vectors_combine_three <- paste(vector_three, collapse = "")
   vectors_combined <- paste(vectors_combine_one, vectors_combine_two, vectors_combine_three, collapse = "")
   

}


# Send 3 vectors to your function to test it.

print(combine_vectors(my_vector, candy, spaghetti_type))

# Write a function `caps_time` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters


?toupper

# Example code of how this would work
course_example <- "Informatics 201"
course_example_lowered <- casefold(course_example, upper = FALSE)
print(course_example_lowered)

# Function that disables capital letters
caps_time <- function(course_one, course_two, course_three) {
  
  # Sets all vectors entered into false for capital letters
  course_lower_one <- casefold(course_one, upper = FALSE)
  course_lower_two <- casefold(course_two, upper = FALSE)
  course_lower_three <- casefold(course_three, upper = FALSE)
  
  # Combines the three new vectors with no capitals into a new vector
  # So that it can be returned easier
  course_lowered <- c(course_lower_one, course_lower_two, course_lower_three)
  return(course_lowered)
  
}

caps_time("Informatics 201", "JSIS 495", "Informatics 499")

