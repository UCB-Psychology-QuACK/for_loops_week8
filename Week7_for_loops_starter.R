# Quack 2020
# Week 7 - For Loops
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



## Part 2 - Our iterator variable i ##
# So we need an iterator, or pointer.
# Let's make our 'index iterator' be a variable named i
# i can have the value 1 to the length of guest_list, which is in this case 6
# Let's write this in normal R code -- make a vector from 1 to the length of the vector



## Part 3 - Write out pseudocode ##
# Ok, time to make our for loop!
# Pseudocode first




## Part 4 - Syntax of for loops in R ##
# Here is the syntax of for loops in R (proof of concept by printing i)




## Part 5 - Put it all together ##
# Try and write code that does this:
# for each person on the guest list:
#   send(message)
# (For "send", use print for now)




## Question 1 - Make it personalized ##
# This is kind of lame because all the messages are exactly the same.
# We want to add a "to" part.
# Let's personalize the messages by adding hey and the person's name at the beginning.
# How would we do this? (Hint: paste function!)




## Question 2a - Change the number of people invited ##
# Suppose I decide I only want to invite the first 3 people on the list.
# How can I change my code from above to only have it send the invite to the first 3 people?




## Question 2b - Change the number of people invited ##
# What about sending it only to the last 3 people?





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



# 2) Print the following pattern
# 1 
# 1 2 
# 1 2 3 
# 1 2 3 4 
# 1 2 3 4 5




# 3) Print the multiplication table for a given number (table should be 1 through 10)
# For example, let num = 2 to start




# 4) CHALLENGE: For a given number, calculate the sum of all the numbers between 1 and the given number. Print out the running total after you add the next number.
# Hint: How will you store the running sum?




# 5) CHALLENGE: Print the message "Done" after printing all the 
# The print call should be inside of the for loop!




# 6) CHALLENGE: Write a program that prints the numbers from 1 to 100. But for multiples of three print "Fizz" instead of the number and for the multiples of five print "Buzz". For numbers which are multiples of both three and five print "FizzBuzz"
# Hint #1: Look up the modulus operator (%% in R, also referred to as mod)
# Hint #2: 4 %% 2 == 0, 5 %% 2 == 1, 6 %% 2 == 0, 7 %% 2 = 1



