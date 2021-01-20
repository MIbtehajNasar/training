

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
