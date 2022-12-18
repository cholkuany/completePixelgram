//
//  Registration.swift
//  Pixelgram
//
//  Created by Peter on 8/17/22.
//

import Foundation
import Alamofire

class RegistrationViewModel : ObservableObject {
    
    /// Function to make the API call for user registration
    /// - Parameters:
    ///   - username: string, pass in textField input for username
    ///   - password: string, pass in secureField input for password
    ///   - completionHandler: take statusCode returned by the API and parse the response accordingly then returns the access toten (Succcessful) or error message (Unsucccessful)
    ///
    
    private let alamoManger : AlamoManagerProtocol
    @Published var refresh_token: String?
    @Published var successfullRegistation = false
    
    init(alamoManager: AlamoManagerProtocol = AlamoManager(baseUrl: "http://34.134.148.105")){
        self.alamoManger = alamoManager
    }
    
   func register(username: String, password: String, completionHandler: @escaping (Int, String) -> Void){
        
        let headers: HTTPHeaders = [.contentType("application/x-www-form-urlencoded")]
        let url = "oauth/register"
        
       alamoManger.post(resource: url, params: ["username": username, "password": password], headers: headers, completion: { data, status in
           do {
               if status == 200 {
                   //MARK: PARSE RESPONSE AS ResponseData_Registration200 IF STATUSCODE == 200 AND TAKE ACCESS TOKEN
                   let resp = try JSONDecoder().decode(ResponseData_Registration200.self, from: data)
                   self.successfullRegistation = true
                   self.refresh_token = resp.refresh_token
                   completionHandler(200, resp.access_token)
               }else {
                   //MARK: PARSE RESPONSE AS ResponseData_RegistrationNon200 IF STATUSCODE != 200 AND TAKE ERROR MESSAGE
                   let resp = try JSONDecoder().decode(ResponseData_RegistrationNon200.self, from: data)
                   completionHandler(status, resp.message)
                   self.successfullRegistation = false
               }
           }catch {
               print("Error decoding")
           }
       })
    
    }
}


