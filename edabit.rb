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

###############################################################################################
###############################################################################################

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
p make_sandwich(["cheese", "bacon", "cheese", "eggs"], "cheese")

###############################################################################################
###############################################################################################