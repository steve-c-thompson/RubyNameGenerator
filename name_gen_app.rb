require './name_generator1'

print 'What is your first name: '
fn = gets.chomp
print 'What is your last name: '
ln = gets.chomp

name_generator = NameGenerator.new

first_translated = name_generator.get_first_name
last_translated = name_generator.get_last_name

puts "Your name is #{first_translated} #{last_translated}"
