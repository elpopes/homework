def permutations(str)
    letters = str.chars
    return [] if letters.length < 2
    first = letters.shift
    perms = permutations(letters)
    total_permutations = []
    perms.each do |perm|
      (0..perm.length).to_a.each do |i|
        total_permutations << perm[0...i] + [first] + perm[i..-1]
      end
    end
  
    total_permutations
en