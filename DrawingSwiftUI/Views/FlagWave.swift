//
//  Home.swift
//  DrawingSwiftUI
//
//  Created by Vahtee Boo on 17.11.2021.
//

import SwiftUI

struct FlagWave: View {
    var body: some View {
        ZStack {
            WaveForm(color: .red, amplify: 40)
        }
        .ignoresSafeArea(.all, edges: .bottom )
        .rotationEffect(Angle.degrees(90))
        .offset(x: 150)
    }
}

struct FlagWave_Previews: PreviewProvider {
    static var previews: some View {
        FlagWave()
    }
}

struct WaveForm: View {
    
    var color: Color
    var amplify: CGFloat
    
    var body: some View {
        
        TimelineView(.animation) { timeline in
            
            Canvas {context, size in
                let timeNow = timeline.date.timeIntervalSinceReferenceDate
                let angle = timeNow.remainder(dividingBy: 2)
                let offset = angle * size.width
                
                context.translateBy(x: offset, y: 0)
                context.fill(getPath(size: size), with: .color(color))
                context.translateBy(x: -size.width, y: 0)
                context.fill(getPath(size: size), with: .color(color))
                context.translateBy(x: size.width * 2, y: 0)
                context.fill(getPath(size: size), with: .color(color))
            }
        }
    }
    
    func getPath(size: CGSize) -> Path {
        
        return Path{ path in
            
            let midHeight = size.height / 2
            let width = size.width
            
            path.move(to: CGPoint(x: 0, y: midHeight))
            path.addCurve(to: CGPoint(x: width, y: midHeight),
                          control1: CGPoint(x: width * 0.5, y: midHeight + amplify),
                          control2: CGPoint(x: width * 0.5, y: midHeight - amplify))
            path.addLine(to: CGPoint(x: width, y: size.height))
            path.addLine(to: CGPoint(x: 0, y: size.height))
            
        }
    }
}
