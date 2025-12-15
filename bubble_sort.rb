def bubble_sort(arr)
    for i in (0..arr.length-1)
        for j in (i+1..arr.length-1)
            if arr[i]>arr[j]
                temp=arr[i]
                arr[i]=arr[j]
                arr[j]=temp
            end
        end
    end
    return arr
end

print "Enter the array size :"
n=gets.to_i

arr=Array.new
puts "Enter the elements "
n.times do
    arr << gets.to_i
end


print bubble_sort(arr)