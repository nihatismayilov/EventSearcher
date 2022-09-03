//
//  AttractionsDataSourceProtocol.swift
//  data
//
//  Created by Nazim Asadov on 03.09.22.
//

import Foundation
import Promises
protocol AttractionsRemoteDataSourceProtocol {
    func getAttractions() -> Promise<[AttractionDTO]>
}
