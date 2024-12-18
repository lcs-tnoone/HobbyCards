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
        VStack{
            ZStack{
                Image(chosenPlayer.playerImage)
                    .resizable()
                    .scaledToFit()
                ZStack {
                    XShape()
                        .fill(Color.red) // Fill the inside of the X with red
                    XShape()
                        .stroke(Color.black, lineWidth: 20) // Add a black border to the X
                    Image(systemName: "globe")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50) // Adjust the size of the globe
                        .foregroundColor(.black) // Make the globe black
                }
                .frame(width: 200, height: 200) // Set the overall size of the shape
            

            }
        }
    }
    
}


#Preview {
    NavigationStack{
        PlayerCardView(chosenPlayer: DustyHenrickson)
    }
}

