//
//  GenerateMovies.swift
//  Flixtor
//
//  Created by Kevin Liu on 2022-01-13.
//

import Foundation

func generateMovies(_ count: Int) -> [Movie] {
    guard count > 0 else { return [] }
    
    var allMovies: [Movie] = []
    
    for index in 0..<count {
        let id = UUID().uuidString
        
        
        let nameLength = Int.random(in: 3...5)
        let nameLength2 = Int.random(in: 5...7)
        let name = randomString(length: nameLength) + " " + randomString(length: nameLength2)
        
        let thumbnail = URL(string: "https://picsum.photos/300/10\(index)")!
        
        let year = Int.random(in: 2000...2022)
        
        let cast = "Lorem ipsum, dolor sit"
        let creators = "felis non, libero consectetur"
        let categories = ["consectetur", "neque", "felis", "libero"]
        
        let numSeasons = Int.random(in: 3...5)
        
        let epinameLength = Int.random(in: 3...5)
        let epinameLength2 = Int.random(in: 5...7)
        let epiname = randomString(length: epinameLength) + " " + randomString(length: epinameLength2)
        
        // First episode match
        let epid = UUID().uuidString
        
        let randThumbnail = Int.random(in: 0...9)
        let epiThumbnail = "https://picsum.photos/300/10\(randThumbnail)"
        
        let desc = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse at purus diam. Nullam a nulla a augue eleifend convallis ac vitae neque. Curabitur sit amet felis non libero consectetur euismod."
        let randLength = Int.random(in: 20..<59)
        
        let episode = Episode(id: epid, name: epiname, season: 1, episodeNumber: 1, thumbnailImageURLString: epiThumbnail, description: desc, length: randLength, videoURL: exampleVideoURL)
        
        var allEpisodes: [Episode] = [episode]
        
        for i in 1...numSeasons {
            allEpisodes.append(contentsOf: generateEpisodes(5, forSeason: i))
        }
        
        let epidescLength = Int.random(in: 150..<200)
        let epidesc = randomString(length: epidescLength)
        let defEpiInfo = CurrentEpisodeInfo(episodeName: epiname, description: epidesc, season: 1, episode: 1)
        
        let allTrailers = generateTrailers(3)
        
        let moreLikeThis = exampleMovies
        
        let movie = Movie(id: id, name: name, thumbnailURL: thumbnail, categories: categories, genre: .AllGenres, year: year, rating: "PG-13", numberOfSeasons: numSeasons, currentEpisode: defEpiInfo, defaultEpisodeInfo: defEpiInfo, creators: creators, cast: cast, moreLikeThisMovies: moreLikeThis, episodes: allEpisodes, trailers: allTrailers)
        
        allMovies.append(movie)
    }
    
    return allMovies
}

func generateTrailers(_ count: Int) -> [Trailer] {
    var allTrailers: [Trailer] = []
    
    for index in 0..<count {
        let id = UUID().uuidString
        
        let name = "Trailer \(index + 1): " + randomString(length: Int.random(in: 6...8))
        
        let thumbnail = URL(string: "https://picsum.photos/300/10\(index)")!
        
        let trailer = Trailer(id: id, name: name, videoURL: exampleVideoURL, thumbnailImageURL: thumbnail)
        allTrailers.append(trailer)
    }
    
    return allTrailers
}

func generateEpisodes(_ count: Int, forSeason season: Int) -> [Episode] {
    var allEpisodes: [Episode] = []
    let startIndex = season == 1 ? 1 : 0
    for num in startIndex..<count {
        let id = UUID().uuidString
        
        let epinameLength = Int.random(in: 3...5)
        let epinameLength2 = Int.random(in: 5...7)
        let epiname = randomString(length: epinameLength) + " " + randomString(length: epinameLength2)
        
        let randThumbnail = Int.random(in: 0...9)
        let thumbnail = "https://picsum.photos/300/10\(randThumbnail)"
        
        let desc = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse at purus diam. Nullam a nulla a augue eleifend convallis ac vitae neque. Curabitur sit amet felis non libero consectetur euismod."
        let randLength = Int.random(in: 20..<59)
        
        let episode = Episode(id: id, name: epiname, season: season, episodeNumber: num + 1, thumbnailImageURLString: thumbnail, description: desc, length: randLength, videoURL: exampleVideoURL)
        
        allEpisodes.append(episode)
    }
    
    return allEpisodes
}

func randomString(length: Int) -> String {
  let letters = "abcdefghijklmnopqrstuvwxyz"
  return String((0..<length).map{ _ in letters.randomElement()! })
}
