//
//  MockLoginData.swift
//  PixelgramTests
//
//  Created by Sevag Gaprielian on 2022-08-29.
//

import Foundation

class MockLoginData {
    
    func mockSuccessfulLoginData() -> Data{
        
        let dataString : String = """
        {
          "access_token": "eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICIxa2MxRFV6UkhGczFlaXBfZ0daMG5QWHRTVkJCT3Y4Wjl5VVhsdVM4Y3owIn0.eyJleHAiOjE2NjE1MjA4OTQsImlhdCI6MTY2MTUxOTA5NCwianRpIjoiZTViZGU2NjgtNDBmNi00YmEwLWIxMjctODJmMGI4Zjc4MzdmIiwiaXNzIjoiaHR0cHM6Ly9lbmFibGVtZW50LWtleWNsb2FrLndvcmsuY29nbml6YW50LnN0dWRpby9hdXRoL3JlYWxtcy9QaXhlbGdyYW0tTW9ub2xpdGgiLCJhdWQiOiJhY2NvdW50Iiwic3ViIjoiMzU5ODFmY2ItNGJhMS00ZWU4LTg3NTUtZTk2NmZmMzRlM2Q3IiwidHlwIjoiQmVhcmVyIiwiYXpwIjoicGl4ZWxncmFtLW1vbm9saXRoLWJhY2tlbmQiLCJzZXNzaW9uX3N0YXRlIjoiZjkzN2RjYmUtN2IyNi00ZTI0LTkzMWItNDA3YWE5ZTdhYjA3IiwiYWNyIjoiMSIsInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsInVtYV9hdXRob3JpemF0aW9uIiwiZGVmYXVsdC1yb2xlcy1waXhlbGdyYW0tbW9ub2xpdGgtYmFja2VuZCIsInVzZXIiXX0sInJlc291cmNlX2FjY2VzcyI6eyJhY2NvdW50Ijp7InJvbGVzIjpbIm1hbmFnZS1hY2NvdW50IiwibWFuYWdlLWFjY291bnQtbGlua3MiLCJ2aWV3LXByb2ZpbGUiXX19LCJzY29wZSI6ImVtYWlsIHByb2ZpbGUiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsInByZWZlcnJlZF91c2VybmFtZSI6InJ1dGhmdWwifQ.bqOVKVGLFeh6DQDcgJF_4vsDS1H1aoX7ZHVtFEUpWPeFFEcu8gkIydZ3GddMDqNq4rdk_r6h-D19-OIec8XFbTzrc1YBH1zPcgVMYZxQqmpnlmnfxVlxB_Ake04Rxn88RZA5yLDY8bzI8ZTS0vDz0DEQfrCTk_jEYkLRseL1jy7ZJz8akBmUVGsjtjdsMIdW1Vlq3C-KaY5jIgyaExmoH9D38lv_ab75VhKtM9l68jwlgt32XFTBv36vDcCQjFUdHhrPcYbHt7n2KoP0_SRkgM3rz4JsHxmxTN94lthDmCOBk8rpbjWYWiJMVH56n7ojk3NAaV00RY7sZ3I_KeuWrg",
          "expires_in": 1800,
          "refresh_expires_in": 1800,
          "refresh_token": "eyJhbGciOiJIUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJhODcxNmY2NC1iNWFlLTQ3NjctYTViMS0zYmZiMzg1ZGRkNjYifQ.eyJleHAiOjE2NjE1MjA4OTQsImlhdCI6MTY2MTUxOTA5NCwianRpIjoiYjNhZDU3NGQtM2I0Mi00YzEwLWIyMjgtM2NkYWFkNjY4NTQ1IiwiaXNzIjoiaHR0cHM6Ly9lbmFibGVtZW50LWtleWNsb2FrLndvcmsuY29nbml6YW50LnN0dWRpby9hdXRoL3JlYWxtcy9QaXhlbGdyYW0tTW9ub2xpdGgiLCJhdWQiOiJodHRwczovL2VuYWJsZW1lbnQta2V5Y2xvYWsud29yay5jb2duaXphbnQuc3R1ZGlvL2F1dGgvcmVhbG1zL1BpeGVsZ3JhbS1Nb25vbGl0aCIsInN1YiI6IjM1OTgxZmNiLTRiYTEtNGVlOC04NzU1LWU5NjZmZjM0ZTNkNyIsInR5cCI6IlJlZnJlc2giLCJhenAiOiJwaXhlbGdyYW0tbW9ub2xpdGgtYmFja2VuZCIsInNlc3Npb25fc3RhdGUiOiJmOTM3ZGNiZS03YjI2LTRlMjQtOTMxYi00MDdhYTllN2FiMDciLCJzY29wZSI6ImVtYWlsIHByb2ZpbGUifQ.GuiicomqW1nU7tww8QNzHQjsfL3MTx-U2qloQZv1GWY",
          "token_type": "Bearer",
          "session_state": "f937dcbe-7b26-4e24-931b-407aa9e7ab07",
          "scope": "email profile",
          "not-before-policy": 1635199861
        }
        """
        
        let data = Data(dataString.utf8)
        
        return data
    }
    
    func mockUnsuccessfulLoginData() -> Data {
        
        let dataString : String = """
        {
          "timestamp": "2022-08-26T13:05:16.600+00:00",
          "status": 401,
          "error": "Unauthorized",
          "message": "Incorrect username or password",
          "path": "/oauth/token"
        }
        """
        
        let data = Data(dataString.utf8)
        
        return data
    }
    
}

