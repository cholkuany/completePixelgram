//
//  Authentication.swift
//  Pixelgram
//
//  Created by MAC on 2022-08-24.
//


import Foundation
import Alamofire

class AuthenticationViewModel: ObservableObject {
    @Published var authResponse : AuthResponseToken200?
    @Published var isLoggedIn : Bool = false
    @Published var refresh_token: String?
    
    private let alamoManager : AlamoManagerProtocol
    
    init (alamoManager: AlamoManagerProtocol = AlamoManager(baseUrl: "http://34.134.148.105")){
        self.alamoManager = alamoManager
    }
    
    func postRequest(username: String, password: String, completionHandler: @escaping (String, Int) -> Void){

        let url = "oauth/token"
        let param = AuthRequestForm(username: username, password: password)
        let headers: HTTPHeaders = [.contentType("application/x-www-form-urlencoded")]

        alamoManager.post(resource: url, params: ["username": username, "password": password], headers: headers, completion: {data, status in
            
            if status == 200 {

                do {
                    self.authResponse = try JSONDecoder().decode(AuthResponseToken200.self, from: data)
                    if let token: String = self.authResponse?.access_token {
                    self.isLoggedIn = true
                    completionHandler(token, status)
                }
                    if let tokenRefresh: String = self.authResponse?.refresh_token {
                        self.refresh_token = tokenRefresh
                    }
            }
                catch{
                    print(error)
                }
        } else {

            do {
                let response = try JSONDecoder().decode(AuthResponseTokenNon200.self, from: data)
                completionHandler(response.message, response.status)
            }
            catch{
                print(error)
            }
        }
            
        })
    }
    
}
