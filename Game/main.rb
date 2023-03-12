require_relative "player"
require_relative "inventory"
require_relative "items"
require_relative "slots"
require_relative "market"

market = Market.new
market.marketEkle($aykilici,20)
market.marketEkle($ayzirhi,20)


#system ("cls")
puts "Oyuna hoşgeldiniz"
#sleep(2)
puts""
puts "Başlamak için Karakter Oluşturun"


puts "Oluşturulacak Oyuncunun ismi"

$player = Player.new(isim: gets.chomp, damage: 0 , gold: 0 , inventory: Inventory.new , defence: 0)
$player.inventory.ekle($baslangickilic)
$player.inventory.ekle($baslangiczirh)


puts $player.isim + " Adlı Karakter oluşturuldu Oyuna başlanıyor"
puts ""

puts $player.bilgiler
while true

    puts "1. -> Karakter Bilgilerini Görüntüle"
    puts "2. -> Envanterini Görüntüle"
    puts "3. -> Canavar Öldürme"
    puts "4. -> Marketi Görüntüle"
    
    puts "0. Oyundan Çık"

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
            $player.inventory.ekle($aykilici)
            $player.inventory.ekle($ayzirhi)
        elsif islemm == 3
            $player.inventory.ekle($guneskilici)
            $player.inventory.ekle($guneszirhi)
        elsif islemm == 4
            $player.inventory.ekle($baronkilici)
            $player.inventory.ekle($baronzirhi)
        end

    end
    if islem == "2"
        $player.inventory.lookinv
    end
    if islem == "1"
        $player.bilgiler
    end
    if islem == "4"
        market.marketGoruntule
    end
    if islem == "3"
        puts "Slot Menüsüne girdiniz"
        while true
            puts "Öldürmek İstediğiniz Canavar türünü seçiniz"
            puts "1. Köpekler"
            puts "2. Fanatikler (Güneş Eşyaları Düşebilir)"
            puts "3. Orumcekler (Baron Eşyaları Düşebilir)"
            puts "4. Geri Dön"

            islem = gets.chomp.to_i

            if islem == 1
                $player.slotOldur($player , $kopek)
            elsif islem == 2
                $player.slotOldur($player , $fanatik)
            elsif islem == 3
                $player.slotOldur($player , $orumcek)
            elsif islem == 4
                break
            end
        end
    end
    if islem == "0"
        break
    end
end



#sleep(2)
#system("cls")







