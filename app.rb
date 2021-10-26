f = File.open 'simple.txt', 'r'
@hash = {}

def add_to_hash word
  if !word.empty?
    word.downcase!
    cnt = @hash[word].to_i
    cnt = cnt + 1
    @hash[word] = cnt
  end
end


f.each do |line|
  massiv = line.split(/\n | |\s/)

  massiv.each { |word| add_to_hash(word)}
end


f.close

puts @hash.inspect