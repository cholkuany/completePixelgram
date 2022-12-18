//
//  MockLogoutData.swift
//  PixelgramTests
//
//  Created by MAC on 2022-09-01.
//

import Foundation

class MockLogoutData{
    
    func mockSucessfulLogout(refresh_token : String) -> Int{
        if (refresh_token ==  "eyJhbGciOiJIUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJhODcxNmY2NC1iNWFlLTQ3NjctYTViMS0zYmZiMzg1ZGRkNjYifQ.eyJleHAiOjE2NjE1MjA4OTQsImlhdCI6MTY2MTUxOTA5NCwianRpIjoiYjNhZDU3NGQtM2I0Mi00YzEwLWIyMjgtM2NkYWFkNjY4NTQ1IiwiaXNzIjoiaHR0cHM6Ly9lbmFibGVtZW50LWtleWNsb2FrLndvcmsuY29nbml6YW50LnN0dWRpby9hdXRoL3JlYWxtcy9QaXhlbGdyYW0tTW9ub2xpdGgiLCJhdWQiOiJodHRwczovL2VuYWJsZW1lbnQta2V5Y2xvYWsud29yay5jb2duaXphbnQuc3R1ZGlvL2F1dGgvcmVhbG1zL1BpeGVsZ3JhbS1Nb25vbGl0aCIsInN1YiI6IjM1OTgxZmNiLTRiYTEtNGVlOC04NzU1LWU5NjZmZjM0ZTNkNyIsInR5cCI6IlJlZnJlc2giLCJhenAiOiJwaXhlbGdyYW0tbW9ub2xpdGgtYmFja2VuZCIsInNlc3Npb25fc3RhdGUiOiJmOTM3ZGNiZS03YjI2LTRlMjQtOTMxYi00MDdhYTllN2FiMDciLCJzY29wZSI6ImVtYWlsIHByb2ZpbGUifQ.GuiicomqW1nU7tww8QNzHQjsfL3MTx-U2qloQZv1GWY"){
            
            return 200
            
        } else {
            return 500
        }
    }
}
