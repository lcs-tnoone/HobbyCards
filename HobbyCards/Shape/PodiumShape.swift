//
//  PodiumShape.swift
//  HobbyCards
//
//  Created by Thomas Noone on 2024-12-18.
//

import SwiftUI

struct PodiumShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX , y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX * 0.25, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX * 0.75, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        return path
    }
}

#Preview {
    PodiumShape()
}
