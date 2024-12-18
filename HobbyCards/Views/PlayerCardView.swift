//
//  PlayerCardView.swift
//  HobbyCards
//
//  Created by Thomas Noone on 2024-12-17.
//

import SwiftUI

struct PlayerCardView: View {
    
    let chosenPlayer: Player
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                Image(chosenPlayer.playerImage)
                    .resizable()
                    .scaledToFit()
                //                    .frame(width: 350, height: 233)
                    .background(Color.white)
                    .border(Color.black, width: 3)
                    .clipped()
                    .padding(40)
                    .overlay(alignment: .topLeading) {
                        ZStack {
                            XShape()
                                .fill(Color.red)
                            XShape()
                                .stroke(Color.black, lineWidth: 5)
                            Image(systemName: "globe")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.black)
                        }
                        .frame(width: 100, height: 100)
                        //                        .offset(x: -25, y: -25)
                    }
                    .border(.red)
                Text(chosenPlayer.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.bottom, 10)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .offset(y: -30)
                PodiumShape()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [.red, .black]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .frame(height: 200)
    //                .scaleEffect(x: 1, y: 0.4)
                    .overlay {
                        ZStack {
                            // Top XShape
                            VStack {
                                XShape()
                                    .fill(Color.yellow)
                                    .frame(width: 80, height: 80)
                                Text("\(chosenPlayer.goldMedals)")
                                    .font(.caption)
                                    .foregroundColor(.yellow)
                            }
                            .offset(y: -20)
                            
                            // Bottom-left XShape
                            VStack {
                                XShape()
                                    .fill(Color.gray)
                                    .frame(width: 60, height: 60)
                                Text("\(chosenPlayer.silverMedals)")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            .offset(x: -50, y: 40)
                            
                            // Bottom-right XShape
                            VStack {
                                XShape()
                                    .fill(Color.brown)
                                    .frame(width: 60, height: 60)
                                Text("\(chosenPlayer.bronzeMedals)")
                                    .font(.caption)
                                    .foregroundColor(.brown)
                            }
                            .offset(x: 50, y: 40)
                        }
                    }
                Text(chosenPlayer.description)
                    .padding(5)
                
                Spacer()
            }
        }
    }
}

#Preview {
    NavigationStack {
        PlayerCardView(chosenPlayer: DustyHenrickson)
    }
}
