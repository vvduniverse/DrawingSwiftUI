//
//  Sickle.swift
//  DrawingSwiftUI
//
//  Created by Vahtee Boo on 16.11.2021.
//

import SwiftUI

struct Sickle: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 100, y: 170))
            path.addLine(to: CGPoint(x: 100, y: 220))
            path.addLine(to: CGPoint(x: 120, y: 220))
            path.addLine(to: CGPoint(x: 120, y: 180))
            path.addQuadCurve(
                to: CGPoint(x: 65, y: 25),
                control: CGPoint(x: 330, y: 90)
            )
            path.addLine(to: CGPoint(x: 40, y: 25))
            path.addQuadCurve(
                to: CGPoint(x: 100, y: 170),
                control: CGPoint(x: 310, y: 90)
            )
        }
        .rotation(Angle.degrees(45))
        .offset(y: 20)
        .scaleEffect(0.8)
    }
}

struct Sickle_Previews: PreviewProvider {
    static var previews: some View {
        Sickle()
            .frame(width: 240, height: 240)
    }
}
