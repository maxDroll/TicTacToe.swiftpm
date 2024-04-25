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
            
            VStack{
                HStack{
                    ImageView(imageName: everything.image1, pos: 1)
                    ImageView(imageName: everything.image2, pos: 2)
                    ImageView(imageName: everything.image3, pos: 3)
                }
                HStack{
                    ImageView(imageName: everything.image4, pos: 4)
                    ImageView(imageName: everything.image5, pos: 5)
                    ImageView(imageName: everything.image6, pos: 6)
                }
                
                HStack{
                    ImageView(imageName: everything.image7, pos: 7)
                    ImageView(imageName: everything.image8, pos: 8)
                    ImageView(imageName: everything.image9, pos: 9)
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
struct ImageView: View {
    @EnvironmentObject var everything: Everything
    var imageName: String
    var pos: Int
    var body: some View {
        Image(systemName: imageName)
                    .resizable()
                    .foregroundColor(everything.imageColor3)
                    .onTapGesture {
                        everything.playerTap(position: pos)
                    }
    }
}
