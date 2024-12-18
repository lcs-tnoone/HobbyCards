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
        path.addLine(to: CGPoint(x: rect.maxX * 0.25, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY * 0.25))
        
        return path
    }
}
struct ContentView: View {
    var body: some View {
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

#Preview {
    ContentView()
}
