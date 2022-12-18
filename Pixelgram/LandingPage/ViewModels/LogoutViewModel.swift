//
//  LogoutViewModel.swift
//  Pixelgram
//
//  Created by M_2217304 on 8/31/22.
//

import Foundation
import Alamofire

class LogoutViewModel {
    
    private let alamoManager : AlamoManagerProtocol
    
    init(alamoManager: AlamoManagerProtocol = AlamoManager(baseUrl: "http://34.134.148.105")){
        self.alamoManager = alamoManager
    }
    
    static let authenticationVM = AuthenticationViewModel(alamoManager: AlamoManager(baseUrl: "http://34.134.148.105"))
    static let registerVM = RegistrationViewModel(alamoManager: AlamoManager(baseUrl: "http://34.134.148.105"))
    
    static func getRefreshToken() -> String {
        let refresh_token = authenticationVM.refresh_token ?? (registerVM.refresh_token ?? "")
        print("refresh_token \(refresh_token)")
        return refresh_token
    }
    
    func logout(refresh_token: String) {
       
        
        let headers: HTTPHeaders = [.contentType("application/x-www-form-urlencoded")]
        
        let url = "oauth/logout"
        let params: [String : String] = ["refresh_token" : refresh_token]

        alamoManager.post(resource: url, params: params, headers: headers, completion: { status in })
    }
}
