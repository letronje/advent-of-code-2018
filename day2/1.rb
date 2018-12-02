box_ids = File.read("./input2.txt").lines.map(&:chomp)

twice = 0
thrice = 0

box_ids.each do |box_id|
    freqs = box_id.split("").group_by{ |x| x}.map{ |k, v| [k, v.size] }.to_h
    freqs_inv = freqs.invert
    twice += 1 unless freqs_inv[2].nil?
    thrice += 1 unless freqs_inv[3].nil?
end

puts twice * thrice