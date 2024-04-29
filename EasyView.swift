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
                            .foregroundColor(everything
                            .imageColor1)
                    ImageView(imageName: everything.image2, pos: 2)
                            .foregroundColor(everything
                            .imageColor2)

                    ImageView(imageName: everything.image3, pos: 3)
                        .foregroundColor(everything
                        .imageColor3)

                }
                HStack{
                    ImageView(imageName: everything.image4, pos: 4)
                        .foregroundColor(everything
                        .imageColor4)

                    ImageView(imageName: everything.image5, pos: 5)
                        .foregroundColor(everything
                        .imageColor5)

                    ImageView(imageName: everything.image6, pos: 6)
                        .foregroundColor(everything
                        .imageColor6)

                }
                
                HStack{

                    ImageView(imageName: everything.image7, pos: 7)
                        .foregroundColor(everything
                        .imageColor7)

                    ImageView(imageName: everything.image8, pos: 8)
                        .foregroundColor(everything
                        .imageColor8)

                    ImageView(imageName: everything.image9, pos: 9)
                        .foregroundColor(everything
                        .imageColor9)

                }
                
            }
        }
    }
}


//            ZStack{

//VStack{
//    Text("Wins: \(everything.wins)")
//    Text("Loses: \(everything.losses)")
//    Text("Ties: \(everything.ties)")
//}
//.frame(maxWidth: .infinity, alignment: .leading)
//.font(.title)
//HStack(spacing: 170){
//    RoundedRectangle(cornerRadius: 10)
//        .frame(width: 10, height: 500)
//    RoundedRectangle(cornerRadius: 10)
//        .frame(width: 10, height: 500)
//}
//VStack(spacing: 170){
//    RoundedRectangle(cornerRadius: 10)
//        .frame(width: 500, height: 10)
//    RoundedRectangle(cornerRadius: 10)
//        .frame(width: 500, height: 10)
//}
//
//}
struct ImageView: View {
    @EnvironmentObject var everything: Everything
    var imageName: String
    var pos: Int
    var body: some View {
        Image(systemName: imageName)
                    .resizable()
                    .onTapGesture {
                        everything.playerTap(position: pos)
                    }
    }
}
