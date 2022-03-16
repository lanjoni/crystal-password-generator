print "Digite o número de caracteres para sua senha: "
num = gets.try(&.to_i)

CHARS = ('0'..'9').to_a + ('A'..'Z').to_a + ('a'..'z').to_a
def random_password(length=num)
  CHARS.sort_by { rand }.join[0...length]
end

puts(random_password(num))