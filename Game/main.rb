require_relative "player"
require_relative "inventory"
require_relative "items"
require_relative "slots"
require_relative "market"



market = Market.new
market.marketAddturkce($aykilici,25)
market.marketAddturkce($ayzirhi,25)
market.marketAddeng($moonarmor,25)
market.marketAddeng($moonsword,25)


system ("cls")
puts "Welcome to an Action Game"
puts "(Oyuna hoşgeldiniz)"
sleep(1)
puts "Please select your language."
puts "(Lütfen Dil Tercihini Seçiniz)"
puts "1. -> Turkish"
puts "2. -> English"

$dil = gets.to_i
system("cls")


if $dil == 1
    puts "Başlamak için Karakter Oluşturun"

    puts "Oluşturulacak Oyuncunun ismi..."
    $player = Player.new(name: gets.chomp, damage: 0 , gold: 0 , inventory: Inventory.new , defence: 0)
    $player.inventory.add($baslangickilic)
    $player.inventory.add($baslangiczirh)
elsif $dil == 2
    puts "Create a new character to play"
    puts "Enter character's name"
    $player = Player.new(name: gets.chomp, damage: 0 , gold: 0 , inventory: Inventory.new , defence: 0)
    $player.inventory.add($startersword)
    $player.inventory.add($starterarmor)
end


if $dil == 1
    puts $player.name + " Adlı Karakter oluşturuldu Oyuna başlanıyor"
    sleep(1)
else
    puts $player.name + " named character created the game is starting..."
    sleep(1)

end

puts $player.stats

if $dil == 1
    while true
        system("cls")
        puts "1. -> Karakter Bilgilerini Görüntüle"
        puts "2. -> Envanterini Görüntüle"
        puts "3. -> Canavar Öldürme"
        puts "4. -> Marketi Görüntüle"
        
        puts "0. -> Oyundan Çık"
    
        islem = gets.chomp
        if islem == "9"
            puts "1. 10000 TL Al"
            puts "2. Ay Eşyaları Al"
            puts "3. Güneş Eşyaları Al"
            puts "4. Baron Eşyaları Al"
            islemm = gets.to_i
            if islemm == 1
                $player.gold = 10000
            elsif islemm == 2
                $player.inventory.add($aykilici)
                $player.inventory.add($ayzirhi)
            elsif islemm == 3
                $player.inventory.add($guneskilici)
                $player.inventory.add($guneszirhi)
            elsif islemm == 4
                $player.inventory.add($baronkilici)
                $player.inventory.add($baronzirhi)
            end
    
        end
        if islem == "2"
            $player.inventory.lookinv
        end
        if islem == "1"
            $player.stats
        end
        if islem == "4"
            market.marketShow
        end
        if islem == "3"
            system("cls")
            puts "------------ Slot Menüsüne girdiniz -------------"
            sleep(1)
            while true
                puts "Öldürmek İstediğiniz Canavar türünü seçiniz"
                puts "1. Köpekler"
                puts "2. Mistikler (Güneş Eşyaları Düşebilir)"
                puts "3. Örümcekler (Baron Eşyaları Düşebilir)"
                puts "4. Devler (Şövalye Eşyaları Düşebilir)"
                puts "5. Periler (Şövalye Eşyaları Düşebilir)"
                puts "0. Geri Dön"
    
                islem = gets.chomp.to_i
    
                if islem == 1
                    $player.killSlots($player , $kopek)
                elsif islem == 2
                    $player.killSlots($player , $mistik)
                elsif islem == 3
                    $player.killSlots($player , $orumcek)
                elsif islem == 4
                    $player.killSlots($player , $dev)
                elsif islem == 5
                    $player.killSlots($player , $peri)
                elsif islem == 0
                    break
                end
            end
        end
        if islem == "0"
            break
        end
    end
else
        
    while true

        system("cls")
        puts "1. -> Show character stats"
        puts "2. -> Shows Inventory"
        puts "3. -> Show monsters to kill"
        puts "4. -> Show shop"
        
        puts "0. -> Quit Game"

        islem = gets.chomp
        if islem == "2"
            $player.inventory.lookinv
        end
        if islem == "1"
            $player.stats
        end
        if islem == "4"
            market.marketShow
        end
        if islem == "3"
            system("cls")
            puts "------------ Monsters -------------"
            sleep(2)
            while true
                puts "Select type of monsters which you want kill"
                puts "1. Dogs"
                puts "2. Mythics (Sun items can be drop)"
                puts "3. Spiders (Baron items can be drop)"
                puts "4. Giants (Knight items can be drop)"
                puts "3. Fairys (Knight items can be drop)"
                puts "0. Back"

                islem = gets.chomp.to_i

                if islem == 1
                    $player.killSlots($player , $dog)
                elsif islem == 2
                    $player.killSlots($player , $mythic)
                elsif islem == 3
                    $player.killSlots($player , $spider)
                elsif islem == 3
                    $player.killSlots($player , $giant)
                elsif islem == 3
                    $player.killSlots($player , $fairy)
                elsif islem == 0
                    break
                end
            end
        end
        if islem == "0"
            break
        end
    end

end



#sleep(2)
#system("cls")







