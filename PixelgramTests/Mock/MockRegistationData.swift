//
//  MockRegistationData.swift
//  PixelgramTests
//
//  Created by Sevag Gaprielian on 2022-08-25.
//

import Foundation

class MockRegistrationData {
    
    func mockRegistationData_200() -> Data {
        
        let dataString = """
        {
          "access_token": "eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICIxa2MxRFV6UkhGczFlaXBfZ0daMG5QWHRTVkJCT3Y4Wjl5VVhsdVM4Y3owIn0.eyJleHAiOjE2NjE0NDQ1MTUsImlhdCI6MTY2MTQ0MjcxNSwianRpIjoiZWM4MjBjYTctYmU0Mi00NGVlLTk2ZDQtZmYyOTExY2MxNWNiIiwiaXNzIjoiaHR0cHM6Ly9lbmFibGVtZW50LWtleWNsb2FrLndvcmsuY29nbml6YW50LnN0dWRpby9hdXRoL3JlYWxtcy9QaXhlbGdyYW0tTW9ub2xpdGgiLCJhdWQiOiJhY2NvdW50Iiwic3ViIjoiMzg2ZWMwM2ItYzNjMi00ODJhLWEyNTMtYzI3ZTBhYTUxZTcyIiwidHlwIjoiQmVhcmVyIiwiYXpwIjoicGl4ZWxncmFtLW1vbm9saXRoLWJhY2tlbmQiLCJzZXNzaW9uX3N0YXRlIjoiNzUxYjQzMGMtOTRkOS00MTk4LTkzN2QtODk4ZjJkOWJhYzVhIiwiYWNyIjoiMSIsInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsInVtYV9hdXRob3JpemF0aW9uIiwiZGVmYXVsdC1yb2xlcy1waXhlbGdyYW0tbW9ub2xpdGgtYmFja2VuZCJdfSwicmVzb3VyY2VfYWNjZXNzIjp7ImFjY291bnQiOnsicm9sZXMiOlsibWFuYWdlLWFjY291bnQiLCJtYW5hZ2UtYWNjb3VudC1saW5rcyIsInZpZXctcHJvZmlsZSJdfX0sInNjb3BlIjoiZW1haWwgcHJvZmlsZSIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwicHJlZmVycmVkX3VzZXJuYW1lIjoidGVzdDEyIn0.TwIg-XbKmNpAIlfsz0_u4aT9-qkUQCeftDtjAADhK1EMsO4Wl4niNRP08jZs56NZnZM3qBbEy_njX99yINSkoPEZU2paCixUXj9P8iIS3w_MH6-pjhyOVeZXO-6kRW2n0a7aSZ6op7ZA82nQOP5Bb3lmAjAfcb5aP6T7SI8A-q7dEmVKsTuhanj28iH0TvsvvuzGR5zp6zPCwqw_38TpA8g_Jw-lvdcZufAc-rcG1yw00Ruc-31MFjh5o9LdbTQHYUIMSD4UKL_XZ6TujYo8A8-XZRo8riaZOq2eDZF3_uleKmvpyUZkfVAaNpNt7ZLjDED5WPrLIW-xw8jWr8lZHA",
          "expires_in": 1800,
          "refresh_expires_in": 1800,
          "refresh_token": "eyJhbGciOiJIUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJhODcxNmY2NC1iNWFlLTQ3NjctYTViMS0zYmZiMzg1ZGRkNjYifQ.eyJleHAiOjE2NjE0NDQ1MTUsImlhdCI6MTY2MTQ0MjcxNSwianRpIjoiYTQ3NzUyM2MtNWQ3Yy00ZjA4LWJmYjMtNTRhZmYyNDA2Y2JhIiwiaXNzIjoiaHR0cHM6Ly9lbmFibGVtZW50LWtleWNsb2FrLndvcmsuY29nbml6YW50LnN0dWRpby9hdXRoL3JlYWxtcy9QaXhlbGdyYW0tTW9ub2xpdGgiLCJhdWQiOiJodHRwczovL2VuYWJsZW1lbnQta2V5Y2xvYWsud29yay5jb2duaXphbnQuc3R1ZGlvL2F1dGgvcmVhbG1zL1BpeGVsZ3JhbS1Nb25vbGl0aCIsInN1YiI6IjM4NmVjMDNiLWMzYzItNDgyYS1hMjUzLWMyN2UwYWE1MWU3MiIsInR5cCI6IlJlZnJlc2giLCJhenAiOiJwaXhlbGdyYW0tbW9ub2xpdGgtYmFja2VuZCIsInNlc3Npb25fc3RhdGUiOiI3NTFiNDMwYy05NGQ5LTQxOTgtOTM3ZC04OThmMmQ5YmFjNWEiLCJzY29wZSI6ImVtYWlsIHByb2ZpbGUifQ.obsW9lPrSDOGIg9T1vcn3StlP1A4AZ4hN6CLAziEHeE",
          "token_type": "Bearer",
          "session_state": "751b430c-94d9-4198-937d-898f2d9bac5a",
          "scope": "email profile",
          "not-before-policy": 1633553885
        }
        """
        
        let data = Data(dataString.utf8)
        
        return data
    }
    
    func mockRegistrationData_400() -> Data {
        
        let dataString = """
        {
            "timestamp": "2022-08-25T15:51:29.928+00:00",
            "status": 400,
            "error": "Bad Request",
            "message": "Username: test is already taken",
            "path": "/oauth/register"
        }
        """
        
        let data = Data(dataString.utf8)
        
        return data
    }
    
}


