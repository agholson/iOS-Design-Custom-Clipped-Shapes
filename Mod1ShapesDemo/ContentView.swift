//
//  ContentView.swift
//  Mod1ShapesDemo
//
//  Created by Leone on 2/13/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            // MARK: - Beach
            Image("beach")
                // Makes fit on entire screen
                .resizable()
                // Crop the image into a Circle
                .clipShape(Circle())
            
            // MARK: - Circle
            // To use a different stroke than the foreground color, must use a ZStack
            ZStack {
                Circle()
                    .foregroundColor(.red)
                    .frame(width: 100)
                Circle()
                // Specify a border, or stroke as known in graphic design, must make before the frame
                    .stroke(.black, style: StrokeStyle(lineWidth: 10, dash: [3, 1], dashPhase: 1))
                // By default, takes up all space, so use a frame to contstrain the size
                    .frame(width: 100)
            }
            
            // MARK: - Ellipse
            Ellipse()
            // Allows dimensions not 1x1
                .frame(width: 100, height: 50)
            
            // MARK: - Rectangle
            Rectangle()
                .frame(width: 100, height: 200)
                .cornerRadius(25)
            
            // MARK: - Rounded Rectangle
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .foregroundColor(.blue)
            
            // MARK: - Capsule
            // Commonly used for buttons
            ZStack {
                Capsule()
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 40)
                
                Text("Click here!")
                    .foregroundColor(.white)
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
