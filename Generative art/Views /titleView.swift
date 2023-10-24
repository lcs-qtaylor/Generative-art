//
//  titleView.swift
//  Generative art
//
//  Created by Quin Taylor on 2023-10-24.
//

import SwiftUI


struct titleView: View {
    
    let flipOne = Int.random(in: 1...2)
    
    var body: some View {
        VStack {
            
            if flipOne == 1 {
                ZStack{
                    triangleTopLeft()
                        .stroke(.black)
                        .fill(.clear)
                        .aspectRatio(1.0, contentMode: .fit)
                    
                    
                    triangleBottomRight()
                        .stroke(.black)
                        .fill(.clear)
                        .aspectRatio(1.0, contentMode: .fit)
                }
            }else {
                ZStack{
                    
                    triangleTopRight()
                        .stroke(.black)
                        .fill(.clear)
                        .aspectRatio(1.0, contentMode: .fit)
                    
                    triangleBottomLeft()
                        .stroke(.black)
                        .fill(.clear)
                        .aspectRatio(1.0, contentMode: .fit)
                    
                }
            }
            
            
            
           
            
        }
        .padding()
  
    }
}

#Preview {
    titleView()
}
