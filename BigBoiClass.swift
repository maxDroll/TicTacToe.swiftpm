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
    @Published var Combos = [combos(aspect1: 1, aspect2: 2, aspect3: 3),combos(aspect1: 1, aspect2: 5, aspect3: 9),combos(aspect1: 1, aspect2: 4, aspect3: 7),combos(aspect1: 2, aspect2: 5, aspect3: 8),combos(aspect1: 3, aspect2: 6, aspect3: 9),combos(aspect1: 3, aspect2: 5, aspect3: 7),combos(aspect1: 4, aspect2: 5, aspect3: 6),combos(aspect1: 7, aspect2: 8, aspect3: 9)]
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
    @Published var themes = [themeStruct(themeName: "Classic", X: Color.blue, O: Color.red),themeStruct(themeName: "Pinkurple", X: Color.pink, O: Color.purple),themeStruct(themeName: "Greens", X: Color.green, O: Color.mint),themeStruct(themeName: "Hersey", X: Color.orange, O: Color.brown),themeStruct(themeName: "Christmas", X: Color.red, O: Color.green),themeStruct(themeName: "Batman", X: Color.yellow, O: Color.black), themeStruct(themeName: "Greens", X: Color.purple, O: Color.green), themeStruct(themeName: "Airy", X: Color.blue.opacity(0.2), O: Color.pink.opacity(0.2)),themeStruct(themeName: "Rellow", X: Color.red, O: Color.yellow),themeStruct(themeName: "Invisible", X: Color.white, O: Color.white),themeStruct(themeName: "BG", X: Color.blue.opacity(1.5), O: Color.orange
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    )
    ,themeStruct(themeName: "Evil", X: Color.cyan, O: Color.gray),themeStruct(themeName: "ElkGrove", X: Color.green, O: Color.yellow),themeStruct(themeName: "Stinky", X: Color.brown, O: Color.brown.opacity(0.5))]


    
    @Published var SpecialCombos = [combos(aspect1: 1, aspect2: 8, aspect3: 7),combos(aspect1: 9, aspect2: 4, aspect3: 7),combos(aspect1: 8, aspect2: 4, aspect3: 7),combos(aspect1: 1, aspect2: 6, aspect3: 3),combos(aspect1: 9, aspect2: 2, aspect3: 3),combos(aspect1: 6, aspect2: 2, aspect3: 3),combos(aspect1: 7, aspect2: 6, aspect3: 9),combos(aspect1: 3, aspect2: 8, aspect3: 9),combos(aspect1: 6, aspect2: 8, aspect3: 9),combos(aspect1: 3, aspect2: 4, aspect3: 1),combos(aspect1: 7, aspect2: 2, aspect3: 1),combos(aspect1: 2, aspect2: 4, aspect3: 1)]

    @Published var theme = "Classic"
    @Published var types = [pieceTypeStruct(typeName: "Classic", X: "xmark", O: "circle"),pieceTypeStruct(typeName: "Sports", X: "tennisball", O: "football"),pieceTypeStruct(typeName: "Organs", X: "lungs", O: "brain"),pieceTypeStruct(typeName: "Tools", X: "wrench", O: "hammer"),pieceTypeStruct(typeName: "Celestial", X: "sun.max", O: "powersleep"),pieceTypeStruct(typeName: "Pets", X: "cat", O: "dog.fill"),pieceTypeStruct(typeName: "Clouds", X: "cloud", O: "cloud.fill"),pieceTypeStruct(typeName: "Rackets", X: "figure.pickleball", O: "figure.tennis"), pieceTypeStruct(typeName: "Handi's", X: "figure.golf", O: "figure.roll.runningpace"),  pieceTypeStruct(typeName: "Party", X: "fireworks", O: "party.popper"),  pieceTypeStruct(typeName: "IcyHot", X: "snowflake", O: "flame"), pieceTypeStruct(typeName: "Fight", X: "figure.kickboxing", O: "figure.martial.arts"), pieceTypeStruct(typeName: "Lift", X: "dumbbell", O: "figure.strengthtraining.traditional"), pieceTypeStruct(typeName: "Happy", X: "face.smiling", O: "face.smiling.fill"),pieceTypeStruct(typeName: "Thinkers", X: "brain.head.profile", O: "brain.head.profile.fill"),pieceTypeStruct(typeName: "Hippies", X: "peacesign", O: "figure.socialdance"),pieceTypeStruct(typeName: "Birdie", X: "swift", O: "swiftdata")]

    @Published var type = "Classic"
    func detect(random:Int){
            var stopLooking = false
            for aspect in Combos{
                if (Computer.contains(aspect.aspect1) && Computer.contains(aspect.aspect2) && Available.contains(aspect.aspect3) && stopLooking == false){
                    Computer.append(aspect.aspect3)
                    Available.remove(at: Available.firstIndex(of: aspect.aspect3)!)
                    stopLooking = true
                }
                if (Computer.contains(aspect.aspect2) && Computer.contains(aspect.aspect3) && Available.contains(aspect.aspect1) && stopLooking == false){
                    Computer.append(aspect.aspect1)
                    Available.remove(at: Available.firstIndex(of: aspect.aspect1)!)
                    stopLooking = true
                }
                if (Computer.contains(aspect.aspect1) && Computer.contains(aspect.aspect3) && Available.contains(aspect.aspect2) && stopLooking == false){
                    Computer.append(aspect.aspect2)
                    Available.remove(at: Available.firstIndex(of: aspect.aspect2)!)
                    stopLooking = true
                }
            }
            for aspect in Combos{
                if (Player.contains(aspect.aspect1) && Player.contains(aspect.aspect2) && Available.contains(aspect.aspect3) && stopLooking == false){
                    Computer.append(aspect.aspect3)
                    Available.remove(at: Available.firstIndex(of: aspect.aspect3)!)
                    stopLooking = true
                }
                if (Player.contains(aspect.aspect2) && Player.contains(aspect.aspect3) && Available.contains(aspect.aspect1) && stopLooking == false){
                    Computer.append(aspect.aspect1)
                    Available.remove(at: Available.firstIndex(of: aspect.aspect1)!)
                    stopLooking = true
                }
                if (Player.contains(aspect.aspect1) && Player.contains(aspect.aspect3) && Available.contains(aspect.aspect2) && stopLooking == false){
                    Computer.append(aspect.aspect2)
                    Available.remove(at: Available.firstIndex(of: aspect.aspect2)!)
                    stopLooking = true
                }
            }
            if Available.isEmpty == false && stopLooking == false{
                Computer.append(random)
                Available.remove(at: Available.firstIndex(of: random)!)
            }
        }
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
                if difficulty == "hard"{
                    var stopLooking = false
                    for aspect in SpecialCombos{
                        if  Player.contains(aspect.aspect1) && Player.contains(aspect.aspect2) && Available.count == 6 && Available.contains(aspect.aspect3) && stopLooking == false{
                            Computer.append(aspect.aspect3)
                            Available.remove(at: Available.firstIndex(of: aspect.aspect3)!)
                            stopLooking = true
                        }
                    }
                    if (((Player.contains(1) && Player.contains(9)) || (Player.contains(7) && Player.contains(3))) && Available.count == 6 && Available.contains(random * 2) && stopLooking == false){
                        Computer.append(random * 2)
                        Available.remove(at: Available.firstIndex(of: (random * 2))!)
                    }
                    else if (Player.contains(5) && ((Player.contains(1) && Computer.contains(9)) || (Player.contains(3) && Computer.contains(7)) || (Player.contains(7) && Computer.contains(3)) || (Player.contains(9) && Computer.contains(1))) && Available.count == 6 && stopLooking == false){
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
                    else{
                        detect(random: tempInt)
                    }
                }
                
                else{
                    detect(random: tempInt)
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
                ResultMessage = "LOSER"
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
struct combos: Hashable{
    var aspect1: Int
    var aspect2: Int
    var aspect3: Int
}
