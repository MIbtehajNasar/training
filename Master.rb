# require 'csv'



program to flatten an array

@out = Array.new

def flatten_array array
  array.each { |element| element.class == Array ? flatten_array(element) : @out << element }
end

test = Array['a', 1, ['b', 2], 'c', [3, ['d', 4]]]

flatten_array test
p @out

=begin
# Program to get the most frequent element from an array

def random_array(size)
  Array.new(size) { rand 10 }
end

def check_frequency(size)
  arr = random_array size
  p arr
  out = Hash.new
  (0..10).each do |i|
    out[i] = 0
  end
  arr.each do |element|
    val = out.fetch(element)
    out[element] = val + 1
  end
  p out.key(out.values.max)
end

check_frequency 5
=end

# def generate_password(total_length, numbers, alphabets, spchar)
#   return puts 'yolo' unless total_length == (numbers + alphabets + spchar)

#   n = Array.new(numbers){ rand 9 }.join
#   charset = Array('A'..'Z') + Array('a'..'z')
#   a = Array.new(alphabets) { charset.sample }.join
#   sp = Array('!'..'/') + Array(':'..'?')
#   s = Array.new(spchar){ sp.sample }.join
#   a << n << s
#   r = a.split('').shuffle.join
#   p r
# end

# def save_password(filename)
#   CSV.open(filename, "a") do |csv|
#     (0..9).each do
#       pass = generate_password(10,6,2,2)
#       csv << [pass]
#     end
#   end
# end



# #generate_password(10, 6, 2, 2)

# def check_password(filename)
#   pass = generate_password(10, 6, 2, 2)
#   #pass = "13H2&X+867"
#   csv_data = CSV.read(filename)
#   data_array=csv_data.flatten
#   if data_array.include?(pass)
#     puts 'Password Alreay Exist'
#   else
#     CSV.open(filename, 'a') do |csv|
#       csv << [pass]
#     end
#   end
# end
# #save_password('pass.csv')
# check_password('pass.csv')
