//
//  Attractions.swift
//  domain
//
//  Created by Nazim Asadov on 30.08.22.
//

import Foundation

public struct Attractions: Equatable  {
    public static func == (lhs: Attractions, rhs: Attractions) -> Bool {
        lhs.embedded == rhs.embedded
    }
    
    public let embedded: Embedded
    public let links: WelcomeLinks
    public let page: Page

    public init (embedded: Embedded, links: WelcomeLinks, page: Page) {
        self.embedded = embedded
        self.links = links
        self.page = page
    }
}

// MARK: - Embedded
public struct Embedded: Equatable {
    public static func == (lhs: Embedded, rhs: Embedded) -> Bool {
        rhs.attractions == lhs.attractions
    }
    
    public let attractions: [Attraction]
}

// MARK: - Attraction
public struct Attraction: Equatable  {
    public static func == (lhs: Attraction, rhs: Attraction) -> Bool {
        lhs.id == rhs.id
    }
    
   public let name: String
   public let type: TypeEnum
   public let id: String
   public let test: Bool
   public let url: String
   public let locale: Locale
   public let images: [Image]
   public let classifications: [Classification]
   public let upcomingEvents: UpcomingEvents
   public let links: AttractionLinks
   public let externalLinks: ExternalLinks?
   public let aliases: [String]?
}

// MARK: - Classification
public struct Classification  {
   public let primary: Bool
   public let segment, genre, subGenre, type: Genre
   public let subType: Genre
   public let family: Bool
}

// MARK: - Genre
public struct Genre  {
    public let id, name: String
}

// MARK: - ExternalLinks
public struct ExternalLinks  {
    public let twitter, wiki, facebook, instagram: [Facebook]
    public let homepage: [Facebook]
    public let youtube, itunes, lastfm, spotify: [Facebook]?
    public let musicbrainz: [Musicbrainz]?
}

// MARK: - Facebook
public struct Facebook  {
    public let url: String
}

// MARK: - Musicbrainz
public struct Musicbrainz  {
    public let id: String
}

// MARK: - Image
public struct Image  {
    public let ratio: Ratio
    public let url: String
    public let width, height: Int
    public let fallback: Bool
}

public enum Ratio: String{
     case the16_9
     case the3_2
     case the4_3
}

// MARK: - AttractionLinks
public struct AttractionLinks  {
    public let linksSelf: First
}

// MARK: - First
public struct First  {
    public let href: String
}

public enum Locale: String, Codable {
    case enUs = "en-us"
}

public enum TypeEnum: String, Codable {
    case attraction = "attraction"
}

// MARK: - UpcomingEvents
public struct UpcomingEvents  {
    public let total, ticketmaster, filtered: Int
    public let tmr, mfxZa: Int?

    public enum CodingKeys: String {
         case total
         case ticketmaster
         case filtered
         case tmr
         case mfxZa
    }
}

// MARK: - WelcomeLinks
public struct WelcomeLinks  {
    public let first, linksSelf, next, last: First
}

// MARK: - Page
public struct Page  {
    public let size, totalElements, totalPages, number: Int
}
