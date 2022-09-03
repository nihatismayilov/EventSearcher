//
//  DataAssembly.swift
//  data
//
//  Created by Nazim Asadov on 30.08.22.
//

import Foundation
import Swinject
import Alamofire

class DataAssembly: Assembly {
    func assemble(container: Container) {
        container.register(Session.self) { _ in
            return AF
        }
        
        container.register(AttractionRemoteDataSource.self) { r in
            return
        }
        
        
    }
    
    
}
