//
//  EventClass.swift
//  DependencyInjectionExample
//
//  Created by poonam on 03/01/25.
//

import Foundation
struct EndPoint{
    static let url = ""
}
class EventClass {
    var client: HttpClient?
    init(_ client: HttpClient) {
        self.client = client
    }
    func getEventRecord(){
        client?.getData(url: URL(string: EndPoint.url)!) { data in
            if data?.count != 0 {
                debugPrint("data",data?.count)
            }
        }
    }
}
