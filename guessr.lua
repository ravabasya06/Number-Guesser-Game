function ulang()
    io.write("Masukkan jarak pertama : ")
    jar1 = tonumber(io.read())
    io.write("Masukkan jarak kedua : ")
    jar2 = tonumber(io.read())
    io.write("Masukkan berapa kesempatan yang dapat anda lakukan : ")
    chance = tonumber(io.read())
    math.randomseed(os.time())
    randomN = math.random(jar1, jar2)
    
    while chance > 0 do
        io.write("Tebak berapa angka yang dihasilkan : ")
        guessN = tonumber(io.read())
        
        if guessN > randomN then
            print("Angka yang anda tebak lebih besar dari yang dihasilkan")
            chance = chance - 1
        elseif guessN < randomN then
            print("Angka yang anda tebak lebih kecil dari yang dihasilkan")
            chance = chance - 1
        else
            print("Angka yang anda tebak benar")
            break
        end
    end
    if chance == 0 then
        print("Anda kehilangan kesempatan")
        print("Angka yang dihasilkan adalah "..randomN)
    end
    
    io.write("Lakukan pengulangan lagi? ya / tidak : ")
    pengulangan = io.read()
    
    if string.lower(pengulangan) == "ya" then
        ulang()
    elseif string.lower(pengulangan) == "tidak" then
        print("Ok")
    else
        print("Saya tidak mengerti perintah anda, saya akan menganggap anda menjawab tidak.")
    end
end
ulang()
