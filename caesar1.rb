def cipher(text, val = 1)
alphabet = [*'a'..'z'], [*'A'..'Z']
a1 = alphabet.map{|x| x.join}.join
a2 = alphabet.flat_map { |s| s.rotate(val) }.join
text.tr a1, a2
end
puts 'Enter text: '
txt = gets
puts 'Enter number: '
num = gets.to_i
puts(cipher(txt, num))
