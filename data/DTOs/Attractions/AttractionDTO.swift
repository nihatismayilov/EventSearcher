//
//  AttractionDTO.swift
//  data
//
//  Created by Nazim Asadov on 30.08.22.
//

import Foundation
import domain

struct AttractionDTO: Codable, Equatable {
    static func == (lhs: AttractionDTO, rhs: AttractionDTO) -> Bool {
        lhs.embedded == rhs.embedded
    }
    
    let embedded: Embedded
    let links: WelcomeLinks
    let page: Page

    enum CodingKeys: String, CodingKey {
        case embedded = "_embedded"
        case links = "_links"
        case page
    }
    
//    func toDomain() -> Attractions {
//        return Attractions(embedded: embedded, links: links, page: page)
//    }
}

// MARK: - Embedded
struct Embedded: Codable, Equatable {
    static func == (lhs: Embedded, rhs: Embedded) -> Bool {
        lhs.attractions == rhs.attractions
    }
    
    let attractions: [Attraction]
}

// MARK: - Attraction
struct Attraction: Codable, Equatable {
    static func == (lhs: Attraction, rhs: Attraction) -> Bool {
        lhs.id == rhs.id
    }
    
    let name: String
    let type: TypeEnum
    let id: String
    let test: Bool
    let url: String
    let locale: Locale
    let images: [Image]
    let classifications: [Classification]
    let upcomingEvents: UpcomingEvents
    let links: AttractionLinks
    let externalLinks: ExternalLinks?
    let aliases: [String]?

    enum CodingKeys: String, CodingKey {
        case name, type, id, test, url, locale, images, classifications, upcomingEvents
        case links = "_links"
        case externalLinks, aliases
    }
}

// MARK: - Classification
struct Classification: Codable {
    let primary: Bool
    let segment, genre, subGenre, type: Genre
    let subType: Genre
    let family: Bool
}

// MARK: - Genre
struct Genre: Codable {
    let id, name: String
}

// MARK: - ExternalLinks
struct ExternalLinks: Codable {
    let twitter, wiki, facebook, instagram: [Facebook]
    let homepage: [Facebook]
    let youtube, itunes, lastfm, spotify: [Facebook]?
    let musicbrainz: [Musicbrainz]?
}

// MARK: - Facebook
struct Facebook: Codable {
    let url: String
}

// MARK: - Musicbrainz
struct Musicbrainz: Codable {
    let id: String
}

// MARK: - Image
struct Image: Codable {
    let ratio: Ratio
    let url: String
    let width, height: Int
    let fallback: Bool
}

enum Ratio: String, Codable {
    case the16_9 = "16_9"
    case the3_2 = "3_2"
    case the4_3 = "4_3"
}

// MARK: - AttractionLinks
struct AttractionLinks: Codable {
    let linksSelf: First

    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
    }
}

// MARK: - First
struct First: Codable {
    let href: String
}

enum Locale: String, Codable {
    case enUs = "en-us"
}

enum TypeEnum: String, Codable {
    case attraction = "attraction"
}

// MARK: - UpcomingEvents
struct UpcomingEvents: Codable {
    let total, ticketmaster, filtered: Int
    let tmr, mfxZa: Int?

    enum CodingKeys: String, CodingKey {
        case total = "_total"
        case ticketmaster
        case filtered = "_filtered"
        case tmr
        case mfxZa = "mfx-za"
    }
}

// MARK: - WelcomeLinks
struct WelcomeLinks: Codable {
    let first, linksSelf, next, last: First

    enum CodingKeys: String, CodingKey {
        case first
        case linksSelf = "self"
        case next, last
    }
}

// MARK: - Page
struct Page: Codable {
    let size, totalElements, totalPages, number: Int
}
