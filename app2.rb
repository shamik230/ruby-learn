str = '/-\|'
loop do
    str.length.times do |i|
        print str[i]
        sleep 0.1
        print "\r"
    end
end
    
