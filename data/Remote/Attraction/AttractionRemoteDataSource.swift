//
//  AttractionRemoteDataSource.swift
//  data
//
//  Created by Nazim Asadov on 03.09.22.
//

import Foundation
import Alamofire
import Promises

class AttractionRemoteDataSource: AttractionsRemoteDataSourceProtocol {
    
    let networkProvider: Session
    
    init(networkProvier: Session) {
        self.networkProvider = networkProvier
    }
    
     func getAttractions() -> Promise<[AttractionDTO]> {
        let promise = Promise<[AttractionDTO]>.pending()
        
        networkProvider.request(Endpoint.attraction.path, method: .get).responseDecodable(of: [AttractionDTO].self) { response in
            
            if let error = response.error {
                return promise.reject(error)
            }
            
            switch response.result {
            case .failure(let error):
                promise.reject(error)
            case .success(let attractions):
                print("LLog \(attractions)")
                promise.fulfill(attractions)
            }
        }
        return promise
    }
}
