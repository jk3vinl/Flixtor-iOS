//
//  GlobalHelpers.swift
//  Flixtor
//
//  Created by Kevin Liu on 2022-01-12.
//

import Foundation
import SwiftUI

let exampleVideoURL = URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4")!

let exampleImageURL = URL(string: "https://picsum.photos/300/104")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/105")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/106")!

var randomExampleImageURL: URL {
    return [exampleImageURL, exampleImageURL2, exampleImageURL3].randomElement() ?? exampleImageURL
}

let exampleTrailer1 = Trailer(name: "Teaser 1: Ghosts", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL)

let exampleTrailer2 = Trailer(name: "Trailer 1: Hero's Journey", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL2)

let exampleTrailer3 = Trailer(name: "The Mysterious", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL3)

let exampleTrailers = [exampleTrailer1, exampleTrailer2, exampleTrailer3]

let showTrailer1 = Trailer(name: "Season 2: Trailer", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL)

let showTrailer2 = Trailer(name: "Season 1: Recap", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL2)

let showTrailer3 = Trailer(name: "Season 1: Teaser", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL3)

let showTrailers = [showTrailer1, showTrailer2, showTrailer3]

let episode1 = Episode(name: "Beginnings and Endings",
                         season: 1,
                         episodeNumber: 1,
                         thumbnailImageURLString: "https://picsum.photos/300/112",
                         description: "Six months after the disappearances, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.",
                         length: 53,
                         videoURL: exampleVideoURL)
let episode2 = Episode(name: "new Life",
                         season: 1,
                         episodeNumber: 2,
                         thumbnailImageURLString: "https://picsum.photos/300/111",
                         description: "Clausen and Charlotte interview Regina. The Stranger takes Hannah to 1987, where Claudia has an unnerving encounter and Egon visits an old nemesis.",
                         length: 54,
                         videoURL: exampleVideoURL)
let episode3 = Episode(name: "Ghosts",
                         season: 1,
                         episodeNumber: 3,
                         thumbnailImageURLString: "https://picsum.photos/300/110",
                         description: "In 1954, a missing Helge returns, but he'll only speak to Noah. In 1987, Claudia brings the time machine to Tannhaus, and Egon questions Ulrich again.",
                         length: 56,
                         videoURL: exampleVideoURL)

let episode4 = Episode(name: "Changing",
                         season: 2,
                         episodeNumber: 1,
                         thumbnailImageURLString: "https://picsum.photos/300/109",
                         description: "In 1954, a missing Helge returns, but he'll only speak to Noah. In 1987, Claudia brings the time machine to Tannhaus, and Egon questions Ulrich again.",
                         length: 53,
                         videoURL: exampleVideoURL)
let episode5 = Episode(name: "Dark Matter",
                         season: 2,
                         episodeNumber: 2,
                         thumbnailImageURLString: "https://picsum.photos/300/108",
                         description: "Six months after the disappearances, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.",
                         length: 54,
                         videoURL: exampleVideoURL)
let episode6 = Episode(name: "Faster",
                         season: 2,
                         episodeNumber: 3,
                         thumbnailImageURLString: "https://picsum.photos/300/107",
                         description: "Clausen and Charlotte interview Regina. The Stranger takes Hannah to 1987, where Claudia has an unnerving encounter and Egon visits an old nemesis.",
                         length: 56,
                         videoURL: exampleVideoURL)

var allExampleEpisodes = [episode1, episode2, episode3, episode4, episode5, episode6]

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2021,
    rating: "TV-MA",
    defaultEpisodeInfo: exampleMovieInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7],
    trailers: exampleTrailers)
let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Travelers",
    thumbnailURL: URL(string: "https://picsum.photos/200/299/")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2022,
    rating: "TV-MA",
    defaultEpisodeInfo: exampleMovieInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [exampleShow7, exampleShow2, exampleShow3, exampleShow4, exampleShow5, exampleShow6],
    trailers: exampleTrailers)
let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2022,
    rating: "TV-MA",
    defaultEpisodeInfo: exampleMovieInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [exampleShow7, exampleShow2, exampleShow3, exampleShow4, exampleShow5, exampleShow6],
    trailers: exampleTrailers)
let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2021,
    rating: "TV-MA",
    defaultEpisodeInfo: exampleMovieInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [exampleShow7, exampleShow2, exampleShow3, exampleShow4, exampleShow5, exampleShow6],
    trailers: exampleTrailers)
let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumbnailURL: URL(string: "https://picsum.photos/200/293")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2021,
    rating: "TV-MA",
    defaultEpisodeInfo: exampleMovieInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [exampleShow7, exampleShow2, exampleShow3, exampleShow4, exampleShow5, exampleShow6],
    trailers: exampleTrailers)
let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2021,
    rating: "TV-MA",
    defaultEpisodeInfo: exampleMovieInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [exampleShow7, exampleShow2, exampleShow3, exampleShow4, exampleShow5, exampleShow6],
    trailers: exampleTrailers)
let exampleMovie7 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2022,
    rating: "TV-MA",
    defaultEpisodeInfo: exampleMovieInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [exampleShow7, exampleShow2, exampleShow3, exampleShow4, exampleShow5, exampleShow6],
    trailers: exampleTrailers)

let exampleMovie8 = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumbnailURL: URL(string: "https://picsum.photos/200/299")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    defaultEpisodeInfo: exampleMovieInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [],
    trailers: exampleTrailers)
let exampleMovie9 = Movie(
    id: UUID().uuidString,
    name: "Travelers",
    thumbnailURL: URL(string: "https://picsum.photos/200/300/")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    defaultEpisodeInfo: exampleMovieInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [],
    trailers: exampleTrailers)
let exampleMovie10 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    defaultEpisodeInfo: exampleMovieInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [],
    trailers: exampleTrailers)
let exampleMovie11 = Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    defaultEpisodeInfo: exampleMovieInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [],
    trailers: exampleTrailers)
let exampleMovie12 = Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumbnailURL: URL(string: "https://picsum.photos/200/293")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    defaultEpisodeInfo: exampleMovieInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [],
    trailers: exampleTrailers)
let exampleMovie13 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    defaultEpisodeInfo: exampleMovieInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [],
    trailers: exampleTrailers)

let exampleShow1 = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumbnailURL: URL(string: "https://picsum.photos/200/298")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2021,
    rating: "TV-MA",
    numberOfSeasons: 1,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie4, exampleMovie5, exampleMovie6],
    episodes: allExampleEpisodes,
    trailers: showTrailers)
let exampleShow2 = Movie(
    id: UUID().uuidString,
    name: "Travelers",
    thumbnailURL: URL(string: "https://picsum.photos/200/297/")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2022,
    rating: "TV-MA",
    numberOfSeasons: 1,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [exampleMovie8, exampleMovie9, exampleMovie10, exampleMovie11, exampleMovie12, exampleMovie13],
    episodes: allExampleEpisodes,
    trailers: showTrailers)
let exampleShow3 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailURL: URL(string: "https://picsum.photos/200/296")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2021,
    rating: "TV-MA",
    numberOfSeasons: 1,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [exampleMovie8, exampleMovie9, exampleMovie10, exampleMovie11, exampleMovie12, exampleMovie13],
    episodes: allExampleEpisodes,
    trailers: showTrailers)
let exampleShow4 = Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumbnailURL: URL(string: "https://picsum.photos/200/295")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 1,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [exampleMovie8, exampleMovie9, exampleMovie10, exampleMovie11, exampleMovie12, exampleMovie13],
    episodes: allExampleEpisodes,
    trailers: showTrailers)
let exampleShow5 = Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumbnailURL: URL(string: "https://picsum.photos/200/294")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2021,
    rating: "TV-MA",
    numberOfSeasons: 2,
    currentEpisode: exampleEpisodeInfo2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [exampleMovie8, exampleMovie9, exampleMovie10, exampleMovie11, exampleMovie12, exampleMovie13],
    episodes: allExampleEpisodes,
    trailers: showTrailers)
let exampleShow6 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/306")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2021,
    rating: "TV-MA",
    numberOfSeasons: 2,
    currentEpisode: exampleEpisodeInfo2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [exampleMovie8, exampleMovie9, exampleMovie10, exampleMovie11, exampleMovie12, exampleMovie13],
    episodes: allExampleEpisodes,
    trailers: showTrailers)
let exampleShow7 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/307")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2021,
    rating: "TV-MA",
    numberOfSeasons: 2,
    currentEpisode: exampleEpisodeInfo2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [exampleMovie8, exampleMovie9, exampleMovie10, exampleMovie11, exampleMovie12, exampleMovie13],
    episodes: allExampleEpisodes,
    trailers: showTrailers)


var exampleMovies: [Movie] {
    return [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7, exampleShow1, exampleShow2, exampleShow3, exampleShow4, exampleShow5, exampleShow6, exampleShow7].shuffled()
}

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Beginnings and Endings", description: "Ssdfhk sdg sdjksdfg sdg sdfgsd, sdgsdg srsaaarge. Ifdgh dghd, dfghdf dfhw fasjfb yjbfd sfcvgc fjnh.", season: 1, episode: 1)
let exampleEpisodeInfo2 = CurrentEpisodeInfo(episodeName: "Changing", description: "Ssdfhk sdg sdjksdfg sdg sdfgsd, sdgsdg srsaaarge. Ifdgh dghd, dfghdf dfhw fasjfb yjbfd sfcvgc fjnh.", season: 2, episode: 1)

let exampleMovieInfo1 = CurrentEpisodeInfo(episodeName: "", description: "Ksdf wern gpeg wgw ru wnda sfgp0sr. Enwer eweg paogisfg, sdnl bnflg yhjk osdfgr srgss dlkgn sklrsd lgsk dlrg  sdfgsgsdfgs.s", season: 0, episode: 0)


extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom
    )
}

extension String {
   func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

extension URLSession {
    enum CustomError: Error {
        case invalidURL
        case invalidData
    }
    
    func request<T: Codable>(
        url: URL?,
        expecting: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        guard let url = url else {
            completion(.failure(CustomError.invalidURL))
            return
        }
        
        let task = dataTask(with: url) { data, _, error in
            guard let data = data else {
                if let error = error {
                    completion(.failure(error))
                } else {
                    completion(.failure(CustomError.invalidData))
                }
                return
            }
            
            do {
                let result = try JSONDecoder().decode(expecting, from: data)
                completion(.success(result))
            }
            catch {
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
}

