//
//  Movie.swift
//  Flixtor
//
//  Created by Kevin Liu on 2022-01-12.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
    var genre: HomeGenre = .AllGenres
    
    // MovieDetail View
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
    // Personalization
    var currentEpisode: CurrentEpisodeInfo?
    
    
    var defaultEpisodeInfo: CurrentEpisodeInfo
    var creators: String
    var cast: String
    
    var moreLikeThisMovies: [Movie]
    
    var episodes: [Episode]?
    
    var movieType: MovieType {
        return episodes == nil ? .movie : .tvShow
    }
    
    var trailers: [Trailer]
    
    var numberOfSeasonsDisplay: String {
        if let num = numberOfSeasons {
            if num == 1 {
                return "1 season"
            } else {
                return "\(num) seasons"
            }
        }
        
        return ""
    }
    
    var episodeInfoDisplay: String {
        if movieType == .tvShow {
            if let current = currentEpisode {
                return "S\(current.season):E\(current.episode) \(current.episodeName)"
            } else {
                return "S\(defaultEpisodeInfo.season):E\(defaultEpisodeInfo.episode) \(defaultEpisodeInfo.episodeName)"
            }
        } else {
            return "\(name)"
        }
    }
    
    var episodeDescriptionDisplay: String {
        if movieType == .tvShow {
            if let current = currentEpisode {
                return current.description
            } else {
                return defaultEpisodeInfo.description
            }
        } else {
            return "\(defaultEpisodeInfo.description)"
        }
    }
    
}

struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}

enum MovieType {
    case movie
    case tvShow
}
