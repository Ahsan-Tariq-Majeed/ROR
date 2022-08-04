require"timeout"
require "csv"
file = CSV.parse(File.read("problems.csv"))

count = 0

Timeout::timeout(10) { puts '10' }
Timeout::timeout(5) do
    for a in 0..file.length-1 do
        puts "what is the answer of  #{file[a][0]} ?"
        ans = gets
        if file[a][1].chomp.to_i == ans.chomp.to_i
            count=count+1
        end
    end
end
puts "Total number of Questions:" 
puts "#{file.length}"
puts "Number of correct Answers: "
puts "#{count}"