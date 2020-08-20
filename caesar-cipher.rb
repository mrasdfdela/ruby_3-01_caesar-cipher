LOWER = 'abcdefghijklmnopqrstuvwxyz'.split('')
UPPER = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split('')

def caesar_cipher(msg, offset)
    msg = msg.split("")

    msg.map! do |el| 
        # binding.pry
        if LOWER.include?(el)
            convert(el, offset, LOWER)
        elsif UPPER.include?(el)
            convert(el, offset, UPPER)
        else
            el
        end 
    end
    
    msg.join("")
end

def alphabet(el, offset, alphabet)
    idx = (alphabet.index(el) + offset) % 26
    alphabet[idx]
end

###
puts "test: #{'Bmfy f xywnsl!' == caesar_cipher('What a string!', 5)}"