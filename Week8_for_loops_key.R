# Quack 2020
# Week 8 - For Loops
# Elena Leib & Willa Voorhies



#### Set global options ####
options(stringsAsFactors = FALSE)

##### Import Packages #####
library(tidyverse)
library(tidylog)



#### Class Example ####
# Goal
# For each person on the guest list:
#  send(message)

guest_list <- c("Willa", "Roya", "Gold", "Stephanie", "Sinclaire", "Eliza")

message <- "I'm having a Halloween Party on 10/31! The party starts at 9pm. I hope to see you there!"

## Part 1 - "Accessing" the guests on the list ##
# First question: how do we "access" each guest in the guest list? 
guest_list[1]
guest_list[2]

i = 1 # values 1 to length of guest_list
guest_list[i]


## Part 2 - Our iterator variable i ##
# So we need an iterator, or pointer.
# Let's make our 'index iterator' be a variable named i
# i can have the value 1 to the length of guest_list, which is in this case 6
# Let's write this in normal R code -- make a vector from 1 to the length of the vector
(i <- 1:length(guest_list))


## Part 3 - Write out pseudocode ##
# Ok, time to make our for loop!
# Pseudocode first

# for the value of index (i) = 1 to the length of guest_list:
#   print(guest_list[i])


## Part 4 - Syntax of for loops in R ##
# Here is the syntax of for loops in R (proof of concept by printing i)
for(i in 1:length(guest_list)) {
  # do something
  print("beginning of loop")
  print(i)
  
}

for(guest in 1:length(guest_list)) {
  # do something
  print("beginning of loop")
  print(guest)
  
}




## Part 5 - Put it all together ##
# Try and write code that does this:
# for each person on the guest list:
#   send(message)
# (For "send", use print for now)

for(i in 1:length(guest_list)) {
  print(message)
}



## Question 1 - Make it personalized ##
# This is kind of lame because all the messages are exactly the same.
# We want to add a "to" part.
# Let's personalize the messages by adding hey and the person's name at the beginning.
# How would we do this? (Hint: paste function!)

for(i in 1:length(guest_list)) {
  print(paste0("Hey ",guest_list[i], "! ", message))
  
}





## Question 2a - Change the number of people invited ##
# Suppose I decide I only want to invite the first 3 people on the list.
# How can I change my code from above to only have it send the invite to the first 3 people?

for(i in 1:3) {
  print(paste0("Hey ", guest_list[i], "! ", message))
}



## Question 2b - Change the number of people invited ##
# What about sending it only to the last 3 people?

# Here's one way to do it
for(i in 4:6) {
  print(paste0("Hey ", guest_list[i], "! ", message))
}
# ^^ The downside is we are "hard coding" in the indices 4:6

# This version is more flexible. Even if we add more guests to the list, it will always give us the last 3 people.
for(i in (length(guest_list) - 2):length(guest_list)) {
  print(paste0("Hey ", guest_list[i], "! ", message))
}


#### Practice ####

# 1) Print the lyrics to the song "The Hokey Pokey"!
# Sample lyrics: 
# Put your left foot in
# You take your left foot out
# You put your left foot in
# And you shake it all about
# You do the hokey pokey
# And turn yourself around
# That's what it's all about!

# ... and right foot, and head, and left hand, and right hand, and tongue!

body_parts <- c("right foot", "left foot", "head", "left hand", "right hand", "tongue")

for (bp in body_parts) {
  print(paste0("Put your ", bp, " in"))
  print(paste0("Take your ", bp, " out"))
  print(paste0("Put your ", bp, " in"))
  print("And you shake it all about")
  print("You do the hokey pokey")
  print("And you turn yourself about")
  print("That's what it's all about!")
  print("")
}

## In R, you can also just say for x in vector, and get direct access to the content of the vector! In other words, instead of iterating through the vector using an index to access what is the vector, you can directly access the content of the vector. You are iterating over the content!


# 2) Print the following pattern
# 1 
# 1 2 
# 1 2 3 
# 1 2 3 4 
# 1 2 3 4 5

for(i in 1:5) {
  print(1:i)
}


# 3) Print the multiplication table for a given number (table should be 1 through 10)
# For example, let num = 2 to start
num = 6
for(i in 1:10) {
  print(num * i)
}



###################### This is where we ended class ######################


# 4) CHALLENGE: For a given number, calculate the sum of all the numbers between 1 and the given number. Print out the running total after you add the next number.
# Hint: How will you store the running sum?




# 5) CHALLENGE: Print the message "Done" after printing all the 
# The print call should be inside of the for loop!




# 6) CHALLENGE: Write a program that prints the numbers from 1 to 100. But for multiples of three print "Fizz" instead of the number and for the multiples of five print "Buzz". For numbers which are multiples of both three and five print "FizzBuzz"
# Hint #1: Look up the modulus operator (%% in R, also referred to as mod)
# Hint #2: 4 %% 2 == 0, 5 %% 2 == 1, 6 %% 2 == 0, 7 %% 2 = 1



