class Player

    attr_reader :name , :hp ,:damage , :gold , :inventory , :defence
    attr_writer :damage , :defence , :gold

    def initialize(name: "Yabancı", damage:, defence:, gold:, inventory:)
        @hp = 20
        @name = name
        @damage = damage
        @gold = gold
        @inventory = inventory
        @defence = defence
    end


    def stats
        if $dil == 1
            system("cls")
            puts @name + " İsimli oyuncunun bilgileri ->"
            puts "Can puanı -> " + @hp.to_s
            puts "Hasarı -> " + @damage.to_s
            puts "Defansı -> " + @defence.to_s
            puts "Parası -> " + @gold.to_s
            sleep(1)
        else
            system("cls")
            puts @name + " player's stats ->"
            puts "Health Point -> " + @hp.to_s
            puts "Damage -> " + @damage.to_s
            puts "Defence -> " + @defence.to_s
            puts "Money -> " + @gold.to_s
            sleep(1)
        end
    end

    def hasarekle(eklenecekhasar)
        @damage = @damage + eklenecekhasar
    end
    
    def hasarsil(silinecekhasar)
        @damage = @damage - silinecekhasar
    end

    def killSlots(player, slot)

        slotdamage = slot.damage - player.defence
        temphp = player.hp
        tempslothp = slot.hp
        sans = rand(1..100)
        if $dil == 1
            while true
                nowhp = temphp - slotdamage
                temphp = nowhp
                tempslothp = tempslothp - player.damage
                puts "Canavarla savaşılıyor"
                sleep(0.6)
                puts "    Senin Hp -> " + nowhp.to_s + "/" + 20.to_s
                puts "    " + slot.name + " Hpsi -> " + tempslothp.to_s + "/" + slot.hp.to_s
                sleep(0.6)
                if tempslothp < 1
                    puts ""
                    puts slot.gold.to_s + "TL Kazandın"
                    player.gold += slot.gold
                    
                    #item drop rates
                    if slot.name == "Mistik"
                        if sans < 15
                            puts "Eşya Elde Edildi (" + $guneskilici.name + ")"
                            $player.inventory.add($guneskilici)
                        end
                        if sans > 85 
                            puts "Eşya Elde Edildi (" + $guneszirhi.name + ")"
                            $player.inventory.add($guneszirhi)
                        end
                    end
                    if slot.name == "Örümcek"
                        if sans < 10
                            puts "Eşya Elde Edildi (" + $baronkilici.name + ")"
                            $player.inventory.add($baronkilici)
                        end
                        if sans > 90
                            puts "Eşya Elde Edildi (" + $baronzirhi.name + ")"
                            $player.inventory.add($baronzirhi)
                        end
                    end
                    if slot.name == "Dev"
                        if sans < 6
                            puts "Eşya Elde Edildi (" + $sovalyekilici.name + ")"
                            $player.inventory.add($sovalyekilici)
                        end
                        if sans > 94
                            puts "Eşya Elde Edildi (" + $sovalyezirhi.name + ")"
                            $player.inventory.add($sovalyezirhi)
                        end
                    end
                    if slot.name == "Peri"
                        if sans < 6
                            puts "Eşya Elde Edildi (" + $sovalyekilici.name + ")"
                            $player.inventory.add($sovalyekilici)
                        end
                        if sans > 94
                            puts "Eşya Elde Edildi (" + $sovalyezirhi.name + ")"
                            $player.inventory.add($sovalyezirhi)
                        end
                    end
                    sleep(1)


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
        else
            
            while true
                nowhp = temphp - slotdamage
                temphp = nowhp
                tempslothp = tempslothp - player.damage
                puts "Fighting monster"
                sleep(0.6)
                puts "    Your Hp -> " + nowhp.to_s + "/" + 20.to_s
                puts "    " + slot.name + " Hp -> " + tempslothp.to_s + "/" + slot.hp.to_s
                sleep(0.6)
                if tempslothp < 1
                    puts ""
                    puts slot.gold.to_s + "$ gained"
                    player.gold += slot.gold
                    
                    #item drop rates
                    if slot.name == "Mythic"
                        if sans < 15
                            puts "Item obtained (" + $sunsword.name + ")"
                            $player.inventory.add($sunsword)
                        end
                        if sans > 85 
                            puts "Item obtained (" + $sunarmor.name + ")"
                            $player.inventory.add($sunarmor)
                        end
                    end
                    if slot.name == "Spider"
                        if sans < 10
                            puts "Item obtained (" + $baronsword.name + ")"
                            $player.inventory.add($baronsword)
                        end
                        if sans > 90
                            puts "Item obtained (" + $baronarmor.name + ")"
                            $player.inventory.add($baronarmor)
                        end
                    end
                    if slot.name == "Giant"
                        if sans < 6
                            puts "Item obtained (" + $knightsword.name + ")"
                            $player.inventory.add($knightsword)
                        end
                        if sans > 94
                            puts "Item obtained (" + $knightarmor.name + ")"
                            $player.inventory.add($knightarmor)
                        end
                    end
                    if slot.name == "Fairy"
                        if sans < 6
                            puts "Item obtained (" + $knightsword.name + ")"
                            $player.inventory.add($knightsword)
                        end
                        if sans > 94
                            puts "Item obtained (" + $knightarmor.name + ")"
                            $player.inventory.add($knightarmor)
                        end
                    end
                    sleep(1)


                    break

                end
                if temphp < 1
                    puts "You Died!"
                    sleep(1)
                    puts "Remains time to respawn... (5)"
                    sleep(1)
                    puts "Remains time to respawn... (4)"
                    sleep(1)
                    puts "Remains time to respawn... (3)"
                    sleep(1)
                    puts "Remains time to respawn... (2)"
                    sleep(1)
                    puts "Remains time to respawn... (1)"
                    puts "You Respawned!"
                    break

                end
            end
        end
    end
end