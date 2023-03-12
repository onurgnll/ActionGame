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
                    
                    #item drop rates
                    sans = rand(1..10)
                    if slot.isim == "Mistik"
                        if sans < 3
                            puts "Eşya Elde Edildi (" + $guneskilici.isim + ")"
                            $player.inventory.ekle($guneskilici)
                        end
                        if sans > 8 
                            puts "Eşya Elde Edildi (" + $guneszirhi.isim + ")"
                            $player.inventory.ekle($guneszirhi)
                        end
                    end
                    if slot.isim == "Örümcek"
                        if sans < 2
                            puts "Eşya Elde Edildi (" + $baronkilici.isim + ")"
                            $player.inventory.ekle($baronkilici)
                        end
                        if sans > 9
                            puts "Eşya Elde Edildi (" + $baronkilici.isim + ")"
                            $player.inventory.ekle($baronkilici)
                        end
                    end


                    break

                end
                if temphp < 1
                    puts "Öldünüz!"
                    sleep(1)
                    puts "Doğum İçin Kalan Süre... (5)"
                    sleep(1)
                    puts "Doğum İçin Kalan Süre... (4)"
                    sleep(1)
                    puts "Doğum İçin Kalan Süre... (3)"
                    sleep(1)
                    puts "Doğum İçin Kalan Süre... (2)"
                    sleep(1)
                    puts "Doğum İçin Kalan Süre... (1)"
                    puts "Tekrar Canlandınız!"
                    break

                end
            end
    end
end