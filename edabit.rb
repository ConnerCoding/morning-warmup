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
# p next_in_line([1, 10, 20, 42 ], 6)

################################################
################## PROBLEM 10 ##################
# https://edabit.com/challenge/jhyWgRvXsXbdzZgRf
# Percentage Changed

##############
### PROMPT ###
##############
# Create a function that takes an old price old, a new price new, and returns what percent the price decreased or increased. Round the percentage to the nearest whole percent.

# Examples
# percentage_changed("$800", "$600") ➞ "25% decrease"

# percentage_changed("$1000", "$840") ➞ "16% decrease"

# percentage_changed("$100", "$950") ➞ "850% increase"
# Notes
# N/A

############
### CODE ###
############
def percentage_changed(old, new)
    old = old.tr('$', '').to_f
    new = new.tr('$', '').to_f
    percent = ((1 - (new / old)) * 100).round()
    return "#{percent * -1}% increase" if new > old
    "#{percent}% decrease"
end

############
### TEST ###
############
# p percentage_changed("$1000", "$840")

################################################
################## PROBLEM 11 ##################
# https://edabit.com/challenge/k8tfLWa6dXpHssFKt
# Applying Discounts

##############
### PROMPT ###
##############
# Create a function that applies a discount d to every number in the array.

# Examples
# get_discounts([2, 4, 6, 11], "50%") ➞ [1, 2, 3, 5.5]

# get_discounts([10, 20, 40, 80], "75%") ➞ [7.5, 15, 30, 60]

# get_discounts([100], "45%") ➞ [45]
# Notes
# The discount is the percentage of the original price (i.e the discount of "75%" to 12 would be 9 as opposed to taking off 75% (making 3)).
# There won't be any awkward decimal numbers, only 0.5 to deal with.

############
### CODE ###
############
def get_discounts(nums, d)
    percent = d.gsub(/%/, '').to_f / 100
    nums.map { |num| num * percent }
end

############
### TEST ###
############
# p get_discounts([10, 20, 40, 80], "75%")

################################################
################## PROBLEM 12 ##################
# https://edabit.com/challenge/3wC6v3phsWxfGZK4m
# Concatenate to Form Target Array

##############
### PROMPT ###
##############
# Create a function that returns true if smaller arrays can concatenate to form the target array and false otherwise.

# Examples
# can_concatenate([[1, 2, 3, 4], [5, 6], [7]], [1, 2, 3, 4, 5, 6, 7]) ➞ true

# can_concatenate([[2, 1, 3], [5, 4, 7, 6]], [7, 6, 5, 4, 3, 2, 1]) ➞ true

# can_concatenate([[2, 1, 3], [5, 4, 7, 6, 7]], [1, 2, 3, 4, 5, 6, 7]) ➞ false
# # Duplicate 7s not found in target array.

# can_concatenate([[2, 1, 3], [5, 4, 7]], [1, 2, 3, 4, 5, 6, 7]) ➞ false
# # Missing 6 from target array.
# Notes
# Arrays do not have to be sorted (see example #2).
# Arrays should concatenate to create the final array exactly (see examples #3 and #4).

############
### CODE ###
############
def can_concatenate(arr, target)
	arr.flatten.sort == target.sort
end

############
### TEST ###
############
# p can_concatenate([[2, 1, 3], [5, 4, 7, 6]], [7, 6, 5, 4, 3, 2, 1])

################################################
################## PROBLEM 13 ##################
# https://edabit.com/challenge/do6oxx2HY9TYEiN6A
# Matchstick Houses

##############
### PROMPT ###
##############
# This challenge will help you interpret mathematical relationships both algebraically and geometrically.

# Matchstick Houses, Steps 1, 2 and 3

# Create a function that takes a number (step) as an argument and returns the number of matchsticks in that step. See step 1, 2 and 3 in the image above.

# Examples
# match_houses(1) ➞ 6

# match_houses(4) ➞ 21

# match_houses(87) ➞ 436
# Notes
# Step 0 returns 0 matchsticks.
# The input (step) will always be a non-negative integer.
# Think of the input (step) as the total number of houses that have been connected together.

############
### CODE ###
############
def match_houses(step)
    step == 0 ? 0 : step * 5 + 1
end

############
### TEST ###
############
# p match_houses(87)

################################################
################## PROBLEM 14 ##################
# https://edabit.com/challenge/HwKXMkA3TRxbJBGpA
# Same ASCII?

##############
### PROMPT ###
##############
# Return true if the sum of ASCII values of the first string is same as the sum of ASCII values of the second string, otherwise return false.

# Examples
# same_ascii("a", "a") ➞ true

# same_ascii("AA", "B@") ➞ true

# same_ascii("EdAbIt", "EDABIT") ➞ false
# Notes
# If you need some help with ASCII codes, check the Resources tab for an image of all ASCII codes used in this challenge.

############
### CODE ###
############
def same_ascii(string1, string2)
    val1, val2 = 0, 0
    string1.each_byte { |c| val1 += c } 
    string2.each_byte { |c| val2 += c }
    val1 == val2
    # string1.each_byte.reduce(:+) == string2.each_byte.reduce(:+)
end

############
### TEST ###
############
# p same_ascii("AA", "B@")

################################################
################## PROBLEM 15 ##################
# https://edabit.com/challenge/a6b6ctKGtFHx7N59C
# Return Only the Integer

##############
### PROMPT ###
##############
# Write a function that takes an array of elements and returns only the integers.

# Examples
# return_only_integer([9, 2, "space", "car", "lion", 16]) ➞ [9, 2, 16]

# return_only_integer(["hello", 81, "basketball", 123, "fox"]) ➞ [81, 123]

# return_only_integer([10, "121", 56, 20, "car", 3, "lion"]) ➞ [10, 56, 20, 3]

# return_only_integer(["String",  true,  3.3,  1]) ➞ [1]
# Notes
# N/A

############
### CODE ###
############
def return_only_integer(arr)
    arr.filter { |num| num.is_a? Integer }
    # arr.grep(Integer)
end

############
### TEST ###
############
# p return_only_integer(["String",  true,  3.3,  1])

################################################
################## PROBLEM 16 ##################
# https://edabit.com/challenge/WdmpoQtDRNAhgMMxa
# Number of Arrays in an Array

##############
### PROMPT ###
##############
# Return the total number of arrays inside a given array.

# Examples
# num_of_subarrays([[1, 2, 3]]) ➞ 1

# num_of_subarrays([[1, 2, 3], [1, 2, 3], [1, 2, 3]]) ➞ 3

# num_of_subarrays([[1, 2, 3], [1, 2, 3], [1, 2, 3], [1, 2, 3]]) ➞ 4

# num_of_subarrays([1, 2, 3]) ➞ 0
# Notes
# N/A

############
### CODE ###
############
def num_of_subarrays(arr)
    count = 0
    arr.each { |item| count += 1 if item.kind_of?(Array) }
    count
    # arr.grep(Array).count
end

############
### TEST ###
############
# p num_of_subarrays([[1, 2, 3], [1, 2, 3], [1, 2, 3]])

################################################
################## PROBLEM 17 ##################
# https://edabit.com/challenge/5p9H8zCeXaaoMpZ5j
# Who's The Oldest?

##############
### PROMPT ###
##############
# Given a hash containing the names and ages of a group of people, return the name of the oldest person.

# Examples
# oldest({
#   "Emma" => 71,
#   "Jack" => 45,
#   "Amy" => 15,
#   "Ben" => 29
# }) ➞ "Emma"

# oldest({
#   "Max" => 9,
#   "Josh" => 13,
#   "Sam" => 48,
#   "Anne" => 33
# }) ➞ "Sam"
# Notes
# All ages will be different.

############
### CODE ###
############
def oldest(people)
    people.key(people.values.max)
    # people.max_by { |k, v| v }[0]
end

############
### TEST ###
############
# p oldest({
#     "Max" => 9,
#     "Josh" => 13,
#     "Sam" => 48,
#     "Anne" => 33
# })

################################################
################## PROBLEM 18 ##################
# https://edabit.com/challenge/ZHJZLw65REixbwrtG
# Basic Calculator

##############
### PROMPT ###
##############
# Create a function that takes two numbers and a mathematical operator + - / * and will perform a calculation with the given numbers.

# Examples
# calculator(2, "+", 2) ➞ 4

# calculator(2, "*", 2) ➞ 4

# calculator(4, "/", 2) ➞ 2
# Notes
# If the input tries to divide by 0, return: "Can't divide by 0!"

############
### CODE ###
############
def calculator(num1, operator, num2)
    # case operator
    # when "+"
    #     return num1 + num2
    # when "-"
    #     return num1 - num2
    # when "*"
    #     return num1 * num2
    # when "/"
    #     return "Can't divide by 0!" if num2 == 0
    #     return num1 / num2
    # else
    #     return "Invalid operator"
    # end

    return "Can't divide by 0!" if num2 == 0
    case operator
    when "+" then num1 + num2
    when "-" then num1 - num2
    when "*" then num1 * num2
    when "/" then num1 / num2
    else "Invalid operator"
    end
end

############
### TEST ###
############
p calculator(4, "/", 2)