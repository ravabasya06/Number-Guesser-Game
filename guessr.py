import random
def ulang():
    jar1 = int(input("Masukkan jarak pertama : "))
    jar2 = int(input("Masukkan jarak kedua : "))
    chance = int(input("Masukkan berapa kesempatan yang dapat anda lakukan : "))
    randomN = random.randint(jar1, jar2)
    
    while chance > 0:
        guessN = int(input("Tebak berapa angka yang dihasilkan : "))
        if  guessN > randomN:
            print("Angka yang anda tebak lebih besar dari yang dihasilkan")
            chance -= 1
        elif guessN < randomN:
            print("Angka yang anda tebak lebih kecil dari yang dihasilkan")
            chance -= 1
        else:
            print("Angka yang anda tebak benar")
            break
        
    pengulangan = input("Lakukan game lagi? ya / tidak : ")
    
    if pengulangan == "ya":
        ulang()
    elif pengulangan == "tidak":
        print("Ok")
    else:
        print("Saya tidak mengerti perintah anda, saya akan menganggap anda menjawab tidak.")
ulang()
