//
//  Hummer.swift
//  DrawingSwiftUI
//
//  Created by Vahtee Boo on 16.11.2021.
//

import SwiftUI

struct Hummer: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 130, y: 220))
            path.addLine(to: CGPoint(x: 135, y: 60))
            path.addLine(to: CGPoint(x: 170, y: 60))
            path.addLine(to: CGPoint(x: 150, y: 20))
            path.addLine(to: CGPoint(x: 65, y: 20))
            path.addLine(to: CGPoint(x: 65, y: 60))
            path.addLine(to: CGPoint(x: 100, y: 60))
            path.addLine(to: CGPoint(x: 110, y: 220))
            path.addArc(center: CGPoint(x: 120, y: 220),
                        radius: 10,
                        startAngle: .degrees(0),
                        endAngle: .degrees(180),
                        clockwise: false)
        }
        .rotation(Angle.degrees(-45))
        .offset(x: 20, y: 20)
        .scaleEffect(0.8)
    }
}

struct Hummer_Previews: PreviewProvider {
    static var previews: some View {
        Hummer()
            .frame(width: 240, height: 240)
    }
}
