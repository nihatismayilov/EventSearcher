//
//  Mapper.swift
//  data
//
//  Created by Nazim Asadov on 30.08.22.
//

import Foundation
import domain

extension AttractionDTO {
    func toDomain() -> Attractions {
        return Attractions(embedded: self.embedded, links: self.links, page: self.page)
    }
}
