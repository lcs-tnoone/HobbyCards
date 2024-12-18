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
                    .background(Color.white)
                    .border(Color.white, width: 3)
                    .clipped()
                    .padding(40)
                    .overlay(alignment: .topLeading) {
                        ZStack {
                            XShape()
                                .fill(Color.red)
                            XShape()
                                .stroke(Color.white, lineWidth: 5)
                            Image(systemName: "globe")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.black)
                        }
                        .frame(width: 100, height: 100)
                        .padding(5)
                    }
                Text(chosenPlayer.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.bottom, 10)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .offset(y: -30)
                PodiumShape()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [.white, .yellow,.white]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .stroke(Color.white, lineWidth: 5)
                    .frame(height: 200)
                    .overlay {
                        ZStack {
                            // Top XShape
                            VStack {
                                ZStack {
                                    XShape()
                                        .fill(Color.yellow)
                                    XShape()
                                        .stroke(Color.black, lineWidth: 5)
                                    Image(systemName: "globe")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30, height: 30)
                                        .foregroundColor(.black)
                                }
                                    .frame(width: 80, height: 80)
                                Text("\(chosenPlayer.goldMedals)")
                                    .font(.caption)
                                    .foregroundColor(.black)
                            }
                            .offset(y: -20)
                            
                            // Bottom-left XShape
                            VStack {
                                ZStack {
                                    XShape()
                                        .fill(Color.gray)
                                    XShape()
                                        .stroke(Color.black, lineWidth: 5)
                                    Image(systemName: "globe")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 20)
                                        .foregroundColor(.black)
                                }
                                    .frame(width: 60, height: 60)
                                Text("\(chosenPlayer.silverMedals)")
                                    .font(.caption)
                                    .foregroundColor(.black)
                            }
                            .offset(x: -60, y: 40)
                            
                            // Bottom-right XShape
                            VStack {
                                ZStack {
                                    XShape()
                                        .fill(Color.brown)
                                    XShape()
                                        .stroke(Color.black, lineWidth: 5)
                                    Image(systemName: "globe")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 20)
                                        .foregroundColor(.black)
                                }
                                    .frame(width: 60, height: 60)
                                Text("\(chosenPlayer.bronzeMedals)")
                                    .font(.caption)
                                    .foregroundColor(.black)
                            }
                            .offset(x: 60, y: 40)
                        }
                    }
                Spacer(minLength: 20)
                Text("About \(chosenPlayer.name)")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.bottom, 10)
                    .frame(maxWidth: .infinity, alignment: .center)
                Text(chosenPlayer.description)
                    .foregroundColor(.white)
                .padding(5)

            }
        }
        .background(Color.black)
    }
}

#Preview {
    NavigationStack {
        PlayerCardView(chosenPlayer: DustyHenrickson)
    }
}
