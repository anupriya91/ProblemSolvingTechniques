//
//  ConsecutiveOnes.swift
//  ProblemSolvingTechniques
//
//  Created by Admin on 17/09/20.
//  Copyright © 2020 Admin. All rights reserved.
//
//Given a binary array, find the maximum number of consecutive 1s in this array.


import Foundation
class ConsecutiveOnes {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var current : Int = 0
        var maxConsecutiveOne : Int = 0
        for i in nums {
            if i == 1 {
                current += 1
            } else {
                if current > maxConsecutiveOne {
                    maxConsecutiveOne = current
                }
                if maxConsecutiveOne > nums.count/2 {
                    return maxConsecutiveOne
                }
                current = 0
            }
        }
        return maxConsecutiveOne > current ? maxConsecutiveOne : current
    }
}
