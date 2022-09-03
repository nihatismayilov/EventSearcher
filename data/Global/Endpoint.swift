//
//  Endpoint.swift
//  data
//
//  Created by Nazim Asadov on 03.09.22.
//

import Foundation

struct API {
    static let baseUrl = "https://app.ticketmaster.com/discovery/v2/"
    static let apiKey = "7EywVn2BCqtjA1NcEQNzrNxOKg8ICWXX#"
}

fileprivate enum App: String {
    case attraction = "attractions.json?"
    case event = "event/"
}

enum Endpoint {
    
    case attraction
    case event
        
    var path: String {
        switch self {
        case .attraction:
            return request(app: .attraction, key: API.apiKey)
        case .event:
            return "test"
        }
    }
    
    private func request(app: App, key: String) -> String {
        return API.baseUrl + app.rawValue + key
    }
}
