//
//  titleView.swift
//  Generative art
//
//  Created by Quin Taylor on 2023-10-24.
//

import SwiftUI

enum Coin: Int{
    
    case heads = 1
    case tails = 2

    static func flip() -> Coin {
        
        let decision = Bool.random()
        
        if decision == true {
            
            return .heads
        }else {
            
            return .tails
        }
    }
}
struct titleView: View {
    
    let flipOne = Coin.flip()
    
    let flipTwo = Int.random(in: 1...2)
    var body: some View {
        VStack {
            
            if flipOne == .heads {
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
