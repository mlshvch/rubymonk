def encrypt_this(text)
    x = text[0]
    x = x.ord
    len = text.length
    cypher = x.ord.to_s + text[len - 1]
    
    for i in 2..(len - 2)
        cypher += text[i].to_s
    end

    cypher += text[1]

    puts cypher
end

encrypt_this("Hello")