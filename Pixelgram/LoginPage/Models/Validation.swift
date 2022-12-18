//
//  Validation.swift
//  Pixelgram
//
//  Created by MAC on 2022-08-23.
//

import Foundation

class Validate {
    func validationNull(Username : String, Password : String) -> Bool{
        if (Username != "") && (Password != ""){
            return true
        } else {
            return false
        }
    }
    
    
}
