class Market

    def initialize
        @marketitems = Hash.new
    end

    def marketEkle(item, price)
        @marketitems.store(item,price)
    end

    def marketGoruntule
        i = 1
        puts "----------- Market --------------"
        @marketitems.each do|item , price|

            puts i.to_s + ". -> " + item.isim + " -> " +price.to_s + "TL"
            i += 1

        end
        
        marketSatinal($player)
    end

    def marketSatinal(player)
        puts "Almak istediğiniz ürünü Giriniz (Çıkmak için 0'a Basın)"
        girilen = gets.to_i
        if girilen == 0
            return
        else
            if player.gold >= @marketitems.values[girilen-1]
                $player.inventory.ekle(@marketitems.keys[girilen-1])
                puts "ürün satın alındı"
            else
                puts "Yeterli paranız yok"
            end
        end
    end
end