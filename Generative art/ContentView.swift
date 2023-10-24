//
//  ContentView.swift
//  Generative art
//
//  Created by Quin Taylor on 2023-10-24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
           Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .padding(100)
    }
}

#Preview {
    ContentView()
}
