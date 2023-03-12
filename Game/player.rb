class Player

    attr_reader :isim , :hp ,:damage , :gold , :inventory , :defence
    attr_writer :damage , :defence , :gold

    def initialize(isim: "Yabancı", damage:, defence:, gold:, inventory:)
        @hp = 20
        @isim = isim
        @damage = damage
        @gold = gold
        @inventory = inventory
        @defence = defence
    end


    def bilgiler
        puts @isim + " İsimli oyuncunun bilgileri ->"
        puts "Can puanı -> " + @hp.to_s
        puts "Hasarı -> " + @damage.to_s
        puts "Defansı -> " + @defence.to_s
        puts "Parası -> " + @gold.to_s
    end

    def hasarekle(eklenecekhasar)
        @damage = @damage + eklenecekhasar
    end
    
    def hasarsil(silinecekhasar)
        @damage = @damage - silinecekhasar
    end

    def slotOldur(player, slot)

        slotdamage = slot.damage - player.defence
        if slotdamage == 0
            slotdamage = 0.01
        end
        oyuncuslotuoldurebildi = false



        
        if slot.hp / player.damage - player.hp / slotdamage < 0
            oyuncuslotuoldurebildi = true
        end

        if oyuncuslotuoldurebildi == true
            puts "Canavar Öldürülüyor " + slot.hp.to_s + "/" + slot.hp.to_s
            sleep(1)
            puts "Canavar Öldürülüyor " + (2*slot.hp/3).to_s  + "/" + slot.hp.to_s
            sleep(1)
            puts "Canavar Öldürülüyor " + (1*slot.hp/3).to_s + "/" + slot.hp.to_s
            sleep(1)
            puts "Canavar Öldürülüyor " + (0).to_s + "/" + slot.hp.to_s

            puts ""
            puts slot.gold.to_s + "TL Kazandın"
            player.gold += slot.gold

        end
        if oyuncuslotuoldurebildi == false
            puts "Canavar Öldürülüyor " + slot.hp.to_s + "/" + slot.hp.to_s
            sleep(1)
            puts "Canavar Öldürülüyor " + (2*slot.hp/3).to_s  + "/" + slot.hp.to_s
            sleep(1)
            puts "Canavar Öldürülüyor " + (1*slot.hp/3).to_s + "/" + slot.hp.to_s
            sleep(1)
            puts "Canavar Öldürülemedi Öldün!"
        end
    end
end