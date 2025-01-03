//
//  HttpClient.swift
//  DependencyInjectionExample
//
//  Created by poonam on 03/01/25.
//

import Foundation
class HttpClient {
    func getData(url: URL, completion: @escaping (_ data: Data?) -> Void) {
        URLSession.shared.dataTask(with: url) {
            (dataResponse,urlResponse,error) in
             completion(dataResponse)
        }.resume()
    }
}
