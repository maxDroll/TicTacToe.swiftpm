//
//  EasyView.swift
//  TicTacToe
//
//  Created by Michael Peroulas   on 4/17/24.
//

import SwiftUI

struct EasyView: View {
    @EnvironmentObject var everything: Everything
    
    var body: some View {
        VStack {
            
            Text("Easy View")
            
            HStack{
                
                Image(systemName: everything.image1)
                    .resizable()
                    .foregroundColor(everything.imageColor1)
                    .onTapGesture {
                        everything.image1 = "xmark"
                        everything.imageColor1 = Color.black
                    }
                
                Image(systemName: everything.image2)
                    .resizable()
                    .foregroundColor(everything.imageColor2)
                    .onTapGesture {
                        everything.image2 = "xmark"
                        everything.imageColor2 = Color.black
                        
                Image(systemName: everything.image3)
                            .resizable()
                            .foregroundColor(everything.imageColor3)
                            .onTapGesture {
                                everything.image3 = "xmark"
                                everything.imageColor3 = Color.black
                            }
                       
                    }
            }
                }
            }
        }
    


//            RoundedRectangle(cornerRadius: 10)
//                       .frame(width: 10, height: 500)
//                       .offset(x: -100, y: 306)
//            RoundedRectangle(cornerRadius: 10)
//                       .frame(width: 10, height: 500)
//                       .offset(x: 100, y: -200)
//            RoundedRectangle(cornerRadius: 10)
//                       .frame(width: 500, height: 10)
//                       .offset(x: 0, y: -400)
//            RoundedRectangle(cornerRadius: 10)
//                       .frame(width: 500, height: 10)
//                       .offset(x: 0, y: -600)
