//
//  EvenDigitNumbersCount.swift
//  ProblemSolvingTechniques
//
//  Created by Admin on 18/09/20.
//  Copyright © 2020 Admin. All rights reserved.
//

//Given an array nums of integers, return how many of them contain an even number of digits.

import Foundation
class EvenDigitNumbersCount {
    func findNumbers(_ nums: [Int]) -> Int {
        var evenNumbers = 0
        for var i in nums {
            if i != 0 {
                var count = 0
                count = Int(log10(Double(i))) + 1

                if count%2 == 0 {
                    evenNumbers += 1
                }
                count = 0
            }
        }
        return evenNumbers
    }
    
}
