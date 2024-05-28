//
//  BigBoiClass.swift
//  TicTacToe
//
//  Created by Max Droll on 4/19/24.
//

import Foundation

import SwiftUI


class Everything: ObservableObject{
    @Published var  popUp = false
    @Published var Player: [Int] = []
    @Published var Computer: [Int] = []
    @Published var Available = [1,2,3,4,5,6,7,8,9]
    @Published var board = [boardStruct(piece:"square.fill", color: Color.white),boardStruct(piece:"square.fill", color: Color.white),boardStruct(piece:"square.fill", color: Color.white),boardStruct(piece:"square.fill", color: Color.white),boardStruct(piece:"square.fill", color: Color.white),boardStruct(piece:"square.fill", color: Color.white),boardStruct(piece:"square.fill", color: Color.white),boardStruct(piece:"square.fill", color: Color.white),boardStruct(piece:"square.fill", color: Color.white)]
    @Published var wins: Int = 0
    @Published var ties: Int = 0
    @Published var losses: Int = 0
    @Published var winsSize: CGFloat = 30
    @Published var tiesSize: CGFloat = 30
    @Published var lossesSize: CGFloat = 30
    @Published var ResultAlert = false
    @Published var ResultMessage = ""

    @Published var gameEnded = false
    @Published var difficulty = "hard"
    @Published var themes = [themeStruct(themeName: "Classic", X: Color.blue, O: Color.red),themeStruct(themeName: "Pinkurple", X: Color.pink, O: Color.purple),themeStruct(themeName: "Greens", X: Color.green, O: Color.mint),themeStruct(themeName: "Hersey", X: Color.orange, O: Color.brown),themeStruct(themeName: "Christmas", X: Color.red, O: Color.green),themeStruct(themeName: "Batman", X: Color.yellow, O: Color.black)]


    @Published var theme = "Classic"
    @Published var types = [pieceTypeStruct(typeName: "Classic", X: "xmark", O: "circle"),pieceTypeStruct(typeName: "Sports", X: "tennisball", O: "football"),pieceTypeStruct(typeName: "Organs", X: "lungs", O: "brain"),pieceTypeStruct(typeName: "Tools", X: "wrench", O: "hammer"),pieceTypeStruct(typeName: "Celestial", X: "sun.max", O: "powersleep"),pieceTypeStruct(typeName: "Cats and Dogs", X: "cat", O: "dog.fill")]

    @Published var type = "Classic"
    func CompSelect(){
        var tempInt: Int
        let random = Int.random(in: 1...4)
        let random2 = Int.random(in: 1...2)
        tempInt = Available.randomElement() ?? 0
        if Available.count == 8{
            if difficulty == "hard"{
                ComputerFirstHard()
            }
            if difficulty == "medium"{
                Computer.append(tempInt)
                Available.remove(at: Available.firstIndex(of: tempInt)!)
            }
            if difficulty == "easy"{
                Computer.append(tempInt)
                Available.remove(at: Available.firstIndex(of: tempInt)!)
            }
        }
        else{
            if difficulty != "easy"{
                if (((Player.contains(1) && Player.contains(8)) || (Player.contains(9) && Player.contains(4)) || (Player.contains(8) && Player.contains(4))) && difficulty == "hard" && Available.count == 6 &&  Available.contains(7)){
                    Computer.append(7)
                    Available.remove(at: Available.firstIndex(of: 7)!)
                }
                else if (((Player.contains(1) && Player.contains(6)) || (Player.contains(9) && Player.contains(2)) || (Player.contains(6) && Player.contains(2))) && difficulty == "hard" && Available.count == 6 &&  Available.contains(3)){
                    Computer.append(3)
                    Available.remove(at: Available.firstIndex(of: 3)!)
                }
                else if (((Player.contains(7) && Player.contains(6)) || (Player.contains(3) && Player.contains(8)) || (Player.contains(6) && Player.contains(8))) && difficulty == "hard" && Available.count == 6 &&  Available.contains(9)){
                    Computer.append(9)
                    Available.remove(at: Available.firstIndex(of: 9)!)
                }
                else if (((Player.contains(3) && Player.contains(4)) || (Player.contains(7) && Player.contains(2)) || (Player.contains(2) && Player.contains(4))) && difficulty == "hard" && Available.count == 6 &&  Available.contains(1)){
                    Computer.append(1)
                    Available.remove(at: Available.firstIndex(of: 1)!)
                }
                else if (((Player.contains(1) && Player.contains(9)) || (Player.contains(7) && Player.contains(3))) && difficulty == "hard" && Available.count == 6 && Available.contains(random * 2)){
                    Computer.append(random * 2)
                    Available.remove(at: Available.firstIndex(of: (random * 2))!)
                }
                else if (Player.contains(5) && ((Player.contains(1) && Computer.contains(9)) || (Player.contains(3) && Computer.contains(7)) || (Player.contains(7) && Computer.contains(3)) || (Player.contains(9) && Computer.contains(1))) && Available.count == 6){
                    if Player.contains(1) || Player.contains(9){
                        if random2 == 1{
                            Computer.append(7)
                            Available.remove(at: Available.firstIndex(of: 7)!)
                        }
                        else{
                            Computer.append(3)
                            Available.remove(at: Available.firstIndex(of: 3)!)
                        }
                    }
                    if Player.contains(3) || Player.contains(7){
                        if random2 == 1{
                            Computer.append(1)
                            Available.remove(at: Available.firstIndex(of: 1)!)
                        }
                        else{
                            Computer.append(9)
                            Available.remove(at: Available.firstIndex(of: 9)!)
                        }
                    }
                }
                else if ((Computer.contains(2) && Computer.contains(3))||(Computer.contains(4) && Computer.contains(7))||(Computer.contains(5) && Computer.contains(9))) && Available.contains(1){
                    Computer.append(1)
                    Available.remove(at: Available.firstIndex(of: 1)!)
                }
                else if ((Computer.contains(1) && Computer.contains(3))||(Computer.contains(5) && Computer.contains(8))) && Available.contains(2){
                    Computer.append(2)
                    Available.remove(at: Available.firstIndex(of: 2)!)
                }
                else if ((Computer.contains(1) && Computer.contains(2))||(Computer.contains(6) && Computer.contains(9))||(Computer.contains(5) && Computer.contains(7))) && Available.contains(3){
                    Computer.append(3)
                    Available.remove(at: Available.firstIndex(of: 3)!)
                }
                else if((Computer.contains(1) && Computer.contains(7))||(Computer.contains(5) && Computer.contains(6))) && Available.contains(4){
                    Computer.append(4)
                    Available.remove(at: Available.firstIndex(of: 4)!)
                }
                else if ((Computer.contains(1) && Computer.contains(9)) || (Computer.contains(4) && Computer.contains(6)) || (Computer.contains(3) && Computer.contains(7))||(Computer.contains(2) && Computer.contains(8))) && Available.contains(5){
                    Computer.append(5)
                    Available.remove(at: Available.firstIndex(of: 5)!)
                }
                else if ((Computer.contains(5) && Computer.contains(4))||(Computer.contains(3) && Computer.contains(9))) && Available.contains(6){
                    Computer.append(6)
                    Available.remove(at: Available.firstIndex(of: 6)!)
                }
                else if ((Computer.contains(1) && Computer.contains(4))||(Computer.contains(8) && Computer.contains(9))||(Computer.contains(5) && Computer.contains(3))) && Available.contains(7){
                    Computer.append(7)
                    Available.remove(at: Available.firstIndex(of: 7)!)
                }
                else if ((Computer.contains(2) && Computer.contains(5))||(Computer.contains(9) && Computer.contains(7))) && Available.contains(8){
                    Computer.append(8)
                    Available.remove(at: Available.firstIndex(of: 8)!)
                }
                else if ((Computer.contains(7) && Computer.contains(8))||(Computer.contains(6) && Computer.contains(3))||(Computer.contains(5) && Computer.contains(1))) && Available.contains(9){
                    Computer.append(9)
                    Available.remove(at: Available.firstIndex(of: 9)!)
                }
                else if ((Player.contains(2) && Player.contains(3))||(Player.contains(4) && Player.contains(7))||(Player.contains(5) && Player.contains(9))) && Available.contains(1){
                    Computer.append(1)
                    Available.remove(at: Available.firstIndex(of: 1)!)
                }
                else if ((Player.contains(1) && Player.contains(3))||(Player.contains(5) && Player.contains(8))) && Available.contains(2){
                    Computer.append(2)
                    Available.remove(at: Available.firstIndex(of: 2)!)
                }
                else if ((Player.contains(1) && Player.contains(2))||(Player.contains(6) && Player.contains(9))||(Player.contains(5) && Player.contains(7))) && Available.contains(3){
                    Computer.append(3)
                    Available.remove(at: Available.firstIndex(of: 3)!)
                }
                else if((Player.contains(1) && Player.contains(7))||(Player.contains(5) &&
                                                                     Player.contains(6))) && Available.contains(4){
                    Computer.append(4)
                    Available.remove(at: Available.firstIndex(of: 4)!)
                }
                else if ((Player.contains(1) && Player.contains(9)) || (Player.contains(4) && Player.contains(6)) || (Player.contains(3) && Player.contains(7))||(Player.contains(2) && Player.contains(8))) && Available.contains(5){
                    Computer.append(5)
                    Available.remove(at: Available.firstIndex(of: 5)!)
                }
                else if ((Player.contains(5) && Player.contains(4))||(Player.contains(3) && Player.contains(9))) && Available.contains(6){
                    Computer.append(6)
                    Available.remove(at: Available.firstIndex(of: 6)!)
                }
                else if ((Player.contains(1) && Player.contains(4))||(Player.contains(8) && Player.contains(9))||(Player.contains(5) && Player.contains(3))) && Available.contains(7){
                    Computer.append(7)
                    Available.remove(at: Available.firstIndex(of: 7)!)
                }
                else if ((Player.contains(2) && Player.contains(5))||(Player.contains(9) && Player.contains(7))) && Available.contains(8){
                    Computer.append(8)
                    Available.remove(at: Available.firstIndex(of: 8)!)
                }
                else if ((Player.contains(7) && Player.contains(8))||(Player.contains(6) && Player.contains(3))||(Player.contains(5) && Player.contains(1))) && Available.contains(9){
                    Computer.append(9)
                    Available.remove(at: Available.firstIndex(of: 9)!)
                }
                else {
                    if Available.isEmpty == false{
                        Computer.append(tempInt)
                        Available.remove(at: Available.firstIndex(of: tempInt)!)
                    }
                }
                
            }
            if difficulty == "easy"{
                if Available.isEmpty == false{
                    Computer.append(tempInt)
                    Available.remove(at: Available.firstIndex(of: tempInt)!)
                }
            }
        }
    }
    func reset(){
        if gameEnded {
            board = [boardStruct(piece:"square.fill", color: Color.white),boardStruct(piece:"square.fill", color: Color.white),boardStruct(piece:"square.fill", color: Color.white),boardStruct(piece:"square.fill", color: Color.white),boardStruct(piece:"square.fill", color: Color.white),boardStruct(piece:"square.fill", color: Color.white),boardStruct(piece:"square.fill", color: Color.white),boardStruct(piece:"square.fill", color: Color.white),boardStruct(piece:"square.fill", color: Color.white)]
            Player = []
            Computer = []
            Available = [1,2,3,4,5,6,7,8,9]
            gameEnded = false
        }
    }
    func win(){
        if gameEnded == false{
            if (Player.contains(2) && Player.contains(8) && Player.contains(5)) || (Player.contains(1) && Player.contains(9) && Player.contains(5)) || (Player.contains(3) && Player.contains(7) && Player.contains(5)) || (Player.contains(4) && Player.contains(6) && Player.contains(5)) || (Player.contains(1) && Player.contains(2) && Player.contains(3)) || (Player.contains(7) && Player.contains(8) && Player.contains(9)) || (Player.contains(1) && Player.contains(4) && Player.contains(7)) || (Player.contains(3) && Player.contains(6) && Player.contains(9)){
                gameEnded = true
                ResultAlert = true
                ResultMessage = "WINNER"
                wins += 1
                if winsSize <= 46{
                    winsSize += 2
                    tiesSize -= 2
                    lossesSize -= 2
                }
            }
            else if (Computer.contains(2) && Computer.contains(8) && Computer.contains(5)) || (Computer.contains(1) && Computer.contains(9) && Computer.contains(5)) || (Computer.contains(3) && Computer.contains(7) && Computer.contains(5)) || (Computer.contains(4) && Computer.contains(6) && Computer.contains(5)) || (Computer.contains(1) && Computer.contains(2) && Computer.contains(3)) || (Computer.contains(7) && Computer.contains(8) && Computer.contains(9)) || (Computer.contains(1) && Computer.contains(4) && Computer.contains(7)) || (Computer.contains(3) && Computer.contains(6) && Computer.contains(9)){
                gameEnded = true
                ResultAlert = true
                ResultMessage = "LOOSER"
                losses += 1
                if lossesSize <= 46{
                    winsSize -= 2
                    tiesSize -= 2
                    lossesSize += 2
                }
            }
            else if Available.isEmpty{
                gameEnded = true
                ResultAlert = true
                ResultMessage = "TIE"
                ties += 1
                if tiesSize <= 46{
                    winsSize -= 2
                    tiesSize += 2
                    lossesSize -= 2
                }
            }
        }
    }
    func playerTap(position:Int){
        withAnimation{
            if gameEnded == false{
                if Available.contains(position){
                    Player.append(position)
                    Available.remove(at: Available.firstIndex(of: position)!)
                    win()
                    CompSelect()
                    win()
                    updateBoard()
                    reset()
                }
            }
        }
    }
    func updateBoard(){
        for number in 1...9{
            if Computer.contains(number){
                for themePicked in themes{
                    if themePicked.themeName == theme{
                        for typePicked in types{
                            if typePicked.typeName == type{
                                board[(number - 1)] = boardStruct(piece: typePicked.O, color: themePicked.O)
                            }
                        }
                    }
                }
            }
        }
        for number in 1...9{
            if Player.contains(number){
                for themePicked in themes{
                    if themePicked.themeName == theme{
                        for typePicked in types{
                            if typePicked.typeName == type{
                                board[(number - 1)] = boardStruct(piece: typePicked.X, color: themePicked.X)
                            }
                        }
                    }
                }
            }
        }
    }
    func ComputerFirstHard(){
                let randomInt = Int.random(in: 1...3)
                    if Player.contains(5){
                        switch randomInt{
                        case 1:
                            Computer.append(1)
                            Available.remove(at: Available.firstIndex(of: 1)!)
                        case 2:
                            Computer.append(3)
                            Available.remove(at: Available.firstIndex(of: 3)!)
                        case 3:
                            Computer.append(7)
                            Available.remove(at: Available.firstIndex(of: 7)!)
                        default:
                            Computer.append(9)
                            Available.remove(at: Available.firstIndex(of: 9)!)
                        }
                    }
                    else{
                        Computer.append(5)
                        Available.remove(at: Available.firstIndex(of: 5)!)
                    }
            }
}
struct themeStruct:Hashable{
    var themeName:String
    var X:Color
    var O:Color
}
struct boardStruct{
    var piece:String
    var color:Color
}
struct pieceTypeStruct:Hashable{
    var typeName:String
    var X:String
    var O:String
}
