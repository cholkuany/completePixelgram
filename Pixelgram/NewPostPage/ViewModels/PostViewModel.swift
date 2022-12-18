
import Foundation
import Alamofire

class PostViewModel : ObservableObject {
    @Published var uploaded : Bool = false
    private let alamoManager : AlamoManagerProtocol
    
    init (alamoManager: AlamoManagerProtocol = AlamoManager(baseUrl: "http://34.134.148.105")){
        self.alamoManager = alamoManager
    }

    func postComment(picture: Data, message: String, token: String){

        
        let headers: HTTPHeaders = [.contentType("multipart/form-data"), .authorization(bearerToken: token)]
        
        alamoManager.upload(resource: "posts", params: nil, image: picture, text: message, headers: headers) { data, status in
            if status == 200{
                self.uploaded = true
            }
        }
        
    }
}
