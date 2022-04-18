//
//  EmpresasPresenter.swift
//  DesafioEmpresas
//
//  Created by Rita Lisboa on 13/04/22.
//

import Foundation

func getEnterprises(token: String, client: String, uid: String) {
    let baseURL = URL(string: "https://empresas.ioasys.com.br/api/v1/enterprises")!
    
    var urlRequest = URLRequest(url: baseURL)
    
    urlRequest.allHTTPHeaderFields = ["Content-Type": "application/json"]
    urlRequest.httpMethod = "GET"
    urlRequest.setValue(token, forHTTPHeaderField: "access-token")
    urlRequest.setValue(client, forHTTPHeaderField: "client")
    urlRequest.setValue(uid, forHTTPHeaderField: "uid")
    
    URLSession.shared.dataTask(with: urlRequest) {data, response, error in
        if let error = error {
            print(error.localizedDescription)
        } else if let data = data {
            do {
                if let httpResponse = response as? HTTPURLResponse {
                    (200...299).contains(httpResponse.statusCode)
                    print("StatusCode:", httpResponse.statusCode)
                } else {
                    print("Invalid Response received from the server")
                    return
                }
                
                let response = try JSONSerialization.jsonObject(with: data, options: [])
                
                let object = try JSONDecoder().decode(PortfolioParams.self, from: data)
                
                print("id:", object.enterprises[0].id)
                print("email_enterprise:", object.enterprises[0].email_enterprise)
                print("facebook:", object.enterprises[0].facebook)
                print("twitter:", object.enterprises[0].twitter)
                print("linkedin:", object.enterprises[0].linkedin)
                print("phone:", object.enterprises[0].phone)
                print("own_enterprise:", object.enterprises[0].own_enterprise)
                print("enterprise_name:", object.enterprises[0].enterprise_name)
                print("description:", object.enterprises[0].description)
                print("share_price:", object.enterprises[0].share_price)
                
            } catch {
                print(error.localizedDescription)
            }
        }
    }.resume()
}


