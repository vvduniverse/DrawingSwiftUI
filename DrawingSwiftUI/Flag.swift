//
//  Flag.swift
//  DrawingSwiftUI
//
//  Created by Vahtee Boo on 16.11.2021.
//

import SwiftUI

struct Flag: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 50, y: 20))
            path.addLine(to: CGPoint(x: 330, y: 20))
            path.addQuadCurve(
                to: CGPoint(x: 323, y: 125),
                control: CGPoint(x: 290, y: 70)
            )
            path.addQuadCurve(
                to: CGPoint(x: 300, y: 230),
                control: CGPoint(x: 350, y: 162)
            )
            path.addLine(to: CGPoint(x: 300, y: 230))
            path.addLine(to: CGPoint(x: 20, y: 230))
            path.addQuadCurve(
                to: CGPoint(x: 35, y: 125),
                control: CGPoint(x: 55, y: 162)
            )
            path.addQuadCurve(
                to: CGPoint(x: 50, y: 20),
                control: CGPoint(x: 0, y: 72)
            )
        }
        .fill(Color.red)
    }
}

struct Flag_Previews: PreviewProvider {
    static var previews: some View {
        Flag()
            .frame(width: 350, height: 250)
    }
}
