//
//  X Shape.swift
//  HobbyCards
//
//  Created by Thomas Noone on 2024-12-17.
//


import SwiftUI

struct XShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.maxX * 0.25, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY * 0.25))
        path.addLine(to: CGPoint(x: rect.maxX * 0.25, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY * 0.75))
        path.addLine(to: CGPoint(x: rect.maxX * 0.25, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY * 0.75))
        path.addLine(to: CGPoint(x: rect.maxX * 0.75, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY * 0.75))
        path.addLine(to: CGPoint(x: rect.maxX * 0.75, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY * 0.25))
        path.addLine(to: CGPoint(x: rect.maxX * 0.75, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY * 0.25))
        
        return path
    }
}

#Preview {
    XShape()
}
