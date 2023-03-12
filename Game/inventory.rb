require_relative "items" 
require_relative "player"

class Inventory
    def initialize()
        @items = Array.new
        @playerusedsword = false
        @playerusedarmor = false
    end


    def add(obj)
        @items << obj
    end

    def lookinv
        if $dil == 1
            
            puts "Envanterdeki Eşyalar -> "
            a = 1
            for items in @items do 
                puts a.to_s + ". - "  + items.name + "    Fiyatı = (" + items.price.to_s + ")"
                if items.class == Sword
                    puts "      Hasar Puanı = " + items.damage.to_s
                elsif items.class == Armor
                    
                    puts "      Defans Puanı = " + items.defence.to_s
                end
                puts "        "
                a += 1
            end
            if @items.size >= 1
                puts "Seçmek istediğin ekipmanın numarasını yazabilirsin"
                secildi = gets.chomp.to_i
                puts ""
                if secildi >= 1 && secildi <= (@items.size)
                    esya = @items[secildi-1]
                    puts esya.name + " Eşyası İle yapmak istediğini seç"
                    
                    puts "1. Giy (Giyili olan Eşya Silinir) - 2. Sil - 3. Sat - 4. Geri"
                    
                    islem = gets.chomp.to_i
                    
                    if islem == 1
                        if esya.class == Sword
                            $player.damage = esya.damage
                            @playerusedsword = true
                            @items.delete_at(secildi-1)
                        end
                        if esya.class == Armor
                            $player.defence = esya.defence
                            @playerusedarmor = true
                            @items.delete_at(secildi-1)
                        end
                    elsif islem == 2
                        @items.delete(esya)
                    elsif islem == 3 
                        @items.delete_at(secildi-1)
                        $player.gold += esya.price
                    elsif islem == 4

                    end
                end
            end
        else
            puts "Items in inventory -> "
            a = 1
            for items in @items do 
                puts a.to_s + ". - "  + items.name + "    Price = (" + items.price.to_s + ")"
                if items.class == Sword
                    puts "      Damage Point = " + items.damage.to_s
                elsif items.class == Armor
                    
                    puts "      Defence Point = " + items.defence.to_s
                end
                puts "        "
                a += 1
            end
            if @items.size >= 1
                puts "You can write the number of the equipment you want to choose."
                secildi = gets.chomp.to_i
                puts ""
                if secildi >= 1 && secildi <= (@items.size)
                    esya = @items[secildi-1]
                    puts esya.name + " Choose what you want to do with the item"
                    
                    puts "1. Use (Items that are worn are deleted) - 2. Delete - 3. Sell - 4. Back"
                    
                    islem = gets.chomp.to_i
                    
                    if islem == 1
                        if esya.class == Sword
                            $player.damage = esya.damage
                            @playerusedsword = true
                            @items.delete_at(secildi-1)
                        end
                        if esya.class == Armor
                            $player.defence = esya.defence
                            @playerusedarmor = true
                            @items.delete_at(secildi-1)
                        end
                    elsif islem == 2
                        @items.delete(esya)
                    elsif islem == 3 
                        @items.delete_at(secildi-1)
                        $player.gold += esya.price
                    elsif islem == 4

                    end
                end
            end
        end
    end

end