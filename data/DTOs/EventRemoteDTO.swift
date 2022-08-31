//
//  EventRemoteDTO.swift
//  data
//
//  Created by Nazim Asadov on 30.08.22.
//

//import Foundation
//
//// MARK: - Welcome
//struct EventRemoteDTO: Codable {
//    let links: AttractionLinks
//    let embedded: WelcomeEmbedded
//
//    enum CodingKeys: String, CodingKey {
//        case links = "_links"
//        case embedded = "_embedded"
//    }
//}
//
//// MARK: - WelcomeEmbedded
//struct WelcomeEmbedded: Codable {
//    let venues: [FluffyVenue]
//    let attractions: [PurpleAttraction]
//    let events, products: [Event]
//}
//
//// MARK: - PurpleAttraction
//struct PurpleAttraction: Codable {
//    let name: String
//    let type: AttractionType
//    let id: String
//    let url: String
//    let locale: Locale
//    let images: [Image]
//    let classifications: [Classification]
//    let upcomingEvents: UpcomingEvents
//    let links: AttractionLinks
//    let externalLinks: PurpleExternalLinks?
//    let aliases: [String]?
//
//    enum CodingKeys: String, CodingKey {
//        case name, type, id, url, locale, images, classifications, upcomingEvents
//        case links = "_links"
//        case externalLinks, aliases
//    }
//}
//
//// MARK: - Classification
//struct Classification: Codable {
//    let primary: Bool
//    let segment, genre, subGenre: Genre
//    let type, subType: Genre?
//    let family: Bool
//}
//
//// MARK: - Genre
//struct Genre: Codable {
//    let id, name: String
//}
//
//// MARK: - PurpleExternalLinks
//struct PurpleExternalLinks: Codable {
//    let twitter, wiki, facebook, instagram: [Facebook]
//    let homepage: [Facebook]
//    let youtube, itunes, lastfm, spotify: [Facebook]?
//    let musicbrainz: [Musicbrainz]?
//}
//
//// MARK: - Facebook
//struct Facebook: Codable {
//    let url: String
//}
//
//// MARK: - Musicbrainz
//struct Musicbrainz: Codable {
//    let id: String
//}
//
//// MARK: - Image
//struct Image: Codable {
////    let ratio: Ratio
//    let url: String
//    let width, height: Int
//    let fallback: Bool
//}
//
////enum Ratio: String, Codable {
////    case the16_9 = "16_9"
////    case the3_2 = "3_2"
////    case the4_3 = "4_3"
////}
//
//// MARK: - AttractionLinks
//struct AttractionLinks: Codable {
//    let linksSelf: SelfElement
//
//    enum CodingKeys: String, CodingKey {
//        case linksSelf = "self"
//    }
//}
//
//// MARK: - SelfElement
//struct SelfElement: Codable {
//    let href: String
//}
//
//enum Locale: String, Codable {
//    case enUs = "en-us"
//}
//
//enum AttractionType: String, Codable {
//    case attraction = "attraction"
//}
//
//// MARK: - UpcomingEvents
//struct UpcomingEvents: Codable {
//    let total, ticketmaster, filtered: Int
//    let tmr, mfxZa: Int?
//
//    enum CodingKeys: String, CodingKey {
//        case total = "_total"
//        case ticketmaster
//        case filtered = "_filtered"
//        case tmr
//        case mfxZa = "mfx-za"
//    }
//}
//
//// MARK: - Event
//struct Event: Codable {
//    let name: String
//    let type: EventType
//    let id: String
//    let url: String
//    let locale: Locale
//    let images: [Image]
//    let dates: Dates
//    let classifications: [Classification]
//    let location: Location
//    let links: EventLinks
//    let embedded: EventEmbedded
//
//    enum CodingKeys: String, CodingKey {
//        case name, type, id, url, locale, images, dates, classifications, location
//        case links = "_links"
//        case embedded = "_embedded"
//    }
//}
//
//// MARK: - Dates
//struct Dates: Codable {
//    let start: Start
//    let status: Status
//    let spanMultipleDays: Bool
//    let timezone: String?
//}
//
//// MARK: - Start
//struct Start: Codable {
//    let localDate, localTime: String
//    let dateTime: Date
//    let dateTBD, dateTBA, timeTBA, noSpecificTime: Bool
//}
//
//// MARK: - Status
//struct Status: Codable {
//    let code: Code
//}
//
//enum Code: String, Codable {
//    case onsale = "onsale"
//}
//
//// MARK: - EventEmbedded
//struct EventEmbedded: Codable {
//    let venues: [PurpleVenue]
//    let attractions: [FluffyAttraction]
//}
//
//// MARK: - FluffyAttraction
//struct FluffyAttraction: Codable {
//    let name: String
//    let type: AttractionType
//    let id: String
//    let url: String
//    let locale: Locale
//    let externalLinks: FluffyExternalLinks
//    let aliases: [String]?
//    let images: [Image]
//    let classifications: [Classification]
//    let upcomingEvents: UpcomingEvents
//    let links: AttractionLinks
//
//    enum CodingKeys: String, CodingKey {
//        case name, type, id, url, locale, externalLinks, aliases, images, classifications, upcomingEvents
//        case links = "_links"
//    }
//}
//
//// MARK: - FluffyExternalLinks
//struct FluffyExternalLinks: Codable {
//    let twitter, facebook, wiki, instagram: [Facebook]
//    let homepage: [Facebook]
//}
//
//// MARK: - PurpleVenue
//struct PurpleVenue: Codable {
//    let name: String
//    let type: VenueType
//    let id: String
//    let locale: Locale
//    let timezone: String
//    let city: City
//    let state: State
//    let country: Country
//    let address: Address
//    let location: Location
//    let upcomingEvents: UpcomingEvents
//    let links: AttractionLinks
//    let url: String?
//    let images: [Image]?
//    let parkingDetail, accessibleSeatingDetail: String?
//
//    enum CodingKeys: String, CodingKey {
//        case name, type, id, locale, timezone, city, state, country, address, location, upcomingEvents
//        case links = "_links"
//        case url, images, parkingDetail, accessibleSeatingDetail
//    }
//}
//
//// MARK: - Address
//struct Address: Codable {
//}
//
//// MARK: - City
//struct City: Codable {
//    let name: String
//}
//
//// MARK: - Country
//struct Country: Codable {
//    let name: Name
//    let countryCode: CountryCode
//}
//
//enum CountryCode: String, Codable {
//    case us = "US"
//}
//
//enum Name: String, Codable {
//    case unitedStatesOfAmerica = "United States Of America"
//}
//
//// MARK: - Location
//struct Location: Codable {
//    let longitude, latitude: String
//}
//
//// MARK: - State
//struct State: Codable {
//    let name, stateCode: String
//}
//
//enum VenueType: String, Codable {
//    case venue = "venue"
//}
//
//// MARK: - EventLinks
//struct EventLinks: Codable {
//    let linksSelf: SelfElement
//    let attractions, venues: [SelfElement]
//
//    enum CodingKeys: String, CodingKey {
//        case linksSelf = "self"
//        case attractions, venues
//    }
//}
//
//enum EventType: String, Codable {
//    case event = "event"
//}
//
//// MARK: - FluffyVenue
//struct FluffyVenue: Codable {
//    let name: String
//    let type: VenueType
//    let id: String
//    let url: String
//    let locale: Locale
//    let aliases: [String]?
//    let images: [Image]
//    let timezone: String
//    let city: City
//    let state: State
//    let country: Country
//    let address: Address
//    let location: Location
//    let upcomingEvents: UpcomingEvents
//    let links: AttractionLinks
//
//    enum CodingKeys: String, CodingKey {
//        case name, type, id, url, locale, aliases, images, timezone, city, state, country, address, location, upcomingEvents
//        case links = "_links"
//    }
//}
