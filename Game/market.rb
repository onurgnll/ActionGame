class Market

    def initialize
        @marketitemsturkce = Hash.new
        @marketitemseng = Hash.new
    end

    def marketAddturkce(item, price)
        @marketitemsturkce.store(item,price)
    end
    def marketAddeng(item, price)
        @marketitemseng.store(item,price)
    end

    def marketShow
        if $dil == 1
            i = 1
            puts "----------- Market --------------"
            @marketitemsturkce.each do|item , price|
    
                puts i.to_s + ". -> " + item.name + " -> " +price.to_s + "TL"
                i += 1
    
            end
            
            marketBuy($player)
        else
            
            i = 1
            puts "----------- Market --------------"
            @marketitemseng.each do|item , price|

                puts i.to_s + ". -> " + item.name + " -> " +price.to_s + "$"
                i += 1

            end
            
            marketBuy($player)
        
        end

    end

    def marketBuy(player)
        if $dil == 1
            puts "Almak istediğiniz ürünü Giriniz (Çıkmak için 0'a Basın)"
            girilen = gets.to_i
            if girilen == 0
                return
            else
                if player.gold >= @marketitemsturkce.values[girilen-1]
                    $player.inventory.add(@marketitemsturkce.keys[girilen-1])
                    $player.gold -= @marketitemsturkce.values[girilen-1]
                    puts "Ürün satın alındı"
                else
                    puts "Yeterli paranız yok"
                end
            end
        else
            puts "Enter the item you want to buy (Press 0 to back)"
            girilen = gets.to_i
            if girilen == 0
                return
            else
                if player.gold >= @marketitemseng.values[girilen-1]
                    $player.inventory.add(@marketitemseng.keys[girilen-1])
                    $player.gold -= @marketitemseng.values[girilen-1]
                    puts "Item has bought"
                else
                    puts "You don't have enough money"
                end
            end
        end
    end
end