freq_changes = File.read("./input1.txt")
puts eval("0 " + freq_changes.gsub("\n", " "))