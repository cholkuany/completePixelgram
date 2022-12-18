//
//  InputValidation.swift
//  Pixelgram
//
//  Created by Xavier on 8/16/22.
//

import Foundation

class InputValidation {
    /// String comparison - to check if the strings in the inputs are equal to each other
    /// - Parameter inputs: an array of strings (pass in UI textfield/securefield inputs)
    /// - Returns: true when only one item in the array or ALL elements are the same
    static func areInputsSame(inputs: [String]) -> Bool {
        var isAllSame: Bool = true
        if inputs.count < 2 {
            return true
        } else {
            for i in 1...(inputs.count - 1) {
                if inputs[i - 1] != inputs[i] {
                    isAllSame = false
                }
            }
        }
        return isAllSame
    }
    /// Field Validation - to check if a string is "" or spaces
    /// - Parameter input: a string (pass in UI textfield/securefield inputs)
    /// - Returns: true when the string is "" or spaces
    static func isFieldEmptyOrBlank(input: String) -> Bool {
        var isEmpty: Bool = false
        var isBlank: Bool = false
        
        if input == "" {
            isEmpty = true
        } else {
            var countOfSpace = 0
            for char in input {
                if char == " " {
                    countOfSpace += 1
                }
            }
            if countOfSpace == input.count {
                isBlank = true
            }
        }
    
        return isEmpty || isBlank
    }
}
