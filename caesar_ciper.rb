def caeser_encryption(str,num)
        low=('a'..'z').to_a
        upp=('A'..'Z').to_a
        res=""
        str.each_char do |ch|
            if low.include?(ch)
                old_ind=low.index(ch)
                new_ind=(old_ind+num)%26
                res << low[new_ind]
            elsif upp.include?(ch)
                old_ind=upp.index(ch)
                new_ind=(old_ind+num)%26
                res <<upp[new_ind]
            else
                res <<ch
            end
        end 
        return res
    end

print "Enter the String :"
str =gets.chomp

puts "Enter the Shift number :"
num=gets.chomp.to_i

puts caeser_encryption(str,num)