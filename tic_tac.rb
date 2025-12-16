# Online Ruby Editor for free
# Write, Edit and Run your Ruby code using Ruby Online Compiler

def display(arr)
    for i in (0..arr.length)
        for j in (0..arr[i].length)
            print arr[i][j]
        end
        puts ""
    end
end

def check(arr)
    comb=[[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]
    if arr[0][0]==arr[0][1] and arr[0][1]==arr[0][2] and arr[0][0]!=nil
        puts "Player #{arr[0][0]} wins"
        return true
    elsif arr[1][0]==arr[1][1] and arr[1][1]==arr[1][2] and arr[1][0]!=nil
        puts "Player #{arr[1][0]} wins"
        return true
    elsif arr[2][0]==arr[2][1] and arr[2][1]==arr[2][2] and arr[2][0]!=nil
        puts "Player #{arr[2][0]} wins"
        return true
    elsif arr[0][0]==arr[1][0] and arr[1][0]==arr[2][0] and arr[0][0]!=nil
        puts "Player #{arr[0][0]} wins"
        return true
    elsif arr[0][1]==arr[1][1] and arr[1][1]==arr[2][1] and arr[0][1]!=nil
        puts "Player #{arr[0][1]} wins"
        return true
    elsif arr[0][2]==arr[1][2] and arr[1][2]==arr[2][2] and arr[0][2]!=nil
        puts "Player #{arr[0][2]} wins"
        return true
    elsif arr[0][0]==arr[1][1] and arr[1][1]==arr[2][2] and arr[0][0]!=nil
        puts "Player #{arr[0][0]} wins"
        return true
    elsif arr[0][2]==arr[1][1] and arr[1][1]==arr[2][0] and arr[0][2]!=nil
        puts "Player #{arr[0][2]} wins"
        return true
    else
        if is_full(arr)
            puts "It's a draw"
        end
        return false
    end
end

def insert(ch,pos,arr)
    if is_full(arr)
        return
    end
    if pos>0 and pos<4
        if pos==1 and arr[0][0]==nil
            arr[0][0]=ch
            return
        elsif pos==2 and arr[0][1]==nil
            arr[0][1]=ch
            return
        elsif pos==3 and arr[0][2]==nil
            arr[0][2]=ch
            return
        else 
            puts "Invalid postion"
        end
    elsif pos>3 and pos<7
        if pos==4 and arr[1][0]==nil
            arr[1][0]=ch
            return
        elsif pos==5 and arr[1][1]==nil
            arr[1][1]=ch
            return
        elsif pos==6 and arr[1][2]==nil
            arr[1][2]=ch
            return
        else 
            puts "Invalid postion"
        end
    elsif pos>6 and pos < 10
        if pos==7 and arr[2][0]==nil
            arr[0][0]=ch
            return
        elsif pos==8 and arr[2][1]==nil
            arr[2][1]=ch
            return
        elsif pos==9 and arr[2][2]==nil
            arr[2][2]=ch
            return
        else 
            puts "Invalid postion"
        end
    else
        puts "Invalid position "
        return
    end
end

def is_full(arr)
    for i in (0..arr.length)
        if arr[i].include?(nil)
            return false
        end
    end
    return true
end



arr=Array.new(3) {Array.new(3)}

puts "player one enter the postion for X"

puts "player two enter the postion for O"

ch='X'

9.times do
    if !is_full(arr)
        puts "player enter the postion for #{ch}"
        pos=gets.chomp.to_i
        insert(ch,pos,arr)
        if check(arr)
            return
        end
        if ch=='X'
            ch='O'
        else
            ch='X'
        end
    else
        check(arr)
    end
end
