require_relative "player"
require_relative "inventory"
require_relative "items"

class Slots

    attr_reader :damage , :gold , :hp ,:isim

    def initialize(isim: ,damage: , gold: , hp:)
        @damage = damage
        @gold = gold
        @hp = hp
        @isim = isim
    end


end


$kopek = Slots.new(isim: "Köpek" , damage: 1, gold: 5 , hp: 3)
$fanatik = Slots.new(isim: "Mistik" , damage: 10 , gold: 10 ,hp: 8 )
$orumcek = Slots.new(isim: "Örümcek", damage: 20 , gold: 20 , hp: 15)

