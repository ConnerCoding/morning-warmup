################################################
################## PROBLEM 1 ###################
# https://edabit.com/challenge/eyN63yKS3E8GqnzKc
# Letters Only

##############
### PROMPT ###
##############
# Check if the given string consists of only letters and spaces and if every letter is in lower case.

#     Examples
#     letters_only("PYTHON") ➞ false
    
#     letters_only("python") ➞ true
    
#     letters_only("12321313") ➞ false
    
#     letters_only("i have spaces") ➞ true
    
#     letters_only("i have numbers(1-10)") ➞ false
    
#     letters_only("") ➞ false
#     Notes
#     Empty arguments will always return false.
#     Input values will be mixed (symbols, letters, numbers).

############
### CODE ###
############
def letters_only(s)
    if s == ""
        return false
    end

    valid = " abcdefghijklmnopqrstuvwxyz"
    s.split('').each do |letter|
        if !valid.include?(letter)
            return false
        end
    end
    return true
end

############
### TEST ###
############
# puts letters_only("i have numbers(1-10)")

################################################
################## PROBLEM 2 ###################
# https://edabit.com/challenge/3zcLkx73NtA4hewAk
# Making a Sandwich

##############
### PROMPT ###
##############
# Given an array of ingredients i and a flavour f as input, create a function that returns the array, but with the elements bread around the selected ingredient.

# Examples
# make_sandwich(["tuna", "ham", "tomato"], "ham") ➞ ["tuna", "bread", "ham", "bread", "tomato"]

# make_sandwich(["cheese", "lettuce"], "cheese") ➞ ["bread", "cheese", "bread", "lettuce"]

# make_sandwich(["ham", "ham"], "ham") ➞ ["bread", "ham", "bread", "bread", "ham", "bread"]
# Notes
# You will always get valid inputs.
# Make two separate sandwiches if two of the same elements are next to each other (see example #3).

############
### CODE ###
############
def make_sandwich(i, f)
    final = []
    # i.map { |item| item == f ? ["bread", item, "bread"] : item }.flatten
    answer = i.each { |item| item == f ? final.push("bread", item, "bread") : final << item }
    final
end

############
### TEST ###
############
# p make_sandwich(["cheese", "bacon", "cheese", "eggs"], "cheese")

################################################
################## PROBLEM 3 ###################
# https://edabit.com/challenge/6Mb3RS7XRJz4hbM63
# Find Unique Positive Numbers from Array

##############
### PROMPT ###
##############
# Write a function that takes an array and returns a new array with unique positive (more than 0) numbers.

# Examples
# unique_arr([-5, 1, -7, -5, -2, 3, 3, -5, -1, -1]) ➞ [1, 3]

# unique_arr([3, -3, -3, 5, 5, -6, -2, -4, -1, 3]) ➞ [3, 5]

# unique_arr([10, 6, -12, 13, 5, 5, 13, 6, 5]) ➞ [10, 6, 13, 5]
# Notes
# Return the elements in the order that they are found in the array.
# Your function should also work for empty arrays.

############
### CODE ###
############
def unique_arr(arr)
    uniq = []
    arr.each { |num| uniq << num if (num > 0 and !uniq.include?(num)) }
    uniq
end

############
### TEST ###
############
# p unique_arr([10, 6, -12, 13, 5, 5, 13, 6, 5])

################################################
################## PROBLEM 4 ###################
# https://edabit.com/challenge/CuagSKwGEYcAyeAsu
# Retrieve the Subreddit

##############
### PROMPT ###
##############
# Create a function to extract the name of the subreddit from its URL.

# Examples
# sub_reddit("https://www.reddit.com/r/funny/") ➞ "funny"

# sub_reddit("https://www.reddit.com/r/relationships/") ➞ "relationships"

# sub_reddit("https://www.reddit.com/r/mildlyinteresting/") ➞ "mildlyinteresting"
# Notes
# N/A

############
### CODE ###
############
def sub_reddit(link)
	link.split("/").last
end

############
### TEST ###
############
# p sub_reddit("https://www.reddit.com/r/funny/")

################################################
################## PROBLEM 5 ###################
# https://edabit.com/challenge/jde4eK7h7GX6H5gQq
# Printer Levels

##############
### PROMPT ###
##############
# Given a dictionary of how many more pages each ink color can print, output the maximum number of pages the printer can print before any of the colors run out.

# Examples
# ink_levels({
#   "cyan": 23,
#   "magenta": 12,
#   "yellow": 10
# }) ➞ 10

# ink_levels({
#   "cyan": 432,
#   "magenta": 543,
#   "yellow": 777
# }) ➞ 432

# ink_levels({
#   "cyan": 700,
#   "magenta": 700,
#   "yellow": 0
# }) ➞ 0
# Notes
# A single printed page requires each color once, so printing is not possible if any of the slots lack ink (see example #3).

############
### CODE ###
############
def ink_levels(inks)
    inks.select { |key, val| val == inks.values.min }
    inks.sort_by { |k, v| v }.first
end

############
### TEST ###
############
# p ink_levels({
#     "cyan": 432,
#     "magenta": 543,
#     "yellow": 777
# })

################################################
################## PROBLEM 6 ###################
# https://edabit.com/challenge/HHatH5iaZJGhKmKby
# Number to Reversed Array

##############
### PROMPT ###
##############
# Create a function that takes a number and returns an array with the digits of the number in reverse order.

# Examples
# reverse_arr(1485979) ➞ [9, 7, 9, 5, 8, 4, 1]

# reverse_arr(623478) ➞ [8, 7, 4, 3, 2, 6]

# reverse_arr(12345) ➞ [5, 4, 3, 2, 1]
# Notes
# N/A

############
### CODE ###
############
def reverse_arr(num)
    num.to_s.reverse.split("").map(&:to_i)
end

############
### TEST ###
############
# p reverse_arr(623478)

################################################
################## PROBLEM 7 ###################
# https://edabit.com/challenge/anbddpQfnXKLjqH9K
# Return Odd > Even

##############
### PROMPT ###
##############
# Given an array, return true if there are more odd numbers than even numbers, otherwise return false.

# Examples
# odd_even([1, 2, 3, 4, 5, 6, 7, 8, 9]) ➞ true

# odd_even([1]) ➞ true

# odd_even([13452394823795273847528572346]) ➞ false
# Notes
# All arrays will have at least 1 item.

############
### CODE ###
############
def odd_even(a)
    a.count(&:odd?) > a.length / 2 
end

############
### TEST ###
############
# p odd_even([1, 2, 3, 4, 5, 6, 7, 8, 9])

################################################
################## PROBLEM 8 ###################
# https://edabit.com/challenge/KxMhvMGgeXK3aMCGn
# Check for Anagrams

##############
### PROMPT ###
##############
# Create a function that takes two strings and returns either true or false depending on whether they're anagrams or not.

# Examples
# is_anagram("cristian", "Cristina") ➞ true

# is_anagram("Dave Barry", "Ray Adverb") ➞ true

# is_anagram("Nope", "Note") ➞ false
# Notes
# Should be case insensitive.
# The two given strings can be of different lengths.

############
### CODE ###
############
def is_anagram(s1, s2)
	s1.downcase.chars.sort == s2.downcase.chars.sort
end

############
### TEST ###
############
# p is_anagram("Dave Barry", "Ray Adverb")

################################################
################## PROBLEM 9 ###################
# https://edabit.com/challenge/cCrQq5LkByWyoNPmW
# Stand in Line

##############
### PROMPT ###
##############
# Write a function that takes an array and a number as arguments. Add the number to the end of the array, then remove the first element of the array. The function should then return the updated array.

# Examples
# next_in_line([5, 6, 7, 8, 9], 1) ➞ [6, 7, 8, 9, 1]

# next_in_line([7, 6, 3, 23, 17], 10) ➞ [6, 3, 23, 17, 10]

# next_in_line([1, 10, 20, 42 ], 6) ➞ [10, 20, 42, 6]

# next_in_line([], 6) ➞ "No array has been selected"
# Notes
# For an empty array input, return: "No array has been selected"

############
### CODE ###
############
def next_in_line(arr, num)
    return "No array has been selected" if arr == []
    arr.drop(1).push(num)
end

############
### TEST ###
############
p next_in_line([1, 10, 20, 42 ], 6)