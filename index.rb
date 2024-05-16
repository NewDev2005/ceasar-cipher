def ceasar_cipher(str,key)
    str_lowercase = str.downcase
    str_to_arr =str_lowercase.split(" ")
    multiDimensional_arr = str_to_arr.map {|chr_to_ascii| chr_to_ascii.bytes.map {|ascii| ascii + key}.map {|ascii| ascii.chr}}
    cipher_str = multiDimensional_arr.map{|arr| arr.join("")}.join(" ")
    return cipher_str
end

 string = ceasar_cipher("heylo", 4)
 puts string