//
//  RockPaperScissors - ChoiceOfRockPaperScissors.swift
//  Created by 혜모리, 무리 on 2022.12.27
//

func choiceRockPaperScissors() -> Int? {
    print("가위(1), 바위(2), 보(3)! <종료 : 0> : ", terminator: "")
    
    guard let userInput = readLine(), userInput != "" else {
        print("잘못된 입력입니다. 다시 시도해주세요.")
        return choiceRockPaperScissors()
    }

    return Int(userInput)
}

func checkRockPaperScissors(number: Int?) -> Int {
    guard let rockPaperScissorsNumber = number,
            rockPaperScissorsNumber >= 0,
            rockPaperScissorsNumber <= 3
    else {
        print("잘못된 입력입니다. 다시 시도해주세요.")
        return checkRockPaperScissors(number: choiceRockPaperScissors())
    }
    
    return rockPaperScissorsNumber
}

func createComputerRockPaperScissors() -> Int {
    let computerNumber = Int.random(in: 1...3)
    
    return computerNumber
}
