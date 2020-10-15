# https://edabit.com/challenge/eyN63yKS3E8GqnzKc
# Letters Only

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

puts letters_only("i have numbers(1-10)")
