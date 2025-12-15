# def substrings(str,arr)
#         res=Hash.new
#         if str.include?(" ")
#         str_arr=str.split(" ")
#         str_arr.each do |s|
#             s.each_with_index do|start|
#                 if arr.include?(s[start..s.length].downcase) 
#                     if res.include?(s[start..s.length].downcase)
#                         res[s[start..s.length].downcase]=res.fetch(s[start..s.length].downcase)+1
#                     else
#                         res[s[start..s.length].downcase]=1
#                     end
#                 break
#                 end
#             end
#         end
#         end
#         return res
#     end


def substrings(str, dict)
	output_hash = Hash.new
	dict.each { |pattern| output_hash[pattern] = str.scan(/#{pattern}/i).count }
	output_hash
end


    print "Enter the String :"
    str=gets.chomp

    puts ""

    print "Enter the Dictionary size :"
    n=gets.chomp.to_i
    puts ""

    print "Enter the words :"
    arr=Array.new
    i=0
    n.times do
        arr << gets.chomp.downcase
    end


    puts substrings(str,arr)
