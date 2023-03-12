require_relative "player"
require_relative "inventory"
require_relative "items"

class Slots

    attr_reader :damage , :gold , :hp ,:name

    def initialize(name: ,damage: , gold: , hp:)
        @damage = damage
        @gold = gold
        @hp = hp
        @name = name
    end


end


$kopek = Slots.new(name: "Köpek" , damage: 4, gold: 5 , hp: 3)
$mistik = Slots.new(name: "Mistik" , damage: 6 , gold: 10 ,hp: 8 )
$orumcek = Slots.new(name: "Örümcek", damage: 9 , gold: 20 , hp: 20)
$dev= Slots.new(name: "Dev", damage: 14 , gold: 30 , hp: 25)
$peri= Slots.new(name: "Peri", damage: 20 , gold: 40 , hp: 42)

$dog = Slots.new(name: "Dog" , damage: 4, gold: 5 , hp: 3)
$mythic = Slots.new(name: "Mythic" , damage: 6 , gold: 10 ,hp: 8 )
$spider = Slots.new(name: "Spider", damage: 9 , gold: 20 , hp: 20)
$giant= Slots.new(name: "Giant", damage: 14 , gold: 30 , hp: 25)
$fairy= Slots.new(name: "Fairy", damage: 20 , gold: 40 , hp: 42)

