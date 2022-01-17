//
//  HomeViewModel.swift
//  Flixtor
//
//  Created by Kevin Liu on 2022-01-12.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    // String == Category
    @Published var movies: [String: [Movie]] = [:]
    
    @Published var IMDbMovie: NewMovieDataDetail? = nil
    
    public var allCategories: [String] {
        movies.keys.map({ String($0) })
    }
    
    public var allGenre: [HomeGenre] = [.AllGenres, .Action, .Comedy, .Horror, .Thriller]
    
    public func getMovie(forCat cat: String, andHomeRow homeRow: HomeTopRow, andGenre genre: HomeGenre) -> [Movie] {
        
        switch homeRow {
        case .home:
            return movies[cat] ?? []
        case .movies:
            return (movies[cat] ?? []).filter({ ($0.movieType == .movie) && ($0.genre == genre) })
        case .tvShows:
            return (movies[cat] ?? []).filter({ ($0.movieType == .tvShow) && ($0.genre == genre) })
        case .myList:
            return movies[cat] ?? []
            // TODO: Setup MyList Properly
        }
    }
    
    public func getTopMovie(topRowSelection: HomeTopRow) -> Movie {
        if topRowSelection == .home {
            return exampleMovie5
        }
        let topMovie = Movie(
            id: UUID().uuidString,
            name: IMDbMovie?.title ?? "",
            thumbnailURL: URL(string: IMDbMovie?.image ?? "https://picsum.photos/200/303")!,
            categories: [IMDbMovie?.genres ?? ""],
            year: Int(IMDbMovie?.year ?? "") ?? 0,
            rating: IMDbMovie?.contentRating ?? "",
            defaultEpisodeInfo: CurrentEpisodeInfo(
                episodeName: "",
                description: IMDbMovie?.plot ?? "",
                season: 0,
                episode: 0),
            creators: IMDbMovie?.directors ?? "",
            cast: IMDbMovie?.stars ?? "",
            moreLikeThisMovies: [exampleShow7, exampleShow2, exampleShow3, exampleShow4, exampleShow5, exampleShow6],
            trailers: exampleTrailers)
        return topMovie
    }
    
    public func fetchTopMovie() {
        URLSession.shared.request(
            url: URL(string: "https://imdb-api.com/en/API/InTheaters/k_erdyyn4s"),
            expecting: NewMovieData.self
        ) { [weak self] result in
            switch result {
            case .success(let IMDbMovies):
                DispatchQueue.main.async {
                    self?.IMDbMovie = IMDbMovies.items[0]
                }
            case .failure(let error):
                print(error)
            }
        }
    }
    
    init() {
        setupMovies()
        fetchTopMovie()
    }
    
    func setupMovies() {
        // 
        movies["Trending Now"] = exampleMovies
        movies["Stand-Up Comedy"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["Sci-Fi Movies"] = exampleMovies.shuffled()
    }
    
}
