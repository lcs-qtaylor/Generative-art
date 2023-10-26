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
    
    let flipTwo = Coin.flip()
    
    let flipThree = Coin.flip()
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
                    
                if flipTwo == .heads {
                    
                    triangleTopLeft()
                        .stroke(.clear)
                        .fill(.red)
                        .aspectRatio(1.0, contentMode: .fit)
                } else {
                    triangleTopLeft()
                        .stroke(.clear)
                        .fill(.yellow)
                        .aspectRatio(1.0, contentMode: .fit)
                }
                    if flipTwo == .heads {
                        
                        if flipThree == .heads {
                            triangleBottomRight()
                                .stroke(.clear)
                                .fill(.yellow)
                                .aspectRatio(1.0, contentMode: .fit)
                        } else {
                            
                            triangleBottomRight()
                                .stroke(.clear)
                                .fill(.clear)
                                .aspectRatio(1.0, contentMode: .fit)
                        }
                    } else {
                        
                        if flipThree == .heads {
                            triangleBottomRight()
                                .stroke(.clear)
                                .fill(.red)
                                .aspectRatio(1.0, contentMode: .fit)
                        } else {
                            
                            triangleBottomRight()
                                .stroke(.clear)
                                .fill(.clear)
                                .aspectRatio(1.0, contentMode: .fit)
                        }
                    }
            }
            } else {
                ZStack{
                    
                    triangleTopRight()
                        .stroke(.black)
                        .fill(.clear)
                        .aspectRatio(1.0, contentMode: .fit)
                    
                    triangleBottomLeft()
                        .stroke(.black)
                        .fill(.clear)
                        .aspectRatio(1.0, contentMode: .fit)
                    
                    if flipTwo == .heads {
                        
                        triangleTopRight()
                            .stroke(.clear)
                            .fill(.red)
                            .aspectRatio(1.0, contentMode: .fit)
                    } else {
                        triangleTopRight()
                            .stroke(.clear)
                            .fill(.yellow)
                            .aspectRatio(1.0, contentMode: .fit)
                    }
                    if flipTwo == .heads {
                        
                        if flipThree == .heads {
                            triangleBottomLeft()
                                .stroke(.clear)
                                .fill(.yellow)
                                .aspectRatio(1.0, contentMode: .fit)
                        } else {
                            
                            triangleBottomLeft()
                                .stroke(.clear)
                                .fill(.clear)
                                .aspectRatio(1.0, contentMode: .fit)
                        }
                    } else {
                        
                        if flipThree == .heads {
                            triangleBottomLeft()
                                .stroke(.clear)
                                .fill(.red)
                                .aspectRatio(1.0, contentMode: .fit)
                        } else {
                            
                            triangleBottomLeft()
                                .stroke(.clear)
                                .fill(.clear)
                                .aspectRatio(1.0, contentMode: .fit)
                        }
                    }
                }
            }
        }
        
    }
}

#Preview {
    titleView()
}
