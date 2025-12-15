def buy_sell(arr)
    
    res=Array.new(2)
    i=0
    profit=0
    for i in (0..arr.length-1)
        for j in (i+1..arr.length-1)
            buy=arr[i]
            sell=arr[j]
            if sell-buy>profit
                res[0]=i
                res[1]=j
                profit=sell-buy
            end
        end
    end
    return res
end

print "Enter the size of stock prices :"
n=gets.chomp.to_i
arr=Array.new
puts "Enter the prices "
n.times do
    arr << gets.chomp.to_i
end

puts ""
print buy_sell(arr)