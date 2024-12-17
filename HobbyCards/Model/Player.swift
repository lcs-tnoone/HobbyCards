//
//  Player.swift
//  HobbyCards
//
//  Created by Thomas Noone on 2024-12-17.
//

import SwiftUI

struct Player: Identifiable {
    let id = UUID()
    let name: String
    let age: Int
    let goldMedals: Int
    let silverMedals: Int
    let bronzeMedals: Int
    let appearances: Int
    let description: String
}

let ZebPowwel = Player(name: "Zeb Powwel", age: 24, goldMedals: 1, silverMedals: 1, bronzeMedals: 0, appearances: 4, description: "A breakout star of the undisciplined Knuckle Huck discipline, Zeb Powell casually claimed gold in his debut X Games appearance at Aspen 2020, wearing heart-shaped pink sunglasses he found on the ground moments before the contest. He has come to embody everything people love about Knuckle Huck: wild, stylish, creative, unconventional, innovative, unpredictable. Zeb’s path took him from North Carolina--hardly a snowboard hotbed--to a scholarship student at the famed Stratton Mountain School, where he sharpened his skills. The attention from his X Games victory put a spotlight on how few Black athletes are represented in professional snowboarding, and it lit a fire inside him to start initiatives like the Slide-In Tour and Culture Shifters to help change the face of the sport. It's working, fast.")
let DustyHenrickson = Player(name: "Dusty Henrickson", age: 21, goldMedals: 2, silverMedals: 0, bronzeMedals: 2, appearances: 9, description: "Dusty Henricksen made a grand entrance as an X Games rookie, taking gold in both Knuckle Huck and Slopestyle (and also competing in Big Air) at X Games Aspen 2021, then added Knuckle Huck bronze at X Games Aspen 2022 and another at X Games Aspen 2023. Some kids are born to do it: Dusty's father Marko was a member of the Gnu Snowboards team in the 1980s and was one of the world's first certified snowboard instructors. Dusty started at age 2, was competing by age 5 and had a meteoric rise in 2019-2020 with wins at U.S. Grand Prix Mammoth Mountain in February 2020 (his first FIS World Cup podium) and at the Youth World Olympics in Switzerland in January 2020.")


let Snowboarders = [
    ZebPowwel, DustyHenrickson
]
