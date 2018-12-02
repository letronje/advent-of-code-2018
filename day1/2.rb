require 'set'

freq_changes = File.read("./input1.txt").lines.map do|line|
    line.chomp.to_i
end

freqs = Set.new
curr = 0
catch(:found) do
    loop do
        freq_changes.each do |delta|
            curr += delta
            throw :found if freqs.include? curr
            freqs << curr
        end
    end
end
puts curr