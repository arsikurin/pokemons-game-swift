//
//  main.swift
//  pokemons-game-swift
//
//  Created by Arseny Kurin on 12.12.2021.
//

import Foundation

print("Hello, World!")

class Pokemon {
    var name: String
    var hp: Int
    var atk: Int
    var df: Int


    func attack(other: Pokemon, damage: Int? = nil) {
        if other.hp <= 0 {
            other.hp = 0
            return
        }

        if self.hp <= 0 {
            self.hp = 0
            return
        }

        if damage == nil {
            let damage = self.atk - other.df
            if damage >= 0 {
                other.hp -= damage
            } else {
                other.hp -= 1
            }
        } else {
            if damage ?? 0 >= 0 {
                other.hp -= damage ?? 0
            } else {
                other.hp -= 1
            }
        }
    }

    init(name: String, hp: Int, atk: Int, df: Int) {
        self.name = name
        self.atk = atk
        self.hp = hp
        self.df = df
    }
}

var a = Pokemon(name: "aa", hp: 100, atk: 5, df: 1)
var b = Pokemon(name: "aa", hp: 100, atk: 3, df: 8)

print(a.hp)
b.attack(other: a)
print(a.hp)
