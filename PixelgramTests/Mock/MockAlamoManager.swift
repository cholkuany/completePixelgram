import Foundation
import Alamofire
@testable import Pixelgram

final class MockAlamoManager: AlamoManagerProtocol {
    
    static let shared = MockAlamoManager(baseUrl: "http://34.134.148.105")
    var baseUrl : String
    var data : Data?
    var status : Int?
    
    private init(baseUrl : String) {
        self.baseUrl = baseUrl
    }
    
    func getData<T>(resource: String, of: T.Type,
                    params: Parameters?,
                    headers: HTTPHeaders?,
                    completion: @escaping (T?) -> Void) where T : Decodable {
        
        let decoder = JSONDecoder()
        let decodedData = try! decoder.decode(T.self, from: data!)
        
        completion(decodedData)
    }
    
    func post(resource: String,
                           params: Parameters?,
                           headers: HTTPHeaders?,
                           completion: @escaping (Data, Int) -> Void) {
        
        completion(data!, status!)
        
    }
    

    func upload(resource: String, params: Parameters?,image: Data,text: String, headers: HTTPHeaders?, completion: @escaping (Data,Int) -> Void) {
       completion(data!,status!)
    }
    

    func post(resource: String,
              params: Parameters?,
              headers: HTTPHeaders?,
              completion: @escaping (Int) -> Void) {
        completion(status!)
    }
}
