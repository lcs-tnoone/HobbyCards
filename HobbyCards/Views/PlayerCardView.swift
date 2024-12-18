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
        VStack(alignment: .leading, spacing: 10) {
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
            PodiumShape()
                .fill(LinearGradient(gradient: Gradient(colors: [.red,.black]), startPoint: .top, endPoint: .bottom))
                .scaleEffect(x: 1, y: 0.4)
                .offset(y: -150)
                .overlay(alignment: .top, content: {
                    ZStack {
                        XShape()
                            .fill(Color.yellow)
                        XShape()
                            .stroke(Color.black, lineWidth: 5)
                        Image(systemName: "globe")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.black)
                    }
                    .frame(width: 100, height: 100)
                })
                .padding(5)
            Spacer()
        }
    }
}

#Preview {
    NavigationStack {
        PlayerCardView(chosenPlayer: DustyHenrickson)
    }
}
