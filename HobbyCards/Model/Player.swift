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
    let playerImage: String
}

let ZebPowell = Player(name: "Zeb Powwel", age: 24, goldMedals: 1, silverMedals: 1, bronzeMedals: 0, appearances: 4, description: "A breakout star of the undisciplined Knuckle Huck discipline, Zeb Powell casually claimed gold in his debut X Games appearance at Aspen 2020, wearing heart-shaped pink sunglasses he found on the ground moments before the contest. He has come to embody everything people love about Knuckle Huck: wild, stylish, creative, unconventional, innovative, unpredictable. Zeb’s path took him from North Carolina--hardly a snowboard hotbed--to a scholarship student at the famed Stratton Mountain School, where he sharpened his skills. The attention from his X Games victory put a spotlight on how few Black athletes are represented in professional snowboarding, and it lit a fire inside him to start initiatives like the Slide-In Tour and Culture Shifters to help change the face of the sport. It's working, fast.", playerImage: "ZebPowell3!")
let DustyHenrickson = Player(name: "Dusty Henrickson", age: 21, goldMedals: 2, silverMedals: 0, bronzeMedals: 2, appearances: 9, description: "Dusty Henricksen made a grand entrance as an X Games rookie, taking gold in both Knuckle Huck and Slopestyle (and also competing in Big Air) at X Games Aspen 2021, then added Knuckle Huck bronze at X Games Aspen 2022 and another at X Games Aspen 2023. Some kids are born to do it: Dusty's father Marko was a member of the Gnu Snowboards team in the 1980s and was one of the world's first certified snowboard instructors. Dusty started at age 2, was competing by age 5 and had a meteoric rise in 2019-2020 with wins at U.S. Grand Prix Mammoth Mountain in February 2020 (his first FIS World Cup podium) and at the Youth World Olympics in Switzerland in January 2020.", playerImage: "DustyHenrickson3!")
let DarcySharpe = Player(name: "Darcy Sharpe", age: 28, goldMedals: 1, silverMedals: 2, bronzeMedals: 2, appearances: 15, description: "XG Aspen 2020 Snowboard Slopestyle gold medalist Darcy Sharpe has quietly stacked 4 medals from 8 appearances, nearly matching his sister Cassie Sharpe's medal count: she owns 2 gold, 1 silver, 2 bronze in Ski SuperPipe. The Canadian sibling duo hails from Comox, British Columbia and has snow in their DNA: their father is a ski industry lifer who headed business operations at their local hill when they were kids. Darcy is a fitness buff and in 2021 launched Board Fit, a snowboard-specific fitness app that offers a 6-week training program aimed at getting riders of all levels ready for the season.", playerImage: "DarcySharpe!")
let MarcusKleveland = Player(name: "Marcus Kleveland", age: 25, goldMedals: 8, silverMedals: 5, bronzeMedals: 0, appearances: 20, description: "Marcus Kleveland is one of the most creative, playful, and stylish snowboarders in the world. The 25-year-old already owns 13 X Games medals prior to X Games Aspen 2025, and has a legit chance to be the first X Games winter athlete with 3 gold at one XG; he’ll be a favorite in Big Air, Slopestyle, and Knuckle Huck at Aspen 2025. After bursting onto the scene by winning Slopestyle at XG Aspen 2017 and using the first quadruple cork landed in competition to add Big Air silver, the teen’s career was derailed for more than a year by a shattered kneecap in Dec. 2018. The Norwegian made a remarkable recovery and now is one of the most influential riders in the sport.", playerImage: "MarcusKleveland!")

let Snowboarders = [
    ZebPowell, DustyHenrickson, DarcySharpe, MarcusKleveland
]
