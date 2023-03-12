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
        #if slotdamage == 0
        #    slotdamage = 0.01
        #end
        oyuncuslotuoldurebildi = false



        

        temphp = player.hp
        tempslothp = slot.hp
            while true
                nowhp = temphp - slotdamage
                temphp = nowhp
                tempslothp = tempslothp - player.damage
                puts "Canavar'la savaşılıyor"
                sleep(0.6)
                puts "    Senin Hp -> " + nowhp.to_s + "/" + 20.to_s
                puts "    " + slot.isim + " Hpsi -> " + tempslothp.to_s + "/" + slot.hp.to_s
                sleep(0.6)
                if tempslothp < 1
                    puts ""
                    puts slot.gold.to_s + "TL Kazandın"
                    player.gold += slot.gold
                    break

                end
                if temphp < 1
                    puts "Öldünüz!"
                    break

                end


            end


    end
end