//
//  ContentView.swift
//  DrawingSwiftUI
//
//  Created by Vahtee Boo on 16.11.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Flag()
                .frame(width: 350, height: 250)
            Hummer()
                .frame(width: 240, height: 240)
            Sickle()
                .frame(width: 240, height: 240)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
