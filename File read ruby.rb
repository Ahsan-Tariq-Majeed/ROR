require "csv"
file = CSV.parse(File.read("problems.csv").split)
count = 0

    for a in 0..file.length-1 do
        puts "what is #{file[a][0]} ?"
        ans = gets
        if file[a][1].chomp.to_i == ans.chomp.to_i
            count=count+1
        end
    end
end
puts "Total number of given questions:" 
puts "#{file.length}"
puts "Number of correct Answers:" 
puts "#{count}"