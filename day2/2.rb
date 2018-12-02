box_ids = File.read("./input2.txt").lines.map(&:chomp)

box_ids.product(box_ids).each do |b1, b2|
  next if b1 == b2
  diff = 0
  diffi = nil
  b1.split("").each.with_index do |b1_chr, i|
    b2_chr = b2[i]
    if b1_chr != b2_chr
        diffi = i
        diff += 1 
    end
    next if diff > 1 
  end
  next if diff > 1
  common = b1.dup
  common[diffi] = '' 
  puts "#{b1} and #{b2} differ by 1 char, common chars: #{common}"
  break
end