# Bad Demo
# def anagrams?(str1, str2)
#     arr1, arr2 = split(""), str2.split("")
#     arr1.each do |letter|
#         target_idx = arr2.find_index(letter)
#         return false unless target_idx
#         arr2.delete_at(target_idx)
#     end
#     arr2.empty?
# end

# Good Demo
def anagram?(str1, str2)
    letters1 = Hash.new(0)
    letters2 = Hash.new(0)

    str1.each_char { |letter| letters1[letter] += 1 }
    # { e: 1, l: 1, v: 1, i: 1, s: 1 }
    str2.each_char { |letter| letters2[letter] += 1 }
    # { l: 1, i: 1, v: 1, e: 1, s: 1 }

    letters1 == letters2
end

puts anagram?(“gizmo”, “sally”) # False















puts anagram?("elvis", "lives") # True