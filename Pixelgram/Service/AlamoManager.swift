//  FetchPosts.swift
//  Pixelgram
//  Created by Sevag Gaprielian on 2022-08-16.

import Foundation
import Alamofire

protocol AlamoManagerProtocol {
    func getData<T : Decodable>(resource: String, of: T.Type, params: Parameters?, headers: HTTPHeaders?, completion: @escaping(T?) -> Void)
    
    func post(resource: String, params: Parameters?, headers: HTTPHeaders?, completion: @escaping(_ data: Data, _ status: Int) -> Void)
    

    func upload(resource: String, params: Parameters?,image: Data,text: String, headers: HTTPHeaders?, completion: @escaping (Data, Int) -> Void)

    func post(resource: String, params: Parameters?, headers: HTTPHeaders?, completion: @escaping(_ status: Int) -> Void)

}

class AlamoManager: AlamoManagerProtocol {
   
    static let shared = AlamoManager(baseUrl: "http://34.134.148.105")
    
    var baseUrl: String
    
    init(baseUrl: String){
           self.baseUrl = baseUrl
       }
    
    func getData<T : Decodable>(resource: String, of: T.Type, params: Parameters?, headers: HTTPHeaders?, completion: @escaping(T?) -> Void){
        AF.request("\(self.baseUrl)/\(resource)", method: .get, parameters: params!, encoding: URLEncoding.default, headers: headers)
            .validate()
            .responseDecodable(of: T.self) {
                response in
                if (response.value != nil){
                completion(response.value!)
                }
            }
    }
    
    func post(resource: String, params: Parameters?, headers: HTTPHeaders?, completion: @escaping (Data, Int) -> Void) {
        AF.request("\(self.baseUrl)/\(resource)", method: .post, parameters: params, encoding: URLEncoding.default, headers: headers).response { response in
            switch(response.result) {
            case .success(let data):
                //MARK: PARSE DATA IF CALL IS SUCCESSFUL
                guard let status = response.response?.statusCode else {return}
                completion(data!, status)
            case .failure(let error):
                //MARK: PRINT ERROR IF CALL IS UNSUCCESSFUL
                print(error.localizedDescription)
            }
        }
    }
    

    func upload(resource: String, params: Parameters?,image: Data,text: String, headers: HTTPHeaders?, completion: @escaping (Data, Int) -> Void) {
        AF.upload(multipartFormData: { multipartFormData in
         
                multipartFormData.append(image, withName: "image", fileName: "swift_file.png", mimeType: "image/jpg")
                multipartFormData.append(Data(text.utf8), withName: "message")
            
        }, to: "\(self.baseUrl)/\(resource)", method: .post, headers: headers).response{response in
            switch(response.result){
            case .success(let data):
                guard let status = response.response?.statusCode else {return}
                completion(data!, status)
            case .failure(let err):
                print(err.localizedDescription)
            }
            
        }
    }

    func post(resource: String, params: Parameters?, headers: HTTPHeaders?, completion: @escaping (Int) -> Void) {
        AF.request("\(self.baseUrl)/\(resource)", method: .post, parameters: params, encoding: URLEncoding.default, headers: headers).response { response in
            switch(response.result) {
            case .success(let data):
                //MARK: RETURN STATUSCODE IF CALL IS SUCCESSFUL
                guard let status = response.response?.statusCode else {return}
                completion(status)
            case .failure(let error):
                //MARK: PRINT ERROR IF CALL IS UNSUCCESSFUL
                print(error.localizedDescription)
            }
        }
    }
}
