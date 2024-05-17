def ceasar_cipher(str,key)
    str_lowercase = str.downcase
    str_to_arr = str_lowercase.split(" ")
    multiDimensional_arr = str_to_arr.map {|chr_to_ascii| chr_to_ascii.bytes.map do|ascii| 
        if (ascii + key) > 122
            (ascii + key) - 122 + 96
        else
            ascii + key
        end
    end.map {|ascii| ascii.chr}}
    cipher_str = multiDimensional_arr.map{|arr| arr.join("")}.join(" ")
    return cipher_str
end

 string = ceasar_cipher("Hey mike is gay", 5)
 puts string