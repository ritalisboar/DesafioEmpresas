//
//  LoginPresenter.swift
//  DesafioEmpresas
//
//  Created by Rita Lisboa on 13/04/22.
//

import Foundation
import UIKit

var accessToken = ""
var uid = ""
var client = ""

func loginRequest(email: String, password: String) {
    let params = [
        "email": email,
        "password": password
    ]
    
    let baseURL = URL(string: "https://empresas.ioasys.com.br/api/v1/users/auth/sign_in")!
    
    var urlRequest = URLRequest(url: baseURL)
    urlRequest.allHTTPHeaderFields = ["application/json": "Content-Type"]
    urlRequest.httpMethod = "POST"
    
    let postString = params.map { "\($0.0)=\($0.1)" }.joined(separator: "&")
    
    urlRequest.httpBody = postString.data(using: String.Encoding.utf8)
    
    URLSession.shared.dataTask(with: urlRequest) {data, response, error in
        if let error = error {
            print(error.localizedDescription)
        } else if let data = data {
            do {
                if let httpResponse = response as? HTTPURLResponse {
                    (200...299).contains(httpResponse.statusCode)
                    print("StatusCode:", httpResponse.statusCode)
                    accessToken = httpResponse.allHeaderFields["access-token"] as! String
                    uid = httpResponse.allHeaderFields["uid"] as! String
                    client = httpResponse.allHeaderFields["client"] as! String
                    print("ACCESS-TOKEN", accessToken)
                    print("UID", uid)
                    print("CLIENT", client)
                    
                } else {
                    print("Invalid Response received from the server")
                    return
                }
        
                let response = try JSONSerialization.jsonObject(with: data, options: [])
//                print(response)
                
                let object = try JSONDecoder().decode(UserParams.self, from: data)
                                
                print("enterprise:", object.enterprise)
                print("success:", object.success)
                print("investor:", object.investor)
//                print("portfolio:", object.investor.portfolio)
                

                
            } catch {
                print(error.localizedDescription)
            }
        }
    }.resume()
    
}
