uname = gets
Password = gets
uc = uname[2..3].scan(/[A-Z]/).length 
#up = uname[2].scan(/[A-Z]/)
#puts up
lc = uname.scan(/[a-z]/).length
dc = uname.scan(/[0-9]/).length
if uc == 2 && dc == 6
    puts "username : #{uname}"
else
    puts "Enter valid INDOS no."
end

if Password.length >= 9 && Password.length <=13
    uc = Password.scan(/[A-Z]/).length
    lc = Password.scan(/[a-z]/).length
    dc = Password.scan(/[0-9]/).length
    sc = Password.scan(/["+", "-", "&", "|", "!", "(", ")", "{", "}", "[", "]", "^","", "*", "?", ":","@","","#","$","%","*","_","=","\","<",">"]/).length
    if sc >= dc && sc>= uc && sc >= lc
        puts "Strong password"
        puts "Password : #{Password}"
    elsif dc >= sc && dc >= uc && dc >= lc 
        puts "Good password"
        puts "Password : #{Password}"
    elsif uc >= sc && uc >= dc && uc >= lc
        puts "Weak password"
        puts "Password : #{Password}"
    else
        puts "Invalid password"
        puts "Password : #{Password}"
    end
else
    puts "Retype password of greater than 8 characters and less than 12 characters"
end