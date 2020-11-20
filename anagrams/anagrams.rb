def first_anagram?(one_string, two_string)
    anagrams = one_string.chars.permutation(one_string.length).to_a
    anagrams.include?(two_string)
end

p first_anagram?("gitus", "sally")

