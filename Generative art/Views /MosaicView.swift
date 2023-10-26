//
//  MosaicView.swift
//  Generative art
//
//  Created by Quin Taylor on 2023-10-24.
//
import SwiftUI

struct MosaicView: View {
    @State var columns: Int = 1
    let initialColumns = 1 // Store the initial value

    var body: some View {
        
        VStack {
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 0), count: columns), spacing: 0) {
                ForEach(0..<columns * columns, id: \.self) { _ in
                    titleView()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
            }

            Stepper("Columns: \(columns)",
                    value: $columns,
                    in: 1...100,
                    step: 1)
            HStack {
                Button("Reset", action: {
                    columns = initialColumns
                })
                
                Button("Refresh", action: {
                              // Re-do the flips here
                              for _ in 0..<columns * columns {
                                  titleView.refreshFlips()
                              }
                          })
                
            }
        }
    }
}

#Preview {
    MosaicView()
}
